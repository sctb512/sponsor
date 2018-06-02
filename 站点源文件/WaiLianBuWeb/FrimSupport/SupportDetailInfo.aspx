<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupportDetailInfo.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.SupportDetailInfo" %>

<!DOCTYPE html>
<%--！！！！！！！！！需补齐匹配此条赞助记录的学生信息！！！！！！！！！--%>
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
        #Button1 {
            width:180px;
            height:60px;
            background-color:#00A7F2;
            border:none;
            color:white;
            position:relative;
            left:400px;
            top:16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="padding-top:2px;" >
            
            <div>
                <div class="menu">订单编号：</div><div class="content"><asp:Label ID="Labsupportinfoid" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">赞助截止时间：</div><div class="content"><asp:Label ID="Labsupportendtime" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">提交赞助信息时间：</div><div class="content"><asp:Label ID="Labsubmittime" runat="server" Text="Label"></asp:Label></div>
            </div>
            <div>
                <div class="menu">赞助金额：</div><div class="content"><asp:Label ID="Labmoney" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">是否冠名：</div><div class="content"><asp:Label ID="Labisnaming" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">赞助形式：</div><div class="content"><asp:Label ID="Labsupporttype" runat="server" Text="Label"></asp:Label></div>
            </div>
            <div>
                <div class="menu">寝室宣传：</div><div class="content"><asp:Label ID="Labisqs" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">传单宣传：</div><div class="content"><asp:Label ID="Labiscd" runat="server" Text="Label"></asp:Label>&nbsp;份数：<asp:Label ID="Labcdnum" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">海报宣传：</div><div class="content"><asp:Label ID="Labishb" runat="server" Text="Label"></asp:Label>&nbsp;份数：<asp:Label ID="Labhbnum" runat="server" Text="Label"></asp:Label></div>
            </div>
            <div>
                <div class="menu">横幅宣传：</div><div class="content"><asp:Label ID="Labishf" runat="server" Text="Label"></asp:Label>&nbsp;份数：<asp:Label ID="Labhfnum" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">展板宣传</div><div class="content"><asp:Label ID="Labiszb" runat="server" Text="Label"></asp:Label>&nbsp;份数：<asp:Label ID="Labzbnum" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">奖品宣传：</div><div class="content"><asp:Label ID="Labisjp" runat="server" Text="Label"></asp:Label></div>
            </div>
            <div>
                <div class="menu">网络宣传：</div><div class="content"><asp:Label ID="Labiswl" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">报刊宣传：</div><div class="content"><asp:Label ID="Labisbk" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">状态：</div><div class="content"><asp:Label ID="Labstate" runat="server" Text="Label"></asp:Label></div>
            </div>
            <div>
                <div  class="menu">申请表编号：</div><div class="content"><asp:Label ID="Labapplyid" runat="server" Text="Label"></asp:Label></div>
            </div>
        </div>
    </div>
        <asp:Button ID="Button1" runat="server" Text="申请赞助" OnClick="Button1_Click" />
    </form>
</body>
</html>
