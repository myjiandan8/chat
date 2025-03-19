<%
'变量定义
'数据库操作函数
videoPIC = "http://liaowan.com/pic/video.jpg"

sub callServer(vsid)

	sql="select * from ServerDB where sid="& vsid &" order by sid asc"
	set rs=chatconn.execute (sql)
	chathostip=rs("chathostip")					'聊天软件授权绑定的主机名
	chatserialno=rs("chatserialno")				'聊天软件授权绑定序列号	
	keyfile=replace(replace(rs("keyfile"),"$$port", port),"$$maxnum",maxnum)						'授权文件replace(inilines,"$$title", roomname) keyfile=rs("keyfile")
	roomcfgdir=rs("roomcfgdir")					'聊天室WEB后台系统生成或修改的端口配置文件的目录
	moduledir=rs("moduledir")					'摸板位置
	dsnname=rs("dsnname")
	dsnuser=rs("dsnuser")
	dsnpass=rs("dsnpass")
	bindhost=chathostip
	websys=rs("websys")							'接口位置
	bindserial = chatserialno
	md5pass=rs("md5pass")						'MD5密码
	'videorate=28								'视频速率
	'videoframerate=6							'视频帧速率
	rs.close

end sub


sub upbchat(strop)

    '添加数据
    'On Error Resume Next

    sql="SELECT * from [Room] where port=" & port
	rs.open sql,Bchatconn,1,3
    
       if rs.eof then rs.addnew
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
       rs("type") ="A"
       rs("keyfile") =keyfile
       rs("bindserial") =bindserial
       rs("admin") =admin
       'rs("RoomType") =RoomType
       
       rs("muban") =muban
       rs("vms") =vms
       rs("voicemode")=voicemode
       rs("voicesamples")=voicesamples
       rs("voicenum") =voicenum
       rs("videonum") =videonum
       rs("videorate") =videorate								    '视频速率
	   rs("videoframerate") =videoframerate							'视频帧速率
	   rs("websys")=websys
       rs.Update
       rs.close

end sub

Function edit()

	urls=websys &"?MD5vsr=" & MD5(port & md5pass) & "&port=" & port & "&menu=1"
	
	response.write urls
	newi= left(GetURL(urls),1)
	'if newi=1 then 
	'response.write "<script>alert('成功了');</script>"
	'else
	'response.write "<script>alert('聊天室文件生成失败！错误码 " & newi & "');window.close();</script>"
	'end if

End Function



'聊天室生成函数
Function edit1()

    '处理模板选择
    if muban = 2 then
    	moduledir=roomcfgdir & "\module1"	
    else
    	moduledir=roomcfgdir & "\module"	
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
		inilines=replace(inilines,"$$voicenum", voicenum)
		inilines=replace(inilines,"$$videonum", videonum)
		inilines=replace(inilines,"$$roomcfgdir",roomcfgdir)
		inilines=replace(inilines,"$$dsnname",dsnname)
		inilines=replace(inilines,"$$dsnuser",dsnuser)
		inilines=replace(inilines,"$$dsnpass",dsnpass)
		'inilines=replace(inilines,"$$", )

	   'inilines=replace(inilines,"$$", )

	'写入
	Set ts = fso.OpenTextFile(roomportdir & "\" & port & ".ini", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	Set ts = fso.OpenTextFile(roomportdir & "\" & port & ".ini.0", ForWriting, true)
	ts.Write(inilines)
	ts.Close()

	
	'读top.htm的模版文件 module_top.html
	Set f = fso.OpenTextFile(moduledir & "\module_top.htm", ForReading)
	inilines=f.ReadAll()
	f.Close()


	if rtype="V" then
		audiovideo=2
	elseif rtype="A" then
		audiovideo=1
	elseif rtype="T" then
		audiovideo=0
	end if
	
		inilines=replace(inilines,"$$audiovideo", audiovideo)
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
		inilines=replace(inilines,"$$voicemode", "NORMAL")
		inilines=replace(inilines,"$$voicesamples", "")
	
	elseif vms=1 then
		inilines=replace(inilines,"$$voicemode", "MINIMUM")
		inilines=replace(inilines,"$$voicesamples", "")
	
	elseif vms=2 then
		inilines=replace(inilines,"$$voicemode", "HIGH")
		inilines=replace(inilines,"$$voicesamples", "8")
		
	elseif vms=3 then
		inilines=replace(inilines,"$$voicemode", "HIGH")
		inilines=replace(inilines,"$$voicesamples", "16")
	
	end if
	inilines=replace(inilines,"$$videoPIC", videoPIC)    '视频默认图片
	inilines=replace(inilines,"$$videonum", videonum)
	inilines=replace(inilines,"$$voicemode", voicemode)
	inilines=replace(inilines,"$$voicesamples", voicesamples)
	inilines=replace(inilines,"$$videorate", videorate)
	inilines=replace(inilines,"$$videoframerate", videoframerate)


	Set ts = fso.OpenTextFile(roomportdir & "\top.htm", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	Set ts = fso.OpenTextFile(roomportdir & "\top.htm.0", ForWriting, true)
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
	Set ts = fso.OpenTextFile(roomportdir & "\body.htm.0",ForWriting, true)
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

	'生成
	Set ts = fso.OpenTextFile(roomportdir & "\bottom.htm",ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	Set ts = fso.OpenTextFile(roomportdir & "\bottom.htm.0",ForWriting, true)
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
	'写adminpass_端口.txt.0文件
	Set ts = fso.OpenTextFile(roomportdir & "\adminpass_" & port & ".txt.0", ForWriting, true)
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
		'id=rs("id")
		'fid=rs("fid")
		'sysff=rs("sysff")
		'fid=rs("fid")
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
		'RoomType = rs("RoomType")
		'liebiao = rs("liebiao")
		'id2 = rs("id2")
		'vip = rs("vip")
		muban=rs("muban")
		vms=rs("vms")
        voicenum =rs("voicenum")
        videonum =rs("videonum")
       voicemode=rs("voicemode")
       voicesamples=rs("voicesamples")
       videorate=rs("videorate") 							    '视频速率
	   videoframerate=rs("videoframerate") 						'视频帧速率
		rs.close

end sub


Function GetURL(url)
	On Error Resume Next
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          .setTimeouts 1000, 1000, 1000, 1000
          With Retrieval
          .Open "POST", url, False
          .setRequestHeader "Content-Type", "application/x-www-form-urlencoded" 
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function

Function GetURLs(url)
	On Error Resume Next
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
    	  .setTimeouts 2000, 1000, 5000, 5000
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURLs = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  GetURLs = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function

%>