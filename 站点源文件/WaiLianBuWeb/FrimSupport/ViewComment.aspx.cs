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
    public partial class ViewComment : System.Web.UI.Page
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

        public void gvListBind()
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>parent.location='../Default.aspx';</script>");
            }
            else
            {
                SqlCommand mycmd = gvrOBJ.FrimGetSelfComment2(Convert.ToInt32(Session["UID"]));
                gvrOBJ.GVBind(mycmd, gvlist_viewcomment, "NoMatchTab");
            }
        }

        protected void gvlist_viewcomment_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_viewcomment.PageIndex = e.NewPageIndex;
            gvListBind();
        }
    }
}