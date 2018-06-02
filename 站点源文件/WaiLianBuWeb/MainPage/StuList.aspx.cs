using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.MainPage
{
    public partial class StuList : System.Web.UI.Page
    {
        GirdviewRelation gvrOBJ = new GirdviewRelation();
        StuTabOperateClass stoOBJ = new StuTabOperateClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvListBind2();
        }

        protected void gvlist_student_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_student.PageIndex = e.NewPageIndex;
            gvListBind2();

        }

        public void gvListBind2()
        {
            SqlCommand mycmd = gvrOBJ.GetStudentInfo();
            gvrOBJ.GVBind(mycmd, gvlist_student, "stuinfo");
        }
    }
}