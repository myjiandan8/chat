<!--数组数据库文件#include file="../../INC/Chatfl.asp" -->
<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--模板生成#include file="../../INC/sysBChat.asp" -->
<%
Set rs= Server.CreateObject("ADODB.Recordset")
Call OpenChatConn()
Call OpenBChatConn()

sql="select * from [Room] where port="& Request("port")
set rs=bchatconn.execute (sql)
if rs.eof and rs.bof then
%>

没有找到该数据 <a href='Javascript:window.history.go(-1)'>返回</a>

<% else 


    port=rs("port")
	roomname = rs("roomname")
	maxnum = rs("maxnum")
	userpasswd = rs("adminpasswd")
	bodycolor = rs("bodycolor")
	bodyurl = rs("bodyurl")
	bottomcolor = rs("bottomcolor")
	bottomurl = rs("bottomurl")
	topcolor = rs("topcolor")
	
	adnote = rs("adnote")
	scripturl = rs("scripturl")
	leaveurl = rs("leaveurl")
	fullurl = rs("fullurl")
	unauthurl = rs("unauthurl")
	setadm = rs("setadm")
	setimg = rs("setimg")
	setdoor = rs("setdoor")
	setsex = rs("setsex")
	
	admintor = rs("admintor")
	channels = rs("channels")
	rtype = rs("rtype")
	'admin = rs("admin")
	muban = rs("muban")
	vms = rs("vms")
	rs.close

sql="select * from web where id="& Request("port")
set rs=chatconn.execute (sql)

	userpasswd = rs("adminpasswd")
	userpasswd1 = rs("userpasswd1")
	userpasswd2 = rs("userpasswd2")
	admin = rs("admin")
	adminid = rs("adminid")
	RoomType = rs("RoomType")
	rs.close

	

%>

<HTML>
<HEAD>
<TITLE>编辑房间</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<script langauge="javascript">
	function trim(string){
	var i=0,j=string.length-1,tmp,result;
	tmp=string.charAt(i);
	while(tmp==' '){
	i++;
	tmp=string.charAt(i);
	}
	tmp=string.charAt(j);
	while(tmp==' '){
	j--;
	tmp=string.charAt(j);
	}
	if(i<=j){
	result=string.substring(i,j+1);
	}
	else{
	result="";
	}
	return result;
	}
	function notNull(fieldname,string){
	string.value=trim(string.value);
	if(string.value==""){
	alert("请填写“"+fieldname+"”！");
	string.focus();
	return false;
	}
	else{
	return true;
	}
	}
	function check_url(urlname,urlobj) {
		val=urlobj.value
		if ((val != "")){
			if ((val.indexOf ('http://') == -1)|| (val.indexOf ('.') == -1)) {
				alert(urlname+' 不是正确的URL格式，请输入正确的URL格式。');
				urlobj.focus();
				return false;
			}
		}
		return true;
	}
	function validform(theform)
	{
	    if(notNull(" 聊天室名 ",theform.roomname)&&notNull(" 最高在线人数 ",theform.maxnum)&&check_url("输入区背景图形",theform.bottomurl)&&check_url("聊天区背景图形",theform.bodyurl)&&check_url("离开的连接",theform.leaveurl)&&check_url("非授权用户登录跳转URL",theform.unauthurl)&&check_url("满员跳转URL",theform.fullurl))
	      return true;
	      return false;
	}
</script>

