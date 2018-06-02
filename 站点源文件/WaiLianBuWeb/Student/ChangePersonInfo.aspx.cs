using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class ChangePersonInfo : System.Web.UI.Page
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
                    txtusername.Text = ds.Tables["detailinfo"].Rows[0][0].ToString();
                    txtschool.Text= ds.Tables["detailinfo"].Rows[0][2].ToString();
                    txtgrade.Text= ds.Tables["detailinfo"].Rows[0][3].ToString();
                    txtprincipal.Text= ds.Tables["detailinfo"].Rows[0][4].ToString();
                    txtjob.Text= ds.Tables["detailinfo"].Rows[0][5].ToString();
                    txtphonenum.Text= ds.Tables["detailinfo"].Rows[0][6].ToString();
                    txtqq.Text= ds.Tables["detailinfo"].Rows[0][7].ToString();
                }
            }
        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            int judgeresult = JudageSameName(Convert.ToString(txtusername.Text.Trim()),Convert.ToInt32(Session["UID"]));

            if (judgeresult == 100)
            {
                Response.Write("<script>alert('您的部门已注册！');</script>");
                txtusername.Text = "";
            }
        }

        public int JudageSameName(string P_Str_username,int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_IsValidName1", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter username = new SqlParameter("@userName", SqlDbType.NVarChar, 50);
            username.Value = P_Str_username;
            myCmd.Parameters.Add(username);

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            baObj.UpdateStuBasicInfo(Convert.ToInt32(Session["UID"]),txtusername.Text.Trim(),txtschool.Text.Trim(),txtgrade.Text.Trim(),txtprincipal.Text.Trim(),txtjob.Text.Trim(),txtphonenum.Text.Trim(),txtqq.Text.Trim());
            Response.Redirect("~/Student/BakcToStuHomePage.aspx");
        }
    }
}