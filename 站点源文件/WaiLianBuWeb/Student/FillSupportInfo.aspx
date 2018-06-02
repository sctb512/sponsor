<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FillSupportInfo.aspx.cs" Inherits="WaiLianBuWeb.Student.FillSupportInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            
            padding:5% 5% 0;
        }
        .auto-style1 {
            width: 100%;
            height: 269px;
            padding:5% 10%;
            background-color:white;
        }
        .auto-style2 {
            height: 56px;
        }
        .auto-style3 {
            width: 401px;
        }
        .auto-style4 {
            height: 56px;
            width: 401px;
        }
        .auto-style5 {
            width: 135px;
        }
        .auto-style6 {
            height: 56px;
            width: 135px;
        }
    </style>
</head>
<body style="height: 363px">
    <form id="form1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">申请赞助表:</td>
            </tr>
            <tr>
                <td class="auto-style5">活动名称:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtactivityname" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtactivityname" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style5">活动日期:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtactivitydate" runat="server" TextMode="Date"></asp:TextBox>&nbsp;
                    格式：2016-10-17</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtactivitydate" ErrorMessage="*不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">活动简介:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtactivityintroduce" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">补充条件:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtappendix" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style5">上传赞助书:</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="upsupportbook" runat="server" /></td>
                <td>*上传文档格式：word</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    </td>
                <td class="auto-style4"></td>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsubmit" runat="server" Text="提交" OnClick="btnsubmit_Click" BackColor="#00A7F2" BorderStyle="None" ForeColor="White" Height="40px" Width="139px" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
