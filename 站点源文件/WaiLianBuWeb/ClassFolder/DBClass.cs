using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WaiLianBuWeb.ClassFolder
{
    public class DBClass
    {

        /// <summary>
        /// 数据库连接
        /// </summary>
        /// <returns>SqlConnection对象</returns>
        public SqlConnection GetConnection()
        {
            string myStr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            return myConn;
        }

        public DataSet GetSupporyDetailInfo(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetSupportDetailInfo", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetValidationState(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetValidationState", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet FrimGetValidationState(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_FrimGetValidationState", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;

        }

        public DataSet GetCommentPageInfo(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetCommentPageInfo", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetFrimBasicInfo(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetFrimBasicInfo", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetFrimJingWeidu(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetFrimJingWeidu", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetCountScoreFive(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetCountScoreFive", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetCountScoreFour(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetCountScoreFour", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetCountScoreThree(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetCountScoreThree", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetCountScoreTwo(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetCountScoreTwo", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetCountScoreOne(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetCountScoreOne", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetAverageScore(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetAverageScore", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetStuBasicInfo(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetStuBasicInfo", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetStuAllBasicInfo(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetStuAllBasicInfo", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }

        public DataSet GetFrimAllBasicInfo(int P_Int_id, string P_Str_srcTable)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetFrimAllBasicInfo", myConn);
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
            SqlDataAdapter da = new SqlDataAdapter(myCmd);
            DataSet ds = new DataSet();
            da.Fill(ds, P_Str_srcTable);
            myCmd.Dispose();
            myConn.Close();
            return ds;
        }
    }
}
