<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
Roomid	= Request("Roomid")
port	= HTMLEncode(Trim(Request("port")))
USER	= Request("user")
PASS	= Request("pass")
SEX		= Request("SEX")


'检查是不是POST数据
if Request.ServerVariables("REQUEST_METHOD")<>"POST" then guanbi("不要玩我~~~乐天生气可要打你PP哦！")
if USER="" then guanbi("输入不完整！" & port)

if (InStr(USER, "*") + InStr(USER, "&") + InStr(USER, "#") + InStr(USER, "."))>0 then guanbi("用户名里面严禁含有*&#.字符！")

sub guanbi(message)
Response.Write "<script>alert('" & message & "');window.close();</script>"
response.end
end sub

Call OpenChatConn()
set rs=server.createObject("adodb.recordset")

'处理登陆
sql="select * from [web] where logins='" & port &"'"
rs.open sql,Chatconn,1,3
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

if rs.eof and rs.bof then 

	roomname="未收录聊天室 收录联系QQ779811 或请贵站加盟VCU同盟 使用系统同步"
	ff=1
	sysff=0
	logins=port
	port=2000
	'guanbi("本聊天室不存在！\n或者未被聊湾收录")

else
	port=rs("id")
	if rs("roomadd")=1 then guanbi("本聊天室已经被关闭！")
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
	
	'检查COOKIES是否打开
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
'显示网页

end if
%>
<HTML><HEAD><title><%=roomname%> - 〖VCU〗(聊湾)视频聊天同盟 - VCU.CN  LiaoWan.Com [Video Chat Union]</title>
<LINK href="images/style.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content=text/html;charset=gb2312>
<SCRIPT>
if (window.screen) { var aw = screen.availWidth; var ah = screen.availHeight;window.moveTo(0, 0);window.resizeTo(aw, ah);} 
function switchSysBar(){
if (switchPoint.innerText==3){
switchPoint.innerText=4
document.all("frmTitle").style.display="none"
switchPoint1.innerText="打开菜单";
}else{
switchPoint.innerText=3
document.all("frmTitle").style.display=""
switchPoint1.innerText="关闭菜单";
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
<BODY style="border:0px none; margin:0px; " scroll=no onMouseOver="window.status='〖VCU〗(聊湾)视频聊天同盟 - VCU.CN  LiaoWan.Com [Video Chat Union]';return true">
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
<p><FONT style="FONT-SIZE: 9pt; CURSOR: default; COLOR: #ffffff"><BR><BR><BR><BR><BR><BR><SPAN class=navPoint id=switchPoint title=关闭/打开左栏>3</SPAN><BR><BR><BR><BR><SPAN id=switchPoint1 title=关闭/打开左栏>关闭菜单</SPAN></FONT></TD></TR></TBODY></TABLE></TD>
<TD style="WIDTH: 100%" valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table1" height="100%">
<tr><td>
<IFRAME style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%" name=chatmain src="about:blank" frameBorder=0>
</IFRAME></td></tr></table></TD></TR></TBODY></TABLE>
　
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

Call Closedb() '关闭对象

Sub MechaForm  'MeChat 等目录
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