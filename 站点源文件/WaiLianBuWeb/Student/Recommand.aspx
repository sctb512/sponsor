<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recommand.aspx.cs" Inherits="WaiLianBuWeb.Student.Recommand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 284px">
    <form id="form1" runat="server">
    <div>
    <table style="width: 100%;">
            <tr>
                <td>推荐赞助信息</td>
                
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: center"><asp:GridView ID="gvlist_RecommandSupportInfo" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCommand="gvlist_RecommandSupportInfo_RowCommand" OnPageIndexChanging="gvlist_RecommandSupportInfo_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Height="260px" Width="100%"  >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <%--=========10月15日，我是分割线=========--%>
                        <asp:BoundField DataField="id" HeaderText="赞助单编号" />
                        <%--转向商家信息页面，在这个页面里嵌入地图坐标--%>
                        <asp:HyperLinkField DataNavigateUrlFields="owner" DataTextField="username" HeaderText="商家名称" DataNavigateUrlFormatString="~/FrimSupport/FrimInfo.aspx?id={0}" />
                        <asp:BoundField DataField="frimtype" HeaderText="商家类型" />
                        <asp:BoundField DataField="money" HeaderText="赞助金额" />
                        <asp:BoundField DataField="address" HeaderText="地址" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" Text="详细信息" HeaderText="赞助详细信息" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" />
                        <asp:BoundField DataField="phonenum" HeaderText="电话号码" />
                        <asp:HyperLinkField DataNavigateUrlFields="qq" DataTextField="qq" HeaderText="QQ（点击QQ号可直接联系商家）" DataNavigateUrlFormatString="http://wpa.qq.com/msgrd?v=3&uin={0}&site=qq&menu=yes" />
                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton CommandName ="submit" Text ="申请赞助" ID ="lnkbtnsubmit" runat="server"  ></asp:LinkButton>
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
