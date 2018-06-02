using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WaiLianBuWeb.ClassFolder
{
    public class BasicInfo : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();


        public void AddStuBasicInfo(string P_String_username, string P_String_password, int P_Int_userpower, string P_String_school, string P_String_grade, string P_String_principal, string P_String_job, string P_String_phonenum, string P_String_qq)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertStuBasic", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter username = new SqlParameter("@username", SqlDbType.NVarChar, 50);
            username.Value = P_String_username;
            myCmd.Parameters.Add(username);

            SqlParameter password = new SqlParameter("@password", SqlDbType.NVarChar, 50);
            password.Value = P_String_password;
            myCmd.Parameters.Add(password);

            SqlParameter userpower = new SqlParameter("@userpower", SqlDbType.Int, 50);
            userpower.Value = P_Int_userpower;
            myCmd.Parameters.Add(userpower);

            SqlParameter school = new SqlParameter("@school", SqlDbType.NVarChar, 50);
            school.Value = P_String_school;
            myCmd.Parameters.Add(school);

            SqlParameter grade = new SqlParameter("@grade", SqlDbType.NVarChar, 50);
            grade.Value = P_String_grade;
            myCmd.Parameters.Add(grade);

            SqlParameter principal = new SqlParameter("@principal", SqlDbType.NVarChar, 50);
            principal.Value = P_String_principal;
            myCmd.Parameters.Add(principal);

            SqlParameter job = new SqlParameter("@job", SqlDbType.NVarChar, 50);
            job.Value = P_String_job;
            myCmd.Parameters.Add(job);

            SqlParameter phonenum = new SqlParameter("@phonenum", SqlDbType.NVarChar, 50);
            phonenum.Value = P_String_phonenum;
            myCmd.Parameters.Add(phonenum);

            SqlParameter qq = new SqlParameter("@qq", SqlDbType.NVarChar, 50);
            qq.Value = P_String_qq;
            myCmd.Parameters.Add(qq);

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

        public void AddFrimBasicInfo(string P_String_username, string P_String_password, int P_Int_userpower, string P_String_boss, string P_String_location, string P_String_address, string P_String_frimtype, string P_String_phonenum, string P_String_qq,int P_Int_score,string P_String_jingdu,string P_String_weidu)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Pro_InsertFrimBasic", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter username = new SqlParameter("@username", SqlDbType.NVarChar, 50);
            username.Value = P_String_username;
            myCmd.Parameters.Add(username);

            SqlParameter password = new SqlParameter("@password", SqlDbType.NVarChar, 50);
            password.Value = P_String_password;
            myCmd.Parameters.Add(password);

            SqlParameter userpower = new SqlParameter("@userpower", SqlDbType.Int, 50);
            userpower.Value = P_Int_userpower;
            myCmd.Parameters.Add(userpower);

            SqlParameter boss = new SqlParameter("@boss", SqlDbType.NVarChar, 50);
            boss.Value = P_String_boss;
            myCmd.Parameters.Add(boss);

            SqlParameter location = new SqlParameter("@location", SqlDbType.NVarChar, 50);
            location.Value = P_String_location;
            myCmd.Parameters.Add(location);

            SqlParameter address = new SqlParameter("@address", SqlDbType.NVarChar, 50);
            address.Value = P_String_address;
            myCmd.Parameters.Add(address);

            SqlParameter frimtype = new SqlParameter("@frimtype", SqlDbType.NVarChar, 50);
            frimtype.Value = P_String_frimtype;
            myCmd.Parameters.Add(frimtype);

            SqlParameter phonenum = new SqlParameter("@phonenum", SqlDbType.NVarChar, 50);
            phonenum.Value = P_String_phonenum;
            myCmd.Parameters.Add(phonenum);

            SqlParameter qq = new SqlParameter("@qq", SqlDbType.NVarChar, 50);
            qq.Value = P_String_qq;
            myCmd.Parameters.Add(qq);

            SqlParameter score = new SqlParameter("@score", SqlDbType.Int, 50);
            score.Value = P_Int_score;
            myCmd.Parameters.Add(score);

            SqlParameter jingdu = new SqlParameter("@jingdu", SqlDbType.NVarChar, 4000);
            jingdu.Value = P_String_jingdu;
            myCmd.Parameters.Add(jingdu);

            SqlParameter weidu = new SqlParameter("@weidu", SqlDbType.NVarChar, 4000);
            weidu.Value = P_String_weidu;
            myCmd.Parameters.Add(weidu);

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

        public void AddStuRecommandInfo(int P_Int_owner, int P_Int_leastmoney, int P_Int_mostmoney, Boolean P_String_islocxhsd, Boolean P_String_islocsqf, Boolean P_String_islochcz, Boolean P_String_islocwxhy, Boolean P_String_islocxs, Boolean P_String_isloccbyxy, Boolean P_String_islocqt, Boolean P_String_istypecy, Boolean P_String_istyperyp, Boolean P_String_istypektv, Boolean P_String_istypeyy, Boolean P_String_istypejd, Boolean P_String_istypefz, Boolean P_String_istypeyh, Boolean P_String_istypeqt)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_InsertStuRecommand", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter owner = new SqlParameter("@owner", SqlDbType.Int, 4);
            owner.Value = P_Int_owner;
            myCmd.Parameters.Add(owner);

            SqlParameter leastmoney = new SqlParameter("@leastmoney", SqlDbType.Int, 4);
            leastmoney.Value = P_Int_leastmoney;
            myCmd.Parameters.Add(leastmoney);

            SqlParameter mostmoney = new SqlParameter("@mostmoney", SqlDbType.Int, 4);
            mostmoney.Value = P_Int_mostmoney;
            myCmd.Parameters.Add(mostmoney);

            SqlParameter islocxhsd = new SqlParameter("@islocxhsd", SqlDbType.Bit, 1);
            islocxhsd.Value = P_String_islocxhsd;
            myCmd.Parameters.Add(islocxhsd);

            SqlParameter islocsqf = new SqlParameter("@islocsqf", SqlDbType.Bit, 1);
            islocsqf.Value = P_String_islocsqf;
            myCmd.Parameters.Add(islocsqf);

            SqlParameter islochcz = new SqlParameter("@islochcz", SqlDbType.Bit, 1);
            islochcz.Value = P_String_islochcz;
            myCmd.Parameters.Add(islochcz);

            SqlParameter islocwxhy = new SqlParameter("@islocwxhy", SqlDbType.Bit, 1);
            islocwxhy.Value = P_String_islocwxhy;
            myCmd.Parameters.Add(islocwxhy);

            SqlParameter islocxs = new SqlParameter("@islocxs", SqlDbType.Bit, 1);
            islocxs.Value = P_String_islocxs;
            myCmd.Parameters.Add(islocxs);

            SqlParameter isloccbyxy = new SqlParameter("@isloccbyxy", SqlDbType.Bit, 1);
            isloccbyxy.Value = P_String_isloccbyxy;
            myCmd.Parameters.Add(isloccbyxy);

            SqlParameter islocqt = new SqlParameter("@islocqt", SqlDbType.Bit, 1);
            islocqt.Value = P_String_islocqt;
            myCmd.Parameters.Add(islocqt);

            //=============我是分割线，10.9日到此为止============

            SqlParameter istypecy = new SqlParameter("@istypecy", SqlDbType.Bit, 1);
            istypecy.Value = P_String_istypecy;
            myCmd.Parameters.Add(istypecy);

            SqlParameter istyperyp = new SqlParameter("@istyperyp", SqlDbType.Bit, 1);
            istyperyp.Value = P_String_istyperyp;
            myCmd.Parameters.Add(istyperyp);

            SqlParameter istypektv = new SqlParameter("@istypektv", SqlDbType.Bit, 1);
            istypektv.Value = P_String_istypektv;
            myCmd.Parameters.Add(istypektv);

            SqlParameter istypeyy = new SqlParameter("@istypeyy", SqlDbType.Bit, 1);
            istypeyy.Value = P_String_istypeyy;
            myCmd.Parameters.Add(istypeyy);

            SqlParameter istypejd = new SqlParameter("@istypejd", SqlDbType.Bit, 1);
            istypejd.Value = P_String_istypejd;
            myCmd.Parameters.Add(istypejd);

            SqlParameter istypefz = new SqlParameter("@istypefz", SqlDbType.Bit, 1);
            istypefz.Value = P_String_istypefz;
            myCmd.Parameters.Add(istypefz);

            SqlParameter istypeyh = new SqlParameter("@istypeyh", SqlDbType.Bit, 1);
            istypeyh.Value = P_String_istypeyh;
            myCmd.Parameters.Add(istypeyh);

            SqlParameter istypeqt = new SqlParameter("@istypeqt", SqlDbType.Bit, 1);
            istypeqt.Value = P_String_istypeqt;
            myCmd.Parameters.Add(istypeqt);

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

        public void GetStuId(string P_String_username)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetStuId", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter username = new SqlParameter("@username", SqlDbType.NVarChar, 50);
            username.Value = P_String_username;
            myCmd.Parameters.Add(username);

            myConn.Open();
            SqlDataReader rd = myCmd.ExecuteReader();
            if (rd.Read())
            {
                Session["StuRegisterId"]= rd["id"];
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }

        public void UpdateStuPassword(int P_Int_id, string P_String_newpassword)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_UpdateStuPassword", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter newpassword = new SqlParameter("@newpassword", SqlDbType.NVarChar, 50);
            newpassword.Value = P_String_newpassword;
            myCmd.Parameters.Add(newpassword);

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

        public void UpdateFrimPassword(int P_Int_id, string P_String_newpassword)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_UpdateFrimPassword", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter newpassword = new SqlParameter("@newpassword", SqlDbType.NVarChar, 50);
            newpassword.Value = P_String_newpassword;
            myCmd.Parameters.Add(newpassword);

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

        public void UpdateStuBasicInfo(int P_Int_id,string P_String_username, string P_String_school, string P_String_grade, string P_String_principal, string P_String_job, string P_String_phonenum, string P_String_qq)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_UpdateStuBasic", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter username = new SqlParameter("@username", SqlDbType.NVarChar, 50);
            username.Value = P_String_username;
            myCmd.Parameters.Add(username);

            SqlParameter school = new SqlParameter("@school", SqlDbType.NVarChar, 50);
            school.Value = P_String_school;
            myCmd.Parameters.Add(school);

            SqlParameter grade = new SqlParameter("@grade", SqlDbType.NVarChar, 50);
            grade.Value = P_String_grade;
            myCmd.Parameters.Add(grade);

            SqlParameter principal = new SqlParameter("@principal", SqlDbType.NVarChar, 50);
            principal.Value = P_String_principal;
            myCmd.Parameters.Add(principal);

            SqlParameter job = new SqlParameter("@job", SqlDbType.NVarChar, 50);
            job.Value = P_String_job;
            myCmd.Parameters.Add(job);

            SqlParameter phonenum = new SqlParameter("@phonenum", SqlDbType.NVarChar, 50);
            phonenum.Value = P_String_phonenum;
            myCmd.Parameters.Add(phonenum);

            SqlParameter qq = new SqlParameter("@qq", SqlDbType.NVarChar, 50);
            qq.Value = P_String_qq;
            myCmd.Parameters.Add(qq);

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

        public void UpdateFrimBasicInfo(int P_Int_id,string P_String_username, string P_String_boss, string P_String_location, string P_String_address, string P_String_frimtype, string P_String_phonenum, string P_String_qq, string P_String_jingdu, string P_String_weidu)
        {
            SqlConnection myConn = dbObj.GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_UpdateFrimBasic", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter id = new SqlParameter("@id", SqlDbType.Int, 4);
            id.Value = P_Int_id;
            myCmd.Parameters.Add(id);

            SqlParameter username = new SqlParameter("@username", SqlDbType.NVarChar, 50);
            username.Value = P_String_username;
            myCmd.Parameters.Add(username);

            SqlParameter boss = new SqlParameter("@boss", SqlDbType.NVarChar, 50);
            boss.Value = P_String_boss;
            myCmd.Parameters.Add(boss);

            SqlParameter location = new SqlParameter("@location", SqlDbType.NVarChar, 50);
            location.Value = P_String_location;
            myCmd.Parameters.Add(location);

            SqlParameter address = new SqlParameter("@address", SqlDbType.NVarChar, 50);
            address.Value = P_String_address;
            myCmd.Parameters.Add(address);

            SqlParameter frimtype = new SqlParameter("@frimtype", SqlDbType.NVarChar, 50);
            frimtype.Value = P_String_frimtype;
            myCmd.Parameters.Add(frimtype);

            SqlParameter phonenum = new SqlParameter("@phonenum", SqlDbType.NVarChar, 50);
            phonenum.Value = P_String_phonenum;
            myCmd.Parameters.Add(phonenum);

            SqlParameter qq = new SqlParameter("@qq", SqlDbType.NVarChar, 50);
            qq.Value = P_String_qq;
            myCmd.Parameters.Add(qq);        

            SqlParameter jingdu = new SqlParameter("@jingdu", SqlDbType.NVarChar, 4000);
            jingdu.Value = P_String_jingdu;
            myCmd.Parameters.Add(jingdu);

            SqlParameter weidu = new SqlParameter("@weidu", SqlDbType.NVarChar, 4000);
            weidu.Value = P_String_weidu;
            myCmd.Parameters.Add(weidu);

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