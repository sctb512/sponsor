using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class StudentHomePage : System.Web.UI.Page
    {
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
                    ftoObj.CheckOverdueSupportTab(DateTime.Now.Date, (Convert.ToInt32(Session["UID"])));
                }
                if (Session["supportid"] != null)
                {
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>myfun();</script>");
                }
            }
        }


    }
}