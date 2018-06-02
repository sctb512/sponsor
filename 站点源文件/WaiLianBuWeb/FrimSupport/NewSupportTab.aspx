<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewSupportTab.aspx.cs" Inherits="WaiLianBuWeb.FrimSupport.NewSupportTab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
<title>无标题文档</title>
<link href="../css/shangjiaxinzeng.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="content">
    	<div id="table" class="auto-style1">
        	
            <div class="tr">
            	<div class="td_01">赞助金额：
                </div>
                <div class="td_02">
               
                    <asp:TextBox ID="txtmoney" runat="server"  Width="260px" Height="22px" BorderStyle="Solid" BorderColor="Silver" ></asp:TextBox>
              
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*不能为空" ControlToValidate="txtmoney" ForeColor="Red"></asp:RequiredFieldValidator>
           
                 </div>                
            </div>
             <div class="tr">
            	<div class="td_01">截止日期：
                </div>
                <div class="td_02">
               
                    <asp:TextBox ID="txtsupportendtime" runat="server" Width="260px" Height="22px" BorderStyle="Solid" BorderColor="Silver" ></asp:TextBox>
                    
                    参照格式：2016-10-11
               *默认长期有效
          </div>                
            </div>
            <div class="tr">
            	<div class="td_01">赞助形式：
                </div>
                <div class="td_02">
                    <table>
                        <tr>
                            <td>
                                <asp:RadioButtonList ID="supporttype" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="0" Enabled="True" >现金</asp:ListItem>
                                    <asp:ListItem Value="1">物品</asp:ListItem>
                                    <asp:ListItem Value="2">现金加物品</asp:ListItem>
                                    <asp:ListItem Value="3">其他</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
              </div>                
            </div>
            <div class="tr">
            	<div class="td_01">是否冠名：
                </div>
                <div class="td_02">
                    <table>
                        <tr>
                            <td>

              
                                     <asp:RadioButton ID="namingyes" runat="server" Text="是" GroupName="naming" />&nbsp;
                                     <asp:RadioButton ID="namingno" runat="server" Text="否" Checked="true" GroupName="naming" />

                            </td>
                        </tr>
                    </table>
            </div>                
            </div>
            <div class="tr">
            	<div class="td_01">宣传形式：
                </div>
                <div class="td_02">
              
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged"  RepeatDirection="Horizontal">
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
            	<div class="td_01">具体数量：
                </div>
                <div class="td_02">
                    <%--这4个textbox分别装的是传单份数、海报份数、横幅份数、展板份数--%>
              
                    <asp:TextBox ID="txtcdnum" runat="server" Enabled="False" placeholder="传单份数" Width="146px" BorderStyle="None"></asp:TextBox>
                    <asp:TextBox ID="txthbnum" runat="server" Enabled="False" placeholder="海报份数" Width="146px" BorderStyle="None"></asp:TextBox>
                    <asp:TextBox ID="txthfnum" runat="server" Enabled="False" placeholder="横幅份数" Width="146px" BorderStyle="None"></asp:TextBox>
                    <asp:TextBox ID="txtzbnum" runat="server" Enabled="False" placeholder="展板份数" Width="146px" BorderStyle="None"></asp:TextBox>
               
              </div>                
            </div>  
            <div class="tr">
            	<div class="td_01f">flag
                </div>
                <div class="td_02">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="600px" BackColor="White" BorderColor="White" BorderStyle="None">网络宣传包括班级QQ群、部门网站、贴吧、微博等宣传（具体要求请线下协商）</asp:TextBox> 
                </div>                
            </div>  
            <div id="tr_btn">
                <div id="btn">
                    <asp:Button ID="btnsubmit" runat="server" Text="发布" OnClick="btnsubmit_Click" Width="160px" Height="50px" BackColor="#00A7F2" BorderStyle="None" ForeColor="White"/>
                 </div>                               
            </div>
        </div>
    </div>
    </form>
</body>
</html>
