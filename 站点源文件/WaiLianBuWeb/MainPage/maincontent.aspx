<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maincontent.aspx.cs" Inherits="WaiLianBuWeb.MainPage.maincontent" %>

<!doctype html>
<html>
<head  runat="server">
<meta charset="utf-8">
<title>无标题文档</title>
<style type="text/css">
body,html {
	margin:0;
	padding:0;
	background-color:rgb(204, 232, 207);
}
a:link {
    text-decoration:none;
}
a:hover {
    text-decoration:none;
}
a:visited {
    text-decoration:none;
}
#content1 {
	width:1264px;
	height:540px;
	margin:0 auto;
}
#tag {
	width:354px;
	height:540px;
	float:left;
	position:relative;
	left:910px;
    opacity:0.9;
    z-index:8;
}
#tag_1{
    width:354px;
    height:80px;
    text-align:center;
    color:white;
    font-size:32px;
    font-weight:bold;
    padding:30px 0 40px;
    border-bottom:solid 1px white;
}
#tag_2{
    width:354px;
    height:80px;
    text-align:center;
    color:white;
    padding:30px 0;
    font-size:32px;
    font-weight:bold;
    border-bottom:solid 1px white;
}
#tag_3{
    width:354px;
    height:60px;
    text-align:center;
    color:white;
    padding:20px 0;
    border-bottom:solid 1px white;
}
#tag_4{
    width:304px;
    height:80px;
    text-align:center;
    color:white;
    padding:30px 25px;
    font-size:14px;
    line-height:27.7px;
    font-weight:normal;
}
#bottom {
    margin:0 auto;
    width:220px;
    height:60px;
    line-height:60px;
    background-image:url("../img/tag_3img.png");
    font-size:30px;
    font-weight:bolder;
    cursor:pointer;
}
#background{
    position:relative;
    top:-540px;
}
#content2 {
	width:1264px;
	height:540px;
	margin:0 auto;
	background-color:#C0C0C0;
}
#list{
	width:910px;
	height:540px;
	float:left;
    padding:0;
    margin:0;
}
#adv {
	width:354px;
	height:540px;
	float:left;
	background-color:white;
}
.advcontent {
    padding:9px 0 10px;
    width:100%;
    height:60px;
    padding-left:26px;
}
.advcontentimg {
    float:left;
}
.advcontentright {
    float:left;
    padding-left:20px;
    line-height:30px;
}
.advrighttop {
    font-size:19px;
}
.advrightbottom {
    color:#787878;
    font-size:15px;
}
#content3 {
	width:1264px;
	height:540px;
	margin:0 auto;
	background-color:#fff;
}

#school{
	width:628px;
	height:540px;
	float:left;
    background-color:#fff;
    padding:0 2px;
}
#content3top{
    width:632px;
    height:44px;
    color:#1e97de;
    font-size:26px;
    margin-top:10px;
    padding-left:10px;
    border-bottom:solid 3px #1e97de;
}
#content3middle,#content3bottom {
    width:632px;
    height:224px;
    margin-top:10px;
    padding-left:10px;
    border-bottom:solid 1px #ddd;
}

#news {
	width:602px;
	height:540px;
	float:left;
	background-color:#fff;
    padding-left:5px;
}
#newstop{
    width:614px;
    height:44px;
    color:#1e97de;
    font-size:26px;
    margin-top:10px;
    padding-left:10px;
    border-bottom:solid 3px #1e97de;
}
#newsmiddle{
    width:614px;
    height:288px;
    margin-top:10px;
    padding-left:10px;
    line-height:30px;
    font-size:14px;
    border-bottom:solid 1px #ddd;
}
#newsbottom {
    width:614px;
    height:160px;
    margin-top:10px;
    padding-left:10px;
    border-bottom:solid 1px #ddd;
}
#copyright {
	width:100%;
	height:82px;
	line-height:27px;
	color:#FFF;
	text-align:center;
	background-color:#666;
	padding:10px;
	opacity:0.8;
}
</style>
</head>

