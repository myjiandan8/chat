<%@ Language="VBScript" %>
<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<%' Option Explicit 
Server.ScriptTimeOut=1500 '����ʱ���뵥λ ��ʱ500��
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'����ϵͳ�������
'��ƣ�����
'�Ͻ���Ϯ��
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��������
'Menu=Request("Menu")
DID=Clng(Request("DID"))
maxnum = 0
maxroom = 0
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'�����ݿ�
Call OpenConn()
Call OpenchatConn()

set rs=server.createObject("adodb.recordset")
set rsr=server.createObject("adodb.recordset")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��ʼ��ϵͳ
'if Menu="gostart" then
'��ʼ��Bchatϵͳ
'chatconn.execute("update [web] set start=0,stop=0,num=0 where (num>0 or start>0 or stop>0) and ff<2")
'end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

if 1=1 then

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'����������ͳ������
SQLB = "select webid,maxnum,maxroom,Troom,Tnum from [newweb] where webid=4"
rs.Open SQLB, chatconn, 1, 3
Do While Not (rs.EOF Or Err)

	numall=0
	roomall=0
	Troom=0
	Tnum=0
	
	SQLB = "select id,ff,num,logins,loginw from [web] where ff=" & rs("webid") & " and roomadd=0"
	rsr.Open SQLB, chatconn, 1, 3
		Do While Not (rsr.EOF Or Err)
			num=0
			chatstrs=GetURL(rsr("logins") &"/BANNER?USER=QUERY&ROOMID=0&QUERYNUM")
			
			if left(chatstrs,16)="document.write('" then
			
				num=clng(mid(chatstrs,17,len(chatstrs)-18))
				numall=numall+num
				roomall=roomall+1
				rsr("num") = num
			
			else
			
				rsr("num") = 0
				num=0
			
			end if
			
			
			Troom=Troom+1
			
			rsr.Update
			rsr.MoveNext
		
		Loop
	rsr.Close
	
	
	rs("Troom")=Troom
	if numall>rs("Tnum") then rs("Tnum")=numall
	
	
	rs("maxnum")=numall
	rs("maxroom")=roomall
	
	maxnum =maxnum + numall
	maxroom = maxroom + roomall
	
	rs.Update
	rs.MoveNext
Loop
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
end if

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��������������ͳ������
SQL3 = "select * from [MaxAll]"
rsr.Open SQL3, conn, 1, 3
rsr("maxnum") = maxnum
rsr("maxroom") = maxroom
rsr.Update
rsr.Close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��������ҳ
Set fso = CreateObject(fs)
host = "http://" & Request.ServerVariables("HTTP_HOST") & "/"
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
          .setTimeouts 1000, 1000, 2000, 2000
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