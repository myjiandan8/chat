<!--���ݿ������ļ�#include file="INC/SQLconn.asp" -->
<%
Roomid	= Request("Roomid")
port	= Clng(Request("port"))
USER	= Request("user")
PASS	= Request("pass")
SEX		= Request("SEX")

''guanbi(port)

'����ǲ���POST����
if Request.ServerVariables("REQUEST_METHOD")<>"POST" then guanbi("��Ҫ����~~~����������Ҫ����PPŶ��")

if port=0 or USER="" then guanbi("���벻������" & port)
if (InStr(USER, "*") + InStr(USER, "&") + InStr(USER, "#") + InStr(USER, "."))>0 then guanbi("�û��������Ͻ�����*&#.�ַ���")
if port < 1000 then guanbi("�����Ҳ��Ϸ���")



sub guanbi(message)
Response.Write "<script>alert('" & message & "');window.close();</script>"
response.end
end sub

Call OpenConn()
Call OpenChatConn()
set rs=server.createObject("adodb.recordset")


'�����½

sql="select * from [web] where ID=" & port
rs.open sql,Chatconn,1,3

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if rs.eof and rs.bof then guanbi("�������Ҳ����ڣ�")
if rs("roomadd")=1 then guanbi("���������Ѿ����رգ�")
if rs("ff")<2 and port<>2000 then guanbi("ϵͳ���ԣ�BCHAT��������ʱ�����ţ�")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if ff<2 then

if PASS<>"" then
set rsr=server.createobject("adodb.recordset")
sql="select sex from [User] where name='" & USER & "' and passwd='" & PASS & "'"
rsr.open sql,conn,1,1
if not (rsr.eof and rsr.bof) then
	Response.Cookies("username")=User
	Response.Cookies("userpass")=PASS & asc(PASS)
	Response.Cookies("eremite")="0"
	SEX=rsr("sex")
	vips=1
end if
rsr.close
end if

if  rs("vip")<> "" then
if vips=1 then
	if InStr(rs("vip"), "*" & USER & "|") = 0 then guanbi("��������ֻ����֤��Ա�ſ��Խ��룡")
else
	if InStr(rs("vip"), USER & "|") = 0 then  guanbi("��������ֻ����֤��Ա�ſ��Խ��룡")
end if 
end if

end if

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if Request.Cookies("IsFirst" & port)=fail and ff<2 then 

LASTIP = RS("LASTIP")
NEWIP = REQUEST.servervariables("REMOTE_ADDR") 

IF CSTR(Month(RS("DATE"))) <> CSTR(Month(DATE())) THEN    

       RS("DATE") = DATE()                      
       RS("YESTERDAY") = RS("TODAY")            
       RS("BMONTH") = RS("MONTH")
       RS("MONTH") = 1                          
       RS("TODAY") = 1                          
       RS.Update                                
ELSE
   	IF CSTR(Day(RS("DATE"))) <> CSTR(Day(DATE())) THEN    
       RS("DATE") = DATE()                      
       RS("YESTERDAY") = RS("TODAY")            
       RS("TODAY") = 1                          
       RS.Update                                
   	END IF
	response.Cookies("IsFirst"  & port)=true
END IF

'���COOKIES�Ƿ��
IF not IsCookiesOpen then 
RS("TOTAL")  =  RS("TOTAL") + 1               
RS("TODAY") =  RS("TODAY") + 1               
RS("MONTH")  =  RS("MONTH") + 1               
RS.Update      
end if

end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	userroompasswd = rs("adminpasswd")
	ff=rs("ff")
	logins = rs("logins")
	loginw = rs("loginw")
	host = rs("host")
	start = rs("start")
	rs("renqi")=rs("renqi")+1
	rs("start")=1
	rs("stop")=0
	rs.Update
	rs.close
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
%>

<%
if ff=1 or port>800000 then
if host="" then host="liaowan.com"
%>


<p align="center">����������.... <br>
�����ʾ��װMeChat�ؼ����ȷ�ϰ�װ....<a target="_blank" href="http://www.mechat.com/cn/download/MeChatUser.exe">�ֹ���װ���ؿؼ�</a></p>


<FORM action=/ method=post name=form2>
<input type="hidden" name="Alias" size="11" MAXLENGTH="15" onBlur="document.cookie = 'chatname='+escape(this.value)" value="<%=USER%>"> 
<input TYPE="hidden" NAME="Password" size="11"  MAXLENGTH="15" onBlur="document.cookie = 'chatpass='+escape(this.value)" value="<%=PASS%>">
<INPUT type="hidden" name="Sex" value="<%=SEX%>">
<input type="hidden" name="RoomID" value=<%=port%>>
<input type="hidden" name="RoomPassword">

</FORM>  


<SCRIPT language=javascript>
function OnLogin()
{
	  	document['form2'].action='http://<%=host%>:6000/1/Login';
  		document.form2.submit();
}
OnLogin();
</SCRIPT>


<%
end if



''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if ff=0 or ff=2 then

if start=0 and ff=0 then
	On Error Resume Next
	'urls="http://"& host &"/cgi-bin/roomrestart.pl?roomid=0&port=" & port & "&userroompasswd=" & userroompasswd 
	urls="http://liaowan.com/cgi-bin/roomrestart.pl?roomid=0&port=" & port & "&userroompasswd=" & userroompasswd 
	if InStr(GetURL(urls),"�ɹ����������ң�")=0 then guanbi("ϵͳ������������ͻ�����010-81430388��ϵ��")
end if

if ff=2 then
roomid=loginw
hosts=logins
else
roomid=0
hosts="http://"& host &":"& port
end if 
%>
<p align="center">����������.... <br>
�����ʾ��װBChat�ؼ����ȷ�ϰ�װ....<a target="_blank" href="http://www.bluesky.cn/download/bluesky.exe">�ֹ���װ���ؿؼ�</a><br>
<% if ff=2 then %>
��������Ϊ<a href="http://bliao.com" target="_blank">����</a>�����ң�
��<a href="http://admin.bliao.com/user/login.htm" target="_blank">���û�ע��</a>��
��<a href="http://admin.bliao.com/user/getpasswd.php" target="_blank">�����һ�</a>�� </p>
<%end if%>


<FORM action=<%=hosts%> method=post name=form1>
<input type="hidden" name="USER" size="11" MAXLENGTH="15" onBlur="document.cookie = 'chatname='+escape(this.value)" value="<%=USER%>"> 
<input TYPE="hidden" NAME="PASS" size="11"  MAXLENGTH="15" onBlur="document.cookie = 'chatpass='+escape(this.value)" value="<%=PASS%>">
<INPUT type="hidden" name="SEX" value="<%=SEX%>">
<input type="hidden" name="roomid" value=<%=roomid%>>
</FORM>
<br>


<SCRIPT language=javascript>
function OnLogin()
{
	  	document['form1'].method='POST';
  		document.form1.submit();
}
OnLogin();
</SCRIPT>

<%
end if



Call Closedb()

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
		  GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function
%>