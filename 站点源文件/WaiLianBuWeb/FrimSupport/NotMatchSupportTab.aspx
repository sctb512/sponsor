<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotMatchSupportTab.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.NotMatchSupportTab" %>
<%--商家尚未匹配页面 --%>
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
        <table style="width: 100%;">
            <tr>
                <td style="vertical-align: middle; text-align: center">
                    <asp:GridView ID="gvlist_NoMatchSupport" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDeleting="gvlist_NoMatchSupport_RowDeleting" OnPageIndexChanging="gvlist_NoMatchSupport_PageIndexChanging" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None"  >
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="编号" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="money" HeaderText="赞助金额" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="supportendtime" HeaderText="赞助截止日期" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" Text="详细信息" HeaderText="赞助详细信息" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="state" HeaderText="状态" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:TemplateField HeaderText="操作" HeaderStyle-Height="70px" ItemStyle-Height="70px">
                                <ItemTemplate>
                                    <asp:LinkButton CommandName ="delete" Text ="删除" ID ="lnkbtnDelete" runat="server"  ></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
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
