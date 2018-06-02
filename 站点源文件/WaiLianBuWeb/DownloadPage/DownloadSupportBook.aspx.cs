using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WaiLianBuWeb.DownloadPage
{
    public partial class DownloadSupportBook : System.Web.UI.Page
    {
        public static int P_Int_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            P_Int_id= Convert.ToInt32(Request["id"]);
            Response.ContentType = "application/msword";

            string myStr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);

            // SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("Proc_GetSupportbook", myConn);
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
                string filepath = rd["supportbookurl"].ToString();
                string filename = filepath.Substring(13);
                Response.TransmitFile(Server.MapPath(filepath));
            }
            rd.Close();
            myCmd.Dispose();
            myConn.Close();
        }
    }
}