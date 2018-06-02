<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewComment.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.ViewComment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body,html {
            margin:0;
            padding:0;
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
        <table class="auto-style1">
            <tr>
                <td style="vertical-align: middle; text-align: center">
                    <asp:GridView ID="gvlist_viewcomment" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnPageIndexChanging="gvlist_viewcomment_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="score" HeaderText="分数" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="commenttext" HeaderText="评价内容" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="commenttime" HeaderText="评价时间" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="username" HeaderText="评价人" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                            <asp:BoundField DataField="eventname" HeaderText="活动名称" />
                             <asp:HyperLinkField DataNavigateUrlFields="frimsupporttabid" Text="详细信息" HeaderText="我的赞助信息" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
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
