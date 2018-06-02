using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.FrimSupport
{
    public partial class SupportDetailInfo : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();
        public static int P_Int_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*if (Session["username"] == null)
                {*/
                    P_Int_id = Convert.ToInt32(Request["id"]);
                /*}
                else
                {
                    P_Int_id = Convert.ToInt32(Session["supportid"].ToString());
                }*/
                if (Convert.ToInt32(Session["userpower"])==1)
                {
                    Button1.Visible = false;
                }
                    DataSet ds = dbObj.GetSupporyDetailInfo(P_Int_id, "detailinfo");
                    Labsupportinfoid.Text = ds.Tables["detailinfo"].Rows[0][0].ToString();
                    Labsupportendtime.Text = ds.Tables["detailinfo"].Rows[0][1].ToString();
                    Labsubmittime.Text = ds.Tables["detailinfo"].Rows[0][2].ToString();
                    Labmoney.Text = ds.Tables["detailinfo"].Rows[0][3].ToString();
                    Labisnaming.Text = ds.Tables["detailinfo"].Rows[0][4].ToString();
                    Labsupporttype.Text = ds.Tables["detailinfo"].Rows[0][5].ToString();
                    Labisqs.Text = ds.Tables["detailinfo"].Rows[0][6].ToString();
                    Labiscd.Text = ds.Tables["detailinfo"].Rows[0][7].ToString();
                    Labcdnum.Text = ds.Tables["detailinfo"].Rows[0][8].ToString();
                    Labishb.Text = ds.Tables["detailinfo"].Rows[0][9].ToString();
                    Labhbnum.Text = ds.Tables["detailinfo"].Rows[0][10].ToString();
                    Labishf.Text = ds.Tables["detailinfo"].Rows[0][11].ToString();
                    Labhfnum.Text = ds.Tables["detailinfo"].Rows[0][12].ToString();
                    Labiszb.Text = ds.Tables["detailinfo"].Rows[0][13].ToString();
                    Labzbnum.Text = ds.Tables["detailinfo"].Rows[0][14].ToString();
                    Labisjp.Text = ds.Tables["detailinfo"].Rows[0][15].ToString();
                    Labiswl.Text = ds.Tables["detailinfo"].Rows[0][16].ToString();
                    Labisbk.Text = ds.Tables["detailinfo"].Rows[0][17].ToString();
                    Labstate.Text = ds.Tables["detailinfo"].Rows[0][18].ToString();
                    Labapplyid.Text = ds.Tables["detailinfo"].Rows[0][19].ToString();
                
  
                   
                
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["supportid"] = Labsupportinfoid.Text;
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('请先登录！');parent.location='../Default.aspx';</script>");
            }
            else
            {
                Response.Redirect("~/Student/FillSupportInfo.aspx");
            }
        }
    }
}