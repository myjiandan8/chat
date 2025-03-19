<!--数组数据库文件#include file="../../INC/Chatfl.asp" -->
<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--模板生成#include file="../../INC/sysBChat.asp" -->
<%
Set rs= Server.CreateObject("ADODB.Recordset")
Call OpenChatConn()
Call OpenBChatConn()

Response.write Request("id")

sub BBSList(selec,vsid)

	ii=0
	sql="Select * From chatff where ufid="& selec &" order by fid"
	Set Rs1=chatconn.Execute(sql)
	do while not rs1.eof or err
	Response.write "<option value="&rs1("fid")
	if rs1("fid")=vsid then Response.write " selected"
	Response.write ">"&string(ii,"-")&""&rs1("fname")&"</option>"
	ii=ii+1
	BBSList rs1("fid"),vsid
	ii=ii-1
	rs1.movenext
	loop
	Set Rs1 = Nothing
	
end sub


sql="select * from [web] where id="& Request("port")
set rs=chatconn.execute (sql)

	id=rs("id")
	port=rs("cid")
	sid=rs("sid")
	userpasswd = rs("adminpasswd")
	userpasswd1 = rs("userpasswd1")
	userpasswd2 = rs("userpasswd2")
	fid=rs("fid")
	ufid=rs("ufid")
	admin = rs("admin")
	adminid = rs("adminid")
	RoomType = rs("RoomType")
	muban = rs("muban")
	vms = rs("vms")
	rs.close

sql="select * from [Room] where port="& port
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
	'muban = rs("muban")
	'vms = rs("vms")
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
	<form method="post" action="editBchatsave.asp" OnSubmit="return validform(this)" name="myform">
	<input type="hidden" name="roomid" value="0">
        <INPUT type="hidden" name="port1" value="<%=port%>">
        <input type="hidden" name="port2" value="<%=port%>" size="9">
	<input type="hidden" name="act" value="DONE">
	<input type="hidden" name="ss" value="<%=ss%>">
	<div align=center>
	<table border="0" width="583"  height="100">
	  <tr>
	    <td width="577" colspan="2" height=40  align=center valign=top> 
        <font color="#0000FF">修改聊天室</font></td>
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
	    <td width="133" align=left height="32">选择服务器：</td>
	    <td width="440" height="32">
                              
<select style="color: #006699; font-size: 9pt; font-family: 宋体,SimSun" name="sid" size="1">
<%

sql="select * from  ServerDB where cid=3 order by sid asc"
set rsm=chatconn.execute (sql)
%>

&nbsp;<%
do while not (rsm.eof or err)
%> 
<option value="<%=rsm("sid")%>" <%if rsm("sid")=sid then response.write "selected"%>><%=rsm("chathostip")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
</select></td>
	  </tr>

		<tr>
	    <td width="123" align=left height="16">ID端口：</td>
	    <td width="474" height="16">
        <input type="text" name="id" value="<%=id%>" size="9">&nbsp;房间唯一ID&nbsp; 
		http://ID.liaowan.com&nbsp; </td>
	  </tr>

	  	  <!--
		<tr>
	    <td width="123" align=left height="28">端口号码：</td>
	    <td width="474" height="28">
        <input type="text" name="port" value="<%=port%>" size="9"> 
		<a target="_blank" href="/ad/liebiao.gif">Eliao25个聊天室使用方法和图例</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		与ID号码可以不相同</td>
	  </tr>
	  	  -->
		<tr>
	    <td width="133" align=left height="26">属性分类：</td>
	    <td width="440" height="26">
        
<select name="fid" size="1">
<%
Call BBSList(0,fid)
%>
</select> 

&nbsp;
<img border="0" src="../../PIC/IMG/s01.gif" width="15" height="13">秀舞 
<img border="0" src="../../PIC/IMG/s12.gif" width="15" height="13">秀歌 
<img border="0" src="../../PIC/IMG/s23.gif" width="15" height="13">情感</td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">聊天室名<font color=red>**</font>：</td>
	    <td width="440" height="20" ><input type="text" name="roomname" size="50" maxlength=40 value="<%=roomname%>"> </td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">最高在线人数<font color=red>**</font>：</td>
	    <td width="440" height="20" ><input type="text" name="maxnum" size="10" maxlength=4 value="<%=maxnum%>"></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="11">聊天室类型<font color=blue>**</font>：</td>
	    <td width="440" height="11" >文字<input type="radio" name="rtype" value="T" <% if rtype="T" then response.write "checked" %> checked > 语音<input type="radio" name="rtype" value="A" <% if rtype="A" then response.write "checked" %> > 视频<input type="radio" name="rtype" value="V" <% if rtype="V" then response.write "checked" %>  ><font color=green>**</font></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="17">麦克数量：</td>
	    <td width="440" height="17" ><select size="1" name="voicenum">
		<option <%if voicenum=1 then response.write " selected"%>>1</option>
		<option <%if voicenum=2 then response.write " selected"%>>2</option>
		<option <%if voicenum=3 or voicenum="" or voicenum=0 then response.write " selected"%>>3</option>
		</select></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="30">视频数量：</td>
	    <td width="440" height="30" ><select size="1" name="videonum">
		<option <%if videonum=1 then response.write " selected"%>>1</option>
		<option <%if videonum=2 or videonum="" or videonum=0 then response.write " selected"%>>2</option>
		<option <%if videonum=3 then response.write " selected"%>>3</option>
		<option <%if videonum=4 then response.write " selected"%>>4</option>
		<option <%if videonum=5 then response.write " selected"%>>5</option>
		<option <%if videonum=6 then response.write " selected"%>>6</option>
		<option <%if videonum=7 then response.write " selected"%>>7</option>
		<option <%if videonum=8 then response.write " selected"%>>8</option>
		<option <%if videonum=9 then response.write " selected"%>>9</option>
		</select></td>
	  </tr>
		<tr>
	    <td  align=left height="16" width="133">模板选择：</td>
	    <td height="16" width="440" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>默认模板</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>自定义模板</option>

        <option value="2" <%if muban=2 then response.write "selected"%>>[反向]标准模板</option>

        </select></td>
	      </tr>
		<tr>
	    <td  align=left height="60" width="133">语音模式选择：</td>
	    <td height="60" width="440" > 
        
