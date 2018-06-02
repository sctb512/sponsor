<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="top.aspx.cs" Inherits="WaiLianBuWeb.MainPage.top" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<style type="text/css">
	body,html {
		padding:0;
		margin:0;
	}
	#top{
		width:100%;
		height:40px;
		background-color:#1e1e1e;
	}
	#topcontent {
		width:1200px;
		height:30px;
		margin:0 auto;
		padding:5px !important;
	}
	
	#header {
		width:100%;
		height:72px;
		background-color:#fff;
	}
	#headercontent {
	width:1200px;
		height:62px;
		margin:0 auto;
		padding:5px !important;
	}
</style>
</head>

<body>
	<div id="content">
    	<div id="top">
        	<div id="topcontent">
            	<div id="top_left">
                	<div id="login">
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">未登录（点击登录）</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" Visible="false" NavigateUrl="~/Student/StudentHomePage.aspx">个人中心</asp:HyperLink>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <asp:Button ID="Button1" runat="server" Text="退出登录" OnClick="Button1_Click" Visible="false" />
                    </div>
                </div>
                <div id="top_right">
                </div>
            </div>
        </div>
        <div id="header">
        	<div id="headercontent">
            </div>
        </div>
    </div>
</body>
</html>

