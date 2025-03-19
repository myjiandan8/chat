<!--模板生成#include file="md5.asp" -->
<%
'版权所有 乐天 。任何抄袭偷盗的行为都是可耻的！！！！
'系统变量'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

	md5pass = "letian" 				 			'MD5加密键值
	chathostip="chat11.eliao.net"					'聊天软件授权绑定的主机名
	chatserialno="INR8a8JYUXJ2.M91douU"			'聊天软件授权绑定序列号
	keyfile="key_chat11.eliao.net_v$$port_$$maxnum" 		'授权文件
	roomcfgdir="D:\bchat"						'聊天室WEB后台系统生成或修改的端口配置文件的目录
	moduledir="D:\bchat\module"					'摸板位置
	videorate=28								'视频速率
	videoframerate=6							'视频帧速率
	dsnname="bchatdb"
	dsnuser="sa"
	dsnpass="xinletiandaye"
	bindhost=chathostip
	bindserial=chatserialno
	videoPIC = "http://vcu.cn/pic/video.jpg"

	dsnsvr = "dsn=" & dsnname & "; uid=" & dsnuser & "; pwd=" & dsnpass
	fs="Scripting.FileSystemObject"        		'fso组件名称

	menu=-1
	port=-1

	menu=clng(request("menu"))				'项目选择
	port=clng(request("port"))				'房间的ID号码
	MD5vsr=ContentEncode(request("MD5vsr"))	'MD5串码

	if menu=-1 or port=-1 or MD5vsr="" then Call errstr(0)
	if MD5vsr<>MD5(port & md5pass) then Call errstr(2)


	Set Bchatconn = Server.CreateObject("ADODB.Connection") '会员数据库 系统设置总数据库
	Set rs= Server.CreateObject("ADODB.Recordset")
	Bchatconn.Open = dsnsvr


		sql="select * from [admin]"
		set rs = Bchatconn.Execute(sql)
		badmin = rs("admin")
		rs.close
		
		roomname = ""
		maxnum = ""
		userpasswd = ""
		bodycolor = ""
		bodyurl = ""
		bottomcolor = ""
		bottomurl = ""
		topcolor = ""
		adnote = ""
		scripturl = ""
		leaveurl = ""
		fullurl = ""
		unauthurl = ""
		setadm = ""
		setimg = ""
		setdoor = ""
		setsex = ""
		admintor = ""
		channels = ""
		rtype = ""
		admintor=""
		userroompasswd= ""
		'vip = rs("vip")
		muban=""
		vms=""
		voicenum =0
        videonum =0
        voicemode=""
        voicesamples=""
        videorate="" 							    	'视频速率
	    videoframerate=""								'视频帧速率
		
		

	'选择操作
	  Select Case menu
	  
           Case 1    	'基本配置
           		Call Shujv(port)
           		Call Edit()
           		
           Case 2	 	'设置管理员
           		Call Shujv(port)
           		Call SaveAdmin()
           		
           Case 3	 	'设置群基本配置
           		Call editall()
           		
           Case 4	 	'设置群管理员
           		Call SaveAdminall()
           		
           Case 5	 	'设置群管理员
           		Call stratroom()
           		
           Case Else	'其他可能
           		Call errstr(0)
      End Select
		
Function stratroom()

	Call Shujv(port)
	urls="http://"& Request.ServerVariables("HTTP_HOST") & "/serverweb/roomrestart.pl?roomid=0&port=" & port & "&userroompasswd=" & userroompasswd 
	'errstr(urls)
	
	if InStr(GetURL(urls),"成功启动聊天室！")=0 then 
		Call errstr(0)
	else
		sql="select start,stop from [room] where port=" & port
		rs.open sql,BChatconn,1,3
			rs("start")=1
			rs("stop")=0
		rs.Update
		rs.close
		Call errstr(1)
	end if 
	
End Function

Function editall()

	sql="Select * From room where host='"& chathostip &"'"
	Set Rs=bchatconn.Execute(sql)
	do while not rs1.eof or err
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
		userroompasswd=rs("adminpasswd")
		'vip = rs("vip")
		muban=rs("muban")
		vms=rs("vms")
		voicenum =rs("voicenum")
        videonum =rs("videonum")
        voicemode=rs("voicemode")
        voicesamples=rs("voicesamples")
        videorate=rs("videorate") 							   	 	'视频速率
	    videoframerate=rs("videoframerate") 						'视频帧速率
		bindhost=rs("host")
		bindserial=rs("bindserial")
		keyfile=rs("keyfile")
		rs.close
		Call edit()
	rs.movenext
	loop
	Call errstr(1)
End Function

Function SaveAdminall()

	sql="Select * From room where host='"& chathostip &"'"
	Set Rs1=bchatconn.Execute(sql)
	do while not rs1.eof or err
		port=rs1("port")
		admintor = rs1("admintor")
		Call SaveAdmin()
	rs1.movenext
	loop
	rs1.close
	Call errstr(1)

