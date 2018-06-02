<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrimRegister.aspx.cs" Inherits="WaiLianBuWeb.RegisterSite.FirmRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css"
        href="http://www.scgis.net.cn/imap/jsapi/v27/js/dojo/dijit/themes/soria/soria.css"/>
    <link href="../lib/Hui-iconfont_v1.0.8/1.0.8/iconfont.css" rel="stylesheet" type="text/css">
    <link href="../css/business_register.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="http://www.scgis.net.cn/imap/jsapi/v27/"></script>
    <script type="text/javascript">
        function myFunction() {
            //document.getElementById("Text1").value = dojo.ById("Hidden1").value;
            // document.getElementById("Text2").value = dojo.ById("Hidden2").value;
           
            document.getElementById("Text1").value = dojo.byId("Hidden1").value;
            document.getElementById("Text2").value = dojo.byId("Hidden2").value;
            alert('地址已确认');
        }

        function init1() {
            // 把token字符串替换为你申请的token字符串。
            var token = "-pxvYt1zsn3NWaFKnNvWv1iVoRbXYzGEZvyzDfmjsECvIUR3TwTN364G0ItDlNNr";
            // 切片服务地址，记得一定要在后面加'/mapserver'
            var url = "http://www.scgis.net.cn/imap/iMapServer/DefaultRest/services/SCTileMap/mapserver";
            // 创建一个地图对象，设置其容器为map_container
            var map = new esri.Map("mapShow");
            // 创建一个切片图层对象，把切片的服务地址给它
            var layer = new scgc.layers.SCGISTiledMapServiceLayer(url);
            // token过期处理
            dojo.connect(layer, "onTokenExpired", function (json) {
                layer.setToken(token);
            });
            // 向地图容器中添加切片图层对象
            map.addLayer(layer);
            map.setExtent(new esri.geometry.Extent(106.00, 30.76, 106.17, 30.84));
        }


                  function init() {
            var mapUrl = "http://www.scgis.net.cn/imap/iMapServer/DefaultRest/services/SCTileMap/mapserver";
            var nameSearchUrl = "http://www.scgis.net.cn/iMap/iMapServer/DefaultRest/services/scNameSearch/";
            var token = "-pxvYt1zsn3NWaFKnNvWv1iVoRbXYzGEZvyzDfmjsECvIUR3TwTN364G0ItDlNNr";
            //地图初始函数
            map = new esri.Map("mapShow");
            //初始并加载瓦片图层对象
            TiledMapServiceLayer = new scgc.layers.SCGISTiledMapServiceLayer(mapUrl);
            map.addLayer(TiledMapServiceLayer);
            //注册瓦片图层Token事件
            var dc = dojo.connect(TiledMapServiceLayer, "onTokenExpired", function (json)
            { TiledMapServiceLayer.setToken(token); });
            //声明地名搜索功能对象实例
            var queryShow = new scgc.tasks.NameSearchTask();
            //调用对象实例的execute方法，并录入查询参数
            queryShow.execute({
                keywords: $("#txtusername").val(),//要查询关键字
                type: scgc.tasks.NameSearchTask.DATA, //查询的数据的类型
                startIndex: "0", //返回的数据的开始的索引值
                stopIndex: "12", //返回的数据的结束的索引值
                statePAC: "5113", //市级的行政区代码(5101为成都市)
                countyPAC: "511302", //县级的行政区划代码（510107为武侯区）
                //typeCode: "yl", //要查询的类型（yl为医院）
                url: nameSearchUrl, //查询服务的地址
                token: token, //查询服务的地址
                //回调函数
                callback: function (json, context) {
                    var data = json.message.features;
                    //地图显示点的样式声明
                    var pointsym = new esri.symbol.SimpleMarkerSymbol(
                                   esri.symbol.SimpleMarkerSymbol.STYLE_CIRCLE, 15,
                                   new esri.symbol.SimpleLineSymbol(
                                       esri.symbol.SimpleLineSymbol.STYLE_SOLID,
                                       new dojo.Color([255, 0, 0]), 2),
                                       new dojo.Color([98, 194, 204, 0.5]));
                    //遍历返回的12个数据，在地图上进行显示
                    for (i = 0; i < data.length; i++) {
                        // var infoStr = data[i].attributes[4] + data[i].attributes[5] + data[i].attributes[6] + data[i].attributes[7] + data[i].attributes[8] + data[i].attributes[9];
                        /*dojo.ById('Hidden1').value = data[i].attributes[1];
                        dojo.ById('Hidden2').value = data[i].attributes[2];*/
                        
                        var infoStr = "<div>" +
                        "商家名：" + data[i].attributes[3] + "</br>" +
                        "类型："+data[i].attributes[4] + "</br>" +
                        "城市："+data[i].attributes[5] + "</br>" +
                        "区县：" + data[i].attributes[6] + "</br></br>" +
                        "<input id='Button1' type='button' value='确认地址' onclick='myFunction()' />"+
                        "<input id='Hidden1' type='hidden' value='" + data[i].attributes[1] + "' /><input id='Hidden2' type='hidden' value='" + data[i].attributes[2] + "' />"
                        
                                           
                            "</div>";
                        
                        
                        //声明地图气泡框内容
                        var infotemplate = new esri.InfoTemplate("详细信息", infoStr);
                        //声明数据点坐标
                        var coord = new esri.geometry.Point(
                                       data[i].attributes[1], data[i].attributes[2]);
                        //声明图形层
                        var graphic = new esri.Graphic(coord, pointsym, null, infotemplate);
                        //将图形层加载
                        map.graphics.add(graphic);
                    }
                    map.setExtent(new esri.geometry.Extent(106.00, 30.76, 106.17, 30.84));
                }
            });
 
                  }
                 
        // dojo.addOnLoad(init);
                 /* if ($("#txtusername").val() == null)
                  {
                      
                  }
                  else
                  {
                      dojo.addOnLoad(init);
                  }*/
         dojo.addOnLoad(init);

                  
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
                
    <div id="left">
        <input type="hidden" name="flag" value="0" />
        <div id="mapShow" class="soria" style="width:100%;height:100%;"></div>
    </div>
    <div id="right">
    	<div id="login_box">
        	<div id="logo_ico">
            	<!--logo-->
            </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60d;</i>
                </div>
                    <asp:TextBox ID="txtusername" CssClass="paddleft" runat="server" AutoPostBack="true" onblur="dojo.addOnLoad(init)" Width="240px" Height="38px" placeholder="商家名" BorderStyle="None"></asp:TextBox>
                   
                
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtusername" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
                    <asp:TextBox ID="txtpassword" CssClass="paddleft" runat="server" Width="240px" Height="38px" placeholder="密码" BorderStyle="None" TextMode="Password"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>

                
                    <asp:TextBox ID="txtpassword2" CssClass="paddleft" runat="server" Width="240px" Height="38px" placeholder="确认密码" BorderStyle="None" TextMode="Password"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtpassword2" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
                
                
                    <asp:TextBox ID="txtboss" CssClass="paddleft" runat="server" Width="240px" Height="38px" placeholder="企业负责人" BorderStyle="None"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtboss" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
                
                
                    <asp:DropDownList ID="ddllocation" runat="server" Width="260px" Height="40px" BorderStyle="None" Font-Overline="False">
                        <asp:ListItem Selected="True" Value="0">西华师大（新区）</asp:ListItem>
                        <asp:ListItem Value="1">顺庆府</asp:ListItem>
                        <asp:ListItem Value="2">火车站</asp:ListItem>
                        <asp:ListItem Value="3">五星花园</asp:ListItem>
                        <asp:ListItem Value="4">西山</asp:ListItem>
                        <asp:ListItem Value="5">川北医学院</asp:ListItem>
                        <asp:ListItem Value="6">其他</asp:ListItem>
                    </asp:DropDownList>
                 </div>
            <div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
         
                
                    <asp:TextBox ID="txtaddress" CssClass="paddleft" runat="server" Width="240px" Height="38px" placeholder="具体地址" BorderStyle="None"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
           </div><div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
                
                
                    <asp:DropDownList ID="ddltype" runat="server" Width="260px" Height="40px" BorderStyle="None" Font-Overline="False">
                        <asp:ListItem Value="0" Selected="True">餐饮</asp:ListItem>
                        <asp:ListItem Value="1">日用品</asp:ListItem>
                        <asp:ListItem Value="2">KTV</asp:ListItem>
                        <asp:ListItem Value="3">医院</asp:ListItem>
                        <asp:ListItem Value="4">酒店</asp:ListItem>
                        <asp:ListItem Value="5">服装</asp:ListItem>
                        <asp:ListItem Value="6">银行</asp:ListItem>
                        <asp:ListItem Value="7">其他</asp:ListItem>
                    </asp:DropDownList>
                 </div><div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
          
                
                
                    <asp:TextBox ID="txtphonenum" CssClass="paddleft" runat="server" Width="240px" Height="38px" BorderStyle="None" placeholder="电话"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtphonenum" ForeColor="Red"></asp:RequiredFieldValidator>
         </div><div class="logo_list">
            	<div class="min_ico"><i class="Hui-iconfont">&#xe60e;</i>
                </div>
                
                
                    <asp:TextBox ID="txtqq" CssClass="paddleft" runat="server" Width="240px" Height="38px" placeholder="QQ" BorderStyle="None"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtqq" ForeColor="Red"></asp:RequiredFieldValidator>
       </div>
             <div id="logo_btn">
                
                    <asp:Button ID="btnsubmit" runat="server" Text="提交" OnClick="btnsubmit_Click" Width="310px" Height="46px" BackColor="#00A7F2" BorderColor="White" BorderStyle="None" ForeColor="White" />
                 </div>
        </div>
    </div>
          
         <input id="Text1" type="hidden" runat="server" name="jingdu"/><input id="Text2" type="hidden" runat="server" name="weidu" />
    
    </form>
</body>
</html>
