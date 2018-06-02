<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuValidatePage.aspx.cs" Inherits="WaiLianBuWeb.Student.StuValidatePage" %>

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
        <table runat="server" id="tab_StuValidation" >
            <tr runat="server" id="tr_qs" visible="true">
                <td>寝室宣传:</td>
                <td>
                    <asp:FileUpload ID="uploadqs" runat="server" BackColor="#c0c0c0" />
                </td>
                <td>
                    <asp:Button ID="btnqs" runat="server" Text="上&nbsp;传" OnClick="btnqs_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px"  />
                </td>
                <td>
                    状态：<asp:Label ID="labqs" runat="server" Text="可以上传"></asp:Label>
                </td>
            </tr>
            <tr runat="server" id="tr_cd">
                <td>传单宣传:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="uploadcd" runat="server" BackColor="#c0c0c0" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btncd" runat="server" Text="上&nbsp;传" OnClick="btncd_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                </td>
                <td>
                    状态：<asp:Label ID="labcd" runat="server" Text="可以上传"></asp:Label>
                </td>
            </tr>
             <tr runat="server" id="tr_hb">
                <td>海报宣传:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="uploadhb" runat="server" BackColor="#c0c0c0" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnhb" runat="server" Text="上&nbsp;传" OnClick="btnhb_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                </td>
                <td>
                    状态：<asp:Label ID="labhb" runat="server" Text="可以上传"></asp:Label>
                </td>
            </tr>
             <tr runat="server" id="tr_hf">
                <td> &nbsp;&nbsp; 横幅宣传</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="uploadhf" runat="server" BackColor="#c0c0c0" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnhf" runat="server" Text="上&nbsp;传" OnClick="btnhf_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                </td>
                <td>
                    状态：<asp:Label ID="labhf" runat="server" Text="可以上传"></asp:Label>
                </td>
            </tr>
             <tr runat="server" id="tr_zb">
                <td>展板宣传:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="uploadzb" runat="server" BackColor="#c0c0c0" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnzb" runat="server" Text="上&nbsp;传" OnClick="btnzb_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                </td>
                <td>
                    状态：<asp:Label ID="labzb" runat="server" Text="可以上传"></asp:Label>
                </td>
            </tr>
             <tr runat="server" id="tr_jp">
                <td>奖品宣传:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="uploadjp" runat="server" BackColor="#c0c0c0" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnjp" runat="server" Text="上&nbsp;传" OnClick="btnjp_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                </td>
                <td>
                    状态：<asp:Label ID="labjp" runat="server" Text="可以上传"></asp:Label>
                </td>
            </tr>
             <tr runat="server" id="tr_wl">
                <td>网络宣传:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="uploadwl" runat="server" BackColor="#c0c0c0" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnwl" runat="server" Text="上&nbsp;传" OnClick="btnwl_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                </td>
                <td>
                    状态：<asp:Label ID="labwl" runat="server" Text="可以上传"></asp:Label>
                </td>
            </tr>
             <tr runat="server" id="tr_bk">
                <td>报刊宣传:</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="uploadbk" runat="server" BackColor="#c0c0c0" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnbk" runat="server" Text="上&nbsp;传" OnClick="btnbk_Click" BackColor="#5D7B9D" BorderColor="White" BorderStyle="None" ForeColor="White" Height="24px" Width="64px" />
                </td>
                <td>
                    状态：<asp:Label ID="labbk" runat="server" Text="可以上传"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
