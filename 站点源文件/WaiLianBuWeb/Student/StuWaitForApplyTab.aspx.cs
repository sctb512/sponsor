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
    public partial class StuWaitForApplyTab : System.Web.UI.Page
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
                SqlCommand mycmd = gvrOBJ.StuWaitForApply(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_waitforapplytab, "StuGoToProveTab");
            }
        }

        protected void gvlist_waitforapplytab_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_waitforapplytab.PageIndex = e.NewPageIndex;
            gvListBind();
        }
    }
}