End Function


'聊天室生成函数
Function edit()

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
	
	admintors = badmin & admintor

	'写adminpass_端口.txt文件
	Set ts = fso.OpenTextFile(roomportdir & "\adminpass_" & port & ".txt", ForWriting, true)
	ts.Write(admintors)
	ts.Close()
	'写adminpass_端口.txt.0文件
	Set ts = fso.OpenTextFile(roomportdir & "\adminpass_" & port & ".txt.0", ForWriting, true)
	ts.Write(admintors)
	ts.Close()
	Call errstr(1)

end Function



Function SaveAdmin()

	roomportdir=roomcfgdir & "\" & port
	'Response.Write roomportdir &"<br>"
	
	'处理模板文件
	On Error Resume Next
	Dim fso
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2

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

'读出数据来
Function ShuJv(porti)

	'读出数据
	sql="select * from [Room] where port=" & porti
	set rs = Bchatconn.Execute(sql)
    if rs.eof and rs.bof then Call errstr(4)
    
		port=rs("port")
		admintor = rs("admintor")
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
		channels = rs("channels")
		rtype = rs("rtype")
		userroompasswd=rs("adminpasswd")
		'vip = rs("vip")
		muban=rs("muban")
		vms=rs("vms")
		voicenum =rs("voicenum")
        videonum =rs("videonum")
        voicemode=rs("voicemode")
        voicesamples=rs("voicesamples")
        videorate=rs("videorate") 							   	 	'视频速率
	    videoframerate=rs("videoframerate") 						'视频帧速率
	    		'Call errstr(admintor)
		rs.close

		keyfile=replace(replace(keyfile,"$$port", port),"$$maxnum",maxnum)
End Function


		
		'errstr(badmin)



'错误消息''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
sub errstr(message)
Response.Write message & " " & time
response.end
'0 无效操作
'1 任务成功
'2 MD5密码错误
'3 数据库连接错误
'4 记录不存在
end sub
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
function HTMLEncode(fString)
fString=trim(fString)
fString=replace(fString,";","&#59;")
fString=replace(fString,"<","&lt;")
fString=replace(fString,">","&gt;")
fString=replace(fString,"\","&#92;")
fString=replace(fString,"--","&#45;&#45;")
fString=replace(fString,"'","&#39;")
fString=replace(fString,CHR(34),"&quot;")
fString=replace(fString,vbCrlf,"<br>")
HTMLEncode=fString
end function
''''''''''替换模块START''''''''''''
Function ReplaceText(fString,patrn, replStr)
Set regEx = New RegExp  ' 建立正则表达式。
regEx.Pattern = patrn   ' 设置模式。
regEx.IgnoreCase = True ' 设置是否区分大小写。
regEx.Global = True     ' 设置全局可用性。 
ReplaceText = regEx.Replace(fString, replStr) ' 作替换。
End Function
''''''''''替换模块END''''''''''''
'''SQL破坏语句过滤'''''''''''''''
function ContentEncode(fString)
fString=replace(fString,vbCrlf, "")
fString=replace(fString,"\","&#92;")
fString=replace(fString,"'","&#39;")
fString=ReplaceText(fString,"<(.[^>]*)(&#|cookie|window.|Document.|javascript:|js:|vbs:|about:|file:|on(blur|click|change|Exit|error|focus|finish|key|load|mouse))", "&lt;$1$2$3")
fString=ReplaceText(fString,"<(\/|)(iframe|object|SCRIPT|form|style|meta|TEXTAREA)", "&lt;$1$2")
ContentEncode=fString
end function

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Function CheckHtml(Str)
   Dim Sos
   Sos=Trim(Str)
   if InStr(1,Sos," ",vbTextCompare)<>0 or InStr(1,Sos,".",vbTextCompare)<>0 or InStr(1,Sos,"<",vbTextCompare)<>0 or InStr(1,Sos,">",vbTextCompare)<>0 or InStr(1,Sos,"&",vbTextCompare)<>0  or InStr(1,Sos,"!",vbTextCompare)<>0 then
      CheckHtml=true
   elseif Len(Sos)<2 then
   	  CheckHtml=true
   else
      CheckHtml=false
   end if      
End Function


Private Function bytes2BSTR(vIn)
  Dim i, ThischrCode, NextchrCode
  strReturn = ""
For i = 1 To LenB(vIn)
   ThischrCode = AscB(MidB(vIn, i, 1))
  If ThischrCode < &H80 Then
     strReturn = strReturn & Chr(ThischrCode)
  Else
    NextchrCode = AscB(MidB(vIn, i + 1, 1))
    strReturn = strReturn & Chr(CLng(ThischrCode) * &H100 + CInt(NextchrCode))
     i = i + 1
  End If
Next
    bytes2BSTR = strReturn
End Function


Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False
          '.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" 
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function

%>