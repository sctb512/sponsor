using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.FrimSupport
{
    public partial class FrimValidationPage : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();
        FrimTabOperateClass ftoOBJ = new FrimTabOperateClass();
        public static int P_Int_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            //商家赞助表的id
            // P_Int_id = Convert.ToInt32(Request["id"]);
            if (!IsPostBack)
            {
                // this.GridView1.DataSource = new GirdviewRelation().GetState().Tables[0].DefaultView;
                if (Session["username"] == null)
                {
                    Response.Write("<script>parent.location='../Default.aspx';</script>");
                }

                else
                {
                    P_Int_id = Convert.ToInt32(Request["id"]);
                    DataSet ds = dbObj.FrimGetValidationState(P_Int_id, "frimvalidationinfo");
                    qsstatelab.Text = ds.Tables["frimvalidationinfo"].Rows[0][0].ToString();
                    cdstatelab.Text = ds.Tables["frimvalidationinfo"].Rows[0][1].ToString();
                    hbstatelab.Text = ds.Tables["frimvalidationinfo"].Rows[0][2].ToString();
                    hfstatelab.Text = ds.Tables["frimvalidationinfo"].Rows[0][3].ToString();
                    zbstatelab.Text = ds.Tables["frimvalidationinfo"].Rows[0][4].ToString();
                    jpstatelab.Text = ds.Tables["frimvalidationinfo"].Rows[0][5].ToString();
                    wlstatelab.Text = ds.Tables["frimvalidationinfo"].Rows[0][6].ToString();
                    bkstatelab.Text = ds.Tables["frimvalidationinfo"].Rows[0][7].ToString();

                    if (qsstatelab.Text == "不要求宣传")
                    {
                        tr_qs.Visible = false;
                    }
                    else if (qsstatelab.Text == "尚无新消息" || qsstatelab.Text == "验证完成")
                    {
                        qsagreebtn.Enabled = false;
                        qsdownloadlnk.Enabled = false;
                        qsrefusebtn.Enabled = false;
                    }

                    if (cdstatelab.Text == "不要求宣传")
                    {
                        tr_cd.Visible = false;
                    }
                    else if (cdstatelab.Text == "尚无新消息" || cdstatelab.Text == "验证完成")
                    {
                        cdagreebtn.Enabled = false;
                        cddownloadlnk.Enabled = false;
                        cdrefusebtn.Enabled = false;
                    }

                    if (hbstatelab.Text == "不要求宣传")
                    {
                        tr_hb.Visible = false;
                    }
                    else if (hbstatelab.Text == "尚无新消息" || hbstatelab.Text == "验证完成")
                    {
                        hbagreebtn.Enabled = false;
                        hbdownloadlnk.Enabled = false;
                        hbrefusebtn.Enabled = false;
                    }

                    if (hfstatelab.Text == "不要求宣传")
                    {
                        tr_hf.Visible = false;
                    }
                    else if (hfstatelab.Text == "尚无新消息" || hfstatelab.Text == "验证完成")
                    {
                        hfagreebtn.Enabled = false;
                        hfdownloadlnk.Enabled = false;
                        hfrefusebtn.Enabled = false;
                    }

                    if (zbstatelab.Text == "不要求宣传")
                    {
                        tr_zb.Visible = false;
                    }
                    else if (zbstatelab.Text == "尚无新消息" || zbstatelab.Text == "验证完成")
                    {
                        zbagreebtn.Enabled = false;
                        zbdownloadlnk.Enabled = false;
                        zbrefusebtn.Enabled = false;
                    }

                    if (jpstatelab.Text == "不要求宣传")
                    {
                        tr_jp.Visible = false;
                    }
                    else if (jpstatelab.Text == "尚无新消息" || jpstatelab.Text == "验证完成")
                    {
                        jpagreebtn.Enabled = false;
                        jpdownloadlnk.Enabled = false;
                        jprefusebtn.Enabled = false;
                    }

                    if (wlstatelab.Text == "不要求宣传")
                    {
                        tr_wl.Visible = false;
                    }
                    else if (wlstatelab.Text == "尚无新消息" || wlstatelab.Text == "验证完成")
                    {
                        wlagreebtn.Enabled = false;
                        wldownloadlnk.Enabled = false;
                        wlrefusebtn.Enabled = false;
                    }

                    if (bkstatelab.Text == "不要求宣传")
                    {
                        tr_bk.Visible = false;
                    }
                    else if (bkstatelab.Text == "尚无新消息" || bkstatelab.Text == "验证完成")
                    {
                        bkagreebtn.Enabled = false;
                        bkdownloadlnk.Enabled = false;
                        bkrefusebtn.Enabled = false;
                    }
                }
            }
        }

        protected void qsdownloadlnk_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/msword";

            SqlConnection myConn = dbObj.GetConnection();

            SqlCommand myCmd = new SqlCommand("Proc_GetQsValidationFileUrl", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
            //执行过程
            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                string filepath = rd["fileurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();

        }

        protected void cddownloadlnk_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/msword";

            SqlConnection myConn = dbObj.GetConnection();

            SqlCommand myCmd = new SqlCommand("Proc_GetCdValidationFileUrl", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
            //执行过程
            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                string filepath = rd["fileurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }

        protected void hbdownloadlnk_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/msword";

            SqlConnection myConn = dbObj.GetConnection();

            SqlCommand myCmd = new SqlCommand("Proc_GetHbValidationFileUrl", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
            //执行过程
            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                string filepath = rd["fileurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }

        protected void hfdownloadlnk_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/msword";

            SqlConnection myConn = dbObj.GetConnection();

            SqlCommand myCmd = new SqlCommand("Proc_GetHfValidationFileUrl", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
            //执行过程
            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                string filepath = rd["fileurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }

        protected void zbdownloadlnk_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/msword";

            SqlConnection myConn = dbObj.GetConnection();

            SqlCommand myCmd = new SqlCommand("Proc_GetZbValidationFileUrl", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
            //执行过程
            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                string filepath = rd["fileurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }

        protected void jpdownloadlnk_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/msword";

            SqlConnection myConn = dbObj.GetConnection();

            SqlCommand myCmd = new SqlCommand("Proc_GetJpValidationFileUrl", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
            //执行过程
            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                string filepath = rd["fileurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }

        protected void wldownloadlnk_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/msword";

            SqlConnection myConn = dbObj.GetConnection();

            SqlCommand myCmd = new SqlCommand("Proc_GetWlValidationFileUrl", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
            //执行过程
            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                string filepath = rd["fileurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }

        protected void bkdownloadlnk_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/msword";

            SqlConnection myConn = dbObj.GetConnection();

            SqlCommand myCmd = new SqlCommand("Proc_GetBkValidationFileUrl", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
            //执行过程
            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                string filepath = rd["fileurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }

        protected void qsrefusebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseQsValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
            Response.Write("<script>alert('拒绝成功');</script>");
            //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
            qsagreebtn.Enabled = false;
            qsdownloadlnk.Enabled = false;
            qsrefusebtn.Enabled = false;
            qsstatelab.Text = "尚无新消息";
        }

        protected void cdrefusebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseCdValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
            Response.Write("<script>alert('拒绝成功');</script>");
            //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
            cdagreebtn.Enabled = false;
            cddownloadlnk.Enabled = false;
            cdrefusebtn.Enabled = false;
            cdstatelab.Text = "尚无新消息";
        }

        protected void hbrefusebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseHbValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
            Response.Write("<script>alert('拒绝成功');</script>");
            //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
            hbagreebtn.Enabled = false;
            hbdownloadlnk.Enabled = false;
            hbrefusebtn.Enabled = false;
            hbstatelab.Text = "尚无新消息";
        }

        protected void hfrefusebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseHfValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
            Response.Write("<script>alert('拒绝成功');</script>");
            //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
            hfagreebtn.Enabled = false;
            hfdownloadlnk.Enabled = false;
            hfrefusebtn.Enabled = false;
            hfstatelab.Text = "尚无新消息";
        }

        protected void zbrefusebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseZbValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
            Response.Write("<script>alert('拒绝成功');</script>");
            //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
            zbagreebtn.Enabled = false;
            zbdownloadlnk.Enabled = false;
            zbrefusebtn.Enabled = false;
            zbstatelab.Text = "尚无新消息";
        }

        protected void jprefusebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseJpValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
            Response.Write("<script>alert('拒绝成功');</script>");
            // Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
            jpagreebtn.Enabled = false;
            jpdownloadlnk.Enabled = false;
            jprefusebtn.Enabled = false;
            jpstatelab.Text = "尚无新消息";
        }

        protected void wlrefusebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseWlValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
            Response.Write("<script>alert('拒绝成功');</script>");
            //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
            wlagreebtn.Enabled = false;
            wldownloadlnk.Enabled = false;
            wlrefusebtn.Enabled = false;
            wlstatelab.Text = "尚无新消息";
        }

        protected void bkrefusebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseBkValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
            Response.Write("<script>alert('拒绝成功');</script>");
            // Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
            bkagreebtn.Enabled = false;
            bkdownloadlnk.Enabled = false;
            bkrefusebtn.Enabled = false;
            bkstatelab.Text = "尚无新消息";
        }

        public int CheckValidationComplete()
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_IsValiadtionComplete", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            SqlParameter id = new SqlParameter("@id", SqlDbType.NVarChar, 50);
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

        public void UpdateValidationComplete()
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_UpdateValidationComplete", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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
        }

        protected void qsagreebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeQsValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

            int judgeresult = CheckValidationComplete();
            if (judgeresult==100)
            {
                UpdateValidationComplete();
                Response.Redirect("~/FrimSupport/BackToFRimHomePage2.aspx");
            }
            else
            {
                //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
                qsagreebtn.Enabled = false;
                qsdownloadlnk.Enabled = false;
                qsrefusebtn.Enabled = false;
                qsstatelab.Text = "验证已完成";
            }
        }

        protected void cdagreebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeCdValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

            int judgeresult = CheckValidationComplete();
            if (judgeresult == 100)
            {
                UpdateValidationComplete();
                Response.Redirect("~/FrimSupport/BackToFRimHomePage2.aspx");
            }
            else
            {
                //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
                cdagreebtn.Enabled = false;
                cddownloadlnk.Enabled = false;
                cdrefusebtn.Enabled = false;
                cdstatelab.Text = "验证已完成";
            }
        }

        protected void hbagreebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeHbValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

            int judgeresult = CheckValidationComplete();
            if (judgeresult == 100)
            {
                UpdateValidationComplete();
                Response.Redirect("~/FrimSupport/BackToFRimHomePage2.aspx");
            }
            else
            {
                //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
                hbagreebtn.Enabled = false;
                hbdownloadlnk.Enabled = false;
                hbrefusebtn.Enabled = false;
                hbstatelab.Text = "验证已完成";
            }
        }

        protected void hfagreebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeHfValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

            int judgeresult = CheckValidationComplete();
            if (judgeresult == 100)
            {
                UpdateValidationComplete();
                Response.Redirect("~/FrimSupport/BackToFRimHomePage2.aspx");
            }
            else
            {
                //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
                hfagreebtn.Enabled = false;
                hfdownloadlnk.Enabled = false;
                hfrefusebtn.Enabled = false;
                hfstatelab.Text = "验证已完成";
            }
        }

        protected void zbagreebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeZbValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

            int judgeresult = CheckValidationComplete();
            if (judgeresult == 100)
            {
                UpdateValidationComplete();
                Response.Redirect("~/FrimSupport/BackToFRimHomePage2.aspx");
            }
            else
            {
                //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
                zbagreebtn.Enabled = false;
                zbdownloadlnk.Enabled = false;
                zbrefusebtn.Enabled = false;
                zbstatelab.Text = "验证已完成";
            }
        }

        protected void jpagreebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeJpValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

            int judgeresult = CheckValidationComplete();
            if (judgeresult == 100)
            {
                UpdateValidationComplete();
                Response.Redirect("~/FrimSupport/BackToFRimHomePage2.aspx");
            }
            else
            {
                //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
                jpagreebtn.Enabled = false;
                jpdownloadlnk.Enabled = false;
                jprefusebtn.Enabled = false;
                jpstatelab.Text = "验证已完成";
            }
        }

        protected void wlagreebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeWlValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

            int judgeresult = CheckValidationComplete();
            if (judgeresult == 100)
            {
                UpdateValidationComplete();
                Response.Redirect("~/FrimSupport/BackToFRimHomePage2.aspx");
            }
            else
            {
                //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
                wlagreebtn.Enabled = false;
                wldownloadlnk.Enabled = false;
                wlrefusebtn.Enabled = false;
                wlstatelab.Text = "验证已完成";
            }
        }

        protected void bkagreebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeBkValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

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

            int judgeresult = CheckValidationComplete();
            if (judgeresult == 100)
            {
                UpdateValidationComplete();
                Response.Redirect("~/FrimSupport/BackToFRimHomePage2.aspx");
            }
            else
            {
                //Server.Transfer("~/FrimSupport/FrimValidationPage.aspx");
                bkagreebtn.Enabled = false;
                bkdownloadlnk.Enabled = false;
                bkrefusebtn.Enabled = false;
                bkstatelab.Text = "验证已完成";
            }
        }
    }
}