<body>

    <script language =javascript > 
        var curIndex=0; 
        //时间间隔 单位毫秒 
        var timeInterval=3000; 
        var arr=new Array(); 
        arr[0] = "../img/main_view1.jpg";
        arr[1] = "../img/main_view2.jpg";

        setInterval(changeImg,timeInterval); 
        function changeImg() 
        { 
            var obj = document.getElementById("background");
        if (curIndex==arr.length-1) 
        { 
        curIndex=0; 
        } 
        else 
        { 
        curIndex+=1; 
        } 
        obj.src=arr[curIndex]; 
        } 
        </script> 

       <form id="form1" runat="server">
	    <div id="content1">
    	<div id="tag">
            <div id="tag_1">
                已入驻企业<span style="color:red;font-size:44px;">74</span>家<br /><span style="font-size:20px; font-weight:normal;">提供效果监控</span>
            </div>
            <div id="tag_2">
                已入驻社团<span style="color:red;font-size:44px;">143</span>个<br /><span style="font-size:20px; font-weight:normal;">轻松快捷、足不出户拉赞助</span>
            </div>
            <div id="tag_3">
                <div id="bottom">我要申请赞助</div>
            </div>
            <div id="tag_4">
                你们需要的，就是我们想做的！
                <br />赞助帮，一个服务于商家和学生群体，致力于网上赞助交易的平台！
            </div>
        </div> 
    	<img id="background" src="../img/main_view1.jpg"/>
        </div>
    <div id="content2">
    	<div id="list">
            <table>
            <tr>
                <td>
                    <asp:GridView ID="gvlist_NewSupportInfo" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCommand="gvlist_NewSupportInfo_RowCommand" PageSize=7 OnPageIndexChanging="gvlist_NewSupportInfo_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="none" Width="904px"  HorizontalAlign="Center" EmptyDataRowStyle-HorizontalAlign="Center" EditRowStyle-HorizontalAlign="Center" EditRowStyle-VerticalAlign="Middle" EmptyDataRowStyle-VerticalAlign="Middle" FooterStyle-HorizontalAlign="Center" FooterStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" SelectedRowStyle-HorizontalAlign="Center" SelectedRowStyle-VerticalAlign="Middle" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Center" />
                    <Columns>
                        <%--=========10月15日，我是分割线=========--%>
                       
                        <%--转向商家信息页面，在这个页面里嵌入地图坐标--%>
                        <asp:HyperLinkField DataNavigateUrlFields="owner" DataTextField="username" HeaderText="商家名称" DataNavigateUrlFormatString="~/FrimSupport/FrimInfo.aspx?id={0}" HeaderStyle-Width="20%" HeaderStyle-Height="58px" ItemStyle-Width="20%" ItemStyle-Height="70px" /> <%--=========已更改=========--%>
                        <asp:BoundField DataField="frimtype" HeaderText="商家类型" HeaderStyle-Width="15%" HeaderStyle-Height="58px" ItemStyle-Width="15%" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="location" HeaderText="地区" HeaderStyle-Width="20%" HeaderStyle-Height="58px" ItemStyle-Width="20%" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="supportendtime" HeaderText="截止时间" HeaderStyle-Width="20%" HeaderStyle-Height="58px" ItemStyle-Width="20%" ItemStyle-Height="70px" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" Text="详细信息" HeaderText="赞助详细信息" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Width="15%" HeaderStyle-Height="58px" ItemStyle-Width="15%" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="money" HeaderText="赞助金额" HeaderStyle-Width="10%" HeaderStyle-Height="58px" ItemStyle-Width="10%" ItemStyle-Height="70px" ControlStyle-BackColor="#FF0066" />
                       
                        
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="Black" />
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
    	<div id="adv">
            <div id="adv">
            <div style="text-align:center; font-size:24px; height:56px;font-weight:bold; line-height:56px; background-color:#f8f8f8; padding:5px 0; margin-top:2px;">
                最新入驻社团
            </div>
            <div class="advcontent">
                <div class="advcontentimg">
                    <img src="../img/adv1.jpg" width="60px" height="60px" />
                </div>
                <div class="advcontentright">
                    <div class="advrighttop">
                        计算机学院外联部
                    </div>
                    <div class="advrightbottom">
                        西华师范大学
                    </div>
                </div>
            </div>
            <div class="advcontent">
                <div class="advcontentimg">
                    <img src="../img/adv2.jpg" width="60px" height="60px" />
                </div>
                <div class="advcontentright">
                    <div class="advrighttop">
                        国土资源学院外联部
                    </div>
                    <div class="advrightbottom">
                        西华师范大学
                    </div>
                </div>
            </div>
            <div class="advcontent">
                <div class="advcontentimg">
                    <img src="../img/adv3.jpg" width="60px" height="60px" />
                </div>
                <div class="advcontentright">
                    <div class="advrighttop">
                        西华师范大学教务处
                    </div>
                    <div class="advrightbottom">
                        西华师范大学
                    </div>
                </div>
            </div>
            <div class="advcontent">
                <div class="advcontentimg">
                    <img src="../img/adv4.jpg" width="60px" height="60px" />
                </div>
                <div class="advcontentright">
                    <div class="advrighttop">
                        西华师范大学校团委秘书处
                    </div>
                    <div class="advrightbottom">
                        西华师范大学
                    </div>
                </div>
            </div>
            <div class="advcontent">
                <div class="advcontentimg">
                    <img src="../img/adv5.png" width="60px" height="60px" />
                </div>
                <div class="advcontentright">
                    <div class="advrighttop">
                        西华师范大学校学生会
                    </div>
                    <div class="advrightbottom">
                        西华师范大学
                    </div>
                </div>
            </div>
            <div class="advcontent">
                <div class="advcontentimg">
                    <img src="../img/adv6.jpg" width="60px" height="60px" />
                </div>
                <div class="advcontentright">
                    <div class="advrighttop">
                        西华师范大学社团联合会
                    </div>
                    <div class="advrightbottom">
                        西华师范大学
                    </div>
                </div>
            </div>
        </div>
           
        </div>
    </div>
    <div id="content3">
    	<div id="school">
            <div id="content3top">
                赞助帮学院
            </div>
            <div id="content3middle">
                <div style="width:262px; height:224px; float:left;">
                    <img src="../img/1.jpg" width="230px" height="150px" style="margin-bottom:10px;" /> <br />          
                        我为什么留在学生组织？<br />
                        拉赞助必须要注意的细节 
                </div>
                <div  style="width:350px; height:224px; float:left;">
                    

                    <a style="font-size:22px;"> 如何在一个5分钟的换届竞选演讲中脱颖而出 ？</a> <br /><br /><br /><a style="font-size:10px; line-height:38px;"> 2017-05-10 11:56</a><br /><br />
                    


                     部长也是第一次当部长，很多事不要怪他<br />
 
                     2017年社团年终工作总结范文格式


                </div>
            </div>
            <div id="content3bottom">
                <div style="width:262px; height:224px; float:left;">
                    <img src="../img/2.png" width="230px" height="150px" style="margin-bottom:10px;" /> <br />          
                        

    如何快、稳、准的做校园推广
