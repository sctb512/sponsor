<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WaiLianBuWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title></title>
    <link href="../lib/Hui-iconfont_v1.0.8/1.0.8/iconfont.css" rel="stylesheet" type="text/css"/>
<link href="../css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="tabRegister" runat="server">
    
    <div id="right">
    	<div id="login_box">
        	<div id="logo_ico">
            	<p>登录赞助帮</p>
            </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>     
                <div id="username">          
                    <asp:TextBox ID="txtusername" CssClass="paddleft" runat="server" Width="190px" Height="38px" placeholder="用户名" BorderStyle="None"></asp:TextBox>
                </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
                <div id="password">  
                <asp:TextBox ID="txtpassword" CssClass="paddleft" runat="server" Width="190px" Height="38px" placeholder="密码" BorderStyle="None" TextMode="Password"></asp:TextBox>
               </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
                    <div id="yanzheng"> 
                    <asp:TextBox ID="txtvalidate" CssClass="paddleft" runat="server" Width="150px" Height="38px" placeholder="验证码" BorderStyle="None"></asp:TextBox><asp:Label ID="lbValidate" runat="server" Font-Size="Medium" ForeColor="#00A7F2"
                              Text="8888" Width="42px" Height="40px" BackColor="White" Font-Names="幼圆"></asp:Label>
                    </div>
             </div>
            <div id="chose">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="userid" Text="学生"/>
                
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="userid" Text="商家" />
            </div>
            <div id="logo_btn">
                    <asp:Button ID="btnRegister" runat="server" Text="登  录" OnClick="btnRegister_Click" Width="260px" Height="38px" BackColor="#00A7F2" BorderColor="White" BorderStyle="None" ForeColor="White" Font-Size="Medium" />
             </div>
            <div id="reg">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterSite/StudentRegister.aspx" Font-Overline="False" ForeColor="Gray" onmouseover="this.style.color='#00a7f2';" onmouseout="this.style.color='#999'">学生注册</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/RegisterSite/FrimRegister.aspx" Text="商家注册" Font-Overline="False" ForeColor="Gray" onmouseover="this.style.color='#00a7f2';" onmouseout="this.style.color='#999'"></asp:HyperLink>
            </div>
        </div>
    </div> 
    </div>
    </div>  
    </form>
    
</body>
</html>
