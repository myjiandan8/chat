<%
'变量定义

Sub Dimstr()

    port=Request("port")
	roomname = Request("roomname")
	maxnum = Request("maxnum")
	userpasswd = Request("userpasswd")
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
	RoomType = Request("RoomType")
	muban = Request("muban")
	vms = Request("vms")

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

end Sub



'数据库操作函数






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
	   'inilines=replace(inilines,"$$", )

	'写入
	Set ts = fso.OpenTextFile(roomportdir & "\" & port & ".ini", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	'读top.htm的模版文件 module_top.html
	Set f = fso.OpenTextFile(moduledir & "\module_top.htm", ForReading)
	inilines=f.ReadAll()
	f.Close()

	inilines=replace(inilines,"$$topcolor", topcolor)
	
	if rtype = "A" then
	inilines=replace(inilines,"$$frameset", "*,0,0,120")
	elseif rtype = "V" then
	inilines=replace(inilines,"$$frameset", "*,0,94,120")
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

	sql="select * from chatadmin"
	set rsm=conn.execute (sql)
	admintor = rsm("chatadmin") & vbCrLf & admintor
	rsm.close

	'写adminpass_端口.txt文件
	Set ts = fso.OpenTextFile(roomportdir & "\adminpass_" & port & ".txt", ForWriting, true)
	ts.Write(admintor)
	ts.Close()

	
end Function

'引号"检测程序
Function jiance(str)


jiance=str
jiance=replace(jiance,"""","")
jiance=replace(jiance,"'","")


end Function



%>