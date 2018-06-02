<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuWaitForApplyTab.aspx.cs" Inherits="WaiLianBuWeb.Student.StuWaitForApplyTab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body,html {
            padding:0;
            margin:0;
        }
        .auto-style1 {
            width: 100%;
        }
        a:link{
            text-decoration:none;
            color:#00a7f2;
        }
        a:hover{
            text-decoration:underline;
            color:#00a7f2;
        }
        a:visited{
            text-decoration:none;
            color:#00a7f2;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="table" runat="server" class="auto-style1">
            <tr id="tr_menu">
                <td style="vertical-align: middle; text-align: center">
                    <asp:GridView ID="gvlist_waitforapplytab" runat="server"  AutoGenerateColumns="False" DataKeyNames="id"  OnPageIndexChanging="gvlist_waitforapplytab_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" CaptionAlign="Left"> 
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="编号" ControlStyle-BorderWidth="120px" ControlStyle-Height="30px" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="eventname" HeaderText="活动名称" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="money" HeaderText="赞助金额" HeaderStyle-Height="70px" ItemStyle-Height="70px" />                            
                            <asp:HyperLinkField DataNavigateUrlFields="frimsupporttabid" Text="详细信息" HeaderText="赞助要求" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:HyperLinkField DataNavigateUrlFields="owner" DataTextField="username" DataNavigateUrlFormatString="~/FrimSupport/FrimInfo.aspx?id={0}" HeaderText="商家名称" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:HyperLinkField HeaderText="状态" Text="等待商家回复" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
               
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
