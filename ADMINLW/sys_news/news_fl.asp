<!--#include file="../cdmdb.asp"-->
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

NID=request("NID")
NFL=request("NFL")
NFLEN=request("NFLEN")
NFLS=request("NFLS")
CZ=request("CZ")
%>
</head>

<body bgcolor="#9CC7EF" text="#000000">
<p align="center"><br>
<span lang="zh-cn">新闻分类管理</span></p>


<%
'添加新记录

if cz="TJ" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from SYS_NEWS_FL "
			rs.Open sql,conn,1,3
			
	   rs.AddNew 
	   rs("NFL") =NFL	   
       rs("NFLEN") =NFLEN
       rs("NFLS") =NFLS
		rs.Update

			
%>
<script language=vbs>
<!--
        MsgBox "………………添加成功………………！"
        window.location.href="news_fl.asp"

-->
</script>

<% end if %>




<%
'修改记录

if CZ="XG" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from SYS_NEWS_FL where NID like '"& NID &"'"
			rs.Open sql,conn,1,3

	   rs("NFL") =NFL	   
       rs("NFLEN") =NFLEN
       rs("NFLS") =NFLS
		rs.Update
			

			
			
%>
<script language=vbs>
<!--
        MsgBox "………………修改成功………………！"
        window.location.href="news_fl.asp"

-->
</script>

<% end if %>


<%
'删除记录
if cz="DEL" and request("queding")="" then  %>
   
<b>如果删除他的子级地名，也将全部会被删除，并且删除后就不能回复了你确定删除吗？</b>
<br>
<input type="button" name="Submit3" value="确定删除" onClick="document.location = 'news_fl.asp?FLZCid=<%=request("FLZCid")%>&XMDB=<%=request("XMDB")%>&queding=OK&CZ=DEL'" >   
<input type="button" name="Submit3" value="  放弃  " onClick="document.location = 'Javascript:window.history.go(-1)'" >
<% 
end if

if CZ="DEL" and request("queding")<>"" then 



			sql="delete from SYS_NEWS_FL where NID like '"&request("NID")&"'"
			conn.Execute ( sql )

			
%>
<script language=vbs>
<!--
        MsgBox "………………删除成功………………！"
        window.location.href="news_fl.asp"

-->
</script>

<% end if %>

<%=nfl%><br>
<%=nflen%><br>
<%=nfls%><br>
<%=cz%><br>
<% if cz="" then %>

<br>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#145AA0" width="623" id="AutoNumber1" height="89">
    <form method="post" action="news_fl.asp" name="forma">
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="5" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>添加分类</b></font></span></td>
    </tr>
    <tr>
      <td width="58" height="22" align="center"> </td>
      <td width="166" height="22" align="center"><span lang="zh-cn">中文名</span></td>
      <td width="180" height="22" align="center"><span lang="zh-cn">英文名</span></td>
      <td width="77" height="22" align="center">宿主ID</td>
      <td width="127" height="22" align="center"><span lang="zh-cn">操作</span></td>
    </tr>
    <tr>
      <td width="58" height="25" align="center"><span lang="zh-cn">填写</span></td>
      <td width="166" height="25" align="center">
      <input type="text" name="NFL" size="20"></td>
      <td width="180" height="25" align="center">
      <input type="text" name="NFLEN" size="20"></td>
      <td width="77" height="25" align="center"> 
        <input type="text" name="NFLS" size="4"> </td>
      <td width="127" height="25" align="center"> 
    <INPUT TYPE="HIDDEN" NAME="CZ" VALUE="TJ">
    <INPUT TYPE="HIDDEN" NAME="XMDB" VALUE="a">
        <input type="submit" name="tj" value=" 添 加 "></td>
    </tr>
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="5">　</td>
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
      <td width="621" bgcolor="#4296E7" height="18" colspan="5" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>修改分类</b></font></span></td>
    </tr>
    <tr>
      <td width="58" height="24" align="center">ID</td>
      <td width="166" height="24" align="center"><span lang="zh-cn">顶级分类中文名</span></td>
      <td width="165" height="24" align="center"><span lang="zh-cn">英文名</span></td>
      <td width="106" height="24" align="center">宿主ID</td>
      <td width="115" height="24" align="center"><span lang="zh-cn">处理方案</span></td>
    </tr>
<%
sql="select * from SYS_NEWS_FL "
set rs=conn.execute (sql)
do while not (rs.eof or err)
%>
    <form method="post" action="news_fl.asp" name="formb">
	<INPUT TYPE="HIDDEN" NAME="CZ" VALUE="XG">
    <INPUT TYPE="HIDDEN" NAME="Nid" VALUE="<%=rs("NID")%>">
    <INPUT TYPE="HIDDEN" NAME="XMDB" VALUE="a">
    <tr>
      <td width="58" height="27" align="center"><%=rs("NID")%></td>
      <td width="166" height="27" align="center">
      <input type="text" name="NFL" size="20" value="<%=rs("NFL")%>"></td>
      <td width="165" height="27" align="center">
      <input type="text" name="NFLEN" size="20" value="<%=rs("NFLEN")%>"></td>
      <td width="106" height="27" align="center">
      <input type="text" name="NFLS" size="4" value="<%=rs("NFLS")%>"></td>
      <td width="115" height="27" align="center"> 
    
    <input type="submit" name="Submit" value="修改">
    <input type="button" name="Submit3" value="删除" onClick="document.location = 'news_fl.asp?NID=<%=rs("NID")%>&CZ=DEL'" ></td>
    </tr>
        </form>
<% rs.moveNext
  loop
%>
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="5">　</td>
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