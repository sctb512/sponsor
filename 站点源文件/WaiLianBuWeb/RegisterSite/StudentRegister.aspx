<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="WaiLianBuWeb.RegisterSite.StudentRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <link href="../lib/Hui-iconfont_v1.0.8/1.0.8/iconfont.css" rel="stylesheet" type="text/css">
<link href="../css/student_register.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        
       
             
            
    <div id="left">
            <div id="leftcontent">
                <div id="lefttop"><img src="../img/logo.png" /></div>
                <div class="leftaline">我们想做一座桥梁</div>
                <div class="leftaline">在您和商家之间</div>
                <div class="leftaline">做一个实用的网上平台</div>
                <div class="leftaline">我们一直在努力</div>
            </div>
        
    </div>
    <div id="right">
    	<div id="register_box">
        	<div id="register_ico">
            	<!--register-->
            </div>
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>
               
                    <asp:TextBox ID="txtbumenname" CssClass="paddleft" runat="server" Width="340px" Height="38px" BorderStyle="None" placeholder="用户名(部门名称)"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtbumenname" ForeColor="Red"></asp:RequiredFieldValidator>
            
              </div>
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
      
              
                    <asp:TextBox ID="txtpassword" CssClass="paddleft" runat="server"  Width="340px" Height="38px" BorderStyle="None" placeholder="密码" TextMode="Password"></asp:TextBox>
                
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*不能为空" ForeColor="Red" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
            
             </div>
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
               
                
                    <asp:TextBox ID="txtpassword2" CssClass="paddleft" runat="server" Width="340px" Height="38px" BorderStyle="None" placeholder="确认密码" TextMode="Password"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtpassword2" ForeColor="Red"></asp:RequiredFieldValidator>
            
             </div>  
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>
               
               
                    <asp:TextBox ID="txtschool" CssClass="paddleft" runat="server" Width="340px" Height="38px" BorderStyle="None" placeholder="学校"></asp:TextBox>
                
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtschool" ErrorMessage="*不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                
              </div>
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>
             
               
                
                    <asp:TextBox ID="txtgrade" CssClass="paddleft" runat="server" Width="340px" Height="38px" BorderStyle="None" placeholder="年级"></asp:TextBox>
                 
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtgrade" ErrorMessage="*不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                 
             </div>
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>
             
                
                
                    <asp:TextBox ID="txtleader" CssClass="paddleft" runat="server" Width="340px" Height="38px" BorderStyle="None" placeholder="部门负责人"></asp:TextBox>
                 
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtleader" ErrorMessage="*不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                 
             </div>
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>
             
               
              
                    <asp:TextBox ID="txtjob" CssClass="paddleft" runat="server" Width="340px" Height="38px" BorderStyle="None" placeholder="负责人职务"></asp:TextBox>
                 
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtjob" ErrorMessage="*不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                 
             </div>
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>
               
                    <asp:TextBox ID="txtphonenum" CssClass="paddleft" runat="server" Width="340px" Height="38px" BorderStyle="None" placeholder="负责人电话"></asp:TextBox>
                 
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtphonenum" ErrorMessage="*不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                 
            </div>
            <div class="register_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>
                
                    <asp:TextBox ID="txtqq" CssClass="paddleft" runat="server" Width="340px" Height="38px" BorderStyle="None" placeholder="负责人QQ"></asp:TextBox>
                 
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtqq" ErrorMessage="*不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                 
            
             </div>          
            <div id="register_btn">
                
                    <asp:Button ID="btnBasic" runat="server" Text="提交" OnClick="btnBasic_Click" Width="404px" Height="38px" BorderStyle="None" BorderColor="White" BackColor="#00A7F2" ForeColor="White" />
                
            
                </div>
        </div>
    </div>
    
    </form>
</body>
</html>
