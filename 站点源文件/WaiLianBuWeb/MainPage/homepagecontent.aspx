<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepagecontent.aspx.cs" Inherits="WaiLianBuWeb.MainPage.homepagecontent" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<style type="text/css">
body,html {
	margin:0;
	padding:0;
}
#top {
	width:100%;
	height:110px;
	border:none;
}


#content {
	width:100%;
	height:1620px;
	border:none;	
}
#bottom{
	width:100%;
	height:80px;
	border:none;
}
</style>
</head>

<body>
<iframe name="topFrame" id="top" src="top.aspx" aria-flowto="left" scrolling="no" allowTransparency="true" ></iframe>
<iframe name="contentFrame" id="content" src="maincontent.aspx" aria-flowto="left" scrolling="yes" allowTransparency="true" ></iframe> 
<iframe name="bottomFrame" id="bottom" src="bottom.aspx" aria-flowto="left" scrolling="no" allowTransparency="true" ></iframe>
</body>
</html>
