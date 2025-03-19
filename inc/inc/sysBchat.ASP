<%
'变量定义
'数据库操作函数

sub upbchat(strop)

    '添加数据
    'On Error Resume Next

    sql="SELECT * from [Room] where port=" & port
	rs.open sql,Bchatconn,1,3
    
       if strop=0 then rs.addnew
       rs("port") = port
       rs("RoomName") = roomname

       rs("host") = chathostip
       rs("maxnum") = maxnum
       rs("bodycolor") =bodycolor
       rs("bodyurl") =bodyurl
       rs("bottomcolor") =bottomcolor
       rs("bottomurl") =bottomurl
       rs("topcolor") =topcolor
       rs("adnote") =adnote
       rs("scripturl") =scripturl
       rs("leaveurl") =leaveurl
       rs("fullurl") =fullurl
       rs("unauthurl") =unauthurl
       rs("setadm") =setadm
       rs("setimg") =setimg
       rs("setdoor") =setdoor
       rs("setsex") =setsex
       rs("admintor") =admintor
       'rs("channels") =channels
       rs("adminpasswd") =userpasswd
       ''rs("userpasswd1") = userpasswd1
       ''rs("userpasswd2") = userpasswd2
       rs("rtype") =rtype
       rs("keyfile") =keyfile
       rs("bindserial") =bindserial
       rs("admin") =admin
       rs("RoomType") =RoomType
       
       'rs("muban") =muban
       rs("vms") =vms
       
       rs.Update
       rs.close

end sub





'聊天室生成函数
Function edit()

    '处理模板选择
    if muban = 2 then
    
    moduledir="C:\bchat\module1"	
    
    else
    
    moduledir="C:\bchat\module"	
    
    end if



	'处理模板文件
	Dim fso
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set f = fso.OpenTextFile(moduledir & "\module_port.ini", ForReading)
	inilines=f.ReadAll()
	f.close()
	
	
	'生成端口配置文件目录
	On Error Resume Next
	dim roomportdir
		roomportdir=roomcfgdir & "\" & port

	if Not fso.FolderExists(roomportdir) then
		if Not fso.CreateFolder(roomportdir) then
			'errstr("对不起，创建端口目录出错!")
			'Response.End
		end if
	end if
	
	'将module_port.ini的变量字串替换，写端口.ini文件
		inilines=replace(inilines,"$$title", roomname)
		inilines=replace(inilines,"$$maxnum", maxnum)
		inilines=replace(inilines,"$$port", port)
		inilines=replace(inilines,"$$setadm", setadm)
		inilines=replace(inilines,"$$setimg", setimg)
		inilines=replace(inilines,"$$setdoor", setdoor)
		inilines=replace(inilines,"$$setsex", setsex)
		inilines=replace(inilines,"$$unauthurl", unauthurl)
		inilines=replace(inilines,"$$fullurl", fullurl)
		inilines=replace(inilines,"$$hostip", bindhost)
		inilines=replace(inilines,"$$keyfile", keyfile)
		inilines=replace(inilines,"$$serialno", bindserial)
		inilines=replace(inilines,"$$chatserver", dsnname)
		inilines=replace(inilines,"$$BchatDB", liaowanbchatdb)
	   'inilines=replace(inilines,"$$", )

	'写入
	Set ts = fso.OpenTextFile(roomportdir & "\" & port & ".ini", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	'读top.htm的模版文件 module_top.html
	Set f = fso.OpenTextFile(moduledir & "\module_top.htm", ForReading)
	inilines=f.ReadAll()
	f.Close()

		inilines=replace(inilines,"$$title", roomname)
		inilines=replace(inilines,"$$port", port)
	
	inilines=replace(inilines,"$$topcolor", topcolor)
	
	if rtype = "A" then
	inilines=replace(inilines,"$$frameset", "*,0,0,120")
	elseif rtype = "V" then
		if muban=2 then
		inilines=replace(inilines,"$$frameset", "*,0,120,94")
		else
		inilines=replace(inilines,"$$frameset", "*,0,94,120")
		end if
		
	else
	inilines=replace(inilines,"$$frameset", "*,0,0,0")
	end if


	'语音模式
	if vms=0 then
	inilines=replace(inilines,"$$moshi", "NORMAL")
	inilines=replace(inilines,"$$caiyang", "")
	
	elseif vms=1 then
	inilines=replace(inilines,"$$moshi", "MINIMUM")
	inilines=replace(inilines,"$$caiyang", "")
	
	elseif vms=2 then
	inilines=replace(inilines,"$$moshi", "HIGH")
	inilines=replace(inilines,"$$caiyang", "8")
	
	elseif vms=3 then
	inilines=replace(inilines,"$$moshi", "HIGH")
	inilines=replace(inilines,"$$caiyang", "16")
	
	end if
	

	Set ts = fso.OpenTextFile(roomportdir & "\top.htm", ForWriting, true)
	ts.Write(inilines)
	ts.Close()


	'读body.htm的模版文件 module_body.html
	Set f = fso.OpenTextFile(moduledir & "\module_body.htm", ForReading)
	inilines=f.ReadAll()
	f.Close()

	'将module_body.html的变量字串替换，写body.htm文件
	inilines=replace(inilines,"$$bodycolor", bodycolor)
	inilines=replace(inilines,"$$bodyurl", bodyurl)
	inilines=replace(inilines,"$$adnote", adnote)
	
	Set ts = fso.OpenTextFile(roomportdir & "\body.htm",ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	
	'读bottom.htm的模版文件 module_bottom.html
	Set f = fso.OpenTextFile(moduledir & "\module_bottom.htm", ForReading)
	inilines=f.ReadAll()
	f.Close()

	'将module_bottom.html的变量字串替换，写bottom.htm文件


	'inilines=replace(inilines,"$$", )
	inilines=replace(inilines,"$$bottomcolor", bottomcolor)
	inilines=replace(inilines,"$$bottomurl", bottomurl)
	inilines=replace(inilines,"$$leaveurl", leaveurl)
	inilines=replace(inilines,"$$scripturl", scripturl)
	inilines=replace(inilines,"$$channels", scripturl)
	
	
	if rtype="V" then 
		showvideobutton="<input type=SUBMIT value='视频连接' name='VREQ'>"
	else
		showvideobutton=""
	end if
	inilines=replace(inilines,"$$showvideobutton", showvideobutton)


	Set ts = fso.OpenTextFile(roomportdir & "\bottom.htm",ForWriting, true)
	ts.Write(inilines)
	ts.Close()

	sql="select name from addadmin"
	set rsrs=chatconn.execute (sql)
	do while not (rsrs.eof or err)
	badmin =badmin & "*" & rsrs("name") & "|123|9" & vbCrLf
	rsrs.moveNext
	loop
	
	admintors = badmin & admintor

	'写adminpass_端口.txt文件
	Set ts = fso.OpenTextFile(roomportdir & "\adminpass_" & port & ".txt", ForWriting, true)
	ts.Write(admintors)
	ts.Close()

	
end Function

'引号"检测程序
Function jiance(str)


jiance=str
jiance=replace(jiance,"""","")
jiance=replace(jiance,"'","")


end Function



sub shujv()

	sql="select * from [Room] where port=" & port
	set rs = bchatconn.Execute(sql)
	
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
		admin = rs("admin")
		RoomType = rs("RoomType")
		liebiao = rs("liebiao")
		id2 = rs("id2")
		vip = rs("vip")
		muban=rs("muban")
		vms=rs("vms")
		rs.close

end sub
%>