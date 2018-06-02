<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrimInfo.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.FrimInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript" src="../Scripts/jquery-1.10.2.js"></script>
    <link rel="stylesheet" type="text/css"  href="http://www.scgis.net.cn/imap/jsapi/v27/js/dojo/dijit/themes/soria/soria.css"/>
    <script type="text/javascript" src="http://www.scgis.net.cn/imap/jsapi/v27/"></script>
    <script type="text/javascript" src="http://api.tianditu.com/js/maps.js"></script>
	<script type="text/javascript" src="http://api.tianditu.com/js/service.js"></script> 
    <script type="text/javascript">



       /* function myFunction()
        {
            //alert('1111');

            var username = document.getElementById("Text1").value;
            var jingdu = document.getElementById("Text2").value;
            var weidu = document.getElementById("Text3").value;
            var phonenum = document.getElementById("Text4").value;
            var qq = document.getElementById("Text5").value;
            var address = document.getElementById("Text6").value;
            var boss = document.getElementById("Text7").value;
            //alert(username);
            var JsonString = {
                "Username": username,
                "Jingdu": jingdu,
                "Weidu": weidu,
                "Phonenum": phonenum,
                "QQ": qq,
                "Address": address,
                "Boss": boss
            }

            var shortPathUrl = "http://www.scgis.net.cn/iMap/iMapServer/DefaultRest/services/scShortpath/";
            var token = "-pxvYt1zsn3NWaFKnNvWv6aQ4M6IHPm3my4BmVf0bnDnunqntLQd6uZjmh4MHOx1";
            var startgeo = new esri.geometry.Point(106.087585, 30.801835);//起点的几何对象
            var endgeo= new esri.geometry.Point(
                              JsonString.Jingdu * 1, JsonString.Weidu * 1);
            //声明路径分析功能对象实例
            var pathShow = new scgc.tasks.ShortPathTask();
            //调用对象实例的execute方法，并录入路径分析参数
            pathShow.execute({
                type: scgc.tasks.ShortPathTask.DATA, //返回的数据的类型
                url: shortPathUrl, //路径分析服务的地址
                start: startgeo, //起点
                stop: endgeo, //终点
                direction: 1, //是否输出方向文本描述信息。
                power: "length", //求最短路径所使用的权值,即可根据用户的需求选择不同的路径方案。
                //此参数可根据先请求的元数据中的信息获取。
                //如power="POWER"表示尽量走高速。power="LENGTH"表示走路程最短。
                token: token, //向服务器发出分析请求的令牌
                error: function (evt) { alert(evt) },
                callback: function (json, context) {  //回调函数
                    var temp = json.message;
                    var pointsym = new esri.symbol.SimpleMarkerSymbol(
                    esri.symbol.SimpleMarkerSymbol.STYLE_CIRCLE, 15, new esri.symbol.SimpleLineSymbol(
                    esri.symbol.SimpleLineSymbol.STYLE_SOLID, new dojo.Color([255, 0, 0]), 0.5),
                    new dojo.Color([98, 194, 204, 0.5])); //地图显示点的样式声明
                    var infotemplate_s = new esri.InfoTemplate("详细信息", "起点"); //声明起点地图气泡框内容
                    var infotemplate_e = new esri.InfoTemplate("详细信息", "终点"); //声明终点地图气泡框内容
                    var startgra = new esri.Graphic(startgeo, pointsym, "", infotemplate_s);
                    //声明起点图形对象；
                    var endgra = new esri.Graphic(endgeo, pointsym, "", infotemplate_e);
                    //声明终点图形对象；
                    map.graphics.add(startgra); //地图图形层加入起点对象得到显示
                    map.graphics.add(endgra); //地图图形层加入终点对象得到显示
                    var Polyline = new esri.geometry.Polyline(temp.route);
                    //以返回值构建的一条路径(几何对象，就是一条线)
                    Polyline.addPath(temp.route.paths[0]);
                    var symbol_path = new esri.symbol.SimpleLineSymbol()
                    .setColor(new dojo.Color([0, 0, 255, 0.5])).setWidth(4); //路径的符号，样式
                    var graphic_path = new esri.Graphic(Polyline, symbol_path); //地图图形对象
                    map.graphics.add(graphic_path); //地图图形层加入路径对象得到显示
                    //map.setExtent(new esri.geometry.Extent(104.051, 30.664, 104.148, 30.720));
                }
            });
        }*/
       
        var map;
        var transitRoute;	//公交搜索对象 
        var obj;			//公交搜索结果 
        var startLngLat;	//起点经纬度 
        var endLngLat;		//终点经纬度 
        var config = {
            policy: 1,	//公交导航的策略参数 
            onSearchComplete: busSearchResult	//检索完成后的回调函数 
        };
        //创建公交搜索对象 
        transitRoute = new TTransitRoute(map, config);

        //公交搜索 
        function searchBus() {

            var username = document.getElementById("Text1").value;
            var jingdu = document.getElementById("Text2").value;
            var weidu = document.getElementById("Text3").value;
            var phonenum = document.getElementById("Text4").value;
            var qq = document.getElementById("Text5").value;
            var address = document.getElementById("Text6").value;
            var boss = document.getElementById("Text7").value;
            //alert(username);
            var JsonString = {
                "Username": username,
                "Jingdu": jingdu,
                "Weidu": weidu,
                "Phonenum": phonenum,
                "QQ": qq,
                "Address": address,
                "Boss": boss
            }

            //清空显示列表 
            document.getElementById("resultDiv").innerHTML = "";
            //清空地图 
            //map.clearOverLays();

            //起点经纬度 
            //var startVal = document.getElementById("start").value.split(",");
            startLngLat = new TLngLat(106.087585, 30.801835);
            //终点经纬度 
            //var endVal = document.getElementById("end").value.split(",");
            endLngLat = new TLngLat(JsonString.Jingdu, JsonString.Weidu);

            //设置公交策略 
            transitRoute.setPolicy(getRadioValue());
            //公交搜索 
            transitRoute.search(startLngLat, endLngLat);
        }

        //显示公交搜索结果 
        function busSearchResult(result) {
            if (transitRoute.getStatus() == 0) {
                //添加起始点 
                //createStartMarker();

                obj = result;
                var resultList = document.createElement("div");
                //获取方案个数  
                var plans = result.getNumPlans();
                for (var i = 0; i < plans; i++) {
                    //获得单条公交结果对象 
                    var plan = result.getPlan(i);

                    //显示单个方案面板 
                    var div = document.createElement("div");
                    div.style.cssText = "font-size:12px; cursor:pointer; border:1px solid #999999;";
                    //闭包 
                    (function (i) {
                        div.onclick = function () {
                            //清空地图 
                            map.clearOverLays();
                            //添加起始点 
                            // createStartMarker();
                            //显示线路 
                            createSegments(obj.getPlan(i));
                        };
                    })(i);

                    //显示方案内容 
                    var describeStr = "<strong>方案" + (i + 1) + "：" + plan.getLineName().join("→") + "，总时间：" + plan.getDuration() + "分，总距离：" + Math.round(plan.getDistance()) + "米</strong>";
                    describeStr += "<div>" + "</div>";

                    //显示每个方案的详细信息 
                    var segmentNum = plan.getNumSegments();
                    for (var m = 0; m < segmentNum; m++) {
                        var line = plan.getDetails(m);
                        var segmentLine = line.getSegmentLine()[0];

                        //经过的公交或地铁的站数 
                        var stationCount = (segmentLine.segmentStationCount != "") ? "，经过" + segmentLine.segmentStationCount + "站" : "";

                        //线路类型1，步行；2，公交；3，地铁；4， 地铁站内换乘 
                        if (line.getSegmentType() == 1) {
                            describeStr += "步行约" + segmentLine.segmentDistance + "米，到达" + line.getStationEnd().name + "，";
                        }
                        else if (line.getSegmentType() == 2) {
                            describeStr += "乘坐" + segmentLine.direction + stationCount + "，到达" + line.getStationEnd().name + "，";
                        }
                        else if (line.getSegmentType() == 3) {
                            describeStr += "乘坐" + segmentLine.direction + stationCount + "，到达" + line.getStationEnd().name + "，";
                        }
                        else if (line.getSegmentType() == 4) {
                            describeStr += "站内换乘，";
                        }
                    }
                    //去掉最后的逗号 
                    describeStr = describeStr.substring(0, describeStr.length - 1);
                    describeStr += "<div>" + "</div>";
                    div.innerHTML = describeStr;
                    resultList.appendChild(div);

                    //在地图上默认显示方案一的线路 
                    if (i == 0) {
                        createSegments(result.getPlan(0));
                    }
                }
                //显示公交搜索结果 
                document.getElementById("resultDiv").appendChild(resultList);
            }
        }

        //显示公交线路 
        function createSegments(plan, planNum) {
            var segmentNum = plan.getNumSegments();
            for (var m = 0; m < segmentNum; m++) {
                var line = plan.getDetails(m);
                var segmentLine = line.getSegmentLine()[0];
                //显示线路 
                createRoute(/*segmentLine.linePoint, line.getSegmentType(), line.getStationStart().lonlat, line.getStationEnd().lonlat*/);
                //显示换乘图标 
                // createMarker(line.getStationStart().lonlat, line.getStationEnd().lonlat, line.getSegmentType());
            }
        }

        //公交线路，pointsStr表示经纬度字符串，type表示线路类型1，步行；2，公交；3，地铁；4， 地铁站内换乘，lnglat表示显示公交或地铁图标的经纬度 
        function createRoute(/*pointsStr, type, lnglatStartStr, lnglatEndStr*/) {

            //alert('1111');

            var username = document.getElementById("Text1").value;
            var jingdu = document.getElementById("Text2").value;
            var weidu = document.getElementById("Text3").value;
            var phonenum = document.getElementById("Text4").value;
            var qq = document.getElementById("Text5").value;
            var address = document.getElementById("Text6").value;
            var boss = document.getElementById("Text7").value;
            //alert(username);
            var JsonString = {
                "Username": username,
                "Jingdu": jingdu,
                "Weidu": weidu,
                "Phonenum": phonenum,
                "QQ": qq,
                "Address": address,
                "Boss": boss
            }

            var shortPathUrl = "http://www.scgis.net.cn/iMap/iMapServer/DefaultRest/services/scShortpath/";
            var token = "-pxvYt1zsn3NWaFKnNvWv6aQ4M6IHPm3my4BmVf0bnDnunqntLQd6uZjmh4MHOx1";
            var startgeo = new esri.geometry.Point(106.087585, 30.801835);//起点的几何对象
            var endgeo = new esri.geometry.Point(
                              JsonString.Jingdu * 1, JsonString.Weidu * 1);
            //声明路径分析功能对象实例
            var pathShow = new scgc.tasks.ShortPathTask();
            //调用对象实例的execute方法，并录入路径分析参数
            pathShow.execute({
                type: scgc.tasks.ShortPathTask.DATA, //返回的数据的类型
                url: shortPathUrl, //路径分析服务的地址
                start: startgeo, //起点
                stop: endgeo, //终点
                direction: 1, //是否输出方向文本描述信息。
                power: "length", //求最短路径所使用的权值,即可根据用户的需求选择不同的路径方案。
                //此参数可根据先请求的元数据中的信息获取。
                //如power="POWER"表示尽量走高速。power="LENGTH"表示走路程最短。
                token: token, //向服务器发出分析请求的令牌
                error: function (evt) { //alert(evt)
                },
                callback: function (json, context) {  //回调函数
                    var temp = json.message;
                    var pointsym = new esri.symbol.SimpleMarkerSymbol(
                    esri.symbol.SimpleMarkerSymbol.STYLE_CIRCLE, 15, new esri.symbol.SimpleLineSymbol(
                    esri.symbol.SimpleLineSymbol.STYLE_SOLID, new dojo.Color([255, 0, 0]), 0.5),
                    new dojo.Color([98, 194, 204, 0.5])); //地图显示点的样式声明
                    var infotemplate_s = new esri.InfoTemplate("详细信息", "起点"); //声明起点地图气泡框内容
                    var infotemplate_e = new esri.InfoTemplate("详细信息", "终点"); //声明终点地图气泡框内容
                    var startgra = new esri.Graphic(startgeo, pointsym, "", infotemplate_s);
                    //声明起点图形对象；
                    var endgra = new esri.Graphic(endgeo, pointsym, "", infotemplate_e);
                    //声明终点图形对象；
                    map.graphics.add(startgra); //地图图形层加入起点对象得到显示
                    map.graphics.add(endgra); //地图图形层加入终点对象得到显示
                    var Polyline = new esri.geometry.Polyline(temp.route);
                    //以返回值构建的一条路径(几何对象，就是一条线)
                    Polyline.addPath(temp.route.paths[0]);
                    var symbol_path = new esri.symbol.SimpleLineSymbol()
                    .setColor(new dojo.Color([0, 0, 255, 0.5])).setWidth(4); //路径的符号，样式
                    var graphic_path = new esri.Graphic(Polyline, symbol_path); //地图图形对象
                    map.graphics.add(graphic_path); //地图图形层加入路径对象得到显示
                    //map.setExtent(new esri.geometry.Extent(104.051, 30.664, 104.148, 30.720));
                }
            });


           /* //map = new TMap("mapShow");
            //去掉经纬度字符串最后一个分号，并存储在一个数据中。 
            var points = pointsStr.substring(0, pointsStr.length - 1).split(";");
            //存储经纬度的数组 
            var lnglatArr = [];
            for (var i = 0; i < points.length; i++) {
                var lnglat = points[i].split(",");
                lnglatArr.push(new TLngLat(lnglat[0], lnglat[1]));
            }

            //步行 
            if (type == 1) {
                var lineColor = "#2E9531";	//线的颜色 
                var lineStyle = "dashed";	//线的样式 
            }
            else if (type == 2)	//公交 
            {
                var lineColor = "#2C64A7";	//线的颜色 
                var lineStyle = "solid";	//线的样式 
            }
            else if (type == 3)	//地铁 
            {
                var lineColor = "#2C64A7";	//线的颜色 
                var lineStyle = "solid";	//线的样式 
            }
            else	//地铁站内换乘 
            {
                var lineColor = "#2E9531";	//线的颜色 
                var lineStyle = "dashed";	//线的样式 
            }
            */
          
        }

        //添加起始点 
       /* function createStartMarker() {

            var username = document.getElementById("Text1").value;
            var jingdu = document.getElementById("Text2").value;
            var weidu = document.getElementById("Text3").value;
            var phonenum = document.getElementById("Text4").value;
            var qq = document.getElementById("Text5").value;
            var address = document.getElementById("Text6").value;
            var boss = document.getElementById("Text7").value;
            //alert(username);
            var JsonString = {
                "Username": username,
                "Jingdu": jingdu,
                "Weidu": weidu,
                "Phonenum": phonenum,
                "QQ": qq,
                "Address": address,
                "Boss": boss
            }

            var startgeo = new esri.geometry.Point(106.087585, 30.801835);//起点的几何对象
            var endgeo = new esri.geometry.Point(
                              JsonString.Jingdu * 1, JsonString.Weidu * 1);

            var pointsym = new esri.symbol.SimpleMarkerSymbol(
                    esri.symbol.SimpleMarkerSymbol.STYLE_CIRCLE, 15, new esri.symbol.SimpleLineSymbol(
                    esri.symbol.SimpleLineSymbol.STYLE_SOLID, new dojo.Color([255, 0, 0]), 0.5),
                    new dojo.Color([98, 194, 204, 0.5])); //地图显示点的样式声明
            var infotemplate_s = new esri.InfoTemplate("详细信息", "起点"); //声明起点地图气泡框内容
            var infotemplate_e = new esri.InfoTemplate("详细信息", "终点"); //声明终点地图气泡框内容
            var startgra = new esri.Graphic(startgeo, pointsym, "", infotemplate_s);
            //声明起点图形对象；
            var endgra = new esri.Graphic(endgeo, pointsym, "", infotemplate_e);
            //声明终点图形对象；
            map.graphics.add(startgra); //地图图形层加入起点对象得到显示
            map.graphics.add(endgra); //地图图形层加入终点对象得到显示
        }*/

        //获得公交策略 
        function getRadioValue() {
            var obj = document.getElementsByName("planType");
            for (var i = 0; i < obj.length; i++) {
                if (obj[i].checked) {
                    return obj[i].value;
                }
            }
        }

        window.onload = function () {
           
            var username = document.getElementById("Text1").value;
           
            var jingdu = document.getElementById("Text2").value;
            var weidu = document.getElementById("Text3").value;
            var phonenum = document.getElementById("Text4").value;
            var qq = document.getElementById("Text5").value;
            var address = document.getElementById("Text6").value;
            var boss = document.getElementById("Text7").value;
            
            var JsonString = {
                "Username": username,
                "Jingdu": jingdu,
                "Weidu": weidu,
                "Phonenum": phonenum,
                "QQ": qq,
                "Address": address,
                "Boss": boss
            }
           

            function init() {
                var mapUrl = "http://www.scgis.net.cn/imap/iMapServer/DefaultRest/services/SCTileMap/mapserver";
                var nameSearchUrl = "http://www.scgis.net.cn/iMap/iMapServer/DefaultRest/services/scNameSearch/";
                //var shortPathUrl = "http://www.scgis.net.cn/iMap/iMapServer/DefaultRest/services/scShortpath/";
                var token = "-pxvYt1zsn3NWaFKnNvWv6aQ4M6IHPm3my4BmVf0bnDnunqntLQd6uZjmh4MHOx1";
                //地图初始函数
                map = new esri.Map("mapShow");
                var gra = new esri.layers.GraphicsLayer();

                //初始并加载瓦片图层对象
                TiledMapServiceLayer = new scgc.layers.SCGISTiledMapServiceLayer(mapUrl);
                map.addLayer(TiledMapServiceLayer);
                //注册瓦片图层Token事件
                var dc = dojo.connect(TiledMapServiceLayer, "onTokenExpired", function (json)
                { TiledMapServiceLayer.setToken(token); });

                var coord = new esri.geometry.Point(
                              JsonString.Jingdu * 1, JsonString.Weidu * 1);
                
                //地图显示点的样式声明
                var pointsym = new esri.symbol.SimpleMarkerSymbol(
                                   esri.symbol.SimpleMarkerSymbol.STYLE_CIRCLE, 15,
                                   new esri.symbol.SimpleLineSymbol(
                                       esri.symbol.SimpleLineSymbol.STYLE_SOLID,
                                       new dojo.Color([255, 0, 0]), 2),
                                       new dojo.Color([98, 194, 204, 0.5]));

                var infoStr = "<div>" +
                    "商家名：" + JsonString.Username + "</br>" +
                    "地址：" + JsonString.Address + "</br>" +
                    "企业主:" + JsonString.Boss + "</br>" +
                    "电话：" + JsonString.Phonenum + "</br>" +
                    "QQ：" + JsonString.QQ + "</br>" +
                    "<input id='Button1' type='button' value='去这里' onclick='searchBus()'" +
                    "</div>"

                //声明地图气泡框内容
                var infotemplate = new esri.InfoTemplate("详细信息", infoStr);
                //声明数据点坐标
                /*var coord = new esri.geometry.Point(
                              JsonString.Jingdu*1, JsonString.Weidu*1);*/
                //声明图形层
                var graphic = new esri.Graphic(coord, pointsym, "11", infotemplate);
                //alert(graphic);
                // alert(map);
                //将图形层加载
                // map.graphics.add(graphic);
                gra.add(graphic);
                map.addLayer(gra);

                map.setExtent(new esri.geometry.Extent(106.00, 30.76, 106.17, 30.84));

            }

            
            dojo.addOnLoad(init);
            }
        
      
