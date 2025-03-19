<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--模板生成#include file="../../INC/sysChat.asp" -->
<!--模板生成#include file="../../INC/sysMeChat.asp" -->
<%
Set rs= Server.CreateObject("ADODB.Recordset")
Call OpenChatConn()
Call OpenMeChatConn()

    id=Request("roomid")
	roomname = Request("roomname")
	userpasswd = Request("password")
	userpasswd1 = Request("userpasswd1")
	userpasswd2 = Request("userpasswd2")
	admin = Request("admin")
	adminid = Request("adminid")
	
	
	maxuser = Request("maxuser")
	NearMaxUser = Request("NearMaxUser")
	inino = Request("inino")
	TemplateNo = Request("TemplateNo")
	LogRoom = Request("LogRoom")
	Logip = Request("Logip")
	LastMessage = Request("LastMessage")
	RoomType = Request("RoomType")
	AllowGuest = Request("AllowGuest")
	CompType = Request("CompType")
	CryptType = Request("CryptType")
	AllowPublic = Request("AllowPublic")
	Administrators1 = Request("Administrators1")
	Administrators2 = Request("Administrators2")
	Background = Request("Background")
	LogoutUrl = Request("LogoutUrl")
	ExternValue = Request("ExternValue")
	RoomTopic = Request("RoomTopic")
	RoomPassword = Request("RoomPassword")
	PrivateRoom = Request("PrivateRoom")
	SupportAudio = Request("SupportAudio")
	SupportVideo = Request("SupportVideo")


	host = mehost
	port = meport
		
	if maxuser="" then maxuser=100
	if NearMaxUser="" then NearMaxUser=80
	if IniNo="" then IniNo= 1
	if TemplateNo="" then TemplateNo= 1
	if LogRoom = "" then LogRoom = 0
	if Logip = "" then Logip = 0 
	if LastMessage = "" then LastMessage = 6
	if RoomType = "" then RoomType=1
	if AllowGuest = "" then AllowGuest = 1  
	if CompType = "" then CompType = 1
	if CryptType = "" then CryptType = 1
	if AllowPublic = "" then AllowPublic = 1
	
	'if Administrators1 = Request("Administrators1")
	'if Administrators2 = Request("Administrators2")
	
	'if Background = Request("Background")
	'if LogoutUrl = Request("LogoutUrl")
	'if ExternValue = Request("ExternValue")
	'if RoomTopic = Request("RoomTopic")
	'if RoomPassword = Request("RoomPassword")
	'if PrivateRoom = Request("PrivateRoom")
	'if SupportAudio = Request("SupportAudio")
	'if SupportVideo = Request("SupportVideo")



if RoomName="" then
	response.write "请填写完整<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if




'检测新ID
Call newsid(id)

'建立新记录
Call upMechat(0)

'写WEB数据库
Call UpwebMe(0)

Call addedit(id)  

'刷新该的房间,
On Error Resume Next
urls="http://"& host &":" & port & "/reloadroom.htm?RoomID=" & newid
Call GetURL(urls)

%>
<script language=Javascript>
<!--
alert("添加成功！");
this.document.location="addmechat.asp";
-->
</script>