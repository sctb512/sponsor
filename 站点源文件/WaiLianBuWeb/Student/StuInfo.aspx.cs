using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class StuInfo : System.Web.UI.Page
    {
        DBClass dbObj = new DBClass();
        public static int P_Int_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                    P_Int_id = Convert.ToInt32(Request["id"]);
                    DataSet ds = dbObj.GetStuBasicInfo(P_Int_id, "detailinfo");
                    Labusername.Text = ds.Tables["detailinfo"].Rows[0][0].ToString();
                    Labschool.Text= ds.Tables["detailinfo"].Rows[0][1].ToString();
                    Labgrade.Text= ds.Tables["detailinfo"].Rows[0][2].ToString();
                    Labprincipal.Text= ds.Tables["detailinfo"].Rows[0][3].ToString();
                    Labjob.Text= ds.Tables["detailinfo"].Rows[0][4].ToString();
                    Labphonenum.Text= ds.Tables["detailinfo"].Rows[0][5].ToString();
                    Labqq.Text= ds.Tables["detailinfo"].Rows[0][6].ToString();
                
            }
         }
    }
}