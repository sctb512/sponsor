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
    public partial class UnprovedSupportTab : System.Web.UI.Page
    {
        GirdviewRelation gvrOBJ = new GirdviewRelation();
        //FrimTabOperateClass ftoOBJ = new FrimTabOperateClass();

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
                int P_Int_id = Convert.ToInt32(Session["UID"]);
                SqlCommand mycmd = gvrOBJ.StuGoToProve(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_unprovedsupporttab, "StuGoToProveTab");
            }
        }

        protected void gvlist_unprovedsupporttab_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_unprovedsupporttab.PageIndex = e.NewPageIndex;
            gvListBind();
        }

        /*protected void gvlist_unprovedsupporttab_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="validate")
            {

            }
        }*/
        
    }
}