using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class StuValidatePage : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();
        StuTabOperateClass stoOBJ = new StuTabOperateClass();
        public static int P_Int_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // this.GridView1.DataSource = new GirdviewRelation().GetState().Tables[0].DefaultView;
                if (Session["username"] == null)
                {
                    Response.Write("<script>parent.location='../Default.aspx';</script>");
                }
                else
                {
                    //此P_Int_id是商家赞助表的id
                    P_Int_id = Convert.ToInt32(Request["id"]);
                    DataSet ds = dbObj.GetValidationState(P_Int_id, "validationinfo");
                    labqs.Text = ds.Tables["validationinfo"].Rows[0][0].ToString();
                    labcd.Text = ds.Tables["validationinfo"].Rows[0][1].ToString();
                    labhb.Text = ds.Tables["validationinfo"].Rows[0][2].ToString();
                    labhf.Text = ds.Tables["validationinfo"].Rows[0][3].ToString();
                    labzb.Text = ds.Tables["validationinfo"].Rows[0][4].ToString();
                    labjp.Text = ds.Tables["validationinfo"].Rows[0][5].ToString();
                    labwl.Text = ds.Tables["validationinfo"].Rows[0][6].ToString();
                    labbk.Text = ds.Tables["validationinfo"].Rows[0][7].ToString();
                    if (labqs.Text == "不要求宣传")
                    {
                        tr_qs.Visible = false;
                    }
                    else if (labqs.Text == "验证中" || labqs.Text == "验证完成")
                    {
                        uploadqs.Enabled = false;
                        btnqs.Enabled = false;
                    }

                    if (labcd.Text == "不要求宣传")
                    {
                        tr_cd.Visible = false;
                    }
                    else if (labcd.Text == "验证中" || labcd.Text == "验证完成")
                    {
                        uploadcd.Enabled = false;
                        btncd.Enabled = false;
                    }

                    if (labhb.Text == "不要求宣传")
                    {
                        tr_hb.Visible = false;
                    }
                    else if (labhb.Text == "验证中" || labhb.Text == "验证完成")
                    {
                        uploadhb.Enabled = false;
                        btnhb.Enabled = false;
                    }

                    if (labhf.Text == "不要求宣传")
                    {
                        tr_hf.Visible = false;
                    }
                    else if (labhf.Text == "验证中" || labhf.Text == "验证完成")
                    {
                        uploadhf.Enabled = false;
                        btnhf.Enabled = false;
                    }

                    if (labzb.Text == "不要求宣传")
                    {
                        tr_zb.Visible = false;
                    }
                    else if (labzb.Text == "验证中" || labzb.Text == "验证完成")
                    {
                        uploadzb.Enabled = false;
                        btnzb.Enabled = false;
                    }

                    if (labjp.Text == "不要求宣传")
                    {
                        tr_jp.Visible = false;
                    }
                    else if (labjp.Text == "验证中" || labjp.Text == "验证完成")
                    {
                        uploadjp.Enabled = false;
                        btnjp.Enabled = false;
                    }

                    if (labwl.Text == "不要求宣传")
                    {
                        tr_wl.Visible = false;
                    }
                    else if (labwl.Text == "验证中" || labwl.Text == "验证完成")
                    {
                        uploadwl.Enabled = false;
                        btnwl.Enabled = false;
                    }

                    if (labbk.Text == "不要求宣传")
                    {
                        tr_bk.Visible = false;
                    }
                    else if (labbk.Text == "验证中" || labbk.Text == "验证完成")
                    {
                        uploadbk.Enabled = false;
                        btnbk.Enabled = false;
                    }
                }


            }
        }

        protected void btnqs_Click(object sender, EventArgs e)
        {
            if (uploadqs.PostedFile.FileName == "")
            {
                Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                return;
            }
            else
            {
                string filePath = uploadqs.PostedFile.FileName;//获取文件路径
                string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                string serverpath = Server.MapPath("~/Images/qs/") + fileName;//将文件存放的完整服务器路径

                if (fileEx == "doc" || fileEx == "docx")
                {
                    uploadqs.PostedFile.SaveAs(serverpath);
                    //write_DataBase("~/Image/" + fileName);
                    string server = ConfigurationManager.AppSettings["server"];
                    string dbPath = server + "~/Images/qs/" + fileName;
                    stoOBJ.AddQsValidationFile(P_Int_id, dbPath);
                    //stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Write("<script>alert('申请已发出，请尽快联系商家进行审批！');</script>");
                    //跳转地址待议
                    //Response.Redirect("~/Student/StuValidatePage.aspx");
                    //Server.Transfer("~/Student/StuValidatePage.aspx");
                    uploadqs.Enabled = false;
                    btnqs.Enabled = false;
                    labqs.Text = "验证中";
                }
                else
                {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                }
            }
        }

        protected void btncd_Click(object sender, EventArgs e)
        {
            if (uploadcd.PostedFile.FileName == "")
            {
                Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                return;
            }
            else
            {
                string filePath = uploadcd.PostedFile.FileName;//获取文件路径
                string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                string serverpath = Server.MapPath("~/Images/cd/") + fileName;//将文件存放的完整服务器路径

                if (fileEx == "doc" || fileEx == "docx")
                {
                    uploadcd.PostedFile.SaveAs(serverpath);
                    //write_DataBase("~/Image/" + fileName);
                    string server = ConfigurationManager.AppSettings["server"];
                    string dbPath = server + "~/Images/cd/" + fileName;
                    stoOBJ.AddCdValidationFile(P_Int_id, dbPath);
                    //stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Write("<script>alert('申请已发出，请尽快联系商家进行审批！');</script>");
                    //跳转地址待议
                    //Server.Transfer("~/Student/StuValidatePage.aspx");
                    uploadcd.Enabled = false;
                    btncd.Enabled = false;
                    labcd.Text = "验证中";
                }
                else
                {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                }
            }
        }

        protected void btnhb_Click(object sender, EventArgs e)
        {
            if (uploadhb.PostedFile.FileName == "")
            {
                Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                return;
            }
            else
            {
                string filePath = uploadhb.PostedFile.FileName;//获取文件路径
                string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                string serverpath = Server.MapPath("~/Images/hb/") + fileName;//将文件存放的完整服务器路径

                if (fileEx == "doc" || fileEx == "docx")
                {
                    uploadhb.PostedFile.SaveAs(serverpath);
                    //write_DataBase("~/Image/" + fileName);
                    string server = ConfigurationManager.AppSettings["server"];
                    string dbPath = server + "~/Images/hb/" + fileName;
                    stoOBJ.AddHbValidationFile(P_Int_id, dbPath);
                    //stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Write("<script>alert('申请已发出，请尽快联系商家进行审批！');</script>");
                    //跳转地址待议
                    //Server.Transfer("~/Student/StuValidatePage.aspx");
                    uploadhb.Enabled = false;
                    btnhb.Enabled = false;
                    labhb.Text = "验证中";
                }
                else
                {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                }
            }
        }

        protected void btnhf_Click(object sender, EventArgs e)
        {
            if (uploadhf.PostedFile.FileName == "")
            {
                Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                return;
            }
            else
            {
                string filePath = uploadhf.PostedFile.FileName;//获取文件路径
                string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                string serverpath = Server.MapPath("~/Images/hf/") + fileName;//将文件存放的完整服务器路径

                if (fileEx == "doc" || fileEx == "docx")
                {
                    uploadhf.PostedFile.SaveAs(serverpath);
                    //write_DataBase("~/Image/" + fileName);
                    string server = ConfigurationManager.AppSettings["server"];
                    string dbPath = server + "~/Images/hf/" + fileName;
                    stoOBJ.AddHfValidationFile(P_Int_id, dbPath);
                    //stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Write("<script>alert('申请已发出，请尽快联系商家进行审批！');</script>");
                    //跳转地址待议
                    //Server.Transfer("~/Student/StuValidatePage.aspx");
                    uploadhf.Enabled = false;
                    btnhf.Enabled = false;
                    labhf.Text = "验证中";
                }
                else
                {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                }
            }
        }

        protected void btnzb_Click(object sender, EventArgs e)
        {
            if (uploadzb.PostedFile.FileName == "")
            {
                Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                return;
            }
            else
            {
                string filePath = uploadzb.PostedFile.FileName;//获取文件路径
                string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                string serverpath = Server.MapPath("~/Images/zb/") + fileName;//将文件存放的完整服务器路径

                if (fileEx == "doc" || fileEx == "docx")
                {
                    uploadzb.PostedFile.SaveAs(serverpath);
                    //write_DataBase("~/Image/" + fileName);
                    string server = ConfigurationManager.AppSettings["server"];
                    string dbPath = server + "~/Images/zb/" + fileName;
                    stoOBJ.AddZbValidationFile(P_Int_id, dbPath);
                    //stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Write("<script>alert('申请已发出，请尽快联系商家进行审批！');</script>");
                    //跳转地址待议
                    //Server.Transfer("~/Student/StuValidatePage.aspx");
                    uploadzb.Enabled = false;
                    btnzb.Enabled = false;
                    labzb.Text = "验证中";
                }
                else
                {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                }
            }
        }

        protected void btnjp_Click(object sender, EventArgs e)
        {
            if (uploadjp.PostedFile.FileName == "")
            {
                Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                return;
            }
            else
            {
                string filePath = uploadjp.PostedFile.FileName;//获取文件路径
                string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                string serverpath = Server.MapPath("~/Images/jp/") + fileName;//将文件存放的完整服务器路径

                if (fileEx == "doc" || fileEx == "docx")
                {
                    uploadjp.PostedFile.SaveAs(serverpath);
                    //write_DataBase("~/Image/" + fileName);
                    string server = ConfigurationManager.AppSettings["server"];
                    string dbPath = server + "~/Images/jp/" + fileName;
                    stoOBJ.AddJpValidationFile(P_Int_id, dbPath);
                    //stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Write("<script>alert('申请已发出，请尽快联系商家进行审批！');</script>");
                    //跳转地址待议
                    //Server.Transfer("~/Student/StuValidatePage.aspx");
                    uploadjp.Enabled = false;
                    btnjp.Enabled = false;
                    labjp.Text = "验证中";
                }
                else
                {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                }
            }
        }

        protected void btnwl_Click(object sender, EventArgs e)
        {
            if (uploadwl.PostedFile.FileName == "")
            {
                Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                return;
            }
            else
            {
                string filePath = uploadwl.PostedFile.FileName;//获取文件路径
                string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                string serverpath = Server.MapPath("~/Images/wl/") + fileName;//将文件存放的完整服务器路径

                if (fileEx == "doc" || fileEx == "docx")
                {
                    uploadwl.PostedFile.SaveAs(serverpath);
                    //write_DataBase("~/Image/" + fileName);
                    string server = ConfigurationManager.AppSettings["server"];
                    string dbPath = server + "~/Images/wl/" + fileName;
                    stoOBJ.AddWlValidationFile(P_Int_id, dbPath);
                    //stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Write("<script>alert('申请已发出，请尽快联系商家进行审批！');</script>");
                    //跳转地址待议
                    //Server.Transfer("~/Student/StuValidatePage.aspx");
                    uploadwl.Enabled = false;
                    btnwl.Enabled = false;
                    labwl.Text = "验证中";
                }
                else
                {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                }
            }
        }

        protected void btnbk_Click(object sender, EventArgs e)
        {
            if (uploadbk.PostedFile.FileName == "")
            {
                Response.Write("<script>alert('上传的文件不允许为空！');</script>");
                return;
            }
            else
            {
                string filePath = uploadbk.PostedFile.FileName;//获取文件路径
                string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);//获取文件名
                string fileEx = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();//获取文件的扩展名
                string serverpath = Server.MapPath("~/Images/bk/") + fileName;//将文件存放的完整服务器路径

                if (fileEx == "doc" || fileEx == "docx")
                {
                    uploadbk.PostedFile.SaveAs(serverpath);
                    //write_DataBase("~/Image/" + fileName);
                    string server = ConfigurationManager.AppSettings["server"];
                    string dbPath = server + "~/Images/bk/" + fileName;
                    stoOBJ.AddBkValidationFile(P_Int_id, dbPath);
                    //stoOBJ.AddStuApplySupportTab(txtactivityname.Text.Trim(), txtactivitydate.Text.Trim(), Convert.ToString(DateTime.Now), txtactivityintroduce.Text.Trim(), txtappendix.Text.Trim(), 0, dbPath, Convert.ToInt32(Session["supportid"]), Convert.ToInt32(Session["UID"]));
                    Response.Write("<script>alert('申请已发出，请尽快联系商家进行审批！');</script>");
                    //跳转地址待议
                    //Server.Transfer("~/Student/StuValidatePage.aspx");
                    uploadbk.Enabled = false;
                    btnbk.Enabled = false;
                    labbk.Text = "验证中";
                }
                else
                {
                    Response.Write("<script>alert('上传的文件类型不正确，请重新选择！');</script>");
                }
            }
        }
    }
}