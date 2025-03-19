<% 
'登陆超时检
//admincanshu=session("admincanshu")
rmport=session("rmport")
rmpass=session("rmpass")
adminname=session("adminname")
id=rmport

if rmport="" or rmpass="" or adminname="" then
			response.redirect "/admin/Error.asp?m=未登陆或长时间没有动作！"
			response.end
end if


if jk="ok" then

Call Openconn()
Call OpenChatconn()
Call OpenBChatconn()
Call OpenMeChatconn()


if adminname="admin" then
	sql="select id from [web] where id=" & rmport & " and adminpasswd='" & rmpass & "'"
else
	sql="select question,answer,admin from [admin] where roomid=" & rmport & " and name='" & adminname & "' and passwd='" & rmpass & "'"
end if

	set rs = Chatconn.Execute(sql)
	if rs.eof or err then Call errstr("非法操作！")
	if adminname<>"admin" then
		admincanshu=rs("admin")
		question=rs("question")
		answer=rs("answer")
	end if
	rs.close


	sql="select * from [web] where id=" & rmport
	set rs = Chatconn.Execute(sql)
	if rs.eof then	Call errstr("非法操作！！")
	
		ff=rs("ff")
		sid=rs("sid")
		sysff=rs("sysff")
		fid=rs("fid")
		ufid=rs("ufid")
		cid=rs("cid")
		admin = rs("admin")
		adminid = rs("adminid")
		RoomType = rs("RoomType")
		liebiao = rs("liebiao")
		id2 = rs("id2")
		
		roomname = rs("roomname")
		
		'chatxy=rs("chatxy")
		
		vip = rs("vip")
		muban=rs("muban")
		host=rs("host")
		userroompasswd=rs("adminpasswd")
		userpasswd=rs("adminpasswd")
		'userpasswd1=rs("userpasswd1")
		'userpasswd2=rs("userpasswd2")
		TOTAL=rs("TOTAL")
    	YESTERDAY=rs("YESTERDAY")
    	BMONTH=rs("BMONTH")
    	MONTHS=rs("MONTH")
    	TODAY=rs("TODAY")
		renqi=rs("renqi")
if adminname="admin" then
		question=rs("question")
		answer=rs("answer")
end if
		logins=rs("logins")
		loginw=rs("loginw")
		max=rs("max")
		newtype=rs("newtype")
		muban=rs("muban")
		vms=rs("vms")
	rs.close


   if ff=1 then
   
	sql="select * from [Room] where port=" & cid
	set rs = Bchatconn.Execute(sql)
	
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
		'userroompasswd=rs("adminpasswd")
		'vip = rs("vip")
		'muban=rs("muban")
		'vms=rs("vms")
		rs.close
		
		bindhost = chathostip
		bindserial = chatserialno
		roomportdir = roomcfgdir & "\" & port
		
	elseif ff=3 then
	
    	sql="SELECT * from [Room] where RoomID=" & id
		rs.open sql,MeChatconn,1,1

		maxuser = rs("maxuser")
		NearMaxUser = rs("NearMaxUser")
		inino = rs("inino")
		TemplateNo = rs("TemplateNo")
		LogRoom = rs("LogRoom")
		Logip = rs("Logip")
		LastMessage = rs("LastMessage")
		RoomType = rs("RoomType")
		AllowGuest = rs("AllowGuest")
		CompType = rs("CompType")
		CryptType = rs("CryptType")
		AllowPublic = rs("AllowPublic")
		Administrators = rs("Administrators")
		Background = rs("Background")
		LogoutUrl = rs("LogoutUrl")
		ExternValue = rs("ExternValue")
		RoomTopic = rs("RoomTopic")
		RoomPassword = rs("RoomPassword")
		PrivateRoom = rs("PrivateRoom")
		SupportAudio = rs("SupportAudio")
		SupportVideo = rs("SupportVideo")
		
		rs.close
			
	end if
	 
end if

sub wenti(message)
%>
<script>alert('<%=message%>');</script>
<%
end sub

sub quanxian(shuzi)
if adminname<>"admin" and InStr(admincanshu,"admin" & shuzi)=0 then errstr("你没有管理该页面的权限！")
end sub
%>



<META http-equiv=Content-Type content="text/html; charset=gb2312">



