<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrimValidationPage.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.FrimValidationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body,html {
            margin:0;
            padding:0;
        }
        #form1 {
            opacity:0.9;
            height:576px;
            background-color:white;
        }
        table {
            width:1000px;
            height:522px;
            margin:0 auto;
        }
        td {
            width:250px;
            height:98px;
            border-bottom:solid 1px;
            border-bottom-color:darkgrey;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table runat="server" id="tab_FrimValidation" class="auto-style1">
        <tr runat="server" id="tr_qs">
            <td class="auto-style4">寝室宣传:</td>
            <td class="auto-style3">
                <asp:LinkButton ID="qsdownloadlnk" runat="server" OnClick="qsdownloadlnk_Click">下载验证信息</asp:LinkButton></td>
            <td class="auto-style2">
                <asp:Button ID="qsagreebtn" runat="server" Text="同意" OnClick="qsagreebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                <asp:Button ID="qsrefusebtn" runat="server" Text="拒绝" OnClick="qsrefusebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
            </td>
            <td>
               状态： <asp:Label ID="qsstatelab" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr runat="server" id="tr_cd">
            <td class="auto-style4">传单宣传:</td>
            <td class="auto-style3">
                <asp:LinkButton ID="cddownloadlnk" runat="server" OnClick="cddownloadlnk_Click">下载验证信息</asp:LinkButton></td>
            <td class="auto-style2">
                <asp:Button ID="cdagreebtn" runat="server" Text="同意" OnClick="cdagreebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                <asp:Button ID="cdrefusebtn" runat="server" Text="拒绝" OnClick="cdrefusebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px"  />
            </td>
            <td>
               状态： <asp:Label ID="cdstatelab" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr runat="server" id="tr_hb">
            <td class="auto-style4">海报宣传:</td>
            <td class="auto-style3">
                <asp:LinkButton ID="hbdownloadlnk" runat="server" OnClick="hbdownloadlnk_Click">下载验证信息</asp:LinkButton></td>
            <td class="auto-style2">
                <asp:Button ID="hbagreebtn" runat="server" Text="同意" OnClick="hbagreebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                <asp:Button ID="hbrefusebtn" runat="server" Text="拒绝" OnClick="hbrefusebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
            </td>
            <td>
               状态： <asp:Label ID="hbstatelab" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr runat="server" id="tr_hf">
            <td class="auto-style4">横幅宣传:</td>
            <td class="auto-style3">
                <asp:LinkButton ID="hfdownloadlnk" runat="server" OnClick="hfdownloadlnk_Click">下载验证信息</asp:LinkButton></td>
            <td class="auto-style2">
                <asp:Button ID="hfagreebtn" runat="server" Text="同意" OnClick="hfagreebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px"/>
                <asp:Button ID="hfrefusebtn" runat="server" Text="拒绝" OnClick="hfrefusebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
            </td>
            <td>
               状态： <asp:Label ID="hfstatelab" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr runat="server" id="tr_zb">
            <td class="auto-style4">展板宣传:</td>
            <td class="auto-style3">
                <asp:LinkButton ID="zbdownloadlnk" runat="server" OnClick="zbdownloadlnk_Click">下载验证信息</asp:LinkButton></td>
            <td class="auto-style2">
                <asp:Button ID="zbagreebtn" runat="server" Text="同意" OnClick="zbagreebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px"/>
                <asp:Button ID="zbrefusebtn" runat="server" Text="拒绝" OnClick="zbrefusebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
            </td>
            <td>
               状态： <asp:Label ID="zbstatelab" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr runat="server" id="tr_jp">
            <td class="auto-style4">奖品宣传:</td>
            <td class="auto-style3">
                <asp:LinkButton ID="jpdownloadlnk" runat="server" OnClick="jpdownloadlnk_Click">下载验证信息</asp:LinkButton></td>
            <td class="auto-style2">
                <asp:Button ID="jpagreebtn" runat="server" Text="同意" OnClick="jpagreebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                <asp:Button ID="jprefusebtn" runat="server" Text="拒绝" OnClick="jprefusebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
            </td>
            <td>
               状态： <asp:Label ID="jpstatelab" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr runat="server" id="tr_wl">
            <td class="auto-style4">网络宣传:</td>
            <td class="auto-style3">
                <asp:LinkButton ID="wldownloadlnk" runat="server" OnClick="wldownloadlnk_Click">下载验证信息</asp:LinkButton></td>
            <td class="auto-style2">
                <asp:Button ID="wlagreebtn" runat="server" Text="同意" OnClick="wlagreebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                <asp:Button ID="wlrefusebtn" runat="server" Text="拒绝" OnClick="wlrefusebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
            </td>
            <td>
               状态： <asp:Label ID="wlstatelab" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr runat="server" id="tr_bk">
            <td class="auto-style4">报刊宣传:</td>
            <td class="auto-style3">
                <asp:LinkButton ID="bkdownloadlnk" runat="server" OnClick="bkdownloadlnk_Click">下载验证信息</asp:LinkButton></td>
            <td class="auto-style2">
                <asp:Button ID="bkagreebtn" runat="server" Text="同意" OnClick="bkagreebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />;
                <asp:Button ID="bkrefusebtn" runat="server" Text="拒绝" OnClick="bkrefusebtn_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
            </td>
            <td>
               状态： <asp:Label ID="bkstatelab" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
