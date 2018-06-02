<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHomePage.aspx.cs" Inherits="WaiLianBuWeb.Student.StudentHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       body {
           
           height:100%;
           height:760px;
           margin:0;
       }

    </style>
    <script type='text/javascript'>
        function myfun() { document.frames[0].frames[2].getElementById("rightcss").src = "..\FrimSupport\SupportDetailInfo.aspx" }

    </script>
</head>
    
<body>
    <form id="form1" runat="server">
   <iframe src="homepagecontent.aspx" width="100%" height="760" scrolling="no">
    </iframe>
    </form>
</body>
</html>
