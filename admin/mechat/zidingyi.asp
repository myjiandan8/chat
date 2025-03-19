<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(2) %>
<%
files=Request("files")

if files="" then files="a"


if files="a" then

	newfile="frame1.htm"

elseif files="b" then

	newfile="chatform.htm"

elseif files="c" then

	newfile="userlist.htm"

end if

'模板路径
medirsr = medirs & "\" & id

if Request("jstxt")<>"" then

	'写端口.js文件
	On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set ts = fso.OpenTextFile(medirsr & "\" & newfile, ForWriting, true)
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

      
  <%
       
 	'Set fso = CreateObject(fs)
	'If Not fso.FolderExists(medirs& "\" & id & "\") then
		'fso.CreateFolder(medirs& "\" & id & "\")
	'End If
	
  %>


      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="5" colspan="2">
          
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="652">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp;</font></b><font color="#FFFFFF"><b> 
			自定义模板</b></font></td>
          </tr>
          
          <tr>
<td width="593" height="21" align="right" bgcolor="#F9F9F7" valign="top">
            <p align="left"><br>
			说明：MECHAT 语音程序 3个 主要模板 :<br>
			<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			frame1.htm&nbsp;&nbsp;&nbsp;&nbsp; 框架文件&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<a href="zidingyi.asp?files=a">编辑该文件</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			chatform.htm&nbsp;&nbsp; 发言列表区文件&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<a href="zidingyi.asp?files=b">编辑该文件</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			userlist.htm&nbsp;&nbsp; 用户列表配置文件&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<a href="zidingyi.asp?files=c">编辑该文件</a>&nbsp; <br>
			<br>
			<font color="#99CC00"><b>注意： </b></font><font color="#FF0000">1&gt;</font> 
			&lt;!--$RoomName--&gt; 等 &lt;!--$字符--&gt;&nbsp; 都是系统变量，修改时请注意了。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">2&gt; </font>
			请在修改的时候注意备份，小心恢复不了<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">3&gt;</font> 
			发挥你们的想象力，做出优秀的作品<br>
			<br>
&nbsp;当前修改&nbsp;<b><font color="#FF0000"><%=newfile%> </font></b>文件</td>
            </tr>

          <tr>
          
            <td width="593" height="440" align="center" bgcolor="#F9F9F7" valign="top">
            
<%
    On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	If fso.FileExists(medirsr & "\" & newfile) then
	Set f = fso.OpenTextFile(medirsr & "\" & newfile, ForReading)
	inilines=f.ReadAll()
	else
	inilines=""
	end if
	
	if inilines="" then inilines="在这里填写内容！请下载模板，再根据自己喜好修改，把文件内容复制到这里然后确认修改就可以使用了！"
	
 %>
<textarea rows="33" name="jstxt" cols="80"><%=inilines%></textarea><br>
            
<input type=hidden name=files value="<%=files%>">

            <br>
            

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