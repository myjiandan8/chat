<%@ Language="VBScript" %>
<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<%' Option Explicit 
Server.ScriptTimeOut=500 '����ʱ���뵥λ ��ʱ500��
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'����ϵͳ�������
'��ƣ�����
'�Ͻ���Ϯ��
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��������
Menu=Request("Menu")
maxnum = 0
maxroom = 0
bchatn = 0
bchatr = 0
mechatn = 0
mechatr = 0
blchatn = 0
blchatr = 0
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'�����ݿ�
Call OpenConn()
Call OpenchatConn()
Call OpenbchatConn()
Call OpenmechatConn()
set rs=server.createObject("adodb.recordset")
set rsr=server.createObject("adodb.recordset")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��ʼ��ϵͳ
if Menu="gostart" then
'��ʼ��Bchatϵͳ
chatconn.execute("update [web] set start=0,stop=0,num=0 where (num>0 or start>0 or stop>0) and ff<2")
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��ʱ����������


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'Ǩ��BCHAT���ݿ�����
SQLB = "select id,ff,num,start,stop,host,adminpasswd from [web] where ff=0 and (num>0 or start>0 or stop>0)"
rsr.Open SQLB, chatconn, 1, 3
Do While Not (rsr.EOF Or Err)

SQLD = "select num from [room] where port=" & rsr("id")
rs.Open SQLD, bchatconn, 1, 1

If rs("num") > 0 Then
    If rsr("start") = 1 Then
    bchatr = bchatr + 1
    rsr("stop") = 0
    Else
    '����������رյ�
    rsr("start") = 0
    rsr("num") = 0
    rsr("stop") = 0
    End If
Else
    rsr("stop") = rsr("stop") + 1
End If

If rsr("stop") = 2 Then
GetURL("http://"& rsr("host") &"/cgi-bin/roomrestart.pl?roomid=0&stops=1&port=" & rsr("id") & "&userroompasswd=" & rsr("adminpasswd")) '�ر�������
rsr("start") = 0
'rsr("stop") = 0
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
'����MeChat����������ͳ������
SQLB = "select id,ff,num from [web] where ff=1"
rsr.Open SQLB, chatconn, 1, 3
Do While Not (rsr.EOF Or Err)

SQLC = "select RoomID from [UserInfo] where RoomID=" & rsr("ID")
rs.Open SQLC, mechatconn, 1, 1

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
'��������������ͳ������
SQLB = "select id,ff,num,logins,loginw from [web] where ff=2"
rsr.Open SQLB, chatconn, 1, 3
Do While Not (rsr.EOF Or Err)

chatstrs=GetURL("http://"& rsr("loginw") &".chat.yinsha.com")
s1=InStr(chatstrs, "6600"">(")+7
if s1>100 then
s2=InStr(s1,chatstrs, ")")-s1-1
chatstr=clng(mid(chatstrs,s1,s2))
else
chatstr=0
end if

s1=InStr(chatstrs, "form1.action=""")+14
if s1>100 then
s2=InStr(s1,chatstrs, """")-s1
logins=mid(chatstrs,s1,s2)
else
logins=""
end if 

rsr("num") = chatstr
if logins<>"" then rsr("logins")=logins
if chatstr>0 then
blchatr = blchatr + 1
blchatn = blchatn + chatstr
end if

rsr.Update
rsr.MoveNext

Loop
rsr.Close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'2��������������ͳ������
SQLB = "select id,ff,num,logins,loginw from [web] where ff>2 or fid=0"
rsr.Open SQLB, chatconn, 1, 3
Do While Not (rsr.EOF Or Err)

chatstrs=GetURL("http://"& rsr("logins") &"/BANNER?USER=QUERY&ROOMID=0&QUERYNUM")
s1=InStr(chatstrs, "6600"">(")+7
if s1>100 then
s2=InStr(s1,chatstrs, ")")-s1-1
chatstr=clng(mid(chatstrs,s1,s2))
else
chatstr=0
end if

s1=InStr(chatstrs, "form1.action=""")+14
if s1>100 then
s2=InStr(s1,chatstrs, """")-s1
logins=mid(chatstrs,s1,s2)
else
logins=""
end if 

rsr("num") = chatstr
if logins<>"" then rsr("logins")=logins
if chatstr>0 then
blchatr = blchatr + 1
blchatn = blchatn + chatstr
end if

rsr.Update
rsr.MoveNext

Loop
rsr.Close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''





'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��������������ͳ������
SQL3 = "select * from [MaxAll]"
rsr.Open SQL3, conn, 1, 3
rsr("bchatn") = bchatn
rsr("bchatr") = bchatr
rsr("mechatn") = mechatn
rsr("mechatr") = mechatr
rsr("maxnum") = bchatn + mechatn + blchatn
rsr("maxroom") = bchatr + mechatr + blchatr
rsr.Update
rsr.Close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''



''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��������ҳ
Set fso = CreateObject(fs)
host = "http://liaowan.com/" 

Call shengcheng(host & "chat/index_mb.asp","chat/index.htm")


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'������
'XML��ҳ���ʺ���

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

Function GetURLs(url)
	On Error Resume Next
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURLs = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  GetURLs = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function

'���ɺ���
sub shengcheng(url,name)
On Error Resume Next
str=GetURLs(url)
if len(str)>2000 then 

Set f = fso.CreateTextFile(Server.MapPath("/" & name))
f.write(str)
f.close
Set f = nothing
Response.Write "<a target=_blank href="& host & name &">" & host & name & " ������!</a>"
Response.Write "<br>"
else
Response.Write host & name & "����ʧ��!"
end if

end sub

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
%>