<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FillComment.aspx.cs" Inherits="WaiLianBuWeb.Student.FillComment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        html,body {
            padding:0;
            margin:0;
        }
        #content {
            width:100%;
            height:576px;
            background-color:white;
            opacity:0.9;
        }
        .menu {
            width:120px;
            height:40px;
            background-color:darkgray;
            margin-left:20px;
            float:left;
            margin-top:7px;
            padding-top:20px;
            text-align:center;
            
        }
        .content {
            width:140px;
            height:40px;
            color:white;
            background-color:#5D7B9D;
             
             float:left;
             margin-top:7px;
             padding-top:20px;
             text-align:center;
        }
        .aline {
            width:100%;
            height:82px;
        }
        #score {
            width:340px;
            height:60px;
            margin-top:7px;
            float:left;
            
        }
        #txtscore {
            padding:1px 20px;
        }
        #commit {
            width:810px;
            height:69px;
            float:left;
            margin-top:7px;
        }
        #txtcomment {
            padding:2px 20px;
        }
        .notice {
            width:100px;
            height:69px;
            margin-top:7px;
            float:left;
            line-height:69px;
        }
        .button  {
            width:180px;
            height:60px;
            margin-left:956px;
            margin-top:100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="content">
            <div class="aline">
                <div class="menu" style="font-size:20px; font-weight:bold;">订单评价:</div>
            </div>
            <div class="aline">
                <div class="menu">活动名称：</div><div class="content"><asp:Label ID="eventnamelab" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">活动日期：</div><div class="content"><asp:Label ID="eventdatelab" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">商家名称：</div><div class="content"><asp:Label ID="frimnamelab" runat="server" Text="Label"></asp:Label></div>
            </div>
            <div class="aline">
                <div class="menu">打分：</div><div id="score"><asp:TextBox ID="txtscore" runat="server" Width="240px" Height="57px"></asp:TextBox></div>
                <div class="notice"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtscore" ForeColor="Red"></asp:RequiredFieldValidator></div>
            </div>
            <div class="aline">
                <div style="width:120px;height:40px;margin-left:20px;float:left;margin-top:7px; padding-top:20px;text-align:center;">评价：</div><div id="commit"><asp:TextBox ID="txtcomment" runat="server" TextMode="MultiLine" BorderColor="#c0c0c0" Width="953px" Height="146px"></asp:TextBox>
                </div>
                <div class="notice">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtcomment" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="aline">
                <div class="button">
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="submitbtn_Click" BackColor="#00A7F2" BorderStyle="None" ForeColor="White" Height="60px" Width="180px" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
