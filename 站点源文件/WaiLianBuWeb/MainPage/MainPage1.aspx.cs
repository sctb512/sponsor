using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.MainPage
{
    public partial class MainPage1 : System.Web.UI.Page
    {
        GirdviewRelation gvrOBJ = new GirdviewRelation();
        StuTabOperateClass stoOBJ = new StuTabOperateClass();

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["username"]!=null)
            {
                Label1.Text = "  |  欢迎登陆:"+Session["username"].ToString()+"  |  ";
                if (Convert.ToInt32(Session["userpower"])==0)
                {
                    HyperLink2.Visible = true;
                    HyperLink3.Visible = false;
                }
                else if (Convert.ToInt32(Session["userpower"]) == 1)
                {
                    HyperLink1.Visible = true;
                    HyperLink3.Visible = false;
                }               
                Button1.Visible = true;
            }
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["UID"] = null;
            Response.Write("<script>parent.location='../MainPage/MainPage1.aspx';</script>");
        }
    }
}