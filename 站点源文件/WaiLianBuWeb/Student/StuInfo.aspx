<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuInfo.aspx.cs" Inherits="WaiLianBuWeb.Student.StuInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body,html {
            padding:0;
            margin:0
        }


        .menu {
            width:180px;
            height:50px;
            background-color:white;
            margin-left:20px;
            float:left;
            margin-top:7px;
            padding-top:25px;
            text-align:center;
            
        }
        .content {
            width:180px;
            height:50px;
            color:white;
            background-color:#5D7B9D;
             
             float:left;
             margin-top:7px;
             padding-top:25px;
             text-align:center;
        }
        
        #form1 {
            opacity:0.9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        </div>
        <div>
            <div>
                <div class="menu">部门名：</div><div class="content"><asp:Label ID="Labusername" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">学校：</div><div class="content"><asp:Label ID="Labschool" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">年级：</div><div class="content"><asp:Label ID="Labgrade" runat="server" Text="Label"></asp:Label></div>
            </div>
            <div>
                <div class="menu">负责人：</div><div class="content"><asp:Label ID="Labprincipal" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">职务：</div><div class="content"><asp:Label ID="Labjob" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">电话：</div><div class="content"><asp:Label ID="Labphonenum" runat="server" Text="Label"></asp:Label></div>
            </div>
            <div>
                <div class="menu">QQ:</div><div class="content"><asp:Label ID="Labqq" runat="server" Text="Label"></asp:Label></div>

            </div>
        </div>
    </form>
</body>
</html>
