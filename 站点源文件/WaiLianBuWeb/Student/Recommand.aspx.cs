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
    public partial class Recommand : System.Web.UI.Page
    {
        GirdviewRelation gvrOBJ = new GirdviewRelation();

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
                }
            }
        }

        protected void gvlist_RecommandSupportInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "submit")
            {
                //转向赞助申请表申请
                //Response.Write("<script>alert('请填写赞助申请表！');</script>");
                //记得用session["supportid"]记录下选中赞助信息的id
                GridViewRow drv = ((GridViewRow)(((LinkButton)(e.CommandSource)).Parent.Parent));
                Session["supportid"] = gvlist_RecommandSupportInfo.DataKeys[drv.RowIndex].Value;
                gvListBind();
                Response.Redirect("~/Student/FillSupportInfo");
            }
        }

        protected void gvlist_NewSupportInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_RecommandSupportInfo.PageIndex = e.NewPageIndex;
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
                //SqlCommand mycmd = gvrOBJ.GetRecommandInfo(Convert.ToInt32(Session["UID"]));
                //gvrOBJ.GVBind(mycmd, gvlist_RecommandSupportInfo, "NoMatchTab");
            }
        }
    }
}