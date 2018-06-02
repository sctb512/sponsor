<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
<title>无标题文档</title>
<link href="../lib/Hui-iconfont_v1.0.8/1.0.8/iconfont.css" rel="stylesheet" type="text/css">
<link href="../css/xiugaimima.css" rel="stylesheet" type="text/css">
</head>
<body>
   <form id="form" runat="server">
   <div id="content">
  		<table id="table">
        	<tr class="tr_menu">
            <td>
            	<div class="logo_list">
            		<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                	</div>
                    <asp:Label ID="labusername" runat="server" Text="Label"   Width="260px" Height="38px" BorderStyle="None"></asp:Label>
              	</div>
            </td>
    		</tr>
            <tr class="tr_menu">
            <td>
            	<div class="logo_list">
            		<div class="min_ico"><i class="Hui-iconfont">&#xe63f;</i>
                	</div>
               <asp:TextBox ID="txtoldpassword" runat="server"  Width="260px" Height="38px" BorderStyle="None" placeholder="原密码" TextMode="Password"></asp:TextBox>
               </div>
            </td>
    		</tr>
            <tr class="tr_menu">
            <td>
            	<div class="logo_list">
            		<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                	</div>
               <asp:TextBox ID="txtnewpassword" runat="server"  Width="260px" Height="38px" BorderStyle="None" placeholder="新密码" TextMode="Password"></asp:TextBox>
               	</div>
            </td>
    		</tr>
            <tr class="tr_menu">
            <td>
            	<div class="logo_list">
            		<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                	</div>
               
                    <asp:TextBox ID="txtconfrimpassword" runat="server"  Width="260px" Height="38px" BorderStyle="None" placeholder="确认密码" TextMode="Password"></asp:TextBox>
               </div>
            </td>
    		</tr>
            <tr class="tr_menu">
            <td>
            	<div id="logo_btn">
                    <asp:Button ID="btnsubmit" runat="server" Text="完成修改" OnClick="btnsubmit_Click" Width="310px" Height="46px" BackColor="#00A7F2" BorderColor="White" BorderStyle="None" ForeColor="White"  />
              
                   
                </div>
            </td>
    		</tr>
               <asp:Label ID="labpassword" runat="server" Text="Label" Visible="false"></asp:Label>           
          </table>
	</div>
    </form>
</body>
</html>
