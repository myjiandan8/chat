<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
Roomid	= Request("Roomid")
port	= Clng(Request("port"))
USER	= Request("user")
PASS	= Request("pass")
SEX		= Request("SEX")
id =port
''guanbi(port)

'检查是不是POST数据
if Request.ServerVariables("REQUEST_METHOD")<>"POST" then guanbi("不要玩我~~~乐天生气可要打你PP哦！")

if port=0 or USER="" then guanbi("输入不完整！" & port)
if (InStr(USER, "*") + InStr(USER, "&") + InStr(USER, "#") + InStr(USER, "."))>0 then guanbi("用户名里面严禁含有*&#.字符！")
if port < 1000 then guanbi("聊天室不合法！")

sub guanbi(message)
Response.Write "<script>alert('" & message & "');window.close();</script>"
response.end
end sub

Call OpenChatConn()
set rs=server.createObject("adodb.recordset")


'处理登陆

sql="select * from [web] where ID=" & port
rs.open sql,Chatconn,1,3

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if rs.eof and rs.bof then guanbi("本聊天室不存在！")
if rs("roomadd")=1 then guanbi("本聊天室已经被关闭！")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'if PASS="" and len(USER)<7 then USER = "VCU→" & USER & ""  '对非会员用户添加同盟标志
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

'检查COOKIES是否打开
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

	'guanbi("聊湾系统升级！\n新聊湾将 聊天室现有的管理程序基础上扩展聊友功能模块：\n拓展 个人VIP会员房间、个人主页、交友、社区、论坛、翻唱、注册歌手、MC、舞者、NJ等一系列的新功能。\n请等待升级完成日期通知！    ---- 聊湾")

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
		if InStr(GetURL(urls),"成功启动聊天室！")=0 then guanbi("系统出错，请与聊湾客户服务QQ779811联系！")
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
'显示网页
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
.navPoint {	FONT-SIZE: 9pt; CURSOR: hand; COLOR: #222222; FONT-FAMILY: Webdings}
</STYLE>
<META content="Microsoft FrontPage 6.0" name=GENERATOR></HEAD>
<BODY style="border:0px none; margin:0px; " scroll=no onMouseOver="window.status='〖VCU〗(聊湾)视频聊天同盟 - VCU.CN  LiaoWan.Com [Video Chat Union]';return true">

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
<p><FONT style="FONT-SIZE: 9pt; CURSOR: default; COLOR: #222222"><BR><BR><BR><BR><BR><BR><SPAN class=navPoint id=switchPoint title=关闭/打开左栏>
3</SPAN><BR><BR><BR><BR>　</FONT></TD></TR></TBODY></TABLE></TD>
<TD style="WIDTH: 100%" valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table1" height="100%">
<tr><td>
<IFRAME style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%" name=chatmain src="about:blank" frameBorder=0>
</IFRAME></td></tr></table></TD></TR></TBODY></TABLE>
　
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
<script language="JavaScript">
function haveError(){
	chatmain.document.URL ="lwchat.asp?user=<%=user%>&pass=<%=pass%>&port=<%=id%>&SEX=<%=SEX%>"
	}

//检测客户端是否安装控件
function checkActiveStatus(){
  try{
    var vGoldGrid = new ActiveXObject("LwChat.Quick");
    //alert('聊湾视聊提示：\n    如无法正常访问聊天室，请在首页下载聊湾视聊插件！！\n    聊湾严禁任何形式的色情、暴漏等违法行为！！！！\n    举报电话：13729848646 QQ779811 必有重谢！');
     
    //alert("聊湾视频聊天插件 安装成功");
  }
  catch(e)
   {
     //alert('聊湾视聊提示：\n    如无法正常访问聊天室，请在首页下载聊湾视聊插件！！\n    聊湾严禁任何形式的色情、暴漏等违法行为！！！！\n    举报电话：13729848646 QQ779811 必有重谢！');
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