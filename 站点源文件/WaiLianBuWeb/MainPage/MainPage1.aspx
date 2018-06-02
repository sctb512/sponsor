<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage1.aspx.cs" Inherits="WaiLianBuWeb.MainPage.MainPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body,html {
            padding:0;
            margin:0;
        }
        .auto-style1 {
            height: 20px;
        }
        #top_left a:link {
            text-decoration:none;
            color:#FFF;
        }
        #top_left a:hover {
            text-decoration:none;
            color:#FFF;
        }
        #top_left a:visited {
            text-decoration:none;
            color:#FFF;
        }
        #head_menu a:link{
            text-decoration:none;
            color:#333;
        }
        #head_menu a:hover{
            text-decoration:none;
            color:#fff;
        }
        #head_menu a:visited{
            text-decoration:none;
            color:#333;
        }
        table {
            width: 100%;
        }
        td {
            vertical-align: middle; 
            text-align: center;
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
		height:72px;
		margin:0 auto;
	}
    #top_left {
        line-height:30px;
    }
    #head_logo {
        width:780px;
        height:72px;
        float:left;
    }
    #head_menu {
        width:280px;
        height:72px;
        float:right;
        line-height:72px;
    }
    .one_menu {
        width:100px;
        height:72px;
        float:right;
        text-align:center;
    }

    .one_menu:hover {
        text-decoration:none;
        background-color:#10cdff;
        color:#fff;
    }
    #content1 {
	width:1264px;
	height:540px;
	margin:0 auto;
	background-color:#330;
}
#tag {
	width:334px;
	height:540px;
	float:left;
	position:relative;
	left:930px;
	background-color:#909;
}
#content2 {
	width:1264px;
	height:540px;
	margin:0 auto;
	background-color:#C0C0C0;
}
#list{
	width:930px;
	height:540px;
	float:left;
	background-color:#C00;
}
#adv {
	width:334px;
	height:540px;
	float:left;
	background-color:#0F3;
}
#content3 {
	width:1264px;
	height:540px;
	margin:0 auto;
	background-color:#C0C0C0;
}
#school{
	width:632px;
	height:540px;
	float:left;
	background-color:#030;
}
#news {
	width:632px;
	height:540px;
	float:left;
	background-color:#FF3;
}
#maincontnt {
    width:100%;
    height:1000px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="content">
    	<div id="top">
        	<div id="topcontent">
            	<div id="top_left">
                	
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx" ForeColor="White" >未登录（点击登录）</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" Visible="false" NavigateUrl="~/Student/StudentHomePage.aspx">个人中心</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink1" runat="server" Visible="false" NavigateUrl="~/FrimSupport/FrimHomePage.aspx">个人中心</asp:HyperLink>
                            <asp:Label ID="Label1" runat="server" ForeColor="#ffffff"></asp:Label>
                            <asp:Button ID="Button1" runat="server" Text="退出登录" OnClick="Button1_Click" Visible="false" BackColor="Black" ForeColor="White" BorderStyle="none" />

                        
                </div>
                <div id="top_right">
                </div>
            </div>
        </div>
        <div id="header">
        	<div id="headercontent">
                <div id="head_logo">
                    <div style="width:178px; height:98px; float:left;">
                        <img src="../img/logo.png" width="178px" height="98px" />
                    </div>
                    <div style="width:478px; height:98px; float:left; padding-top:8px;">
                        <a style="font-size:24px; "> 赞助帮外联赞助网上平台</a><br />
                        Sponsor help -- public relations department online platform
                    </div>
                </div>
                <div id="head_menu">
                    <div class="one_menu" style="width:80px;height:72px;float:right; text-align:center;">
                         <asp:HyperLink ID="HyperLink6" NavigateUrl="~/Student/BigSearch.aspx" runat="server">搜索</asp:HyperLink>
                </div>
                   
                     <div class="one_menu">
                  <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/MainPage/StuList.aspx">学生组织</asp:HyperLink>
                 </div>
                     <div class="one_menu">
                        <asp:HyperLink ID="HyperLink9" runat="server" Target="maincontent" NavigateUrl="~/MainPage/FrimList.aspx">企业赞助</asp:HyperLink>
                    </div>
                         
                         </div>
                 
            </div>
        </div>
    </div>


    <iframe name="maincontent" width="1345px" height="1720px" src="maincontent.aspx" id="maincontent" scrolling="no"></iframe>
    
    
         
       


    <div>
        
       
    </div>
    </form>
</body>
</html>

