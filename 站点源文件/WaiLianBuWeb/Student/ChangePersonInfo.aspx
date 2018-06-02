<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePersonInfo.aspx.cs" Inherits="WaiLianBuWeb.Student.ChangePersonInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
<title>无标题文档</title>
<link href="../css/xiugaiziliao.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
   
                <div id="content">
	    <div class="register_list">
            <div class="min_ico">部门名
            </div>
            <asp:TextBox ID="txtusername" CssClass="txtpadding" Width="240px" Height="30px" runat="server" AutoPostBack="true" OnTextChanged="txtusername_TextChanged" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtusername" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </div>
        <div class="register_list">
            <div class="min_ico">学校
            </div>
            <asp:TextBox ID="txtschool" CssClass="txtpadding" Width="240px" Height="30px" runat="server" BorderStyle="None"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtschool" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
        <div class="register_list">
            <div class="min_ico">年级
            </div>
            <asp:TextBox ID="txtgrade" CssClass="txtpadding" Width="240px" Height="30px" runat="server" BorderStyle="None"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtgrade" ForeColor="Red"></asp:RequiredFieldValidator>
               
                    </div>  
        <div class="register_list">
            <div class="min_ico">负责人
            </div>
            <asp:TextBox ID="txtprincipal" CssClass="txtpadding" Width="240px" Height="30px" runat="server" BorderStyle="None"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtprincipal" ForeColor="Red"></asp:RequiredFieldValidator>
              
                   </div>
        <div class="register_list">
            <div class="min_ico">职务
            </div>
            <asp:TextBox ID="txtjob" CssClass="txtpadding" Width="240px" Height="30px" runat="server" BorderStyle="None"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtjob" ForeColor="Red"></asp:RequiredFieldValidator>
             
                      </div>
        <div class="register_list">
            <div class="min_ico">电话
            </div>
            <asp:TextBox ID="txtphonenum" CssClass="txtpadding" Width="240px" Height="30px" runat="server" BorderStyle="None"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtphonenum" ForeColor="Red"></asp:RequiredFieldValidator>
              
                     </div>
        <div class="register_list">
            <div class="min_ico">QQ
            </div>
            <asp:TextBox ID="txtqq" CssClass="txtpadding" Width="240px" Height="30px" runat="server" BorderStyle="None"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtqq" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div id="register_btn">
                    <asp:Button ID="btnsubmit" runat="server" Text="修改" OnClick="btnsubmit_Click" Width="100%" Height="100%" BorderStyle="None" BorderColor="White" BackColor="#00A7F2" ForeColor="White" />
                 </div>
    </div>	
    
    </form>
</body>
</html>
