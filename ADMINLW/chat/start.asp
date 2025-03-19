<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call Openchatconn
set rs=server.createObject("adodb.recordset")
port	= Request("port")
sql="select * from [web] where id=" & port
rs.open sql,chatconn,1,1

if rs("ff")=1 then

	userroompasswd = rs("adminpasswd")
	port = rs("cid")
	websys = ChatConn.Execute("Select websys From serverdb where sid="& rs("sid"))(0)
	websys=mid(websys,1,InStrRev(websys,"/"))
	
	'sql="select * from [serverdb] where sid=" & rs("sid")
	'set rsr = chatconn.Execute(sql)
	
	'urls=rsr("websys") &"?MD5vsr=" & MD5(port & md5pass) & "&port=" & port & "&menu=5"
	urls=websys & "roomrestart.pl?roomid=0&port=" & port & "&userroompasswd=" & userroompasswd & "&time=" & time
	'newi= left(GetURL(urls),1)
		if InStr(GetURL(urls),"成功启动聊天室")=0 then 
		response.write "<script>alert('系统出错，请与聊湾客户服务0351-6179283反应！\n"& urls &"');window.close();</script>"
		else
		response.write "<script>alert('启动成功！');window.close();</script>"
		end if
	'response.write urls
	'response.write "<br>"
	'response.write newi
	
	'if newi=1 then response.write "<script>alert('启动成功！');window.close();</script>"
	if 1=2 then
		userroompasswd = rs("adminpasswd")
		urls="http://"& rs("websys") &"/cgi-bin/roomrestart.pl?roomid=0&port=" & rs("cid") & "&userroompasswd=" & userroompasswd 
		response.write = urls
		if InStr(GetURL(urls),"成功启动聊天室")=0 then 
		response.write "<script>alert('系统出错，请与聊湾客户服务0351-6179283反应！\n"& urls &"');window.close();</script>"
		else
		response.write "<script>alert('启动成功！');window.close();</script>"
		end if
	end if
end if

rs.close

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
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function

%>