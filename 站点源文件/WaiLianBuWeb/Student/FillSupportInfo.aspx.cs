using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class FillSupportInfo : System.Web.UI.Page
    {
        StuTabOperateClass stoOBJ = new StuTabOperateClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Write("<script>parent.location='../Default.aspx';</script>");
                }
            }
            // Response.Write(Convert.ToInt32(Session["supportid"]));
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            DateTime dt;
            // string dbPath;

            if (!(DateTime.TryParseExact(txtactivitydate.Text.Trim(), "yyyy-MM-dd", null, DateTimeStyles.None, out dt)) || (Convert.ToDateTime(txtactivitydate.Text.Trim())) < DateTime.Now)
            {
                Response.Write("<script>alert('日期非法或错误！');</script>");
                txtactivitydate.Text = "";
            }
            else if (upsupportbook.PostedFile.FileName == "")
                {
                    Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                    return;
                }
               else
                {
                    string filePath = upsupportbook.PostedFile.FileName;//获取文件路径
                    string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                    string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                    string serverpath = Server.MapPath("~/SupportBook/") + fileName;//将文件存放的完整服务器路径

                    if (fileEx == "doc" ||fileEx=="docx")
                    {                      
                        upsupportbook.PostedFile.SaveAs(serverpath);
                        //write_DataBase("~/Image/" + fileName);
                        string server = ConfigurationManager.AppSettings["server"];
                        string dbPath = server + "~/SupportBook/" + fileName;
                    stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Redirect("~/Student/BackToStuApplyToFrim.aspx");
                }
                    else
                    {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                    }
                }

        }
    }
}