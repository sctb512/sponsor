using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.Student
{
    public partial class BigSearch : System.Web.UI.Page
    {
        StuTabOperateClass stoOBJ = new StuTabOperateClass();
        GirdviewRelation gvrOBJ = new GirdviewRelation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
      
            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            DateTime dt;
            string moneyleast = txtMoneyLeast.Text.Trim();
            string moneymost = txtMoneyMost.Text.Trim();
            int count1 = 0;
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    count1++;
                }
            }
            int count2 = 0;
            for (int i = 0; i < CheckBoxList2.Items.Count; i++)
            {
                if (CheckBoxList2.Items[i].Selected)
                {
                    count2++;
                }
            }
            int count3 = 0;
            for (int i = 0; i < CheckBoxList3.Items.Count; i++)
            {
                if (CheckBoxList3.Items[i].Selected)
                {
                    count3++;
                }
            }
            if (txtMoneyLeast.Text == "" || txtMoneyMost.Text == "")
            {
                Response.Write("<script>alert('金额范围不能为空！');</script>");
            }
            else if ((Convert.ToInt32(moneyleast)) >= Convert.ToInt32(moneymost))
            {
                Response.Write("<script>alert('金额填写错误！');</script>");
            }
            else if (txtactivitydate.Text.Trim() == "")
            {
                txtactivitydate.Text = "2111-11-11";
            }
            else if (!(DateTime.TryParseExact(txtactivitydate.Text.Trim(), "yyyy-MM-dd", null, DateTimeStyles.None, out dt)))
            {
                Response.Write("<script>alert('日期填写格式错误！');</script>");
                txtactivitydate.Text = "";
            }
            else if ((Convert.ToDateTime(txtactivitydate.Text.Trim())) < DateTime.Now)
            {
                Response.Write("<script>alert('非法日期！');</script>");
                txtactivitydate.Text = "";
            }
            else if (count1==0)
            {
                Response.Write("<script>alert('商家区域不能为空！');</script>");
            }
            else if (count2 == 0)
            {
                Response.Write("<script>alert('商家类型不能为空！');</script>");
            }
            else if (count3 == 0)
            {
                Response.Write("<script>alert('宣传类型不能为空！');</script>");
            }
            else
            {
                //tab_searchcondition.Visible = false;
                tab_frimsupportinfo.Visible = true;
                gvListBind();
            }
        }

        protected void gvlist_SearchInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "submit")
            {
                //转向赞助申请表申请
                //Response.Write("<script>alert('请填写赞助申请表！');</script>");
                //记得用session["supportid"]记录下选中赞助信息的id
                GridViewRow drv = ((GridViewRow)(((LinkButton)(e.CommandSource)).Parent.Parent));
                Session["supportid"] = gvlist_SearchInfo.DataKeys[drv.RowIndex].Value;
                gvListBind();
                if (Session["username"] == null)
                {
                    Response.Write("<script>alert('请先登录！');parent.location='../Default.aspx';</script>");
                }
                else
                {
                    Response.Redirect("~/Student/FillSupportInfo");
                }
            }
        }

        protected void gvlist_SearchInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_SearchInfo.PageIndex = e.NewPageIndex;
            gvListBind();

        }

        public void gvListBind()
        {
            
                SqlCommand mycmd = gvrOBJ.GetSearchInfo(CheckBoxList1.Items[0].Selected, CheckBoxList1.Items[1].Selected, CheckBoxList1.Items[2].Selected, CheckBoxList1.Items[3].Selected, CheckBoxList1.Items[4].Selected, CheckBoxList1.Items[5].Selected, CheckBoxList1.Items[6].Selected, CheckBoxList2.Items[0].Selected, CheckBoxList2.Items[1].Selected, CheckBoxList2.Items[2].Selected, CheckBoxList2.Items[3].Selected, CheckBoxList2.Items[4].Selected, CheckBoxList2.Items[5].Selected, CheckBoxList2.Items[6].Selected, CheckBoxList2.Items[7].Selected,CheckBoxList3.Items[0].Selected, CheckBoxList3.Items[1].Selected, CheckBoxList3.Items[2].Selected, CheckBoxList3.Items[3].Selected, CheckBoxList3.Items[4].Selected, CheckBoxList3.Items[5].Selected, CheckBoxList3.Items[6].Selected, CheckBoxList3.Items[7].Selected, namingyes.Checked, Convert.ToInt32(supporttype.SelectedItem.Value),txtactivitydate.Text.Trim(),Convert.ToInt32(txtMoneyLeast.Text.Trim()), Convert.ToInt32(txtMoneyMost.Text.Trim()));
                gvrOBJ.GVBind(mycmd, gvlist_SearchInfo, "NoMatchTab");
         
        }
    }
}