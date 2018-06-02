<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentright.aspx.cs" Inherits="WaiLianBuWeb.Student.studentright1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/rightcontent.css" rel="stylesheet" type="text/css">
    <link href="../lib/Hui-iconfont_v1.0.8/1.0.8/iconfont.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form" runat="server">
        <div class="container">            
            <div class="grids">
                <div class="onetopgrids">
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont" aria-hidden="true">&#xe606;</i>
                            <h4>待验证订单</h4>
                            <p>已提交，等待商家验证</p>
                            <a href="UnprovedSupportTab.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont" aria-hidden="true">&#xe606;</i>
                                <h4 class="maxh4">待验证订单</h4>
                            </div></a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont" aria-hidden="true">&#xe6e1;</i>
                            <h4>申请成功订单</h4>
                            <p>已经申请成功的订单</p>
                            <a href="SuccessSupportTab.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont" aria-hidden="true">&#xe6e1;</i>
                                <h4 class="maxh4">申请成功订单</h4>
                            </div></a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont" aria-hidden="true">&#xe606;</i>
                            <h4>申请请求中订单</h4>
                            <p>以提交申请，等待商家回复</p>
                            <a href="StuWaitForApplyTab.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont" aria-hidden="true">&#xe606;</i>
                                <h4 class="maxh4">申请请求中订单</h4>
                            </div></a>
                        </div>
                    </div>
                </div>
                <div class="onegrids">
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont" aria-hidden="true">&#xe603;</i>
                            <h4>最新赞助信息</h4>
                            <p>商家发布的最新赞助信息</p>
                            <a href="NewSupportInfo.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont" aria-hidden="true">&#xe603;</i>
                                <h4 class="maxh4">最新赞助信息</h4>
                            </div></a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont">&#xe702;</i>
                            <h4>收藏的商家</h4>
                            <p>我收藏的商家</p>
                            <a href="Collection.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont">&#xe702;</i>
                                <h4 class="maxh4">收藏的商家</h4>
                            </div></a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="info">
                            <i class="fa Hui-iconfont">&#xe6b3;</i>
                            <h4>我的评价</h4>
                            <p>管理我的评价</p>
                            <a href="StuCommentMangement.aspx" target="right"><div class="caption"> 
                                <i class="up Hui-iconfont">&#xe6b3;</i>
                                <h4 class="maxh4">收藏的商家</h4>
                            </div></a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>  
    </form>
</body>
</html>
