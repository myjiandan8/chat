<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--模板生成#include file="../../INC/sysChat.asp" -->
<!--模板生成#include file="../../INC/sysBChat.asp" -->
<%
Set rs= Server.CreateObject("ADODB.Recordset")
Call OpenChatConn()
Call OpenBChatConn()

	id=Request("id")
	sid=Request("sid")
	fid=Request("fid")
    port=id
	roomname = Request("roomname")
	maxnum = Request("maxnum")
	userpasswd = Request("userpasswd")
	userpasswd1 = Request("userpasswd1")
	userpasswd2 = Request("userpasswd2")
	bodycolor = Request("bodycolor")
	bodyurl = Request("bodyurl")
	bottomcolor = Request("bottomcolor")
	bottomurl = Request("bottomurl")
	topcolor = Request("topcolor")
	adnote = Request("adnote")
	scripturl = Request("scripturl")
	leaveurl = Request("leaveurl")
	fullurl = Request("fullurl")
	unauthurl = Request("unauthurl")
	setadm = Request("setadm")
	setimg = Request("setimg")
	setdoor = Request("setdoor")
	setsex = Request("setsex")
	admintor = Request("admintor")
	channels = Request("channels")
	rtype = Request("rtype")
	admin = Request("admin")
	adminid = Request("adminid")
	RoomType = Request("RoomType")
	muban = Request("muban")
	vms = Request("vms")
	voicenum = Request("voicenum")
	videonum = Request("videonum")
	
	'liebiao = 0
	'id2 = 0

	keyfile = keyfile
	bindhost = chathostip
	bindserial = chatserialno


	if setadm<>"1" then setadm="0"
	if setimg<>"1" then setimg="0"
	if setsex<>"1" then setsex="0"
	if setdoor<>"1" then setdoor="0"
	if topcolor="" then topcolor="#EFF5FE"			'默认在线列表区背景颜色
	if bodycolor="" then bodycolor="#FFFFFF"		'默认聊天区区背景颜色
	if bottomcolor="" then bottomcolor="#EFF5FE"	'默认输入区背景颜色
	if adnote="" then adnote="<center>欢迎光临<font color=#ff0000><big>$1</big></font>！ 请文明聊天，切勿发布有关色情、政治、黑客等的信息。"


if id="" or port="" or roomname="" or maxnum="" or rtype="" or userpasswd="" then
	response.write "请填写全再提交<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if

if id<>"" and (id<2000 or id>9999 ) then
	response.write "房间ID 2000-9999<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if

if port<>"" and (port<2000 or port>9999 ) then
	response.write "端口范围2000-9999<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if

if rtype<>"T" and rtype<>"A" and rtype<>"V" then
	response.write "必须选择一种聊天室类型<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if

if RoomName="" then
	response.write "请填写完整<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if

if userpasswd="" then
	response.write "管理密码不能为空<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if


if maxnum="" or maxnum>1000 then
	response.write "最高在线人数不为空，也不能超过1000人<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if

'检测新服务器
Call callServer(sid)

'记录
Call upbchat(1)
 
'处理模板文件
Call edit()

'写WEB数据库
Call UpwebB(1)


%>
<script language=Javascript>
<!--
alert("修改聊天室成功！");
this.document.location="listchat.asp";
-->
</script>