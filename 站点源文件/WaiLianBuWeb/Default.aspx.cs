using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb
{
    public partial class Default : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Random randobj = new Random();
                //lbValidate.Text = randobj.Next(1000, 10000).ToString();
                RadioButton1.Checked = true;
                lbValidate.Text = new randomCode().RandomNum(4);
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtusername.Text.Trim() == "" && txtpassword.Text.Trim() == "")
            {
                Response.Write("<script>alert('对不起，请输入用户名和密码！');location='javascript:history.go(-1)';</script>");
                return;
            }
            else if (txtvalidate.Text == "" || txtvalidate.Text != lbValidate.Text)
            {
                Response.Write("<script>alert('验证码不正确');location='javascript:history.go(-1)';</script>");
                return;
            }
            else
            {
                //利用GetUserInfo方法，判断用户是否正确登录。
                //如果正确登录，则修改用户表信息，并跳转到Index.aspx页
                GetUserInfo(txtusername.Text.Trim());
            }
        }

        public void GetUserInfo(string P_Str_username)
        {
            if (RadioButton1.Checked== true)
            {
                SqlConnection myConn = dbObj.GetConnection();
                SqlCommand myCmd = new SqlCommand("Proc_GetStuName", myConn);
                myCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter username = new SqlParameter("@username", SqlDbType.NVarChar, 50);
                username.Value = P_Str_username;
                myCmd.Parameters.Add(username);
                myConn.Open();
                SqlDataReader rd = myCmd.ExecuteReader();
                if (rd.Read())
                {
                    if (txtpassword.Text.Trim() != rd["password"].ToString())
                    {

                        Response.Write("<script>alert('对不起，您输入的密码不正确！');location='javascript:history.go(-1)';</script>");

                    }
                    else
                    {
                        Session["UID"] = rd["id"];
                        Session["username"] = rd["username"];
                        Session["userpower"] = rd["userpower"];
                        Response.Write("学生登陆成功");
                        /*if (Session["supportid"]!=null)
                        {
                            Response.Redirect("~/Student/StudentHomePage.aspx");
                            //分割线
                        }
                        else
                        {*/
                            Response.Redirect("~/MainPage/MainPage1.aspx");
                       // } 
                        
                    }
                }
                else
                {
                    Response.Write("<script>alert('对不起，您输入的用户名不存在！');location='javascript:history.go(-1)';</script>");
                }
                rd.Close();
                myCmd.Dispose();
                myConn.Close();
            }
            else if (RadioButton2.Checked== true)
            {
                SqlConnection myConn = dbObj.GetConnection();
                SqlCommand myCmd = new SqlCommand("Proc_GetFrimName", myConn);
                myCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter username = new SqlParameter("@username", SqlDbType.NVarChar, 50);
                username.Value = P_Str_username;
                myCmd.Parameters.Add(username);
                myConn.Open();
                SqlDataReader rd = myCmd.ExecuteReader();
                if (rd.Read())
                {
                    if (txtpassword.Text.Trim() != rd["password"].ToString())
                    {

                        Response.Write("<script>alert('对不起，您输入的密码不正确！');location='javascript:history.go(-1)';</script>");

                    }
                    else
                    {
                        Session["UID"] = rd["id"];
                        Session["username"] = rd["username"];
                        Session["userpower"] = rd["userpower"];
                        Response.Write("商家登陆成功");
                        Response.Redirect("~/MainPage/MainPage1.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('对不起，您输入的用户名不存在！');location='javascript:history.go(-1)';</script>");
                }
                rd.Close();
                myCmd.Dispose();
                myConn.Close();
            }
        }
    }
}