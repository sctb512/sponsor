using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class FillComment : System.Web.UI.Page
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
                    //此P_Int_id是学生申请赞助表的id
                    P_Int_id = Convert.ToInt32(Request["id"]);
                    DataSet ds = dbObj.GetCommentPageInfo(P_Int_id, "someinfo");
                    eventnamelab.Text = ds.Tables["someinfo"].Rows[0][0].ToString();
                    eventdatelab.Text= ds.Tables["someinfo"].Rows[0][1].ToString();
                    frimnamelab.Text= ds.Tables["someinfo"].Rows[0][2].ToString();
                }
            }
        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            stoOBJ.AddStuComment(Convert.ToInt32(txtscore.Text.Trim()),txtcomment.Text.Trim(),Convert.ToString(DateTime.Now),P_Int_id);
            Response.Redirect("~/Student/BakcToSuccessSupportTab.aspx");
        }
    }
}