<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--ģ������#include file="../../INC/sysChat.asp" -->
<!--ģ������#include file="../../INC/sysMeChat.asp" -->
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
	admin = Request("admin")
	host = mehost
	port = meport
	liebiao = 0
	'= Request("")


if RoomName="" then
	response.write "����д����<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if




'�����¼�¼
Call upMechat(1)

'дWEB���ݿ�
Call UpwebMe(1)

       

'ˢ�¸õķ���,
On Error Resume Next
urls="http://"& host &":" & port & "/reloadroom.htm?RoomID=" & newid
Call GetURL(urls)

%>

<script language=Javascript>
<!--
alert("�޸ĳɹ���");
this.document.location="listchat.asp";
-->
</script>