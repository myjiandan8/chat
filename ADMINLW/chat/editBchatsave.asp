<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--ģ������#include file="../../INC/sysChat.asp" -->
<!--ģ������#include file="../../INC/sysBChat.asp" -->
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
	if topcolor="" then topcolor="#EFF5FE"			'Ĭ�������б���������ɫ
	if bodycolor="" then bodycolor="#FFFFFF"		'Ĭ����������������ɫ
	if bottomcolor="" then bottomcolor="#EFF5FE"	'Ĭ��������������ɫ
	if adnote="" then adnote="<center>��ӭ����<font color=#ff0000><big>$1</big></font>�� ���������죬���𷢲��й�ɫ�顢���Ρ��ڿ͵ȵ���Ϣ��"


if id="" or port="" or roomname="" or maxnum="" or rtype="" or userpasswd="" then
	response.write "����дȫ���ύ<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if

if id<>"" and (id<2000 or id>9999 ) then
	response.write "����ID 2000-9999<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if

if port<>"" and (port<2000 or port>9999 ) then
	response.write "�˿ڷ�Χ2000-9999<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if

if rtype<>"T" and rtype<>"A" and rtype<>"V" then
	response.write "����ѡ��һ������������<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if

if RoomName="" then
	response.write "����д����<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if

if userpasswd="" then
	response.write "�������벻��Ϊ��<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if


if maxnum="" or maxnum>1000 then
	response.write "�������������Ϊ�գ�Ҳ���ܳ���1000��<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if

'����·�����
Call callServer(sid)

'��¼
Call upbchat(1)
 
'����ģ���ļ�
Call edit()

'дWEB���ݿ�
Call UpwebB(1)


%>
<script language=Javascript>
<!--
alert("�޸������ҳɹ���");
this.document.location="listchat.asp";
-->
</script>