using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.FrimSupport
{
    public partial class NewSupportTab : System.Web.UI.Page
    {
        //DBClass dbObj = new DBClass();
        FrimTabOperateClass ftoObj = new FrimTabOperateClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Write("<script>parent.location='../Default.aspx';</script>");
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            DateTime dt;
            if ((Convert.ToInt32(txtmoney.Text.Trim()))<=0)
            {
                Response.Write("<script>alert('赞助金额无效！');</script>");
                txtmoney.Text = "";
            }
            //如果赞助截止日期为空，则默认无限时间
            else if (txtsupportendtime.Text.Trim()=="")
            {                
                txtsupportendtime.Text = "2111-11-11";
            }
            else if (!(DateTime.TryParseExact(txtsupportendtime.Text.Trim(), "yyyy-MM-dd", null, DateTimeStyles.None, out dt)))
            {
                Response.Write("<script>alert('日期填写格式错误！');</script>");
                txtsupportendtime.Text = "";               
            }
            else if ((Convert.ToDateTime(txtsupportendtime.Text.Trim()))<DateTime.Now)
            {
                Response.Write("<script>alert('非法日期！');</script>");
                txtsupportendtime.Text = "";
            }
            else
            {
                ftoObj.AddFrimSupportTab(txtsupportendtime.Text.Trim(), Convert.ToString(DateTime.Now),Convert.ToInt32(txtmoney.Text.Trim()),namingyes.Checked, Convert.ToInt32(supporttype.SelectedItem.Value),CheckBoxList1.Items[0].Selected, CheckBoxList1.Items[1].Selected, Convert.ToInt32(txtcdnum.Text.Trim()), CheckBoxList1.Items[2].Selected, Convert.ToInt32(txthbnum.Text.Trim()), CheckBoxList1.Items[3].Selected, Convert.ToInt32(txthfnum.Text.Trim()), CheckBoxList1.Items[4].Selected, Convert.ToInt32(txtzbnum.Text.Trim()), CheckBoxList1.Items[5].Selected, CheckBoxList1.Items[6].Selected, CheckBoxList1.Items[7].Selected, Convert.ToInt32(Session["UID"]),0,0);
                //Response.Write("<script>alert('成功提交！');</script>");
                //跳转到待匹配的赞助信息页
                Response.Redirect("~/FrimSupport/GoToNotMatchSupportTab.aspx");
            }
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CheckBoxList1.Items[1].Selected== true)
            {
                txtcdnum.Enabled = true;
              //  txthbnum.Enabled = false;
              //  txthfnum.Enabled = false;
              //  txtzbnum.Enabled = false;
            }
            if (CheckBoxList1.Items[2].Selected== true)
            {
              //  txtcdnum.Enabled = false;
                txthbnum.Enabled = true;
              //  txthfnum.Enabled = false;
              //  txtzbnum.Enabled = false;
            }
            if (CheckBoxList1.Items[3].Selected== true)
            {
              //  txtcdnum.Enabled = false;
              //  txthbnum.Enabled = false;
                txthfnum.Enabled = true;
              //  txtzbnum.Enabled = false;
            }
            if (CheckBoxList1.Items[4].Selected== true)
            {
              //  txtcdnum.Enabled = false;
              //  txthbnum.Enabled = false;
              //  txthfnum.Enabled = false;
                txtzbnum.Enabled = true;
            }
            if (CheckBoxList1.Items[1].Selected == false)
            {
                txtcdnum.Enabled = false;
                txtcdnum.Text = "0";
                //  txthbnum.Enabled = false;
                //  txthfnum.Enabled = false;
                //  txtzbnum.Enabled = false;
            }
            if (CheckBoxList1.Items[2].Selected == false)
            {
                //  txtcdnum.Enabled = false;
                txthbnum.Enabled = false;
                txthbnum.Text = "0";
                //  txthfnum.Enabled = false;
                //  txtzbnum.Enabled = false;
            }
            if (CheckBoxList1.Items[3].Selected == false)
            {
                //  txtcdnum.Enabled = false;
                //  txthbnum.Enabled = false;
                txthfnum.Enabled = false;
                txthfnum.Text = "0";
                //  txtzbnum.Enabled = false;
            }
            if (CheckBoxList1.Items[4].Selected == false)
            {
                //  txtcdnum.Enabled = false;
                //  txthbnum.Enabled = false;
                //  txthfnum.Enabled = false;
                txtzbnum.Enabled = false;
                txtzbnum.Text = "0";
            }
        }
    }
}