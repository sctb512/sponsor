<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentleft.aspx.cs" Inherits="WaiLianBuWeb.Student.studentleft1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/left.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div id="left">
            	<ul id="accordion" class="accordion">
                	
                            <a href="ChangePassword.aspx" target="right"><li>修改密码</li></a>
                            <a href="ChangePersonInfo.aspx" target="right"><li>修改个人资料</li></a>                                           
                       
                   
                            <a href="UnprovedSupportTab.aspx" target="right"><li>待验证订单</li></a>
                            <a href="SuccessSupportTab.aspx" target="right"><li>申请成功的订单</li></a>
                            <a href="StuWaitForApplyTab.aspx" target="right"><li>申请请求中的订单</li></a>
                            <a href="NewSupportInfo.aspx" target="right"><li>最新赞助信息</li></a>
                            <a href="Collection.aspx" target="right"><li>收藏的商家</li></a>
                            
                       
                            <a href="StuCommentMangement.aspx" target="right"><li>评价管理</li></a>
                            
                       
                </ul>

  
 
                

                
            </div>
    </form>
</body>
</html>
