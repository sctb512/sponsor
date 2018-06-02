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
    public partial class Collection : System.Web.UI.Page
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
                SqlCommand mycmd = gvrOBJ.GetCollectionInfo(Convert.ToInt32(Session["UID"]));
                gvrOBJ.GVBind(mycmd, gvlist_Collection, "NoMatchTab");
            }
        }

        protected void gvlist_Collection_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_Collection.PageIndex = e.NewPageIndex;
            gvListBind();

        }

        protected void gvlist_Collection_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int P_Int_id = Convert.ToInt32(gvlist_Collection.DataKeys[e.RowIndex].Value);
            gvrOBJ.DeleteCollectionInfo(P_Int_id);
            gvListBind();

        }

        protected void gvlist_Collection_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}