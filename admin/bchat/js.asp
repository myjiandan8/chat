<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(21) %>
<%
xz=Request("xz")
if xz="" then xz=1

if xz=1 then
files= rmport & ".js"
else
files= rmport & "f.js"
end if

if Request("jstxt")<>"" then


	'写端口.js文件
	if len(Request("jstxt"))>200000 then
		Call errstr("脚本控制在200K以内，要不聊天室打不开怎么办呵呵！！")
	end if
	
	
	psths = server.mappath("/chatjs")
	
	On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set ts = fso.OpenTextFile(psths & "\" & files, ForWriting, true)
	ts.Write(Request("jstxt"))
	ts.Close()
	
	Call errstr("修改成功！！")
	
end if
	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>自定义脚本修改</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
<form name="form5" method="post" action="js.asp">
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="682">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; </font></b><font color="#FFFFFF"><b>
			自定义JS配置</b></font></td>
          </tr>
          
          <tr>
<td width="593" height="49" bgcolor="#F9F9F7" valign="top">
            本服务是 聊湾提供给聊天室用户的JS配置空间，目前扩展为两个JS脚本空间，可以放置两个脚本！<br>
			主脚本： 
            <a target="_blank" href="http://liaowan.com/chatjs/<%=rmport%>.js">http://liaowan.com/chatjs/<%=rmport%>.js</a>&nbsp; 
            脚本二：<a target="_blank" href="http://liaowan.com/chatjs/<%=rmport%>F.js">http://liaowan.com/chatjs/<%=prmport%>f.js</a>！<br>
            在基本配置-聊天室脚本URL-填写 <font color="#FF0000">&lt;SCRIPT src=http://liaowan.com/chatjs/<%=rmport%>.js&gt;&lt;/SCRIPT&gt;</font><b>
            </b>就可使用<br>
			样板脚本下载 <a href="http://liaowan.com/chatjs/8002.js"><u>脚本一</u></a>
			<a href="http://liaowan.com/chatjs/118122.js"><u>脚本二</u></a> 
			下载完后选中脚本右键-&gt;编辑 修改脚本内容后粘贴到下面文本框中。提交即可<br>
			<br>
			选择修改 <a href="js.asp?xz=1">&nbsp; <%=rmport%>.js</a> | <a href="js.asp?xz=2">
			<%=rmport%>f.js</a><br>
　</td>
            </tr>

          <tr>
<td width="593" height="22" bgcolor="#F9F9F7" valign="top">
            当前修改<b><font color="#FF0000"> <%=files%></font></b></td>
            </tr>

          <tr>
          
            <td width="593" height="523" align="center" bgcolor="#F9F9F7" valign="top">
            
<%
    On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	psths = server.mappath("/chatjs")
	If fso.FileExists(psths & "\" & files) then
	Set f = fso.OpenTextFile(psths & "\" & files, ForReading)
	inilines=f.ReadAll()
	else
	inilines=""
	end if
	
	if inilines="" then inilines="在这里填写内容！请与站务人员那里得到JS脚本模板，再根据自己喜好修改，把文件内容复制到这里然后确认修改就可以使用了！"
	
 %>
            
<textarea rows="37" name="jstxt" cols="78"><%=inilines%></textarea><br>
            <input type=hidden name=xz value="<%=xz%>">

            <input type="submit" value=" 确认修改 " name="B1"></td>
            </tr>

        </table>
        </center>
      </div>
<form>
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>