<select size="1" name="vms">

        <option value="0" <%if vms=0 then response.write "selected"%>>通用编码 1.3Kbps 高速编码 强烈推荐 为了保证你房间不卡请选择这个</option>
        <option value="1" <%if vms=1 then response.write "selected"%>>极低话音编码 2.4Kbps 音乐质量太差 不推荐</option>

        <option value="2" <%if vms=2 then response.write "selected"%>>8KHz立体声编码 25Kbps 推荐 音质很好 但速度慢</option>
        <option value="3" <%if vms=3 then response.write "selected"%>>16KHz立体声编码 45Kbps 音质最好 拨号上网肯定不行</option>

        </select> <br>
推荐使用通用编码，因为 45Kbps 立体声 很多人都不行 主要是地域网络速度的问题。</td>
	      </tr>
		<tr>
	    <td  align=left width="133" height="20">聊天室分类：</td>
	    <td width="440" height="20" > 
        
<select size="1" name="RoomType">
<%
i=1
do while (i<Chatfls) %>
<option value="<%=i%>"><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
        </select></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="12">室主：</td>
	    <td width="440" height="12" >
        <input type="text" name="admin" size="15"  maxlength=7 value="<%=admin%>"> 
		填写真实姓名</td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="24">室主ID：</td>
	    <td width="440" height="24" >
        <input type="text" name="adminid" size="15"  maxlength=7 value="<%=adminid%>"></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="26">室主管理密码<font color=red>**</font>：</td>
	    <td width="440" height="26" >
        <input type="text" name="userpasswd" size="19" maxlength=20 value="<%=userpasswd%>"></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">配置管理密码：</td>
	    <td width="440" height="20" >
        <input type="text" name="userpasswd1" size="19" maxlength=20 value="<%=userpasswd1%>"> 
		&lt;---可不写 已经无效果</td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">设置管理员密码：</td>
	    <td width="440" height="20" >
        <input type="text" name="userpasswd2" size="19" maxlength=20 value="<%=userpasswd2%>"> 
		&lt;---可不写 已经无效果</td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">聊天区背景颜色：</td>
	    <td width="440" height="20" ><input type="text" name="bodycolor" size="10"  maxlength=7 value="<%=bodycolor%>"> （如：#FFFFFF）</td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="40">聊天区背景图形URL：</td>
	    <td width="440" height="40" ><input type="text" name="bodyurl" size="50" maxlength=80 value="<%=bodyurl%>"> <br>（如 http://www.aaa.com/bbb.jpg）</td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">输入区背景颜色：</td>
	    <td width="440" height="20" ><input type="text" name="bottomcolor" size="10" maxlength=7 value="<%=bottomcolor%>"> （如 #B4B4FE）</td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">输入区背景图形URL：</td>
	    <td width="440" height="20" ><input type="text" name="bottomurl" size="50" maxlength=80 value="<%=bottomurl%>"> </td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">在线列表背景颜色：</td>
	    <td width="440" height="20" ><input type="text" name="topcolor" size="10"  maxlength=7 value="<%=topcolor%>"> （如 #B4B4FE）</td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">欢迎词：</td>
	    <td width="440" height="20" ><textarea rows="3" name="adnote" cols="49"><%=adnote%></textarea> </td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">聊天室脚本URL：</td>
	    <td width="440" height="20" >
        <textarea rows="3" name="scripturl" cols="49"><%=scripturl%></textarea> </td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">离开的URL：</td>
	    <td width="440" height="20" ><input type="text" name="leaveurl" size="50" maxlength=50 value="<%=leaveurl%>"> </td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">满员跳转URL<font color=blue>**</font>：</td>
	    <td width="440" height="20" ><input type="text" name="fullurl" size="50" maxlength=50 value="<%=fullurl%>" <%=temphidden%>> <font color=green>**</font></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="40">非授权用户登录跳转URL<font color=blue>**</font>：</td>
	    <td width="440" height="40" ><input type="text" name="unauthurl" size="50" maxlength=50 value="<%=unauthurl%>" <%=temphidden%>> <font color=green>**</font></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">是否标志管理员<font color=blue>**</font>：</td>
	    <td width="440" height="20" >是<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %>> 否<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >（管理员名字后面是否加红星）<font color=green>** </font>
		<font color=#FF0000>要显示在线管理这里必须选择是！</font></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">是否允许图音<font color=blue>**</font>：</td>
	    <td width="440" height="20" >是<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > 否<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %>  >（是否在聊天室里允许发送图音）<font color=green>**</font></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">是否允许关门<font color=blue>**</font>：</td>
	    <td width="440" height="20" >是<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > 否<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> >（是否允许管理执行关门功能）<font color=green>**</font></td>
	  </tr>
		<tr>
	    <td  align=left width="133" height="20">是否区分性别<font color=blue>**</font>：</td>
	    <td width="440" height="20" >是<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> > 否<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >（聊天室里是否显示男为绿色、女为红色、保密为兰色）<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left valign=top width="133">房间管理员和级别：</td>
	    <td width="440" ><textarea rows="8" name="admintor" cols="50"><%=admintor%></textarea></td>
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