﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WaiLianBuWeb.Student
{
    public partial class studenttop1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["UID"] = null;
            Response.Write("<script>parent.location='../MainPage/MainPage1.aspx';</script>");
        }
    }
}