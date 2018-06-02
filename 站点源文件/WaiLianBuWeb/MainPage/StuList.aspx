<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuList.aspx.cs" Inherits="WaiLianBuWeb.MainPage.StuList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="gvlist_student" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnPageIndexChanging="gvlist_student_PageIndexChanging">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataTextField="username" HeaderText="申请单位" DataNavigateUrlFormatString="~/Student/StuInfo.aspx?id={0}"  />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
