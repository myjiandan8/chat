<%@ Language="VBScript" %>
<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<%' Option Explicit 
Server.ScriptTimeOut=5000 '����ʱ���뵥λ ��ʱ500��
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'����ϵͳ�������
'��ƣ�����
'�Ͻ���Ϯ��
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

On Error Resume Next

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
'��������������ͳ������

SQLB = "select * from [web] where ff=2"
rsr.Open SQLB, chatconn, 1, 3
Do While Not (rsr.EOF Or Err)


'if Right(rsr("logins"), 1)="/" Then rsr("logins")=left(rsr("logins"),len(rsr("logins"))-1)


rsr("sysff")=0
rsr("fid")=2
rsr("ufid")=2
rsr("regurl")="http://admin.bliao.com/user/login.htm"
rsr("passurl")="http://admin.bliao.com/user/getpasswd.php"


rsr.Update



rsr.MoveNext

Loop
rsr.Close

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'chatconn.execute "delete from [web] where logins='http://202.96.140.86/cgi-bin/login.cgi' "


''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��������ҳ
'Set fso = CreateObject(fs)
'host = "http://liaowan.com/" 

'Call shengcheng(host & "chat/index_mb.asp","chat/index.htm")


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