using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.FrimSupport
{
    public partial class ChangeFrimInfo : System.Web.UI.Page
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
                    DataSet ds = dbObj.GetFrimAllBasicInfo(Convert.ToInt32(Session["UID"]), "detailinfo");
                    txtusername.Text = ds.Tables["detailinfo"].Rows[0][0].ToString();
                    txtboss.Text = ds.Tables["detailinfo"].Rows[0][2].ToString();
                    ddllocation.SelectedItem.Text= ds.Tables["detailinfo"].Rows[0][3].ToString();
                    txtaddress.Text= ds.Tables["detailinfo"].Rows[0][4].ToString();
                    ddltype.SelectedItem.Text= ds.Tables["detailinfo"].Rows[0][5].ToString();
                    txtphonenum.Text= ds.Tables["detailinfo"].Rows[0][6].ToString();
                    txtqq.Text= ds.Tables["detailinfo"].Rows[0][7].ToString();
                    jingdu.Value= ds.Tables["detailinfo"].Rows[0][8].ToString();
                    weidu.Value= ds.Tables["detailinfo"].Rows[0][9].ToString();
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (txtphonenum.Text.Length != 11)
            {
                Response.Write("<script>alert('无效号码！');</script>");
                txtphonenum.Text = "";
            }
            else
            {
            baObj.UpdateFrimBasicInfo(Convert.ToInt32(Session["UID"]),txtusername.Text.Trim(),txtboss.Text.Trim(),ddllocation.SelectedItem.Text,txtaddress.Text.Trim(),ddltype.SelectedItem.Text,txtphonenum.Text.Trim(),txtqq.Text.Trim(),jingdu.Value,weidu.Value);              
                //Response.Write("<script>alert('修改成功！');function yanshi(){window.location.href='/FrimSupport/FrimHomePage.aspx';};widnows.SetTimeOut('yanshi()'，2000)</script>"); 
                Response.Redirect("~/FrimSupport/BackToFRimHomePage.aspx");
            }
           
        }
    }
}