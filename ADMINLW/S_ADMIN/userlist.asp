<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call quanxian(session("UID"),"admin",0)
%>
<%
dim rs,sql
dim page,maxPerPage
maxPerPage=10 'ÿҳ��ʾ�ļ�¼��
page=Request("page")
if (page="" or isempty(page)) then page=1
thisUrl="userList.asp?true=1"
session("adminOldUrl")=thisUrl&"&page="&page
set rs=server.createobject("adodb.recordset")
sql="select * from admin"
sql=sql&" order by id desc"
rs.open sql,conn,1,1
rs.pagesize=MaxPerPage
%>
<html>
<head>
<title>����Աά��</title>
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
        <div align="center"><font color="#FFFFFF">����Աά��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <b>&nbsp;<span lang="zh-cn"><a href="useradd.asp"><font color="#FFFFFF">����¹���Ա</font></a></span></b></font></div>
      </td>
    </form>
  </tr>
  <tr bgcolor="#5EA5E6"> 
    <td width="100" nowrap> 
      <div align="center"><font color="#FFFFFF"> ����Ա�ʺ�</font></div>
    </td>
    <td width="150" nowrap> 
      <div align="center"><font color="#FFFFFF">����Ա����</font></div>
    </td>
    <td width="249" nowrap align="center"> 
      <span lang="zh-cn"><font color="#FFFFFF">˵��</font></span></td>
    <td width="95" nowrap align="center"> 
      <font color="#FFFFFF">Ȩ��</font></td>
  </tr>
  <%
		dim rsID
		i=1
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		do while not (rs.eof or err) 
		rsID=rs("id")
%>
  <tr title="����鿴������Ϣ" style="cursor:hand" onClick="Javascript:window.location='userMod.asp?id=<%=rs("id")%>'"> 
    <td width="100">
      <div align="center"><%=rs("UID")%>��</div>
    </td>
    <td width="150">
      <div align="center"><%=rs("name")%>��</div>
    </td>
    <td width="249">
      <p align="center">��<%=rs("shuoming")%></td>
    <td width="95" align="center">
    <%=rs("quanxian")%>
      ��</td>
  </tr>
  <%
		i=i+1
		if i>maxPerPage then exit do
		rs.moveNext
		loop
%>
  <tr bgcolor="#4296E7"> 
    <td colspan="3" width="632"> 
      <div align="right"><font color=#FFFFFF><%=rs.recordCount%> ���<%=page%>/<%=rs.pageCount%> 
        ҳ��</font> 
        <%if page>1 then%>
        <input type="button" name="Submit3" value="��ҳ" onClick="Javascript:jumpTo(1)">
        <input type="submit" name="Submit4" value="��ҳ" onClick="Javascript:jumpTo(2)">
        <%else%>
        <input type="button" name="Submit3" value="��ҳ" disabled>
        <input type="submit" name="Submit4" value="��ҳ" disabled>
        <%end if
if rs.recordCount>page*maxPerPage then%>
        <input type="submit" name="Submit5" value="��ҳ" onClick="Javascript:jumpTo(3)">
        <input type="submit" name="Submit6" value="ĩҳ" onClick="Javascript:jumpTo(4)">
        <%else%>
        <input type="submit" name="Submit5" value="��ҳ" disabled>
        <input type="submit" name="Submit6" value="ĩҳ" disabled>
        <%end if%>
      </div>
    </td>
    <td width="95"> 
      ��</td>
  </tr>
</table>
  </center>
</div>
</body>
</html>