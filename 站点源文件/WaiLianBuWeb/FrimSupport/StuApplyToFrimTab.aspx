<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuApplyToFrimTab.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.StuApplyToFrimTab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body,html {
            margin:0;
            padding:0;
        }
        body {
            text-align:center;
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
            width:100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="vertical-align: middle; text-align: center">
                    <asp:GridView ID="gvlist_stuapplytofrim" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCommand="gvlist_stuapplytofrim_RowCommand" OnPageIndexChanging="gvlist_stuapplytofrim_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <%--转到学生基本信息页面，即显示此学生的基本信息--%>
                            <asp:BoundField DataField="id" HeaderText="编号"  HeaderStyle-Width="8%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="eventname" HeaderText="活动名称"  HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:HyperLinkField DataNavigateUrlFields="owner" DataTextField="username" HeaderText="申请单位" DataNavigateUrlFormatString="~/Student/StuInfo.aspx?id={0}"  HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="eventdate" HeaderText="活动日期"  HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="submitdate" HeaderText="申请时间"  HeaderStyle-Width="12%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="introduction" HeaderText="活动简介"  HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="appendix" HeaderText="补充条件"  HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:HyperLinkField DataNavigateUrlFields="frimsupporttabid" Text="详细信息" HeaderText="我的赞助信息" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}"  HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:HyperLinkField DataNavigateUrlFields="id" HeaderText="下载赞助书" Text="下载" DataNavigateUrlFormatString="~/DownloadPage/DownloadSupportBook.aspx?id={0}"  HeaderStyle-Width="10%" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:TemplateField HeaderText="操作" HeaderStyle-Height="70px" ItemStyle-Height="70px" >
                                <ItemTemplate>
                                    <asp:LinkButton CommandName ="refuse" Text ="拒绝" ID ="lnkbtnrefuse" runat="server"  ></asp:LinkButton>

                                    <asp:LinkButton CommandName ="agree" Text ="同意" ID ="lnkbtnagree" runat="server"  ></asp:LinkButton>
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
