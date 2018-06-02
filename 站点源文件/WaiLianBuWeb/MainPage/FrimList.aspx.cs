using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.MainPage
{
    public partial class FrimList : System.Web.UI.Page
    {
        GirdviewRelation gvrOBJ = new GirdviewRelation();
        StuTabOperateClass stoOBJ = new StuTabOperateClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvListBind1();
        }

        protected void gvlist_NewSupportInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "submit")
            {
                //转向赞助申请表申请
                //Response.Write("<script>alert('请填写赞助申请表！');</script>");
                //记得用session["supportid"]记录下选中赞助信息的id
                GridViewRow drv = ((GridViewRow)(((LinkButton)(e.CommandSource)).Parent.Parent));
                Session["supportid"] = gvlist_NewSupportInfo.DataKeys[drv.RowIndex].Value;
                gvListBind1();
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

        protected void gvlist_NewSupportInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_NewSupportInfo.PageIndex = e.NewPageIndex;
            gvListBind1();

        }

        public void gvListBind1()
        {
            SqlCommand mycmd = gvrOBJ.StuGetNoMatchTabcmd();
            gvrOBJ.GVBind(mycmd, gvlist_NewSupportInfo, "NoMatchTab");
        }
    }
}