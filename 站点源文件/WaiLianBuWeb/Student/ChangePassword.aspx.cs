using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();
        BasicInfo baObj = new BasicInfo();

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
                    DataSet ds = dbObj.GetStuAllBasicInfo((Convert.ToInt32(Session["UID"])), "detailinfo");
                    labusername.Text = ds.Tables["detailinfo"].Rows[0][0].ToString();
                    labpassword.Text= ds.Tables["detailinfo"].Rows[0][1].ToString();
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (txtoldpassword.Text.Trim()!=labpassword.Text.Trim())
            {
                Response.Write("<script>alert('旧密码不正确');</script>");
                txtoldpassword.Text = "";
            }
            else if (txtnewpassword.Text.Trim()!=txtconfrimpassword.Text.Trim())
            {
                Response.Write("<script>alert('两次密码不一致');</script>");
                txtconfrimpassword.Text = "";
            }
            else
            {
                baObj.UpdateStuPassword((Convert.ToInt32(Session["UID"])),txtnewpassword.Text.Trim());
                Response.Redirect("~/Student/BakcToStuHomePage.aspx");

            }
        }
    }
}