<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
Roomid	= Request("Roomid")
port	= Clng(Request("port"))
USER	= Request("user")
PASS	= Request("pass")
SEX		= Request("SEX")

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

Call OpenConn()
Call OpenChatConn()
set rs=server.createObject("adodb.recordset")


'处理登陆

sql="select * from [web] where ID=" & port
rs.open sql,Chatconn,1,3

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if rs.eof and rs.bof then guanbi("本聊天室不存在！")
if rs("roomadd")=1 then guanbi("本聊天室已经被关闭！")
if rs("ff")<2 and port<>2000 then guanbi("系统调试，BCHAT聊天室暂时不开放！")
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
	if InStr(rs("vip"), "*" & USER & "|") = 0 then guanbi("本聊天室只有认证会员才可以进入！")
else
	if InStr(rs("vip"), USER & "|") = 0 then  guanbi("本聊天室只有认证会员才可以进入！")
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


<p align="center">接收数据中.... <br>
如果提示安装MeChat控件请点确认安装....<a target="_blank" href="http://www.mechat.com/cn/download/MeChatUser.exe">手工安装下载控件</a></p>


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
	if InStr(GetURL(urls),"成功启动聊天室！")=0 then guanbi("系统出错，请与聊湾客户服务010-81430388联系！")
end if

if ff=2 then
roomid=loginw
hosts=logins
else
roomid=0
hosts="http://"& host &":"& port
end if 
%>
<p align="center">接收数据中.... <br>
如果提示安装BChat控件请点确认安装....<a target="_blank" href="http://www.bluesky.cn/download/bluesky.exe">手工安装下载控件</a><br>
<% if ff=2 then %>
本聊天室为<a href="http://bliao.com" target="_blank">碧聊</a>聊天室：
〖<a href="http://admin.bliao.com/user/login.htm" target="_blank">新用户注册</a>〗
〖<a href="http://admin.bliao.com/user/getpasswd.php" target="_blank">密码找回</a>〗 </p>
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