<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuCommentMangement.aspx.cs" Inherits="WaiLianBuWeb.Student.StuCommentMangement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">      
        body,html {
            padding:0;
            margin:0;
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
        <table style="width: 100%;">
            <tr>
                <td style="vertical-align: middle; text-align: center">
                    <asp:GridView ID="gvlist_stucommentmangement" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnPageIndexChanging="gvlist_stucommentmangement_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="score" HeaderText="分数" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="commenttext" HeaderText="评价内容" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="commenttime" HeaderText="评价时间" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="username" HeaderText="被评价人" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:BoundField DataField="eventname" HeaderText="活动名称" HeaderStyle-Height="70px" ItemStyle-Height="70px"  />
                            <asp:TemplateField  HeaderText="操作" HeaderStyle-Height="70px" ItemStyle-Height="70px" >
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
