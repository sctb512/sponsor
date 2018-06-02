using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.FrimSupport
{
    public partial class FrimInfo : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();
        GirdviewRelation gvrOBJ = new GirdviewRelation();
        StuTabOperateClass stoOBJ = new StuTabOperateClass();
        //商家基本信息编号
        public static int P_Int_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    //DataSet ds1=dbObj.GetFrimJingWeidu()


                    int result = stoOBJ.IsAlreadyCollect(Convert.ToInt32(Session["UID"]), P_Int_id);
                    if (result==100)
                    {
                        Lnkcollect.Text = "已收藏";
                        Lnkcollect.Enabled = false;
                    }

                    P_Int_id = Convert.ToInt32(Request["id"]);
                    DataSet ds = dbObj.GetFrimBasicInfo(P_Int_id, "detailinfo");
                    Labfrimname.Text = ds.Tables["detailinfo"].Rows[0][0].ToString();
                    Labphonenum.Text = ds.Tables["detailinfo"].Rows[0][1].ToString();
                    Labqq.Text = ds.Tables["detailinfo"].Rows[0][2].ToString();
                    Labaddress.Text = ds.Tables["detailinfo"].Rows[0][3].ToString();
                    Labfrimtype.Text = ds.Tables["detailinfo"].Rows[0][4].ToString();

                    DataSet ds1 = dbObj.GetCountScoreFive(P_Int_id, "detailinfo");
                    Labscore5.Text=ds1.Tables["detailinfo"].Rows[0][0].ToString();

                    DataSet ds2 = dbObj.GetCountScoreFour(P_Int_id, "detailinfo");
                    Labscore4.Text = ds2.Tables["detailinfo"].Rows[0][0].ToString();

                    DataSet ds3 = dbObj.GetCountScoreThree(P_Int_id, "detailinfo");
                    Labscore3.Text = ds3.Tables["detailinfo"].Rows[0][0].ToString();

                    DataSet ds4 = dbObj.GetCountScoreTwo(P_Int_id, "detailinfo");
                    Labscore2.Text = ds4.Tables["detailinfo"].Rows[0][0].ToString();

                    DataSet ds5 = dbObj.GetCountScoreOne(P_Int_id, "detailinfo");
                    Labscore1.Text = ds5.Tables["detailinfo"].Rows[0][0].ToString();

                    DataSet ds6 = dbObj.GetAverageScore(P_Int_id, "detailinfo");
                    Labaveragescore.Text = ds6.Tables["detailinfo"].Rows[0][0].ToString();

                    DataSet dss = dbObj.GetFrimJingWeidu(P_Int_id,"detailinfo1");
                    // Label1.Text = dss.Tables["detailinfo1"].Rows[0][0].ToString();
                    // string JsonString = ToJson(dss, "detailinfo1");
                    Text1.Value= dss.Tables["detailinfo1"].Rows[0][0].ToString();
                    Text2.Value= dss.Tables["detailinfo1"].Rows[0][1].ToString();
                    Text3.Value= dss.Tables["detailinfo1"].Rows[0][2].ToString();
                    Text4.Value= dss.Tables["detailinfo1"].Rows[0][3].ToString();
                    Text5.Value= dss.Tables["detailinfo1"].Rows[0][4].ToString();
                    Text6.Value= dss.Tables["detailinfo1"].Rows[0][5].ToString();
                    Text7.Value= dss.Tables["detailinfo1"].Rows[0][6].ToString();


                    gvListBind1();
                    gvListBind2();
            }
        }

        protected void Lnkcollect_Click(object sender, EventArgs e)
        {
            stoOBJ.AddStuCollectionInfo(Convert.ToInt32(Session["UID"]), P_Int_id, Convert.ToString(DateTime.Now));
            Response.Write("<script>alert('收藏成功！');</script>");
            Lnkcollect.Text = "已收藏";
            Lnkcollect.Enabled = false;
        }

        protected void gvlist_FrimSupportInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_FrimSupportInfo.PageIndex = e.NewPageIndex;
            gvListBind1();

        }

        protected void gvlist_StuComment_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_FrimSupportInfo.PageIndex = e.NewPageIndex;
            gvListBind1();

        }

        protected void gvlist_FrimSupportInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "submit")
            {
                //转向赞助申请表申请
                //Response.Write("<script>alert('请填写赞助申请表！');</script>");
                //记得用session["supportid"]记录下选中赞助信息的id
                GridViewRow drv = ((GridViewRow)(((LinkButton)(e.CommandSource)).Parent.Parent));
                Session["supportid"] = gvlist_FrimSupportInfo.DataKeys[drv.RowIndex].Value;
                gvListBind1();
                Response.Redirect("~/Student/FillSupportInfo");
            }
        }

        public void gvListBind1()
        {
                SqlCommand mycmd = gvrOBJ.FrimGetSelfNoMatchTabcmd(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_FrimSupportInfo, "NoMatchTab");
        }

        public void gvListBind2()
        {
            
                SqlCommand mycmd = gvrOBJ.FrimGetSelfComment(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_StuComment, "NoMatchTab");
           
        }

        // <summary> 
        /// Datatable转换为Json 
        /// </summary> 
        /// <param name="table">Datatable对象</param> 
        /// <returns>Json字符串</returns> 
       /* public static string ToJson(DataSet dt, string P_Str_srcTable)
        {
            StringBuilder jsonString = new StringBuilder();

            if (dt.Tables["P_Str_srcTable"].Rows.Count == 0)
            {
                jsonString.Append("[{}]");
                return jsonString.ToString();
            }

            jsonString.Append("[");
            DataRowCollection drc = dt.Tables["P_Str_srcTable"].Rows;
            for (int i = 0; i < drc.Count; i++)
            {
                jsonString.Append("{");
                for (int j = 0; j < dt.Tables["P_Str_srcTable"].Columns.Count; j++)
                {
                    string strKey = dt.Tables["P_Str_srcTable"].Columns[j].ColumnName;
                    string strValue = drc[i][j].ToString();
                    Type type = dt.Tables["P_Str_srcTable"].Columns[j].DataType;
                    jsonString.Append("\"" + strKey + "\":");
                    strValue = String.Format(strValue, type);
                    if (j < dt.Tables["P_Str_srcTable"].Columns.Count - 1)
                    {
                        jsonString.Append(strValue + ",");
                    }
                    else
                    {
                        jsonString.Append(strValue);
                    }
                }
                jsonString.Append("},");
            }
            jsonString.Remove(jsonString.Length - 1, 1);
            jsonString.Append("]");
            return jsonString.ToString();
        }*/
    }
}