</script>
    <style type="text/css">
        html {
            padding:0;
            margin:0
        }
        body {
            padding:0;
            margin:0;
            opacity:0.9;
        }
         .menu {
            width:188px;
            height:52px;
            background-color:white;
            margin-left:2px;
            float:left;
            margin-top:2px;
            padding-top:25px;
            text-align:center;
            
        }
        #content1,#content2,#content3,#content4,#content5,#content6 {
            width:190px;
            height:52px;
            color:white;
            background-color:#5D7B9D;
             
             float:left;
             margin-top:2px;
             padding-top:25px;
             text-align:center;
        }     
        #form1 {
            background-color:rgba(0,0,0,.5);
        }  
        #pingfen {
            width:662px;
            height:180px;
            float:left;
            padding-top:20px;
            background-color:white;
            position:relative;
            top:-2px;
        }
        .aifo {
            width:662px;
            height:40px;
            border:solid 1px black;
            line-height:40px;
        }
        .td1 {
            width:390px;
            height:40px;
            float:left;
            background-color:white;
            text-align:center;
            color:#00a7f2;
            font-size:22px;
            
        }
        .td2 {
            width:272px;
            height:40px;
            float:left;
            background-color:#5D7B9D;
            text-align:center;
            color:white;
            font-size:22px;
        }
        #zhonghe {
            width:474px;
            height:210px;
            float:left;
            margin-left:2px;
            background-color:white;
            position:relative;
            padding-top:22px;
            top:-5px;
        }
        #tdleft {
            width:200px;
            height:208px;
            background-color:white;
            float:left;
            text-align:center;
            line-height:210px;
        }
        #tdright {
            width:274px;
            height:208px;
            float:left;
            background-color:#5D7B9D;
            text-align:center;
            line-height:210px;
            color:white;
            font-size:34px;

        }
        #FrimIfo {
            width:360px;
        }
    </style>
    <link href="../lib/Hui-iconfont_v1.0.8/1.0.8/iconfont.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <input id="Text7" type="hidden" runat="server" /><input id="Text6" type="hidden" runat="server"  /><input id="Text5" type="hidden" runat="server" /><input id="Text4" type="hidden" runat="server" /><input id="Text3" type="hidden" runat="server"  /><input id="Text2" type="hidden" runat="server"  />
                        <input id="Text1" type="hidden" runat="server"/>
    <div>
        <div>
            <div>
                <div class="menu">
                   商家名： </div><div id="content1"><asp:Label ID="Labfrimname" runat="server" Text="商家名"></asp:Label></div>
            </div>
            <div>
                <div class="menu">电话：</div><div id="content2"><asp:Label ID="Labphonenum" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">Q Q:</div><div id="content3"><asp:Label ID="Labqq" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">收藏：</div><div id="content4"><asp:LinkButton ID="Lnkcollect" runat="server" OnClick="Lnkcollect_Click">收藏商家</asp:LinkButton></div>
            </div>
            <div>
                <div class="menu">地址：</div><div id="content5"><asp:Label ID="Labaddress" runat="server" Text="Label"></asp:Label></div>
                <div class="menu">商家类型：</div><div id="content6"><asp:Label ID="Labfrimtype" runat="server" Text="Label"></asp:Label></div>
            </div>
        </div>
    </div>
        

        <div id="maproad" style="width:1139px;height:460px; margin:-1px 2px auto 2px;">
        <div id="mapShow" class="soria" style="width:759px;height:460px; float:left;opacity:0.9;margin-top:2px;" ></div>
        <div style="width:380px;height:460px;float:left; padding:0; background-color:white; opacity:0.9;margin-top:2px;">
             <div style="font-size:13px; border:none; line-height:47px; text-align:center; background-color:rgba(0,0,0,.5);">

	            <input type="radio" name="planType" value="1" checked="checked"/>较快捷

	            <input type="radio" name="planType" value="2"/>少换乘 

	            <input type="radio" name="planType" value="4"/>少步行

	            <input type="radio" name="planType" value="8"/>不坐地铁

	        </div>
            <div id="resultDiv" style="border-style: none; border-color: inherit; border-width: medium; padding-top:2px; width:380px; line-height:21px; background-color:rgba(220,220,220,.5);"></div>
        </div>
        <div>
            <div>
                <div>
                    <div style="text-align:center; margin-left:2px; margin-top:2px; margin-bottom:2px; ">
                        <asp:GridView ID="gvlist_FrimSupportInfo" runat="server"  AutoGenerateColumns="False" DataKeyNames="id" OnRowCommand="gvlist_FrimSupportInfo_RowCommand" OnPageIndexChanging="gvlist_FrimSupportInfo_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" >
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                            <asp:BoundField DataField="id" HeaderText="赞助单编号" HeaderStyle-Width="275px" HeaderStyle-Height="40px" ItemStyle-Height="40px" />
                            <asp:BoundField DataField="money" HeaderText="赞助金额" HeaderStyle-Width="275px" HeaderStyle-Height="40px" ItemStyle-Height="40px" />
                                <asp:HyperLinkField DataNavigateUrlFields="id" Text="详细信息" HeaderStyle-Width="276px" HeaderText="赞助详细信息" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Height="40px" ItemStyle-Height="40px" />
                                 <asp:TemplateField HeaderText="申请赞助" HeaderStyle-Width="275px" HeaderStyle-Height="40px" ItemStyle-Height="40px">
                                            <ItemTemplate>
                                                <asp:LinkButton CommandName ="submit" Text ="申请赞助" ID ="lnkbtnsubmit" runat="server"  ></asp:LinkButton>
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
                        </div>
                </div>
            </div>
            </div>
            <div id="pingfen">
                 <div class="aifo">
                    <div class="td1 Hui-iconfont">&#xe6ff;&#xe6ff;&#xe6ff;&#xe6ff;&#xe6ff;&nbsp;&nbsp;&nbsp;5分</div><div class="td2"><asp:Label ID="Labscore5" runat="server" Text="Label"></asp:Label>条</div>
                 </div>   
                 <div class="aifo">
                
                    <div class="td1 Hui-iconfont">&#xe6ff;&#xe6ff;&#xe6ff;&#xe6ff;&#xe702;&nbsp;&nbsp;&nbsp;4分</div><div class="td2"><asp:Label ID="Labscore4" runat="server" Text="Label"></asp:Label>条</div>
                 </div>   
                 <div class="aifo">   
                
                
                    <div class="td1 Hui-iconfont">&#xe6ff;&#xe6ff;&#xe6ff;&#xe702;&#xe702;&nbsp;&nbsp;&nbsp;3分</div><div class="td2"><asp:Label ID="Labscore3" runat="server" Text="Label"></asp:Label>条</div>
                 </div>   
                 <div class="aifo">   
                
                
                    <div class="td1 Hui-iconfont">&#xe6ff;&#xe6ff;&#xe702;&#xe702;&#xe702;&nbsp;&nbsp;&nbsp;2分</div><div class="td2"><asp:Label ID="Labscore2" runat="server" Text="Label"></asp:Label>条</div>
                 </div>   
                 <div class="aifo">  
                
                
                    <div class="td1 Hui-iconfont">&#xe6ff;&#xe702;&#xe702;&#xe702;&#xe702;&nbsp;&nbsp;&nbsp;1分</div><div class="td2"><asp:Label ID="Labscore1" runat="server" Text="Label"></asp:Label>条</div>
                 </div>   
            </div>
            <div id="zhonghe">
                <div id="tdleft">综合评分：</div><div id="tdright"><asp:Label ID="Labaveragescore" runat="server" Text="Label"></asp:Label>分</div>
            </div>
        
            <div>
            <div>
                <div>
                    <div style="text-align:center; background-color:white;">
                        <asp:GridView ID="gvlist_StuComment" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnPageIndexChanging="gvlist_StuComment_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" >
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="评价人" HeaderStyle-Width="200px" HeaderStyle-Height="40px" ItemStyle-Height="40px" />
                                <asp:BoundField DataField="score" HeaderText="分数" HeaderStyle-Width="150px" HeaderStyle-Height="40px" ItemStyle-Height="40px" />
                                <asp:BoundField DataField="commenttext" HeaderText="评价内容" HeaderStyle-Width="250px" HeaderStyle-Height="40px" ItemStyle-Height="40px" />
                                <asp:BoundField DataField="eventname" HeaderText="活动名称" HeaderStyle-Width="180px" HeaderStyle-Height="40px" ItemStyle-Height="40px" />
                                <asp:BoundField DataField="commenttime" HeaderText="评价时间" HeaderStyle-Width="250px" HeaderStyle-Height="40px" ItemStyle-Height="40px" />
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
                    </div>
                </div>
            </div>
        </div>
        
        


	        <!-- 结果面板 -->

	        

	                    
	    </div> 
    </form>
</body>
</html>
