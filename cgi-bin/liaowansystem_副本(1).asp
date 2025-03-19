<%@ Language="VBScript" %>
<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<%' Option Explicit 
Server.ScriptTimeOut=500 '设置时间秒单位 超时500秒
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'聊湾系统处理程序
'设计：乐天
'严禁抄袭！
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'变量定义
Menu=Request("Menu")
maxnum = 0
maxroom = 0
bchatn = 0
bchatr = 0
mechatn = 0
mechatr = 0
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'打开数据库
Call OpenConn()
Call OpenbchatConn()
Call OpenmechatConn()
set rs=server.createObject("adodb.recordset")
set rsr=server.createObject("adodb.recordset")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'初始化系统
if Menu="gostart"
'初始化Bchat系统
chatconn.execute("update [web] set start=0,stop=0,num=0 where (num>0 or start>0 or stop>0) and ff<2"
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'定时更新数据区


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'迁移BCHAT数据库数据
SQLB = "select id,ff,num,start,stop,host,port,adminpasswd from [web] where ff=0 and (num>0 or start>0 or stop>0)"
rsr.Open SQLB, chatconn, 1, 3
Do While Not (rsr.EOF Or Err)

SQLD = "select num from [room] where port=" & rsr("id")
rs.Open SQLD, bchatconn, 1, 3

If rs("num") > 0 Then
    If rsr("start") = 1 Then
    bchatr = bchatr + 1
    rsr("stop") = 0
    Else
    '估计是意外关闭的
    rsr("start") = 0
    rsr("num") = 0
    rsr("stop") = 0
    End If
Else
    rsr("stop") = rsr("stop") + 1
End If

If rsr("stop") = 2 Then
GetURL("http://"& rsr("host") &"/cgi-bin/roomrestart.pl?roomid=0&stops=1&port=" & rsr("port") & "&userroompasswd=" & rsr("adminpasswd")) '关闭聊天室
Else

bchatn = bchatn + rs("num")
rsr("num") = rs("num")

End If
rsr.Update
rs.Close

rsr.MoveNext
Loop
rsr.Close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'更新MeChat聊天室在线统计数据
SQLB = "select id,ff,num from [web] where ff=1"
rsr.Open SQLB, chatconn, 1, 3
Do While Not (rsr.EOF Or Err)

SQLC = "select RoomID from [UserInfo] where RoomID=" & rsr("ID")
rs.Open SQLC, mechatconn, 1, 3

If Not (rs.EOF Or Err) Then

rsr("num") = rs.RecordCount
rsr.Update
mechatr = mechatr + 1
mechatn = mechatn + rs.RecordCount
Else
rsr("num") = 0
rsr.Update
End If
rs.Close

rsr.MoveNext

Loop
rsr.Close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'碧聊聊天室在线统计数据
SQLB = "select id,ff,num,logins,loginw from [web] where ff=2"
rsr.Open SQLB, chatconn, 1, 3
Do While Not (rsr.EOF Or Err)

chatstr=GetURL("http://"& rsr("loginw") &".bliao.com")
s1=InStr(chatstr, "6600"">(")+7
if s1>100 then
s2=InStr(s1,chatstr, ")")-s1-1
chatstr=clng(mid(chatstr,s1,s2))
else
chatst=0
end if

rsr("num") = chatst
if chatst>0 then
mechatr = mechatr + 1
mechatn = mechatn + chatst
end if

rsr.Update
rsr.MoveNext

Loop
rsr.Close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'碧聊聊天室在线统计数据
SQL3 = "select * from [MaxAll]"
rsa.Open SQL3, conn, 3, 3
rsa("bchatn") = bchatn
rsa("bchatr") = bchatr
rsa("mechatn") = mechatn
rsa("mechatr") = mechatr
rsa("maxnum") = bchatn + mechatn
rsa("maxroom") = bchatr + mechatr
rsa.Update
rsa.Close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''



''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'生成新网页
Set fso = CreateObject(fs)
host = "http://chat1.chat-chat.net/" 

Call shengcheng(host & "chat/index_mb.asp"," chat/index.htm")


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'函数区
'XML网页访问函数

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
	On Error Resume Next
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


'生成函数
sub shengcheng(url,name)

str=bytes2BSTR(GetURL(url))
if len(str)>2000 then 

Set f = fso.CreateTextFile(Server.MapPath("/" & name))
f.write(str)
f.close
Set f = nothing
Response.Write "<a target=_blank href="& host & name &">" & host & name & " 已生成!</a>"
Response.Write "<br>"
else
Response.Write host & name & "生成失败!"
end if

end sub

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
%>