</HEAD>
<STYLE type=text/css>
<!--
td {  font-family: "宋体"; font-size: 9pt}
body {  font-family: "宋体"; font-size: 11pt; line-height: 15pt}
.title {  font-family: "宋体"; font-size: 11pt}
A {text-decoration: none; font-family: "宋体"}
A:hover {text-decoration: underline; color: #FF0000; font-family: "宋体"} 
-->
</style>
<BODY bgcolor="#EEEEFF" LANGUAGE="JavaScript">
	<form method="post" action="../chat/editBchatsave.asp" OnSubmit="return validform(this)" name="myform">
	<input type="hidden" name="act" value="DONE">
	<input type="hidden" name="ss" value="<%=ss%>">
	<div align=center>
	<table border="0" width="583"  height="100">
	  <tr>
	    <td width="577" colspan="2" height=40  align=center valign=top> 
        <font color="#0000FF">修改聊天室</font></td>
	  </tr>
	  <tr>
	    <td width="117" align=left>端口号：</td>
	    <td width="456">
	    <%=port%>
        <input type="hidden" name="port" value="<%=port%>" size="9">
        <INPUT type="hidden" name="port1" value="<%=port%>">
		 &nbsp;<input type="hidden" name="roomid" value="0">2000 -- 9000</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">聊天室名<font color=red>**</font>：</td>
	    <td width="456" ><input type="text" name="roomname" size="50" maxlength=40 value="<%=roomname%>"> </td>
	  </tr>
	  <tr>
	    <td  align=left width="117">最高在线人数<font color=red>**</font>：</td>
	    <td width="456" ><input type="text" name="maxnum" size="10" maxlength=4 value="<%=maxnum%>"></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">聊天室类型<font color=blue>**</font>：</td>
	    <td width="456" >文字<input type="radio" name="rtype" value="T" <% if rtype="T" then response.write "checked" %> > 语音<input type="radio" name="rtype" value="A" <% if rtype="A" then response.write "checked" %> > 视频<input type="radio" name="rtype" value="V" <% if rtype="V" then response.write "checked" %>  ><font color=green>**</font></td>
	  </tr>
	 <!-- <tr>
	    <td  align=left>端口绑定主机名<font color=red>**</font>：</td>
	    <td ><input type="text" name="bindhost" size="30" maxlength=30 value="<%=bindhost%>" <%=temphidden%>> （请正确填写该端口绑定的域名或IP，否则启动失败并会造成其他问题）<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left>主机名绑定序列号<font color=red>**</font>：</td>
	    <td ><input type="text" name="bindserial" size="30" maxlength=20 value="<%=bindserial%>" <%=temphidden%>> （请正确填写该主机名绑定的序列号，否则启动失败并会造成其他问题）<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left>端口授权KEY文件<font color=red>**</font>：</td>
	    <td ><input type="text" name="keyfile" size="30" maxlength=30 value="<%=keyfile%>" <%=temphidden%>> （请正确填写该端口的KEY文件，否则启动失败并会造成其他问题）<font color=green>**</font></td>
	  </tr> -->
	  <tr>
	    <td  align=left height="12" width="117">模板选择：</td>
	    <td height="12" width="456" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>默认模板</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>自定义模板</option>

        <option value="2" <%if muban=2 then response.write "selected"%>>[反向]标准模板</option>

        </select></td>
	      </tr>
      <tr>
	    <td  align=left height="1" width="117">语音模式选择：</td>
	    <td height="1" width="456" > 
        
<select size="1" name="vms">

        <option value="0" <%if vms=0 then response.write "selected"%>>通用编码 1.3Kbps 高速编码 强烈推荐 为了保证你房间不卡请选择这个</option>
        <option value="1" <%if vms=1 then response.write "selected"%>>极低话音编码 2.4Kbps 音乐质量太差 不推荐</option>

        <option value="2" <%if vms=2 then response.write "selected"%>>8KHz立体声编码 25Kbps 推荐 音质很好 但速度慢</option>
        <option value="3" <%if vms=3 then response.write "selected"%>>16KHz立体声编码 45Kbps 音质最好 拨号上网肯定不行</option>

        </select> 推荐使用通用编码，因为 45Kbps 立体声 很多人都不行 主要是地域网络速度的问题。</td>
	      </tr>
	  <tr>
	    <td  align=left width="117">聊天室分类：</td>
	    <td width="456" > 
        
<select size="1" name="RoomType">
<%
i=1
do while (i<21) %>
<option value="<%=i%>" <%if RoomType=i then response.write "selected"%>><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
        </select>
        
        </td>
	  </tr>
      <tr>
	    <td  align=left width="117">室主：</td>
	    <td width="456" >
        <input type="text" name="admin" size="15"  maxlength=7 value="<%=admin%>"></td>
	  </tr>
	  <tr>
	    <td  align=left width="117" height="24">室主ID：</td>
	    <td width="456" height="24" >
        <input type="text" name="adminid" size="15"  maxlength=7 value="<%=adminid%>"></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">室主管理密码<font color=red>**</font>：</td>
	    <td width="456" >
        <input type="text" name="userpasswd" size="19" maxlength=20 value="<%=userpasswd%>"></td>
	  </tr>
      <tr>
	    <td  align=left width="117">配置管理密码：</td>
	    <td width="456" >
        <input type="text" name="userpasswd1" size="19" maxlength=20 value="<%=userpasswd1%>"></td>
	  </tr>
      <tr>
	    <td  align=left width="117">设置管理员密码：</td>
	    <td width="456" >
        <input type="text" name="userpasswd2" size="19" maxlength=20 value="<%=userpasswd2%>"></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">聊天区背景颜色：</td>
	    <td width="456" ><input type="text" name="bodycolor" size="10"  maxlength=7 value="<%=bodycolor%>"> （如：#FFFFFF）</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">聊天区背景图形URL：</td>
	    <td width="456" ><input type="text" name="bodyurl" size="50" maxlength=80 value="<%=bodyurl%>"> <br>（如 http://www.aaa.com/bbb.jpg）</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">输入区背景颜色：</td>
	    <td width="456" ><input type="text" name="bottomcolor" size="10" maxlength=7 value="<%=bottomcolor%>"> （如 #B4B4FE）</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">输入区背景图形URL：</td>
	    <td width="456" ><input type="text" name="bottomurl" size="50" maxlength=80 value="<%=bottomurl%>"> </td>
	  </tr>
	  <tr>
	    <td  align=left width="117">在线列表背景颜色：</td>
	    <td width="456" ><input type="text" name="topcolor" size="10"  maxlength=7 value="<%=topcolor%>"> （如 #B4B4FE）</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">欢迎词：</td>
	    <td width="456" ><textarea rows="3" name="adnote" cols="49"><%=adnote%></textarea></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">聊天室脚本URL：</td>
	    <td width="456" >
        <textarea rows="3" name="scripturl" cols="49"><%=scripturl%></textarea> </td>
	  </tr>
	  <tr>
	    <td  align=left width="117">离开的URL：</td>
	    <td width="456" ><input type="text" name="leaveurl" size="50" maxlength=50 value="<%=leaveurl%>"> </td>
	  </tr>
	  <tr>
	    <td  align=left width="117">满员跳转URL<font color=blue>**</font>：</td>
	    <td width="456" ><input type="text" name="fullurl" size="50" maxlength=50 value="<%=fullurl%>" <%=temphidden%>> <font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">非授权用户登录跳转URL<font color=blue>**</font>：</td>
	    <td width="456" ><input type="text" name="unauthurl" size="50" maxlength=50 value="<%=unauthurl%>" <%=temphidden%>> <font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">是否标志管理员<font color=blue>**</font>：</td>
	    <td width="456" >是<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %> > 否<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >（管理员名字后面是否加红星）<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">是否允许图音<font color=blue>**</font>：</td>
	    <td width="456" >是<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > 否<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %>  >（是否在聊天室里允许发送图音）<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">是否允许关门<font color=blue>**</font>：</td>
	    <td width="456" >是<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > 否<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> >（是否允许管理执行关门功能）<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">是否区分性别<font color=blue>**</font>：</td>
	    <td width="456" >是<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> > 否<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >（聊天室里是否显示男为绿色、女为红色、保密为兰色）<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left valign=top width="117">房间管理员和级别：</td>
	    <td width="456" ><textarea rows="8" name="admintor" cols="50"><%=admintor%></textarea></td>
	  </tr>
	  <!--<tr>
	    <td  align=left valign=top>快速通道设置：</td>
	    <td ><textarea rows="8" name="channels" cols="50"><%=channels%></textarea></td>
	  </tr>
	  -->
	  <input type="hidden" name="channels" value="">
	  <tr>
	    <td width="577" colspan="2" height=40 align=center valign=bottom><input type="submit" value="修改确定" name="s1">  <input type="reset" value="重置" name="s2"></td>
	  </tr>
	  <tr>
	    <td width="577" colspan="2" height=40  valign=bottom>
	    说明：<br>
	    1、关于管理员的配置，管理名、密码和级别之间用"|"分隔，如: admin|passwd|1 每个名字一行，注意后面不要留空格。如果管理员名字为注册的用户名，要在名字前面加上星号。级别0表示有踢名字权限；1表示有踢名字和IP权限；9表示有1级权限并有不被踢的权限。<br>
	    <!--2、关于快速通道的设置，端口号和聊天室名之间用"|"分隔，如: 2000|聊天室名称 每个室一行，注意后面不要留空格。<br>
	    -->
	    2、<font color=red>**</font> 标志的项表示必须填写项。<br>
	    3、<font color=red>**</font> 和 <font color=blue>**</font> 标志的项表示如果有改动，需要重启聊天室进程才能生效。<br>
	    4、<font color=green>**</font> 标志表示端口的非0ID号的配置不可以修改的项
	    </td>
	  </tr>
	</table>
	</div>
	</form>


</BODY>
</HTML>
<% end if %>