<!--���ݿ������ļ�#include file="INC/SQLconn.asp" -->
<%
Roomid	= Request("Roomid")
port	= HTMLEncode(Trim(Request("port")))
USER	= Request("user")
PASS	= Request("pass")
SEX		= Request("SEX")


'����ǲ���POST����
if Request.ServerVariables("REQUEST_METHOD")<>"POST" then guanbi("��Ҫ����~~~����������Ҫ����PPŶ��")
if USER="" then guanbi("���벻������" & port)

if (InStr(USER, "*") + InStr(USER, "&") + InStr(USER, "#") + InStr(USER, "."))>0 then guanbi("�û��������Ͻ�����*&#.�ַ���")

sub guanbi(message)
Response.Write "<script>alert('" & message & "');window.close();</script>"
response.end
end sub

Call OpenChatConn()
set rs=server.createObject("adodb.recordset")

'�����½
sql="select * from [web] where logins='" & port &"'"
rs.open sql,Chatconn,1,3
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

if rs.eof and rs.bof then 

	roomname="δ��¼������ ��¼��ϵQQ779811 �����վ����VCUͬ�� ʹ��ϵͳͬ��"
	ff=1
	sysff=0
	logins=port
	port=2000
	'guanbi("�������Ҳ����ڣ�\n����δ��������¼")

else
	port=rs("id")
	if rs("roomadd")=1 then guanbi("���������Ѿ����رգ�")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
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
	End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	sysff=rs("sysff")
	ff=rs("ff")
	logins = rs("logins")
	loginw = rs("loginw")
	roomname = rs("roomname")
	
	rs("renqi")=rs("renqi")
	rs("start")=1
	rs("stop")=0
	rs.Update
	rs.close
	
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��ʾ��ҳ

end if
%>
<HTML><HEAD><title><%=roomname%> - ��VCU��(����)��Ƶ����ͬ�� - VCU.CN  LiaoWan.Com [Video Chat Union]</title>
<LINK href="images/style.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content=text/html;charset=gb2312>
<SCRIPT>
if (window.screen) { var aw = screen.availWidth; var ah = screen.availHeight;window.moveTo(0, 0);window.resizeTo(aw, ah);} 
function switchSysBar(){
if (switchPoint.innerText==3){
switchPoint.innerText=4
document.all("frmTitle").style.display="none"
switchPoint1.innerText="�򿪲˵�";
}else{
switchPoint.innerText=3
document.all("frmTitle").style.display=""
switchPoint1.innerText="�رղ˵�";
}}
</SCRIPT>
<script language="JavaScript">
<!--
if (window.Event) 
document.captureEvents(Event.MOUSEUP); 
function nocontextmenu() 
{
event.cancelBubble = true
event.returnValue = false;
return false;
}

function norightclick(e) 
{
if (window.Event) 
{
if (e.which == 2 || e.which == 3)
return false;
}
else
if (event.button == 2 || event.button == 3)
{
event.cancelBubble = true
event.returnValue = false;
return false;
}
}
document.oncontextmenu = nocontextmenu; // for IE5+
document.onmousedown = norightclick; // for all others
//-->
</script>
<STYLE type=text/css>
.navPoint {	FONT-SIZE: 9pt; CURSOR: hand; COLOR: white; FONT-FAMILY: Webdings}
</STYLE>
<META content="Microsoft FrontPage 6.0" name=GENERATOR></HEAD>
<BODY style="border:0px none; margin:0px; " scroll=no onMouseOver="window.status='��VCU��(����)��Ƶ����ͬ�� - VCU.CN  LiaoWan.Com [Video Chat Union]';return true">
<table border="0" width="100%" id="table2" cellspacing="0" cellpadding="0" height="100%">
<tr><td height="50">
<IFRAME style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%" name=I1 src="top.asp?sysff=<%=sysff%>&ff=<%=ff%>&id=<%=port%>" frameBorder=0 scrolling="no">
</IFRAME></td></tr>
<tr><td>

<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY><TR><TD id=frmTitle vAlign=center noWrap align=middle name="frmTitle">
<IFRAME id=carnoc style="Z-INDEX: 2; VISIBILITY: inherit; WIDTH: 163px; HEIGHT: 100%" name=carnoc  src="menu.asp?sysff=<%=sysff%>&ff=<%=ff%>&id=<%=port%>" frameBorder=0 scrolling="no"></IFRAME></TD>
<TD class=a2 style="WIDTH: 9pt">
<TABLE height="100%" cellSpacing=0 cellPadding=0 border=0><TBODY><TR><TD style="HEIGHT: 100%" onclick=switchSysBar() bgcolor="#000000">
<p><FONT style="FONT-SIZE: 9pt; CURSOR: default; COLOR: #ffffff"><BR><BR><BR><BR><BR><BR><SPAN class=navPoint id=switchPoint title=�ر�/������>3</SPAN><BR><BR><BR><BR><SPAN id=switchPoint1 title=�ر�/������>�رղ˵�</SPAN></FONT></TD></TR></TBODY></TABLE></TD>
<TD style="WIDTH: 100%" valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table1" height="100%">
<tr><td>
<IFRAME style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%" name=chatmain src="about:blank" frameBorder=0>
</IFRAME></td></tr></table></TD></TR></TBODY></TABLE>
��
</td></tr></table>

<SCRIPT>if (window.screen.width<'1024'){switchSysBar()}</SCRIPT></BODY></HTML>
<%
if sysff=0 then
roomid=loginw
hosts=logins
%>
<FORM action=<%=hosts%> method=post name=form1  target=chatmain>
<input type="hidden" name="USER" size="11" MAXLENGTH="15" onBlur="document.cookie = 'chatname='+escape(this.value)" value="<%=USER%>"> 
<input TYPE="hidden" NAME="PASS" size="11"  MAXLENGTH="15" onBlur="document.cookie = 'chatpass='+escape(this.value)" value="<%=PASS%>">
<INPUT type="hidden" name="SEX" value="<%=SEX%>">
<input type="hidden" name="roomid" value=<%=roomid%>>
</FORM>
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

Call Closedb() '�رն���

Sub MechaForm  'MeChat ��Ŀ¼
%>

<FORM action=/ method=post name=form2 target=chatmain>
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
<% End Sub %>