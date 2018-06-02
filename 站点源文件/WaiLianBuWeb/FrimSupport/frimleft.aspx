<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frimleft.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.frimleft" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/shangjia_left.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="left">
            	<ul id="accordion" class="accordion">
                	
                            <a href="ChangePassword.aspx" target="right"><li>修改密码</li></a>
                            <a href="ChangeFrimInfo.aspx" target="_parent"><li>修改公司信息</li></a>

                            <a href="StuApplyToFrimTab.aspx" target="right"><li>学生申请赞助信息</li></a>
                            <a href="StuApplyToValidate.aspx" target="right"><li>学生申请验证信息</li></a>

                       		<a href="NewSupportTab.aspx" target="right"><li>新建赞助信息</li></a>
                            <a href="NotMatchSupportTab.aspx" target="right"><li>待匹配的赞助信息</li></a>                            
                            <a href="DisabledSupportTab.aspx" target="right"><li>历史赞助单</li></a>

                            <a href="ViewComment.aspx" target="right"><li>评论管理</li></a>

                </ul>             

                
        </div>
    </form>
</body>
</html>
