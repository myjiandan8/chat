<!--���ݿ������ļ�#include file="INC/SQLconn.asp" -->
<%
Roomid	= Request("Roomid")
port	= Clng(Request("port"))
USER	= Request("user")
PASS	= Request("pass")
SEX		= Request("SEX")
id =port
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

Call OpenChatConn()
set rs=server.createObject("adodb.recordset")


'�����½

sql="select * from [web] where ID=" & port
rs.open sql,Chatconn,1,3

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if rs.eof and rs.bof then guanbi("�������Ҳ����ڣ�")
if rs("roomadd")=1 then guanbi("���������Ѿ����رգ�")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'if PASS="" and len(USER)<7 then USER = "VCU��" & USER & ""  '�Էǻ�Ա�û����ͬ�˱�־
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

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
	sysff=rs("sysff")
	ff=rs("ff")
	sid = rs("sid")
	logins = rs("logins")
	loginw = rs("loginw")
	port = rs("cid")
	'host = rs("host")
	'start = rs("start")
	userroompasswd = rs("adminpasswd")
	roomname = rs("roomname")
	rs("renqi")=rs("renqi") + 1
	'rs("start")=1
	'rs("stop")=0
	rs.Update
	rs.close
	
if ff=1 then
Call OpenBChatConn()

	'guanbi("����ϵͳ������\n�����彫 ���������еĹ�������������չ���ѹ���ģ�飺\n��չ ����VIP��Ա���䡢������ҳ�����ѡ���������̳��������ע����֡�MC�����ߡ�NJ��һϵ�е��¹��ܡ�\n��ȴ������������֪ͨ��    ---- ����")

	'Response.Write sid
	websys=chatConn.Execute("Select websys From serverdb where sid="& sid)(0)
	
	sql="select start,stop from [room] where port=" & port
	rs.open sql,BChatconn,1,3
	start=rs("start")
	rs("stop")=0
	websys=mid(websys,1,InStrRev(websys,"/"))
		'Response.Write websys & "roomrestart.pl?roomid=0&port=" & port & "&userroompasswd=" & userroompasswd  & "&time=" & time
		'response.end
	 if start=0 then
		urls=websys & "roomrestart.pl?roomid=0&port=" & port & "&userroompasswd=" & userroompasswd & "&time=" & time
		if InStr(GetURL(urls),"�ɹ����������ң�")=0 then guanbi("ϵͳ������������ͻ�����QQ779811��ϵ��")
		rs("start")=1
	 end if
	rs.Update
	rs.close
end if
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
          'GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��ʾ��ҳ
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
.navPoint {	FONT-SIZE: 9pt; CURSOR: hand; COLOR: #222222; FONT-FAMILY: Webdings}
</STYLE>
<META content="Microsoft FrontPage 6.0" name=GENERATOR></HEAD>
<BODY style="border:0px none; margin:0px; " scroll=no onMouseOver="window.status='��VCU��(����)��Ƶ����ͬ�� - VCU.CN  LiaoWan.Com [Video Chat Union]';return true">

<table border="0" width="100%" id="table2" cellspacing="0" cellpadding="0" height="100%">
<tr><td height="50">
<IFRAME style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%" name=I1 src="top.asp?sysff=<%=sysff%>&ff=<%=ff%>&id=<%=id%>" frameBorder=0 scrolling="no">
</IFRAME></td></tr>
<tr><td>

<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY><TR><TD id=frmTitle vAlign=center noWrap align=middle name="frmTitle">
<IFRAME id=carnoc style="Z-INDEX: 2; VISIBILITY: inherit; WIDTH: 163px; HEIGHT: 100%" name=carnoc  src="menu.asp?sysff=<%=sysff%>&ff=<%=ff%>&id=<%=id%>" frameBorder=0 scrolling="no"></IFRAME></TD>
<TD class=a2 style="WIDTH: 9pt">
<TABLE height="100%" cellSpacing=0 cellPadding=0 border=0 width="7"><TBODY><TR>
	<TD style="HEIGHT: 100%" onclick=switchSysBar()>
<p><FONT style="FONT-SIZE: 9pt; CURSOR: default; COLOR: #222222"><BR><BR><BR><BR><BR><BR><SPAN class=navPoint id=switchPoint title=�ر�/������>
3</SPAN><BR><BR><BR><BR>��</FONT></TD></TR></TBODY></TABLE></TD>
<TD style="WIDTH: 100%" valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table1" height="100%">
<tr><td>
<IFRAME style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%" name=chatmain src="about:blank" frameBorder=0>
</IFRAME></td></tr></table></TD></TR></TBODY></TABLE>
��
</td></tr></table>

<SCRIPT>if (window.screen.width<'2800'){switchSysBar()}</SCRIPT></BODY></HTML>
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
<script language="JavaScript">
function haveError(){
	chatmain.document.URL ="lwchat.asp?user=<%=user%>&pass=<%=pass%>&port=<%=id%>&SEX=<%=SEX%>"
	}

//���ͻ����Ƿ�װ�ؼ�
function checkActiveStatus(){
  try{
    var vGoldGrid = new ActiveXObject("LwChat.Quick");
    //alert('����������ʾ��\n    ���޷��������������ң�������ҳ�����������Ĳ������\n    �����Ͻ��κ���ʽ��ɫ�顢��©��Υ����Ϊ��������\n    �ٱ��绰��13729848646 QQ779811 ������л��');
     
    //alert("������Ƶ������ ��װ�ɹ�");
  }
  catch(e)
   {
     //alert('����������ʾ��\n    ���޷��������������ң�������ҳ�����������Ĳ������\n    �����Ͻ��κ���ʽ��ɫ�顢��©��Υ����Ϊ��������\n    �ٱ��绰��13729848646 QQ779811 ������л��');
     //chatmain.document.URL ="lwchat.asp?user=<%=user%>&pass=<%=pass%>&port=<%=id%>&SEX=<%=SEX%>"
   }
}
checkActiveStatus();
</script>

<OBJECT ID="Quick"
CLASSID="CLSID:0729A06B-C50B-4C6F-B2BD-AB684C553639"
CODEBASE="http://liaowan.com/LwChat.CAB#version=1,0,0,8" width="0" height="0"  onError="haveError();">
</OBJECT>
<iframe id="baiduframe" scrolling="no" width="0" height="0" src="ad/51vip.htm"></iframe>