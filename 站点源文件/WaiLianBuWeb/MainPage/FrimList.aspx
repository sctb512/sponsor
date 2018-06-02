<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrimList.aspx.cs" Inherits="WaiLianBuWeb.MainPage.FrimList" %>

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
            height: 20px;
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
        table {
            width: 100%;
        }
        td {
            vertical-align: middle; 
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="gvlist_NewSupportInfo" AllowPaging="true" PageSize="6" PagerSettings-Mode="NextPrevious" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCommand="gvlist_NewSupportInfo_RowCommand" OnPageIndexChanging="gvlist_NewSupportInfo_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%"  >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <%--=========10月15日，我是分割线=========--%>
                        <asp:BoundField DataField="id" HeaderText="赞助单编号" HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" />
                        <%--转向商家信息页面，在这个页面里嵌入地图坐标--%>
                        <asp:HyperLinkField DataNavigateUrlFields="owner" DataTextField="username" HeaderText="商家名称" DataNavigateUrlFormatString="~/FrimSupport/FrimInfo.aspx?id={0}" HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" /> <%--=========已更改=========--%>
                        <asp:BoundField DataField="frimtype" HeaderText="商家类型" HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="money" HeaderText="赞助金额" HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="address" HeaderText="详细地址" HeaderStyle-Width="20%" HeaderStyle-Height="70px" ItemStyle-Width="20%" ItemStyle-Height="70px" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" Text="详细信息" HeaderText="赞助详细信息" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="phonenum" HeaderText="电话号码" HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" />
                        <asp:HyperLinkField DataNavigateUrlFields="qq" DataTextField="qq" HeaderText="QQ（点击联系）" DataNavigateUrlFormatString="http://wpa.qq.com/msgrd?v=3&uin={0}&site=qq&menu=yes" HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px" />
                        <asp:TemplateField  HeaderText="当前状态">
                                <ItemTemplate>
                                    <asp:LinkButton CommandName ="submit" Text="申请赞助" ID ="lnkbtnsubmit" runat="server" HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Width="10%" ItemStyle-Height="70px"  ></asp:LinkButton>
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
