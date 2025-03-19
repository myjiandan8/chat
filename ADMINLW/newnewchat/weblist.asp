<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call quanxian(session("UID"),"admin",0)
%>
<%
Call OpenChatconn
dim rs,sql
dim page,maxPerPage
maxPerPage=10 '每页显示的记录数
page=Request("page")
if (page="" or isempty(page)) then page=1
thisUrl="webList.asp?true=1"
session("adminOldUrl")=thisUrl&"&page="&page
set rs=server.createobject("adodb.recordset")
sql="select * from [newweb]"
sql=sql&" order by webid asc"
rs.open sql,chatconn,1,1
rs.pagesize=MaxPerPage
%>
<html>
<head>
<title>管理员维护</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
<script language=Javascript>
<!--
function jumpTo(i){
if(i==1){
	this.document.location="<%=thisUrl%>";}
if(i==2){
	this.document.location="<%=thisUrl%>&page=<%=page-1%>";}
if(i==3){
	this.document.location="<%=thisUrl%>&page=<%=page+1%>";}
if(i==4){
	this.document.location="<%=thisUrl%>&page=<%=rs.pageCount%>";}
}
//-->
</script>
</head>

<body bgcolor="#9CC7EF" text="#000000" leftmargin="0" topmargin="0">
<div align="center"><br>
</div>
<div align="center">
  <center>
<table width="597" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" style="border-collapse: collapse" bordercolor="#111111">
  <tr> 
    <form method="post" action="memberList.asp" name="form1">
      <td colspan="4" bgcolor="#4296E7" height="28" width="737"> 
        <div align="center"><font color="#FFFFFF">聊天站维护&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <b>&nbsp;<span lang="zh-cn"><a href="addweb.asp"><font color="#FFFFFF">添加新站点</font></a></span></b></font></div>
      </td>
    </form>
  </tr>
  <tr bgcolor="#5EA5E6"> 
    <td width="100" nowrap> 
      <div align="center"><font color="#FFFFFF">编码</font></div>
    </td>
    <td width="150" nowrap> 
      <div align="center"><font color="#FFFFFF">站点名字</font></div>
    </td>
    <td width="249" nowrap align="center"> 
      <font color="#FFFFFF">主页地址</font></td>
    <td width="95" nowrap align="center"> 
      <font color="#FFFFFF">站长</font></td>
  </tr>
  <%
		dim rsID
		i=1
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		do while not (rs.eof or err) 
		rsID=rs("webid")
%>
  <tr title="点击查看具体信息" style="cursor:hand" onClick="Javascript:window.location='addweb.asp?webid=<%=rs("webid")%>&menu=edit'"> 
    <td width="100">
      <div align="center"><%=rs("webid")%>　</div>
    </td>
    <td width="150">
      <div align="center"><%=rs("webname")%>　</div>
    </td>
    <td width="249">
      <p align="center">　<%=rs("weburl")%></td>
    <td width="95" align="center">
    <%=rs("admin")%>
      　</td>
  </tr>
  <%
		i=i+1
		if i>maxPerPage then exit do
		rs.moveNext
		loop
%>
  <tr bgcolor="#4296E7"> 
    <td colspan="3" width="632"> 
      <div align="right"><font color=#FFFFFF><%=rs.recordCount%> 项　第<%=page%>/<%=rs.pageCount%> 
        页　</font> 
        <%if page>1 then%>
        <input type="button" name="Submit3" value="首页" onClick="Javascript:jumpTo(1)">
        <input type="submit" name="Submit4" value="上页" onClick="Javascript:jumpTo(2)">
        <%else%>
        <input type="button" name="Submit3" value="首页" disabled>
        <input type="submit" name="Submit4" value="上页" disabled>
        <%end if
if rs.recordCount>page*maxPerPage then%>
        <input type="submit" name="Submit5" value="下页" onClick="Javascript:jumpTo(3)">
        <input type="submit" name="Submit6" value="末页" onClick="Javascript:jumpTo(4)">
        <%else%>
        <input type="submit" name="Submit5" value="下页" disabled>
        <input type="submit" name="Submit6" value="末页" disabled>
        <%end if%>
      </div>
    </td>
    <td width="95"> 
      　</td>
  </tr>
</table>
  </center>
</div>
</body>
</html>