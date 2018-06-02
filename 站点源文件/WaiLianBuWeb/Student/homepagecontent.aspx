<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepagecontent.aspx.cs" Inherits="WaiLianBuWeb.Student.homepagecontent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="../css/homepagecontent.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   
<iframe src="studenttop.aspx" name="top" id="topcss" scrolling="no">
</iframe>
<div id="middle">
<iframe name="left" id="leftcss" src="studentleft.aspx" aria-flowto="left" scrolling="no" allowTransparency="true" ></iframe>
<iframe name="right" id="rightcss" src="studentright.aspx" aria-flowto="left" scrolling="yes" allowTransparency="true" > </iframe> 
 </div>    
<iframe name="buttom" id="buttomcss"src="studentbuttom.aspx" scrolling="no"></iframe>
    </form>
</body>
</html>
