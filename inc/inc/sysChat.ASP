<%
'检查ID是否已经重在
sub newsid(newid)

sql="select * from web where id="& newid
set rs=chatconn.execute (sql)
if not rs.eof then
	response.write "该端口已经被其他聊天室占用，请换一个再做尝试！<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if
rs.close

end sub


'WEB 数据库操作	B
Function UpwebB(strop)

	sql="SELECT * FROM Web where id=" & clng(port)
	rs.open sql,chatconn,1,3

       if strop=0 then rs.addnew
       
       rs("id") = port
       rs("ff") = 0
       rs("cid") = port
       if RoomType<>"" then rs("RoomType") = RoomType
       rs("Roomname") = Roomname
       rs("max") = maxnum
       rs("adminid") = adminid
       rs("admin") = admin
       if strop=0 then rs("chatxy") = "欢迎光临" & Roomname & " - 聊湾语音视频聊天室，真情沟通从这里开始！"
       if userpasswd<>"" then rs("adminpasswd") = userpasswd
       if userpasswd1<>"" then rs("userpasswd1") = userpasswd1
       if userpasswd2<>"" then rs("userpasswd2") = userpasswd2
       rs("host") = chathostip
       if strop=0 then rs("newday") = date()
       if strop=0 then rs("date") = date()
       
       If rtype = "V" Then
       rs("rtype") = 0
       ElseIf rtype = "A" Then
       rs("rtype") = 1
       Else
       rs("rtype") = 2
       End If
       
       rs.Update
       rs.close
	
end Function


'WEB 数据库操作	Me
Function UpwebMe(strop)

	sql="SELECT * FROM Web where id=" & clng(id)
	rs.open sql,chatconn,1,3

       if strop=0 then rs.addnew
       rs("id") = id
       rs("ff") = 1
       rs("cid") = id
       rs("RoomType") = RoomType
       rs("Roomname") = Roomname
       rs("max") = maxuser
       if adminid<>"" then rs("adminid") = adminid
       rs("admin") = admin
       'rs("roomadd") = 0
       'rs("liebiao") = liebiao
       'rs("id2") = id2
       'rs("muban") = muban
       if strop=0 then rs("chatxy") = "欢迎光临" & Roomname & " - 聊湾语音视频聊天室，真情沟通从这里开始！"
       
       rs("adminpasswd") = userpasswd
       rs("userpasswd1") = userpasswd1
       rs("userpasswd2") = userpasswd2
       rs("host") = host
       if strop=0 then rs("newday") = date()
       if strop=0 then rs("date") = date()
       
       If SupportVideo = 1 Then
       rs("rtype") = 0
       ElseIf SupportAudio = 1 Then
       rs("rtype") = 1
       Else
       rs("rtype") = 2
       End If
       
       rs.Update
       rs.close
	
end Function

%>