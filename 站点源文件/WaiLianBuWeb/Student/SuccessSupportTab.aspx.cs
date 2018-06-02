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
    public partial class SuccessSupportTab : System.Web.UI.Page
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
                   // int P_Int_id = Convert.ToInt32(Session["UID"]);
                    gvListBind();
                    for (int i = 0; i < gvlist_successsupporttab.Rows.Count; i++)
                    {
                        int result = stoOBJ.IsAlreadyComment(Convert.ToInt32(gvlist_successsupporttab.Rows[i].Cells[0].Text));
                        
                        if (result==100)
                        {
                            //表示已经评论过了
                            gvlist_successsupporttab.Rows[i].Cells[5].Enabled = false;
                            gvlist_successsupporttab.Rows[i].Cells[5].Text = "已评论";
                        }
                        else
                        {
                            gvlist_successsupporttab.Rows[i].Cells[5].Visible = true;
                        }
                    }
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
                SqlCommand mycmd = gvrOBJ.SuccessSupport(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_successsupporttab, "StuGoToProveTab");
            }
        }

        protected void gvlist_successsupporttab_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_successsupporttab.PageIndex = e.NewPageIndex;
            gvListBind();
        }
    }
}