<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<html>
<head>
<title>后台管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
<%
dim xmdb
xmdb=request("xmdb")
if xmdb="" then 
   xmdb="a"
end if

Classid=request("Classid")
classd=request("class")

Cid=request("Cid")
if cid="" then cid=0


CZ=request("CZ")

%>
</head>

<body bgcolor="#E2EFFC" text="#000000">



<%
'顶级添加新记录

if cz="TJ" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from class "
			rs.Open sql,conn,1,3
			
	   rs.AddNew    
       rs("class") =classd
       rs("Cid") =cid
	   rs.Update

			
%>
<script language=vbs>
<!--
        MsgBox "………………添加成功………………！"
        window.location.href="fl.asp?cid=<%=cid%>"

-->
</script>

<% end if %>




<%
'修改记录

if CZ="XG" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from class where classid="& classid &""
			rs.Open sql,conn,1,3
   
       rs("class") =classd
		rs.Update
			

			
			
%>
<script language=vbs>
<!--
        MsgBox "………………修改成功………………！"
        window.location.href="fl.asp?cid=<%=cid%>"

-->
</script>

<% end if %>


<%
'删除记录
if cz="DEL" and request("queding")="" then  %>

<script language="vbscript">
	if msgbox ("如果删除本地名，它的子级地名也将全部会被删除，并且删除后就不能回复了你确定删除吗？",vbYesNo+vbQuestion,"确定删除")=vbYes then
	   window.location.href="fl.asp?classid=<%=request("classid")%>&XMDB=<%=request("XMDB")%>&queding=OK&CZ=DEL"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<% 
end if

if CZ="DEL" and request("queding")<>"" then 



			sql="delete from class where classid="&request("classid")&""
			conn.Execute ( sql )

			
%>
<script language=vbs>
<!--
        MsgBox "………………删除成功………………！"
        window.location.href="fl.asp?cid=<%=cid%>"

-->
</script>

<% end if %>


<% if cz="" then %> 
<p align="center"><br>
<b><span lang="zh-cn">软件分类管理</span>
<%
if cid<>0 then
sql="select * from class where classid="&cid
rs.Open sql,conn,1,3
Response.Write "=====["& rs("class") &"]子分类管理"
end if
%>
</b></p>

<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>
<span lang="zh-cn"><a href="fl.asp">管理顶级分类</a></span></b><br>
<br>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#145AA0" width="623" id="AutoNumber1" height="89">
    <form method="post" action="fl.asp" name="forma">
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="3" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>添加顶级分类</b></font></span></td>
    </tr>
    <tr>
      <td width="58" height="22" align="center"> </td>
      <td width="166" height="22" align="center"><span lang="zh-cn">分类名称</span></td>
      <td width="127" height="22" align="center"><span lang="zh-cn">操作</span></td>
    </tr>
    <tr>
      <td width="58" height="25" align="center"><span lang="zh-cn">填写</span></td>
      <td width="166" height="25" align="center">
      <input type="text" name="class" size="28"></td>
      <td width="127" height="25" align="center"> 
      <INPUT TYPE="HIDDEN" NAME="CZ" VALUE="TJ">
 		<INPUT TYPE="HIDDEN" NAME="cid" VALUE=<%=cid%>>
        <input type="submit" name="tj" value=" 添 加 "></td>
    </tr>
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="3">　</td>
    </tr>
    </form>
  </table>
  </center>
</div>

<br>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#145AA0" width="623" id="AutoNumber1" height="93">
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="4" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>修改删除顶级分类</b></font></span></td>
    </tr>
    <tr>
      <td width="58" height="24" align="center">ID</td>
      <td width="166" height="24" align="center"><span lang="zh-cn">分类名称</span></td>
      <td width="127" height="24" align="center"><span lang="zh-cn">处理方案</span></td>
      <td width="78" height="24" align="center"><span lang="zh-cn">下级分类管理</span></td>
    </tr>
<%
sql="select * from class where cid="&cid
set rs=conn.execute (sql)
do while not (rs.eof or err)
%>
    <form method="post" action="fl.asp" name="formb">
	<INPUT TYPE="HIDDEN" NAME="CZ" VALUE="XG">
    <INPUT TYPE="HIDDEN" NAME="classid" VALUE="<%=rs("classid")%>">
    <INPUT TYPE="HIDDEN" NAME="cid" VALUE=<%=cid%>>
    <tr>
      <td width="58" height="27" align="center"><%=rs("classid")%></td>
      <td width="166" height="27" align="center">
      <input type="text" name="class" size="20" value="<%=rs("class")%>"></td>
      <td width="127" height="27" align="center"> 
    
    <input type="submit" name="Submit" value="修改">
    <input type="button" name="Submit3" value="删除" onClick="document.location = 'fl.asp?classid=<%=rs("classid")%>&CZ=DEL'" ></td>
      <td width="78" height="27" align="center"> 
    <% if cid=0 then %>
    <span lang="zh-cn">
    <a href="fl.asp?cid=<%=rs("classid")%>">修改子分类</a></span>
    <% end if %>
    </td>
    </tr>
        </form>
<% rs.moveNext
  loop
%>
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="4">　</td>
    </tr>

  </table>
  </center>
</div>
<p>　</p>
<p>　</p>

<% end if %>


<p align="center">
    <input type="button" name="Submit3" value="  返回  " onClick="document.location = 'Javascript:window.history.go(-1)'" ></p>
</body>
</html>