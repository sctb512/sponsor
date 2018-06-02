<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentright.aspx.cs" Inherits="WaiLianBuWeb.Student.studentright1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/rightcontent.css" rel="stylesheet" type="text/css">
    <link href="../lib/Hui-iconfont_v1.0.8/1.0.8/iconfont.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">            
            <div class="grids">
                <div class="onetopgrids">
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont" aria-hidden="true">&#xe627;</i>
                            <h4>最新申请订单</h4>
                            <p>学生提交赞助申请订单</p>
                            <a href="StuApplyToFrimTab.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont" aria-hidden="true">&#xe627;</i>
                                <h4 class="maxh4">最新申请订单</h4>
                            </div></a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont" aria-hidden="true">&#xe606;</i>
                            <h4>最新验证</h4>
                            <p>学生提交验证信息</p>
                            <a href="StuApplyToValidate.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont" aria-hidden="true">&#xe606;</i>
                                <h4 class="maxh4">最新验证</h4>
                            </div></a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont" aria-hidden="true">&#xe603;</i>
                            <h4>新建赞助信息</h4>
                            <p>你可以新建发布一条赞助信息</p>
                            <a href="NewSupportTab.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont" aria-hidden="true">&#xe603;</i>
                                <h4 class="maxh4">新建赞助信息</h4>
                            </div></a>
                        </div>
                    </div>
                </div>
                <div class="onegrids">
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont" aria-hidden="true">&#xe606;</i>
                            <h4>待匹配赞助信息</h4>
                            <p>已发布，暂未匹配</p>
                            <a href="NotMatchSupportTab.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont" aria-hidden="true">&#xe606;</i>
                                <h4 class="maxh4">待匹配赞助信息</h4>
                            </div></a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont">&#xe6e1;</i>
                            <h4>历史赞助信息</h4>
                            <p>已交易完成赞助信息</p>
                            <a href="DisabledSupportTab.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont">&#xe6e1;</i>
                                <h4 class="maxh4">历史赞助信息</h4>
                            </div></a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont">&#xe686;</i>
                            <h4>评价管理</h4>
                            <p>看看他们都评论了什么</p>
                            <a href="ViewComment.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont">&#xe686;</i>
                                <h4 class="maxh4">评价管理</h4>
                            </div></a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>  
    </form>
</body>
</html>
