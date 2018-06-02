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
    public partial class StuApplyToValidate : System.Web.UI.Page
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
                    gvListBind1();
                    gvListBind2();
                }
            }
        }

        public void gvListBind1()
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>parent.location='../Default.aspx';</script>");
            }
            else
            {
                int P_Int_id = Convert.ToInt32(Session["UID"]);
                SqlCommand mycmd = gvrOBJ.NewStuApplyToValidation(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_newstuapplytovalidate, "newstuapplytovalidation");
            }
        }

        public void gvListBind2()
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>parent.location='../Default.aspx';</script>");
            }
            else
            {
                int P_Int_id = Convert.ToInt32(Session["UID"]);
                SqlCommand mycmd = gvrOBJ.OldStuApplyToValidation(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_oldstuapplytovalidate, "oldstuapplytovalidation");
            }
        }

        protected void gvlist_newstuapplytovalidate_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_newstuapplytovalidate.PageIndex = e.NewPageIndex;
            gvListBind1();
        }

        protected void gvlist_oldstuapplytovalidate_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_oldstuapplytovalidate.PageIndex = e.NewPageIndex;
            gvListBind2();
        }
    }
}