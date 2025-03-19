<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<!--#include file="shop_inc.asp"-->
<%
if InStr(Request.ServerVariables("HTTP_REFERER"), ".com/vip/shop_bchat.asp")=0 then Call errstr("请从正确的网址进入本页！\n"&Request.ServerVariables("HTTP_REFERER"))
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=非法操作！"
		response.end
	end if
end if

renshu=request("renshu")
shipin=request("shipin")
liti=request("liti")

if renshu="" or shipin="" or liti="" then Call errstr("非法操作！！")
jiage=renshu*6

if shipin=1 then jiage=jiage+renshu*3
if liti=1 then jiage=jiage+renshu*1

%>



<SCRIPT language=javascript>
<!--
//代码开始 脚本设计：龙软科技
function tians() // 计算价格，学习JS请大家尝试自己写写看，因为作为一个程序员有些东西必须自己原创
{
	login.jiage.value=login.times.value*<%=jiage%>;
}
//-->
</SCRIPT>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>购买租用-财务管理中心</TITLE>

<% call top %>
<base target="_blank">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="478" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="478">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>欢迎 [ <%=UN%> 
          ] 来到</b>[购买租用聊天室]<b>-财务管理中心 </b>
          您的聊湾ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="478"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="22" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="801">

     <% call caiwu %>

 <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="232">
          <tr>
            <td width="592" bgcolor="#800080" height="30"><b>
            <font color="#FFFFFF">　<a name="cp">聊弯服务产品</a>　</font></b></td>
          </tr>

     <tr>
            <td width="592" height="82" align="center" bgcolor="#FFFFFF" valign="top">
            
                    

  <form name="login" method="post" action="shop_bchat_add_save.asp">
                    
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="588">
          <tr>
	    <td width="20%" align=right height="26">最高在线人数：</td>
	    <td width="262" height="16"> <%=renshu%>人
	    <input type="hidden" name="renshu" size="18" maxlength="10" value="<%=renshu%>"> 
	    <input type="hidden" name="shipin" size="18" maxlength="10" value="<%=shipin%>"> 
	    <input type="hidden" name="liti" size="18" maxlength="10" value="<%=liti%>"> 
	    </td>
	    <td width="66" height="16" align="right"> 租用时间：</td>
	    <td width="128" height="16"> <select size="1" name="times" onChange="tians();">
		<option value="1">1年</option>
		<option value="2">2年</option>
		<option value="3">3年</option>
		<option value="4">4年</option>
		<option value="5">5年</option>
		<option value="10">10年</option>
		</select></td>
	      </tr>
          <tr>
	    <td  align=right height="26"><font color="#FF0000">房间支持</font>：</td>
	    <td height="10" width="262" > 文字聊天 多语音 <%if shipin=1 then response.write "多视频"%>&nbsp; <%if liti=1 then response.write "立体声"%>  网站套餐一</td>
	    <td height="10" width="66" align="right" > 价格：</td>
	    <td height="10" width="128" > 
		<input type="text" name="jiage" size="7" value="<%=jiage%>">元</td>
	      </tr>
          <tr>
	    <td  align=right height="26"><font color=red>**</font>聊天室名：</td>
	    <td height="19" colspan="3" > <%=roomname%><input type="text" name="roomname" size="22" maxlength=40 value="<%=roomname%>"> 
		最多7个汉字或者14英文字符</td>
	      </tr>
          <tr>
	    <td  align=right height="26">室主管理密码：</td>
	    <td height="2" width="445" colspan="3" > 
        <input type="text" name="userpasswd" size="19" maxlength=20 value="<%=userpasswd%>"></td>
	    	</tr>
			<tr>
	    <td  align=right height="26">配置管理密码：</td>
	    <td height="13" width="445" colspan="3" > 
        <input type="text" name="userpasswd1" size="19" maxlength=20 value="<%=userpasswd1%>"></td>
	    	</tr>
			<tr>
	    <td  align=right height="30">设置主持人密码：</td>
	    <td height="30" width="445" colspan="3" > 
        <input type="text" name="userpasswd2" size="19" maxlength=20 value="<%=userpasswd2%>"></td>
	    	</tr>
          <tr>
	    <td  align=right height="25" width="127">模板选择：</td>
	    <td height="25" width="455" colspan="3" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>默认模板</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>自定义模板</option>

        <option value="2" <%if muban=2 then response.write "selected"%>>[反向]标准模板</option>

        </select></td>
	      </tr>
          <tr>
	    <td  align=right height="26">聊天区背景颜色：</td>
	    <td height="21" colspan="3" ><input type="text" name="bodycolor" size="10"  maxlength=7 value="<%=bodycolor%>"> （如：#FFFFFF）</td>
	      </tr>
          <tr>
	    <td  align=right height="26">聊天区背景图形URL：</td>
	    <td height="40" colspan="3" ><input type="text" name="bodyurl" size="50" maxlength=80 value="<%=bodyurl%>"> <br>（如 http://www.aaa.com/bbb.jpg）</td>
	      </tr>
          <tr>
	    <td  align=right height="26">输入区背景颜色：</td>
	    <td height="21" colspan="3" ><input type="text" name="bottomcolor" size="10" maxlength=7 value="<%=bottomcolor%>"> （如 #B4B4FE）</td>
	      </tr>
          <tr>
	    <td  align=right height="26">输入区背景图形URL：</td>
	    <td height="38" colspan="3" ><input type="text" name="bottomurl" size="50" maxlength=80 value="<%=bottomurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=right height="26">在线列表背景颜色：</td>
	    <td height="21" colspan="3" >
        <input type="text" name="topcolor" size="13"  maxlength=7 value="<%=topcolor%>"> （如 #B4B4FE）</td>
	      </tr>
          <tr>
	    <td  align=right height="26">欢迎词：</td>
	    <td height="21" colspan="3" >
        <textarea rows="3" name="adnote" cols="49"><%=adnote%></textarea><br>
		严禁出现&lt;textarea&gt;标记元素！ 可以开通后再填写 ！</td>
	      </tr>
          <tr>
	    <td  align=right height="26">聊天室脚本URL：</td>
	    <td height="40" colspan="3" >
        <br>
        <textarea rows="3" name="scripturl" cols="49"><%=scripturl%></textarea><br>
            严禁出现&lt;textarea&gt;标记元素！ 可以开通后再填写 ！</td>
	      </tr>
          <tr>
	    <td  align=right height="26">离开的URL：</td>
	    <td height="21" colspan="3" ><input type="text" name="leaveurl" size="50" maxlength=50 value="<%=leaveurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=right height="26">满员跳转URL<font color=blue>**</font>：</td>
	    <td height="21" colspan="3" ><input type="text" name="fullurl" size="50" maxlength=50 value="<%=fullurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right height="26">非授权用户登录跳转URL<font color=blue>**</font>：</td>
	    <td height="38" colspan="3" ><input type="text" name="unauthurl" size="50" maxlength=50 value="<%=unauthurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right width="123" style="font-family: 宋体; font-size: 9pt" height="26">是否标志管理员<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" height="20" colspan="3" >是<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %> > 否<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >（管理员名字后面是否加红星）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right width="123" style="font-family: 宋体; font-size: 9pt" height="26">是否允许图音<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" height="20" colspan="3" >是<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > 否<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %>  >（是否在聊天室里允许发送图音）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right width="123" style="font-family: 宋体; font-size: 9pt" height="26">是否允许关门<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" height="20" colspan="3" >是<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > 否<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> >（是否允许管理执行关门功能）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right width="123" style="font-family: 宋体; font-size: 9pt" height="26">是否区分性别<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" height="20" colspan="3" >是<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> > 否<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >（聊天室里是否显示男为绿色、女为红色、保密为兰色）<font color=green>**</font></td>
	      </tr>

          <tr>
	    <td  align=left width="573" style="font-family: 宋体; font-size: 9pt" colspan="4" height="20">
        　</td>
	      </tr>

          <tr>
            <td width="592" height="33" align="center" colspan="4" bgcolor="#FFFFFF">

            <input type="submit" value=" 确认提交" name="B1">
  
            </td>
            </tr>

        </table>
        </center>
      </div>
            
</form> 
 
            
            
            
            
            
            </td>
     </tr>
        	</table>
        </center>
      </div>
          
      <br>
      

      </td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="87%"></td>
        </tr>
    <tr>
      <td width="87%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>



<%call endpage()
%>