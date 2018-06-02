<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoToNotMatchSupportTab.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.GoToNotMatchSupportTab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <script type="text/JavaScript">
        var i = 5;
        // 获取登录事件，并处理自动跳转
        function JumpPage()
        {
            document.getElementById("time").innerText = i;
            i--;
            Jump();
        }


        function Jump()
        {
           
           
            // 计时为0后，立即跳转
            
            if (i < 0)
            {
                location.replace("NotMatchSupportTab.aspx");

            }
            else {
                setTimeout("JumpPage()", 1000);
            }

           
        }

        window.onload = function ()
        {
            Jump();
        }
    </script>
</head>

<body>
    <form id="form2" runat="server">
        <div id="AutoJumpPage">
           提交成功！本页将在<span id="time" style="color: #FF0000"></span>秒后自动跳转至<a href="NotMatchSupportTab.aspx">未匹配的赞助表</a>
            <br /><br />
            如需立即跳转，请直接点击 <a href="NotMatchSupportTab.aspx" style="color: #FF00FF">立即跳转>></a>
        </div>
    </form>
</body> 
    </html>
