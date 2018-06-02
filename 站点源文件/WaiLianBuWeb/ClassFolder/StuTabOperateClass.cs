using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WaiLianBuWeb.ClassFolder
{
    public class StuTabOperateClass
    {
        DBClass dbObj = new DBClass();

        //新建学生申请赞助表
        public void AddStuApplySupportTab(string P_String_eventname,string P_String_eventdate,string P_String_submitdate,string P_String_introduction,string P_String_appendix,int P_Int_state,string P_String_supportbookurl,int P_Int_frimsupporttabid,int P_Int_owner)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertStuApplySupportTab", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter eventname = new SqlParameter("@eventname", SqlDbType.NVarChar, 50);
            eventname.Value = P_String_eventname;
            myCmd.Parameters.Add(eventname);

            SqlParameter eventdate = new SqlParameter("@eventdate", SqlDbType.NVarChar, 50);
            eventdate.Value = P_String_eventdate;
            myCmd.Parameters.Add(eventdate);

            SqlParameter submitdate = new SqlParameter("@submitdate", SqlDbType.NVarChar, 50);
            submitdate.Value = P_String_submitdate;
            myCmd.Parameters.Add(submitdate);

            SqlParameter introduction = new SqlParameter("@introduction", SqlDbType.NVarChar, 4000);
            introduction.Value = P_String_introduction;
            myCmd.Parameters.Add(introduction);

            SqlParameter appendix = new SqlParameter("@appendix", SqlDbType.NVarChar, 4000);
            appendix.Value = P_String_appendix;
            myCmd.Parameters.Add(appendix);

            SqlParameter state = new SqlParameter("@state",SqlDbType.Int,4);
            state.Value = P_Int_state;
            myCmd.Parameters.Add(state);

            SqlParameter supportbookurl = new SqlParameter("@supportbookurl", SqlDbType.NVarChar, 4000);
            supportbookurl.Value = P_String_supportbookurl;
            myCmd.Parameters.Add(supportbookurl);

            SqlParameter frimsupporttabid = new SqlParameter("@frimsupporttabid", SqlDbType.Int, 4);
            frimsupporttabid.Value = P_Int_frimsupporttabid;
            myCmd.Parameters.Add(frimsupporttabid);

            SqlParameter owner = new SqlParameter("@owner", SqlDbType.Int, 4);
            owner.Value = P_Int_owner;
            myCmd.Parameters.Add(owner);

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

        public void AddQsValidationFile(int P_Int_id,string P_String_filepath)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertQsFileValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter filepath = new SqlParameter("@filepath", SqlDbType.NVarChar, 4000);
            filepath.Value = P_String_filepath;
            myCmd.Parameters.Add(filepath);

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

        public void AddCdValidationFile(int P_Int_id, string P_String_filepath)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertCdFileValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter filepath = new SqlParameter("@filepath", SqlDbType.NVarChar, 4000);
            filepath.Value = P_String_filepath;
            myCmd.Parameters.Add(filepath);

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

        public void AddHbValidationFile(int P_Int_id, string P_String_filepath)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertHbFileValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter filepath = new SqlParameter("@filepath", SqlDbType.NVarChar, 4000);
            filepath.Value = P_String_filepath;
            myCmd.Parameters.Add(filepath);

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

        public void AddHfValidationFile(int P_Int_id, string P_String_filepath)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertHfFileValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter filepath = new SqlParameter("@filepath", SqlDbType.NVarChar, 4000);
            filepath.Value = P_String_filepath;
            myCmd.Parameters.Add(filepath);

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

        public void AddZbValidationFile(int P_Int_id, string P_String_filepath)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertZbFileValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter filepath = new SqlParameter("@filepath", SqlDbType.NVarChar, 4000);
            filepath.Value = P_String_filepath;
            myCmd.Parameters.Add(filepath);

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

        public void AddJpValidationFile(int P_Int_id, string P_String_filepath)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertJpFileValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter filepath = new SqlParameter("@filepath", SqlDbType.NVarChar, 4000);
            filepath.Value = P_String_filepath;
            myCmd.Parameters.Add(filepath);

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

        public void AddWlValidationFile(int P_Int_id, string P_String_filepath)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertWlFileValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter filepath = new SqlParameter("@filepath", SqlDbType.NVarChar, 4000);
            filepath.Value = P_String_filepath;
            myCmd.Parameters.Add(filepath);

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

        public void AddBkValidationFile(int P_Int_id, string P_String_filepath)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertBkFileValidation", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter filepath = new SqlParameter("@filepath", SqlDbType.NVarChar, 4000);
            filepath.Value = P_String_filepath;
            myCmd.Parameters.Add(filepath);

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

        //添加评论信息
        public void AddStuComment(int P_Int_score,string P_String_commenttext,string P_String_commenttime,int P_Int_stuapplysupportid)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertStuComment", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter score = new SqlParameter("@score", SqlDbType.Int, 4);
            score.Value = P_Int_score;
            myCmd.Parameters.Add(score);

            SqlParameter commenttext = new SqlParameter("@commenttext", SqlDbType.NVarChar, 4000);
            commenttext.Value = P_String_commenttext;
            myCmd.Parameters.Add(commenttext);

            SqlParameter commenttime = new SqlParameter("@commenttime", SqlDbType.NVarChar, 4000);
            commenttime.Value = P_String_commenttime;
            myCmd.Parameters.Add(commenttime);

            SqlParameter stuapplysupportid = new SqlParameter("@stuapplysupportid", SqlDbType.Int, 4);
            stuapplysupportid.Value = P_Int_stuapplysupportid;
            myCmd.Parameters.Add(stuapplysupportid);

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

        public int IsAlreadyComment(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_IsAlreadyComment", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
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

        public int IsAlreadyApply(int P_Int_frimid,int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_IsAlreadyApply", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter frimid = new SqlParameter("@frimid", SqlDbType.Int, 4);
            frimid.Value = P_Int_frimid;
            myCmd.Parameters.Add(frimid);

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

        public int IsAlreadyCollect(int P_Int_owner,int P_Int_frimid)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_IsAlreadyCollect", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter owner = new SqlParameter("@owner", SqlDbType.Int, 4);
            owner.Value = P_Int_owner;
            myCmd.Parameters.Add(owner);

            SqlParameter frimid = new SqlParameter("@frimid", SqlDbType.Int, 4);
            frimid.Value = P_Int_frimid;
            myCmd.Parameters.Add(frimid);

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

        public void AddStuCollectionInfo(int P_Int_owner, int P_Int_frimid, string P_String_adddate)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertStuCollection", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter owner = new SqlParameter("@owner", SqlDbType.Int, 4);
            owner.Value = P_Int_owner;
            myCmd.Parameters.Add(owner);

            SqlParameter frimid = new SqlParameter("@frimid", SqlDbType.Int, 4);
            frimid.Value = P_Int_frimid;
            myCmd.Parameters.Add(frimid);

            SqlParameter adddate = new SqlParameter("@adddate", SqlDbType.NVarChar, 50);
            adddate.Value = P_String_adddate;
            myCmd.Parameters.Add(adddate);

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
    }
}