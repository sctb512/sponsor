<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studenttop.aspx.cs" Inherits="WaiLianBuWeb.Student.studenttop1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/top.css" rel="stylesheet" type="text/css"/>
    <link href="../lib/Hui-iconfont_v1.0.8/1.0.8/iconfont.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form" runat="server">
   <div id="top">
            	<div id="top_left"><a href="studentright.aspx" target="right"><img src="../img/logo.png"  width="260px" height="150px"/></a>
                </div>
                <div id="top_middle">
                    <div id="mainHeader">赞助帮外联赞助网上平台</div>
                    <div id="viceHeader">Sponsor help -- public relations department online platform </div>
                </div>
                <div id="top_right">
                    
                	<div id="search">
                        <i class="Hui-iconfont" id="ser_log">&#xe709;</i>
                        <div id="ser_wenzi">
                        	<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Student/BigSearch.aspx" Target="right" ForeColor="White" Font-Overline="false"  onmouseover="this.style.color='#00a7f2';" onmouseout="this.style.color='White'">搜索</asp:HyperLink>
                        </div>
                    </div>
                    <div id="logout">
                        
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">登出</asp:LinkButton>
                    </div>
                </div>
        </div>
    </form>
</body>
</html>
