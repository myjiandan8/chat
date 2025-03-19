<!--MD5编码#include file="md5.asp" -->
<%
'技术支持 http://vcu.cn 
'版权所有 乐天 大家可以随便转载和修改。呵呵

'session有效时间
session.Timeout=20

'系统变量'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

	chathostip="chat1.chat-chat.net"			'聊天软件授权绑定的主机名
	chatserialno="XaObaHCkYsgtvYoQvCbc"			'聊天软件授权绑定序列号
	keyfile="key_chat1.chat-chat.net_V0_1000" 		'授权文件
	roomcfgdir="C:\bchat"					'聊天室WEB后台系统生成或修改的端口配置文件的目录
	moduledir="C:\bchat\module"				'摸板位置
	videorate=28						'视频速率
	videoframerate=6					'视频帧速率
	dsnname="bchat"
	dsnuser=""
	dsnpass=""
	websys=""
	md5pass="letian"

	
	fs="Scripting.FileSystemObject"        		'fso组件名称
	
	'mehost="liaowan.com"
	'meport="6000"
	'medir="C:\MeChat"
	'medirs="C:\MeChat\SysData\template"
	

'连接ODBC数据源'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'数据库DSN名
    ''passjk="Provider=Sqloledb; User ID=sa; Password=; Data Source=liaowan.com; Initial Catalog = "
    passjk="Provider=Sqloledb; User ID=sa; Password=; Data Source=127.0.0.1; Initial Catalog = "
	liaowancmvip	=passjk & "liaowandb;"  			'会员数据库 系统设置总数据库
	liaowanbchatdb	=passjk & "bchat;"					'bchat会员数据库 聊天室数据库
	liaowanmechatdb =passjk & "liaowandb;"	 			'mechat会员数据库 聊天室数据库
	liaowannews		=passjk & "news;"	 				'聊湾新闻组，论坛组，信息组数据库
	liaowancw		=passjk & "cw;"						'产品数据库，财务数据库
	liaowanbbs		=passjk & "bbs;"					'论坛数据库
	chatweb			=passjk & "liaowan;"				'聊天室数据库

'连接MS-SQL[ODBC数据源]数据库
Set conn 		= Server.CreateObject("ADODB.Connection") '会员数据库 系统设置总数据库
Set BChatconn 	= Server.CreateObject("ADODB.Connection") 'bchat会员数据库 聊天室数据库
Set MeChatconn 	= Server.CreateObject("ADODB.Connection") 'mechat会员数据库 聊天室数据库
Set newsconn 	= Server.CreateObject("ADODB.Connection") '聊湾新闻组，信息组数据库
Set cwconn 		= Server.CreateObject("ADODB.Connection") '产品数据库，财务数据库
Set bbsconn 	= Server.CreateObject("ADODB.Connection") '论坛数据库
Set chatconn 	= Server.CreateObject("ADODB.Connection") '论坛数据库

'定义接通数据库函数
Sub OpenConn()
conn.Open = liaowancmvip
End Sub

Sub OpenBChatConn()
BChatconn.Open = liaowanbchatdb
End Sub

Sub OpenMeChatConn()
MeChatconn.Open = liaowanmechatdb
End Sub

Sub OpennewsConn()
newsconn.Open = liaowannews
End Sub

Sub OpencwConn()
cwconn.Open = liaowancw
End Sub

Sub OpenbbsConn()
bbsconn.Open = liaowanbbs
End Sub

Sub OpenChatConn()
Chatconn.Open = chatweb
End Sub

'销毁数据对象函数
sub Closedb()
Set conn = Nothing
Set BChatconn = Nothing
Set MeChatconn = Nothing
Set newsconn = Nothing
Set cwconn = Nothing
Set bbsconn = Nothing
Set Chatconn = Nothing
end sub



'错误消息'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
sub errstr(message)
Response.Write "<script>alert('" & message & "');history.go(-1);</script>"
response.end
end sub

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
function HTMLEncode(fString)
fString=trim(fString)
fString=replace(fString,";","&#59;")
fString=replace(fString,"<","&lt;")
fString=replace(fString,">","&gt;")
fString=replace(fString,"\","&#92;")
fString=replace(fString,"--","&#45;&#45;")
fString=replace(fString,"'","&#39;")
fString=replace(fString,CHR(34),"&quot;")
fString=replace(fString,vbCrlf,"<br>")
HTMLEncode=fString
end function
''''''''''替换模块START''''''''''''
Function ReplaceText(fString,patrn, replStr)
Set regEx = New RegExp  ' 建立正则表达式。
regEx.Pattern = patrn   ' 设置模式。
regEx.IgnoreCase = True ' 设置是否区分大小写。
regEx.Global = True     ' 设置全局可用性。 
ReplaceText = regEx.Replace(fString, replStr) ' 作替换。
End Function
''''''''''替换模块END''''''''''''
'''SQL破坏语句过滤'''''''''''''''
function ContentEncode(fString)
fString=replace(fString,vbCrlf, "")
fString=replace(fString,"\","&#92;")
fString=replace(fString,"'","&#39;")
fString=ReplaceText(fString,"<(.[^>]*)(&#|cookie|window.|Document.|javascript:|js:|vbs:|about:|file:|on(blur|click|change|Exit|error|focus|finish|key|load|mouse))", "&lt;$1$2$3")
fString=ReplaceText(fString,"<(\/|)(iframe|object|SCRIPT|form|style|meta|TEXTAREA)", "&lt;$1$2")
ContentEncode=fString
end function

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Function CheckHtml(Str)
   Dim Sos
   Sos=Trim(Str)
   if InStr(1,Sos," ",vbTextCompare)<>0 or InStr(1,Sos,".",vbTextCompare)<>0 or InStr(1,Sos,"<",vbTextCompare)<>0 or InStr(1,Sos,">",vbTextCompare)<>0 or InStr(1,Sos,"&",vbTextCompare)<>0  or InStr(1,Sos,"!",vbTextCompare)<>0 then
      CheckHtml=true
   elseif Len(Sos)<2 then
   	  CheckHtml=true
   else
      CheckHtml=false
   end if      
End Function

''''验证码检测'''''''''''''''''''''''''
Sub yanzheng()
	if session("adminid")="" or session("adminid")<>trim(Request("adminid")) then 
	errstr("请正确填写验证码\n如果填写表单时间超过20分钟，请刷新验证码！")
	else
	session("adminid")=""
	end if
End Sub
''''''''''''''''''''''''''''''''''''''

jk="ok"
%>