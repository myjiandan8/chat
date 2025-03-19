<%
'变量定义



'数据库操作函数

sub upMechat(strop)

	Set rs= Server.CreateObject("ADODB.Recordset")
    sql="SELECT * from [Room] where RoomID=" & id
	rs.open sql,MeChatconn,1,3
 
       if strop=0 then rs.addnew
       
       rs("Roomid") = id
       rs("RoomName") =RoomName

       rs("MaxUser") =MaxUser
       rs("NearMaxUser") =NearMaxUser
       rs("IniNo") =IniNo
       rs("TemplateNo") =TemplateNo
       
       rs("LogRoom") =LogRoom
       
       rs("LogIP") = LogIP
       rs("LastMessage") = LastMessage
       rs("RoomType") = RoomType 

       
       rs("Administrators") = trim(Administrators1) & ";" & trim(Administrators2)
       
       
       rs("AllowGuest") = AllowGuest
       rs("Background") =Background
       rs("LogoutUrl") =LogoutUrl
       rs("RoomTopic") =RoomTopic
       rs("RoomPassword") =trim(RoomPassword)
       rs("ExternValue") = ExternValue
       rs("PrivateRoom") = 0
       rs("SupportAudio") = SupportAudio
       rs("SupportVideo") = SupportVideo

       rs.Update
       rs.close


end sub


Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function



'聊天室生成函数
Function addedit(roomids)

	Set rs= Server.CreateObject("ADODB.Recordset")
	sql="SELECT roomname from [Room] where RoomID=" & roomids
	rs.open sql,MeChatconn,1,3
	
 	Set fso = CreateObject(fs)
	If Not fso.FolderExists(medirs& "\" & roomids & "\") then
		fso.CreateFolder(medirs& "\" & roomids & "\")
	End If

	medirss = medirs & "\1"
	medirsr = medirs & "\" & roomids

	'处理模板文件
	ForReading = 1
	ForWriting = 2
	
	
''''''''读入''''''''''
	Set f = fso.OpenTextFile(medirss & "\body2.htm", ForReading)
	inilines=f.ReadAll()
	f.close()

	'inilines=replace(inilines,"<!--$UserName-->", rs("roo"))

	'写入
	Set ts = fso.OpenTextFile(medirsr & "\body2.htm", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	
''''''''读入''''''''''
	Set f = fso.OpenTextFile(medirss & "\body.htm", ForReading)
	inilines=f.ReadAll()
	f.close()

	'inilines=replace(inilines,"<!--$UserName-->", rs("roo"))

	'写入
	Set ts = fso.OpenTextFile(medirsr & "\body.htm", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	
''''''''读入''''''''''
	Set f = fso.OpenTextFile(medirss & "\chatform.htm", ForReading)
	inilines=f.ReadAll()
	f.close()

	'inilines=replace(inilines,"<!--$UserName-->", rs("roo"))

	'写入
	Set ts = fso.OpenTextFile(medirsr & "\chatform.htm", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	

''''''''读入''''''''''
	Set f = fso.OpenTextFile(medirss & "\frame1.htm", ForReading)
	inilines=f.ReadAll()
	f.close()

	inilines=replace(inilines,"<!--$RoomName-->", rs("roomname"))

	'写入
	Set ts = fso.OpenTextFile(medirsr & "\frame1.htm", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
''''''''读入''''''''''
	Set f = fso.OpenTextFile(medirss & "\userlist.htm", ForReading)
	inilines=f.ReadAll()
	f.close()

	'inilines=replace(inilines,"$$", )

	'写入
	Set ts = fso.OpenTextFile(medirsr & "\userlist.htm", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	
	rs.close
	
end Function


%>