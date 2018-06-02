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
    public partial class DisabledSupportTab : System.Web.UI.Page
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
                int P_Int_id = Convert.ToInt32(Session["UID"]);
                SqlCommand mycmd = gvrOBJ.FrimViewStuDisabledTab(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_disabledsupporttab, "stuapplytofrimtab");
            }
        }

        protected void gvlist_disabledsupporttab_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_disabledsupporttab.PageIndex = e.NewPageIndex;
            gvListBind();
        }
    }
}