using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WaiLianBuWeb.ClassFolder
{
    public class FrimTabOperateClass
    {
        DBClass dbObj = new DBClass();

        //新建商家赞助信息表
        public void AddFrimSupportTab(string P_String_supportendtime, string P_String_submittime, int P_Int_money, Boolean P_Bool_isnaming, int P_Int_supporttype, Boolean P_Bool_isqs, Boolean P_Bool_iscd, int P_Int_cdnum, Boolean P_Bool_ishb, int P_Int_hbnum, Boolean P_Bool_ishf, int P_Int_hfnum, Boolean P_Bool_iszb, int P_Int_zbnum, Boolean P_Bool_isjp, Boolean P_Bool_iswl, Boolean P_Bool_isbk, int P_Int_owner, int P_Int_state, int P_Int_applytabid)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertFrimSupportInfo", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter supportendtime = new SqlParameter("@supportendtime", SqlDbType.NVarChar, 50);
            supportendtime.Value = P_String_supportendtime;
            myCmd.Parameters.Add(supportendtime);

            SqlParameter submittime = new SqlParameter("@submittime", SqlDbType.NVarChar, 50);
            submittime.Value = P_String_submittime;
            myCmd.Parameters.Add(submittime);

            SqlParameter money = new SqlParameter("@money", SqlDbType.Int, 4);
            money.Value = P_Int_money;
            myCmd.Parameters.Add(money);

            SqlParameter isnaming = new SqlParameter("@isnaming", SqlDbType.Bit, 1);
            isnaming.Value = P_Bool_isnaming;
            myCmd.Parameters.Add(isnaming);

            SqlParameter supporttype = new SqlParameter("@supporttype", SqlDbType.Int, 4);
            supporttype.Value = P_Int_supporttype;
            myCmd.Parameters.Add(supporttype);

            SqlParameter isqs = new SqlParameter("@isqs", SqlDbType.Bit, 1);
            isqs.Value = P_Bool_isqs;
            myCmd.Parameters.Add(isqs);

            SqlParameter iscd = new SqlParameter("@iscd", SqlDbType.Bit, 1);
            iscd.Value = P_Bool_iscd;
            myCmd.Parameters.Add(iscd);

            SqlParameter cdnum = new SqlParameter("@cdnum", SqlDbType.Int, 4);
            cdnum.Value = P_Int_cdnum;
            myCmd.Parameters.Add(cdnum);

            SqlParameter ishb = new SqlParameter("@ishb", SqlDbType.Bit, 1);
            ishb.Value = P_Bool_ishb;
            myCmd.Parameters.Add(ishb);

            SqlParameter hbnum = new SqlParameter("@hbnum", SqlDbType.Int, 4);
            hbnum.Value = P_Int_hbnum;
            myCmd.Parameters.Add(hbnum);

            SqlParameter ishf = new SqlParameter("@ishf", SqlDbType.Bit, 1);
            ishf.Value = P_Bool_ishf;
            myCmd.Parameters.Add(ishf);

            SqlParameter hfnum = new SqlParameter("@hfnum", SqlDbType.Int, 4);
            hfnum.Value = P_Int_hfnum;
            myCmd.Parameters.Add(hfnum);

            SqlParameter iszb = new SqlParameter("@iszb", SqlDbType.Bit, 1);
            iszb.Value = P_Bool_iszb;
            myCmd.Parameters.Add(iszb);

            SqlParameter zbnum = new SqlParameter("@zbnum", SqlDbType.Int, 4);
            zbnum.Value = P_Int_zbnum;
            myCmd.Parameters.Add(zbnum);

            SqlParameter isjp = new SqlParameter("@isjp", SqlDbType.Bit, 1);
            isjp.Value = P_Bool_isjp;
            myCmd.Parameters.Add(isjp);

            SqlParameter iswl = new SqlParameter("@iswl", SqlDbType.Bit, 1);
            iswl.Value = P_Bool_iswl;
            myCmd.Parameters.Add(iswl);

            SqlParameter isbk = new SqlParameter("@isbk", SqlDbType.Bit, 1);
            isbk.Value = P_Bool_isbk;
            myCmd.Parameters.Add(isbk);

            SqlParameter owner = new SqlParameter("@owner", SqlDbType.Int, 4);
            owner.Value = P_Int_owner;
            myCmd.Parameters.Add(owner);

            SqlParameter state = new SqlParameter("@state", SqlDbType.Int, 4);
            state.Value = P_Int_state;
            myCmd.Parameters.Add(state);

            SqlParameter applytabid = new SqlParameter("@applytabid", SqlDbType.Int, 4);
            applytabid.Value = P_Int_applytabid;
            myCmd.Parameters.Add(applytabid);

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

        //检查赞助信息是否过期
        public void CheckOverdueSupportTab(DateTime P_Date_now, int P_Int_owner)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_UpdateSupportEndTime", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter owner = new SqlParameter("@owner", SqlDbType.Int, 4);
            owner.Value = P_Int_owner;
            myCmd.Parameters.Add(owner);

            SqlParameter now = new SqlParameter("@now", SqlDbType.NVarChar, 50);
            now.Value = P_Date_now;
            myCmd.Parameters.Add(now);

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

        //商家删除尚未匹配的赞助表时，驳回申请请求中的赞助申请表
        public void FrimAutoRejectStuSupportApply(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAutoRejectStuSupportApply", myConn);
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

        //商家同意一次学生申请
        public void FrimAgreeOperate(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimAgreeOperate", myConn);
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

        public void FrimRefuseOperate(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimRefuseOperate", myConn);
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

        //商家同意申请之后，添加验证状态信息到验证状态表
        public void NewValidateStateTab(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertValidationState", myConn);
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

       

    }
}