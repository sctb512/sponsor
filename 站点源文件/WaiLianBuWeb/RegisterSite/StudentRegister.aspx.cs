using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.RegisterSite
{
    public partial class StudentRegister : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();
        BasicInfo baObj = new BasicInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            //tabRecommand.Visible = false;
        }

        protected void btnBasic_Click(object sender, EventArgs e)
        {
            int judgeresult = JudageSameName(Convert.ToString(txtbumenname.Text.Trim()));
            if (txtpassword.Text.Trim()!=txtpassword2.Text.Trim())
            {
                Response.Write("<script>alert('两次输入密码不一致');</script>");
                txtpassword2.Text = "";
            }
            else if (txtphonenum.Text.Length!=11)
            {
                Response.Write("<script>alert('无效号码！');</script>");
                txtphonenum.Text = "";
            }           
            else if (judgeresult == 100)
            {
                Response.Write("<script>alert('您的部门已注册！');</script>");
                txtbumenname.Text = "";
            }
            else
            {    //0代表学生，1代表商家
                //baObj.AddStuBasicInfo(txtbumenname.Text.Trim(),txtpassword.Text.Trim(),0,txtschool.Text.Trim(),txtgrade.Text.Trim(),txtleader.Text.Trim(),txtjob.Text.Trim(),txtphonenum.Text.Trim(),txtqq.Text.Trim());
                //Response.Write("<script>alert('为方便您的使用，请继续填写！');</script>");
                baObj.AddStuBasicInfo(txtbumenname.Text.Trim(), txtpassword.Text.Trim(), 0, txtschool.Text.Trim(), txtgrade.Text.Trim(), txtleader.Text.Trim(), txtjob.Text.Trim(), txtphonenum.Text.Trim(), txtqq.Text.Trim());
                Response.Write("<script>alert('注册成功，请登录！');</script>");
                Response.Redirect("~/Default.aspx");
                
            }
        }
        public int JudageSameName(string P_Str_username)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_IsValidName", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            SqlParameter username = new SqlParameter("@userName", SqlDbType.NVarChar, 50);
            username.Value = P_Str_username;
            myCmd.Parameters.Add(username);
            SqlParameter returnValue = new SqlParameter("returnValue", SqlDbType.Int, 4);
            returnValue.Direction = ParameterDirection.ReturnValue;
            myCmd.Parameters.Add(returnValue);
            //执行过程
            myConn.Open();
            try
            {
                myCmd.ExecuteNonQuery();
            }
            catch
            {
                myCmd.Dispose();
                myConn.Close();

            }

            myCmd.Dispose();
            myConn.Close();
            int P_Int_returnValue = Convert.ToInt32(returnValue.Value.ToString());
            return P_Int_returnValue;
        }

        


    }
}