using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WaiLianBuWeb.ClassFolder;

namespace WaiLianBuWeb.FrimSupport
{
    public partial class StuApplyToFrimTab : System.Web.UI.Page
    {
        GirdviewRelation gvrOBJ = new GirdviewRelation();
        FrimTabOperateClass ftoOBJ = new FrimTabOperateClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Write("<script>parent.location='../Default.aspx';</script>");
                }
                else
                {
                    gvListBind();
                }
            }
        }

          public void gvListBind()
          {
            if (Session["username"] == null)
            {
                Response.Write("<script>parent.location='../Default.aspx';</script>");
            }
            else
            {
                int P_Int_id=Convert.ToInt32(Session["UID"]);
                SqlCommand mycmd = gvrOBJ.FrimViewStuApplyTab(P_Int_id);
                gvrOBJ.GVBind(mycmd, gvlist_stuapplytofrim, "stuapplytofrimtab");
            }
          }

        protected void gvlist_stuapplytofrim_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvlist_stuapplytofrim.PageIndex = e.NewPageIndex;
            gvListBind();
        }

        protected void gvlist_stuapplytofrim_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="agree")
            {
                //将商家赞助表状态置为已匹配（1），对应学生申请赞助表状态置为申请成功（1），其他的全部置为申请失败（2）
                //先跳转回首页
                //此得出的值是表示那行被选中的索引值
                GridViewRow drv = ((GridViewRow)(((LinkButton)(e.CommandSource)).Parent.Parent));
                //P_Int_id是学生赞助表的id
                int P_Int_id=Convert.ToInt32(gvlist_stuapplytofrim.DataKeys[drv.RowIndex].Value);
                ftoOBJ.FrimAgreeOperate(P_Int_id);
                gvListBind();

                //初始化验证，初始化验证状态表信息
                ftoOBJ.NewValidateStateTab(P_Int_id);

                Response.Write("<script>alert('同意成功！');</script>");
               // Response.Redirect("~/FrimSupport/frimright.aspx");
            }
            else if (e.CommandName=="refuse")
            {
                GridViewRow drv = ((GridViewRow)(((LinkButton)(e.CommandSource)).Parent.Parent));
                int P_Int_id = Convert.ToInt32(gvlist_stuapplytofrim.DataKeys[drv.RowIndex].Value);
                ftoOBJ.FrimRefuseOperate(P_Int_id);
                gvListBind();
                Response.Write("<script>alert('拒绝成功！');</script>");
                //Response.Redirect("~/FrimSupport/FrimHomePage.aspx");
            }
        }
    }
}