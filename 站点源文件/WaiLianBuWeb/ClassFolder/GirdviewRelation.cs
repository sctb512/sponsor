using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace WaiLianBuWeb.ClassFolder
{
    public class GirdviewRelation
    {
        DBClass dbObj = new DBClass();

        //商家登录查看没匹配的赞助信息表
        public SqlCommand GetNoMatchTabcmd(int P_Int_owner)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetNomatchTabInfo", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

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
            return myCmd;
        }

        public void GVBind(SqlCommand sqlcmd, GridView gvName, string P_Str_srcTable)
        {
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            gvName.DataSource = ds.Tables[P_Str_srcTable].DefaultView;
            gvName.DataBind();
        }

        //商家删除尚未被匹配的赞助信息表
        public void DeleteNoMatchSupportInfo(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_DeleteNoMatchSupportInfo", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
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

        }
        //学生登录查看没匹配的赞助信息表
        public SqlCommand StuGetNoMatchTabcmd()
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_StuGetNoMatchTabInfo", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

           /* SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);*/

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
            return myCmd;
        }

        public SqlCommand GetStudentInfo()
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetStudentName", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            /* SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
             id.Value = P_Int_id;
             myCmd.Parameters.Add(id);*/

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
            return myCmd;
        }

        //商家查看赞助申请表
        public SqlCommand FrimViewStuApplyTab(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimGetStuApplyTab", myConn);
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
            return myCmd;
        }

        public SqlCommand FrimViewStuDisabledTab(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimGetStuDisabledTab", myConn);
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
            return myCmd;
        }

        public SqlCommand StuGoToProve(int P_Int_owner)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetStuApplySuccessTab", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

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
            return myCmd;
        }

        public SqlCommand StuWaitForApply(int P_Int_owner)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_StuWaitForApply", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

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
            return myCmd;
        }

        //学生查看的订单
        public SqlCommand SuccessSupport(int P_Int_owner)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetSuccessSupportTab", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

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
            return myCmd;
        }

        public SqlCommand NewStuApplyToValidation(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetNewAtuApplyToValidation", myConn);
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
            return myCmd;
        }

        

        public SqlCommand OldStuApplyToValidation(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetOldAtuApplyToValidation", myConn);
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
            return myCmd;
        }

        public SqlCommand GetSearchInfo(Boolean P_Boolean_isxhsd,Boolean P_Boolean_issqf, Boolean P_Boolean_ishcz, Boolean P_Boolean_iswxhy, Boolean P_Boolean_isxs, Boolean P_Boolean_iscbyxy, Boolean P_Boolean_islocqt, Boolean P_Boolean_iscy, Boolean P_Boolean_isryp, Boolean P_Boolean_isktv, Boolean P_Boolean_isyy, Boolean P_Boolean_jd, Boolean P_Boolean_isfz, Boolean P_Boolean_isyh, Boolean P_Boolean_istypeqt, Boolean P_Boolean_isqs,Boolean P_Boolean_iscd, Boolean P_Boolean_ishb, Boolean P_Boolean_ishf, Boolean P_Boolean_iszb, Boolean P_Boolean_isjp, Boolean P_Boolean_iswl, Boolean P_Boolean_isbk, Boolean P_Boolean_isnaming, int P_Int_supporttype,string P_String_activitydate,int P_Int_leastmoney, int P_Int_mostmoney)
        {

            SqlConnection myConn = dbObj.GetConnection();
            //此坑未填！！！！！！！！！！！
            SqlCommand myCmd = new SqlCommand("Proc_GetSearchInfo", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

             SqlParameter isxhsd = new SqlParameter("@isxhsd", SqlDbType.Bit, 1);
             isxhsd.Value = P_Boolean_isxhsd;
             myCmd.Parameters.Add(isxhsd);

            SqlParameter issqf = new SqlParameter("@issqf", SqlDbType.Bit, 1);
            issqf.Value = P_Boolean_issqf;
            myCmd.Parameters.Add(issqf);

            SqlParameter ishcz = new SqlParameter("@ishcz", SqlDbType.Bit, 1);
            ishcz.Value = P_Boolean_ishcz;
            myCmd.Parameters.Add(ishcz);

            SqlParameter iswxhy = new SqlParameter("@iswxhy", SqlDbType.Bit, 1);
            iswxhy.Value = P_Boolean_iswxhy;
            myCmd.Parameters.Add(iswxhy);

            SqlParameter isxs = new SqlParameter("@isxs", SqlDbType.Bit, 1);
            isxs.Value = P_Boolean_isxs;
            myCmd.Parameters.Add(isxs);

            SqlParameter iscbyxy = new SqlParameter("@iscbyxy", SqlDbType.Bit, 1);
            iscbyxy.Value = P_Boolean_iscbyxy;
            myCmd.Parameters.Add(iscbyxy);

            SqlParameter islocqt = new SqlParameter("@islocqt", SqlDbType.Bit, 1);
            islocqt.Value = P_Boolean_islocqt;
            myCmd.Parameters.Add(islocqt);

            SqlParameter iscy = new SqlParameter("@iscy", SqlDbType.Bit, 1);
            iscy.Value = P_Boolean_iscy;
            myCmd.Parameters.Add(iscy);

            SqlParameter isryp = new SqlParameter("@isryp", SqlDbType.Bit, 1);
            isryp.Value = P_Boolean_isryp;
            myCmd.Parameters.Add(isryp);

            SqlParameter isktv = new SqlParameter("@isktv", SqlDbType.Bit, 1);
            isktv.Value = P_Boolean_isktv;
            myCmd.Parameters.Add(isktv);

            SqlParameter isyy = new SqlParameter("@isyy", SqlDbType.Bit, 1);
            isyy.Value = P_Boolean_isyy;
            myCmd.Parameters.Add(isyy);

            SqlParameter isjd = new SqlParameter("@isjd", SqlDbType.Bit, 1);
            isjd.Value = P_Boolean_jd;
            myCmd.Parameters.Add(isjd);

            SqlParameter isfz = new SqlParameter("@isfz", SqlDbType.Bit, 1);
            isfz.Value = P_Boolean_isfz;
            myCmd.Parameters.Add(isfz);

            SqlParameter isyh = new SqlParameter("@isyh", SqlDbType.Bit, 1);
            isyh.Value = P_Boolean_isyh;
            myCmd.Parameters.Add(isyh);

            SqlParameter istypeqt = new SqlParameter("@istypeqt", SqlDbType.Bit, 1);
            istypeqt.Value = P_Boolean_istypeqt;
            myCmd.Parameters.Add(istypeqt);

            SqlParameter isnaming = new SqlParameter("@isnaming", SqlDbType.Bit, 1);
            isnaming.Value = P_Boolean_isnaming;
            myCmd.Parameters.Add(isnaming);

            SqlParameter supporttype = new SqlParameter("@supporttype", SqlDbType.Int, 4);
            supporttype.Value = P_Int_supporttype;
            myCmd.Parameters.Add(supporttype);

            SqlParameter isqs = new SqlParameter("@isqs", SqlDbType.Bit, 1);
            isqs.Value = P_Boolean_isqs;
            myCmd.Parameters.Add(isqs);

            SqlParameter iscd = new SqlParameter("@iscd", SqlDbType.Bit, 1);
            iscd.Value = P_Boolean_iscd;
            myCmd.Parameters.Add(iscd);

           
            SqlParameter ishb = new SqlParameter("@ishb", SqlDbType.Bit, 1);
            ishb.Value = P_Boolean_ishb;
            myCmd.Parameters.Add(ishb);

           
            SqlParameter ishf = new SqlParameter("@ishf", SqlDbType.Bit, 1);
            ishf.Value = P_Boolean_ishf;
            myCmd.Parameters.Add(ishf);

            
            SqlParameter iszb = new SqlParameter("@iszb", SqlDbType.Bit, 1);
            iszb.Value = P_Boolean_iszb;
            myCmd.Parameters.Add(iszb);

           
            SqlParameter isjp = new SqlParameter("@isjp", SqlDbType.Bit, 1);
            isjp.Value = P_Boolean_isjp;
            myCmd.Parameters.Add(isjp);

            SqlParameter iswl = new SqlParameter("@iswl", SqlDbType.Bit, 1);
            iswl.Value = P_Boolean_iswl;
            myCmd.Parameters.Add(iswl);

            SqlParameter isbk = new SqlParameter("@isbk", SqlDbType.Bit, 1);
            isbk.Value = P_Boolean_isbk;
            myCmd.Parameters.Add(isbk);

            SqlParameter activitydate = new SqlParameter("@activitydate", SqlDbType.NVarChar, 50);
            activitydate.Value = P_String_activitydate;
            myCmd.Parameters.Add(activitydate);

            SqlParameter leastmoney = new SqlParameter("@leastmoney", SqlDbType.Int, 4);
            leastmoney.Value = P_Int_leastmoney;
            myCmd.Parameters.Add(leastmoney);

            SqlParameter mostmoney = new SqlParameter("@mostmoney", SqlDbType.Int, 4);
            mostmoney.Value = P_Int_mostmoney;
            myCmd.Parameters.Add(mostmoney);

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
            return myCmd;
        }

        /*public SqlCommand GetRecommandInfo(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("", myConn);
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
            return myCmd;
        }*/

        public SqlCommand FrimGetSelfNoMatchTabcmd(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimGetSelfNoMatchTab", myConn);
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
            return myCmd;
        }

        public SqlCommand FrimGetSelfComment(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimGetSelfComment", myConn);
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
            return myCmd;
        }

        public SqlCommand GetCollectionInfo(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetCollectionInfo", myConn);
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
            return myCmd;
        }

        public void DeleteCollectionInfo(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_DeleteCollectionInfo", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;
            //添加参数
            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);
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

        }

        public SqlCommand StuGetSelfComment(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_StuGetSelfComment", myConn);
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
            return myCmd;
        }

        public SqlCommand FrimGetSelfComment2(int P_Int_id)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimGetSelfComment2", myConn);
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
            return myCmd;
        }
    }
}