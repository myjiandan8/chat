<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<!--数组数据库文件#include file="../../INC/CLA.asp" -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


<%
Server.ScriptTimeOut = 300

if Request("menu")="up" then

Set UP = Server.CreateObject("lw.up")

classid=Trim(UP.form("classid"))
set file = UP.file("file")
EXT=LCase(file.FileExt)

	if classid<>"" and (EXT="rar" or EXT="zip") then

	file.SaveFile Server.mappath("/soft/"& classid &"/"&file.FileName&"")

%>

&nbsp;
<br>文件上传成功,要<a href=up.asp>继续上传请点这里</a>
<%
	else
	
	wenti "出错！原因1可能没有选择软件类型。原因2只能上传.rar和.zip文件！"

	end if

set UP = Nothing

else

%>


<html>
<head>
<title>文件上传</title>
<link rel="stylesheet" href="../../../admin/img/lw.css" type="text/css">

</head>

<body bgcolor="#9CC7EF" text="#000000" leftmargin="0" topmargin="0">

<p>　</p>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="586" id="AutoNumber1" bgcolor="#FFFFFF" height="196">
    <tr>
      <td width="586" height="38" align="center"><b><font size="4">上传文件</font></b></td>
    </tr>
    <tr>
      <td width="586" height="22">超过3M文件还是使用FTP上传吧！ <br>
      里面放上介绍我们的文件。另外压缩包不要加密。<a href="../../../soft/wenjian.rar">下载介绍文件</a>
      <span lang="zh-cn">把这两个文件包含到压缩包里面！</span></td>
    </tr>
    <form enctype=multipart/form-data method=post name="myform"  action=up.asp?menu=up>
    <tr>
      <td width="586" height="30">该软件的类型：  
<%
    sql = "select * from class where cid=0"
    rs.open sql,conn,1,1
	if rs.eof and rs.bof then
	response.write "请先添加栏目。"
	response.end
	else
%> <SELECT name="classid" size="1">
             <OPTION selected value>==请选类型==</OPTION>
 <% 
        do while not rs.eof
%><OPTION value="<%=trim(rs("classid"))%>"><%=trim(rs("class"))%></OPTION><%
        rs.movenext
        loop
	end if
        rs.close
        set rs = nothing
        conn.Close
        set conn = nothing
%></SELECT> </td>
    </tr>
    <tr>
      <td width="586" height="46">选择要上传的文件：<input type=file style=FONT-SIZE:9pt name=file size="45"></td>
    </tr>
    <tr>
      <td width="586" height="28" align="center"><input style=FONT-SIZE:9pt type="submit" value=" 上 传 " name=Submit></td>
    </tr>
    <tr>
      <td width="586" height="32">FTP 上传是要认识这些文件夹 <p>
      </p>
      <p><span lang="zh-cn">1 ASP源码 <br>
      2 CGI源码 <br>
      3 PHP源码 <br>
      4 JSP源码<br>
      5 FLASH源码 <br>
      6 服务器类<br>
      7 其他源码 <br>
      8 书籍教程<br>
      9 常用工具</span></td>
    </tr>
    </form>
  </table>
  </center>
</div>
</body>
</html>
<%
end if
%>