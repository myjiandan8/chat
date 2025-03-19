<!--数据库连接文件#include file="SQLconn.asp" -->
<!--模板生成#include file="sysChat.asp" -->
<!--模板生成#include file="sysBChat.asp" -->
<%
Set rs= Server.CreateObject("ADODB.Recordset")
Call OpenChatConn()
Call OpenBChatConn()



	keyfile = keyfile
	bindhost = chathostip
	bindserial = chatserialno

sql="select * from [Room]"
set rss=bchatconn.execute (sql)
do while not (rss.eof or err)

    port=rss("port")
	roomname = rss("roomname")
	maxnum = rss("maxnum")
	userpasswd = rss("adminpasswd")
	bodycolor = rss("bodycolor")
	bodyurl = rss("bodyurl")
	bottomcolor = rss("bottomcolor")
	bottomurl = rss("bottomurl")
	topcolor = rss("topcolor")
	adnote = rss("adnote")
	scripturl = rss("scripturl")
	leaveurl = rss("leaveurl")
	fullurl = rss("fullurl")
	unauthurl = rss("unauthurl")
	setadm = rss("setadm")
	setimg = rss("setimg")
	setdoor = rss("setdoor")
	setsex = rss("setsex")
	admintor = rss("admintor")
	channels = rss("channels")
	rtype = rss("rtype")
	admin = rss("admin")
	RoomType = rss("RoomType")
	muban = rss("muban")
	vms = rss("vms")



	'处理模板文件
	Call edit()

rss.moveNext
loop





'sqls="select * from web where id="& port
'set rsd=chatconn.execute (sqls)

	'userpasswd = rsd("adminpasswd")
	'userpasswd1 = rsd("userpasswd1")
	'userpasswd2 = rsd("userpasswd2")
	'admin = rsd("admin")
	'adminid = rsd("adminid")
'	rsd.close
%>