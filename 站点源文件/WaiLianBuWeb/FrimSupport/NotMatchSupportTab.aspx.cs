using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.FrimSupport
{
    public partial class NotMatchSupportTab : System.Web.UI.Page
    {
        GirdviewRelation gvrOBJ = new GirdviewRelation();
        FrimTabOperateClass ftoObj = new FrimTabOperateClass();

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

        public void gvListBind()
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>parent.location='../Default.aspx';</script>");
            }
            else
            {
                SqlCommand mycmd = gvrOBJ.GetNoMatchTabcmd(Convert.ToInt32(Session["UID"]));
                gvrOBJ.GVBind(mycmd,gvlist_NoMatchSupport,"NoMatchTab");
            }
        }

        protected void gvlist_NoMatchSupport_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //在执行删除之前还要先判断一下，是否有正在申请的学生赞助申请表，在删除之前全部拒绝掉
            //此P_Int_id是商家赞助表的id
            int P_Int_id = Convert.ToInt32(gvlist_NoMatchSupport.DataKeys[e.RowIndex].Value);
            ftoObj.FrimAutoRejectStuSupportApply(P_Int_id);
            gvrOBJ.DeleteNoMatchSupportInfo(P_Int_id);
            gvListBind();
           
        }

        protected void gvlist_NoMatchSupport_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_NoMatchSupport.PageIndex = e.NewPageIndex;
            gvListBind();

        }
    }
}