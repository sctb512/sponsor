<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BigSearch.aspx.cs" Inherits="WaiLianBuWeb.Student.BigSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
<title>无标题文档</title>
    <style type="text/css">
        html,body {
            padding:0;
            margin:0;
        }
        #form1 {
            opacity:0.9;
        }
        #content {
            padding-top:15px;
            width:100%;
            height:433px;
            background-color:white;
        }
        #table {
            width:1100px;
	        height:200px;
            margin-left:40px;
        }
        .tr {
	        width:1100px;
	        height:30px;
	        text-align:center;
	        padding:10px 10px;
	        text-align:left;
        }
        .td_01 {
	        width:140px;
            height:30px;
	        text-align:center;
	        height:auto;
	        float:left;
        }
        .td_02 {
	        width:769px;
	        height:30px;
	        float:left;
            height:40px;
        }
        input {
	        margin:0 10px;
        }
        #tr_btn {
	        width:1040px;
	        height:50px;
	        text-align:center;
	        padding:2px 10px;
	        text-align:left;
        }
        #btn {
	        float:right;
	        cursor:pointer;
        }
        #txtMoneyLeast,#txtMoneyMost,#txtactivitydate {
            padding:0 10px;
            background-color:gainsboro;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    	<div id="content">
    	<div id="table">
        	
            <div class="tr">
            	<div class="td_01">商家区域：
                </div>
                <div class="td_02">
        
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="7">
                         <asp:ListItem>西华师大（新区）</asp:ListItem>
                         <asp:ListItem>顺庆府</asp:ListItem>
                         <asp:ListItem>火车站</asp:ListItem>
                         <asp:ListItem>五星花园</asp:ListItem>
                         <asp:ListItem>西山</asp:ListItem>
                         <asp:ListItem>川北医学院</asp:ListItem>
                         <asp:ListItem>其他</asp:ListItem>
                     </asp:CheckBoxList>
                </div>                
            </div>
             <div class="tr">
            	<div class="td_01">商家类型：
                </div>
                <div class="td_02">

                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" RepeatColumns="8">
                        <asp:ListItem Value="餐饮">餐饮</asp:ListItem>
                        <asp:ListItem>日用品</asp:ListItem>
                        <asp:ListItem>KTV</asp:ListItem>
                        <asp:ListItem>医院</asp:ListItem>
                        <asp:ListItem>酒店</asp:ListItem>
                        <asp:ListItem>服装</asp:ListItem>
                        <asp:ListItem>银行</asp:ListItem>
                        <asp:ListItem>其他</asp:ListItem>
                    </asp:CheckBoxList>
               </div>                
            </div>
            <div class="tr">
            	<div class="td_01">宣传形式：
                </div>
                <div class="td_02">
               
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" RepeatColumns="8">
                        <asp:ListItem>寝室宣传</asp:ListItem>
                        <asp:ListItem>传单</asp:ListItem>
                        <asp:ListItem>海报</asp:ListItem>
                        <asp:ListItem>横幅</asp:ListItem>
                        <asp:ListItem>展板</asp:ListItem>
                        <asp:ListItem>奖品宣传</asp:ListItem>
                        <asp:ListItem>网络宣传</asp:ListItem>
                        <asp:ListItem>报刊宣传</asp:ListItem>
                    </asp:CheckBoxList>
              </div>                
            </div>
            <div class="tr">
            	<div class="td_01">是否冠名：
                </div>
                <div class="td_02">
                    <asp:RadioButton ID="namingyes" runat="server" Text="是" GroupName="naming" />&nbsp;
                    <asp:RadioButton ID="namingno" runat="server" Text="否" Checked="true" GroupName="naming" />
             
                </div>                
            </div>
            <div class="tr">
            	<div class="td_01">赞助要求：
                </div>
                <div class="td_02">               
                     <asp:RadioButtonList ID="supporttype" runat="server" RepeatColumns="4">
                        <asp:ListItem Selected="True" Value="0">现金</asp:ListItem>
                        <asp:ListItem Value="1">物品</asp:ListItem>
                        <asp:ListItem Value="2">现金加物品</asp:ListItem>
                        <asp:ListItem Value="3">其他</asp:ListItem>
                    </asp:RadioButtonList>
             
                 </div>                
            </div>
            <div class="tr">
            	<div class="td_01">活动日期：
                </div>
                <div class="td_02">
              
                   <asp:TextBox ID="txtactivitydate" runat="server" TextMode="Date" BorderStyle="None" Width="160px" Height="20px"></asp:TextBox>&nbsp;
                    格式：2016-10-17&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtactivitydate" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*不能为空</asp:RequiredFieldValidator>
             
               
                      </div>                
            </div>
            <div class="tr">
            	<div class="td_01">金额范围：
                </div>
                <div class="td_02">
               
                     <asp:TextBox ID="txtMoneyLeast" runat="server" BorderStyle="None" Width="160px" Height="20px"></asp:TextBox>到<asp:TextBox ID="txtMoneyMost" runat="server" BorderStyle="None" Width="160px" Height="20px"></asp:TextBox>元
               </div>                
            </div>
            <div id="tr_btn">
                <div id="btn">
                    <asp:Button ID="btnsearch" runat="server" Text="搜 索" OnClick="btnsearch_Click"  Width="180px" Height="50px" BackColor="#00A7F2" BorderStyle="None" ForeColor="White" Font-Size="Medium"  />
              </div>                               
            </div>
        </div>
         <table id="tab_frimsupportinfo" runat="server" visible="false" class="auto-style3">
            <tr>
                <td>符合您搜索条件的商家</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr style="text-align:center">
                <td class="auto-style2"><asp:GridView ID="gvlist_SearchInfo" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCommand="gvlist_SearchInfo_RowCommand" OnPageIndexChanging="gvlist_SearchInfo_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="Both" Width="100%"  >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                      
                        <asp:BoundField DataField="id" HeaderText="赞助单编号" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                        <%--转向商家信息页面，在这个页面里嵌入地图坐标--%>
                        <asp:HyperLinkField DataNavigateUrlFields="owner" DataTextField="username" HeaderText="商家名称" DataNavigateUrlFormatString="~/FrimSupport/FrimInfo.aspx?id={0}" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="frimtype" HeaderText="商家类型" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="money" HeaderText="赞助金额" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="address" HeaderText="地址" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" Text="详细信息" HeaderText="赞助详细信息" DataNavigateUrlFormatString="~/FrimSupport/SupportDetailInfo.aspx?id={0}" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                        <asp:BoundField DataField="phonenum" HeaderText="电话号码" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                        <asp:HyperLinkField DataNavigateUrlFields="qq" DataTextField="qq" HeaderText="QQ（点击QQ号可直接联系商家）" DataNavigateUrlFormatString="http://wpa.qq.com/msgrd?v=3&uin={0}&site=qq&menu=yes" HeaderStyle-Height="70px" ItemStyle-Height="70px" />
                        <asp:TemplateField HeaderStyle-Height="70px" ItemStyle-Height="70px">
                                <ItemTemplate>
                                    <asp:LinkButton CommandName ="submit" Text ="申请赞助" ID ="lnkbtnsubmit" runat="server" ></asp:LinkButton>
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
                    </td>
            </tr>
            
        </table>

  </div>
    </form>
</body>
</html>
