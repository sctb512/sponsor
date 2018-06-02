using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class NewSupportInfo : System.Web.UI.Page
    {
        GirdviewRelation gvrOBJ = new GirdviewRelation();
        StuTabOperateClass stoOBJ = new StuTabOperateClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Write("<script>parent.location='../Default.aspx';</script>");
                }
                else
                {
                    gvListBind();
                    for (int i = 0; i < gvlist_NewSupportInfo.Rows.Count; i++)
                    {
                        int result = stoOBJ.IsAlreadyApply(Convert.ToInt32(gvlist_NewSupportInfo.Rows[i].Cells[0].Text),Convert.ToInt32(Session["UID"]));

                        if (result==100)
                        {
                            gvlist_NewSupportInfo.Rows[i].Cells[8].Enabled = false;
                            gvlist_NewSupportInfo.Rows[i].Cells[8].Text = "已申请";
                        }
                    }
                }
            }

        }


        protected void gvlist_NewSupportInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="submit")
            {
                //转向赞助申请表申请
                //Response.Write("<script>alert('请填写赞助申请表！');</script>");
                //记得用session["supportid"]记录下选中赞助信息的id
               GridViewRow drv= ((GridViewRow)(((LinkButton)(e.CommandSource)).Parent.Parent));
                Session["supportid"] = gvlist_NewSupportInfo.DataKeys[drv.RowIndex].Value;
                gvListBind();
                Response.Redirect("~/Student/FillSupportInfo");
            }
        }

        protected void gvlist_NewSupportInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_NewSupportInfo.PageIndex = e.NewPageIndex;
            gvListBind();

        }

        public void gvListBind()
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>parent.location='../Default.aspx';</script>");
            }
            else
            {
                SqlCommand mycmd = gvrOBJ.StuGetNoMatchTabcmd();
                gvrOBJ.GVBind(mycmd, gvlist_NewSupportInfo, "NoMatchTab");
            }
        }         
    }
}