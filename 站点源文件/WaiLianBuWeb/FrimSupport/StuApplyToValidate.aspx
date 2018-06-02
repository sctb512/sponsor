<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuApplyToValidate.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.StuApplyToValidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body,html {
            margin:0;
            padding:0;
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
        .auto-style3 {
            width:100%;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="auto-style3">
            <tr>
                <td style="vertical-align: middle; text-align: center">
                    <asp:GridView ID="gvlist_newstuapplytovalidate" runat="server" AutoGenerateColumns="False" DataKeyNames="id"  OnPageIndexChanging="gvlist_newstuapplytovalidate_PageIndexChanging" CssClass="auto-style1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" >
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="编号" HeaderStyle-Height="70px" HeaderStyle-Width="10%" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="eventname" HeaderText="活动名称" HeaderStyle-Height="70px" HeaderStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="money" HeaderText="赞助金额" HeaderStyle-Height="70px" HeaderStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" Text="详细信息" HeaderText="赞助要求" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Height="70px" HeaderStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:HyperLinkField DataNavigateUrlFields="owner" DataTextField="username" HeaderText="申请单位" DataNavigateUrlFormatString="~/Student/StuInfo.aspx?id={0}" HeaderStyle-Height="70px" HeaderStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" HeaderText="操作" Text="查看验证" DataNavigateUrlFormatString="~/FrimSupport/FrimValidationPage.aspx?id={0}" HeaderStyle-Height="70px" HeaderStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:HyperLinkField HeaderText="状态" Text="新消息" HeaderStyle-Height="70px" HeaderStyle-Width="10%"  ItemStyle-Height="70px" />
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
        <div style="position:relative;top:-8px;">
            <table class="auto-style3">
                <tr>
                    <td style="text-align:center;">
                        <asp:GridView ID="gvlist_oldstuapplytovalidate" runat="server" AutoGenerateColumns="False" DataKeyNames="id" ShowHeader="false"  OnPageIndexChanging="gvlist_oldstuapplytovalidate_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                             <Columns>
                            <asp:BoundField DataField="id" HeaderText="编号" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="eventname" HeaderText="活动名称" HeaderStyle-Height="70px" ItemStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="money" HeaderText="赞助金额" HeaderStyle-Height="70px" ItemStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" Text="详细信息" HeaderText="赞助要求" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Height="70px" ItemStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:HyperLinkField DataNavigateUrlFields="owner" DataTextField="username" HeaderText="申请单位" DataNavigateUrlFormatString="~/Student/StuInfo.aspx?id={0}" HeaderStyle-Height="70px" ItemStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" Text="查看验证" DataNavigateUrlFormatString="~/FrimSupport/FrimValidationPage.aspx?id={0}" HeaderStyle-Height="70px" ItemStyle-Width="16%" ItemStyle-Height="70px" />
                            <asp:HyperLinkField HeaderText="状态" Text="尚无新消息" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" />
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