<br />
                        自动售货机还能变身？ 校园营销...
                </div>
                <div  style="width:350px; height:224px; float:left;">
                    

                    <a style="font-size:22px;"> 

高校创意营销-校园驴客行活动 </a> <br /><br /><br /><br /><br /><a style="font-size:10px; line-height:22px;"> 2017-05-10 11:47</a><br /><br />

    2017高校创意营销方案
<br />
    有道词典脑洞全开赛升级 “脑洞旋...


                </div>
            </div>

        </div> 
    	<div id="news">
            <div id="newstop">
                
校园资讯
            </div>
            <div id="newsmiddle">

                    <img src="../img/3.jpg" width="598px" height="150px"  /> <br />          
                       

    <a style="margin-right:100px;">常禾集团2017年绿色校园公益行活动结束 掀起大学生绿植领养热潮</a>     
    2017-05-10<br />
    <a style="margin-right:234px;">大连外国语大学举办首届校园迷你马拉松活动</a>
    2017-05-10<br />
    <a style="margin-right:190px;">兰州理工大学启动纪念“五四运动”98周年系列活动</a>               
    2017-05-04<br />
    <a style="margin-right:262px;">广东医科大学“爱心回收”活动传递温情</a>                             
    2017-04-26<br />

            </div>
            <div id="newsbottom">
                <div style="width:262px; height:224px; float:left;">
                    <img src="../img/4.jpg" width="230px" height="150px" style="margin-bottom:10px;" /> <br />          
                        

    
                </div>
                <div  style="width:350px; height:224px; float:left; font-size:15px; line-height:30px;">
                    

    <a style="margin-right:26px;">【公告】辛易校园平台积分系统...</a>     2016-10-31<br />
    <a style="margin-right:38px;"> 辛易校园平台广告业务上线公告</a>     2016-10-20<br />
    <a style="margin-right:28px;">【重要通知】平台进行信息整顿...</a>     2016-09-28<br />
    <a style="margin-right:28px;"> 辛易荟第一期社团分享会在广州...</a>     2016-09-28<br />
    <a style="margin-right:70px;"> 辛易校园平台消息系统上线</a>     2016-09-21<br />


                </div>
            </div>
        </div>
    </div>
    
    

       


    <div id="copyright">
    	<p>Copyright © 2017 西华师范大学<br>地址：四川省南充市顺庆区华凤镇西华师范大学（新区）
        </p>
    </div>
        

            <asp:GridView Visible="false" ID="gvlist_student" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnPageIndexChanging="gvlist_student_PageIndexChanging" GridLines="None">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataTextField="username" HeaderText="申请单位" DataNavigateUrlFormatString="~/Student/StuInfo.aspx?id={0}"  />
            </Columns>
        </asp:GridView>
 
           </form>
</body>
</html>
