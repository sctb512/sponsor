<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepagecontext.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.homepagecontext" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/homepagecontent.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <iframe src="frimtop.aspx" name="top" id="topcss" scrolling="no" allowTransparency="true" >
        </iframe>
        <div id="middle">
        <iframe name="left" id="leftcss" src="frimleft.aspx" aria-flowto="left" scrolling="no" allowTransparency="true"  ></iframe>
        <iframe name="right" id="rightcss" src="frimright.aspx" aria-flowto="left" scrolling="yes" allowTransparency="true"  > </iframe> 
         </div>    
        <iframe name="buttom" id="buttomcss"src="frimbuttom.aspx" scrolling="no" allowTransparency="true" ></iframe>
    </form>
</body>
</html>
