<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->


<%
if Request("abc")="add" then


	sql="select * from ip "
	rs.open sql,conn,1,3

	rs.addnew
	rs("ip")=Request("ip")
	rs("times")=now()
	rs.update
	rs.close
%>

<script language=Javascript>
	alert("��ӳɹ���");	
</script>
<%	


elseif Request("abc")="del" and Request("id")<>"" then

sql="delete from ip where id="&Request("id")
conn.execute (sql)
	
%>

<script language=Javascript>
	alert("���ɹ���");	
</script>
<%

end if



dim rs,sql
dim page,maxPerPage
maxPerPage=10 'ÿҳ��ʾ�ļ�¼��
page=Request("page")
if (page="" or isempty(page)) then page=1
thisUrl="userList.asp?true=1"
session("adminOldUrl")=thisUrl&"&page="&page
set rs=server.createobject("adodb.recordset")
sql="select * from IP"
sql=sql&" order by id desc"
rs.open sql,conn,1,1
rs.pagesize=MaxPerPage
%>
<html>
<head>
<title>��ɱIPά��</title>
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
<table width="581" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" style="border-collapse: collapse" bordercolor="#111111" height="127">
  <tr> 
    <form method="post" action="ip.asp?abc=add" name="form1">
      <td colspan="3" bgcolor="#4296E7" height="12" width="734"> 
        <div align="center"><span lang="zh-cn"><font color="#FFFFFF">��ɱIP����</font></span></div>
      </td>

  </tr>
  <tr>
      <td colspan="3" height="29" width="734"> 
        <b>�ֶ���ӷ�ɱIP��</b><input name="IP" size="19"> 
          <input type="submit" name="Submit2" value="���"></td>
              </form>
    </tr>
  <tr bgcolor="#5EA5E6"> 
    <td width="248" nowrap height="12"> 
      <div align="center"><span lang="zh-cn">��ɱ��IP</span></div>
    </td>
    <td width="239" nowrap align="center" height="12"> 
      <span lang="zh-cn">��ɱʱ��</span></td>
    <td width="68" nowrap align="center" height="12"> 
      <span lang="zh-cn">����</span></td>
  </tr>
  <%
		dim rsID
		i=1
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		do while not (rs.eof or err) 
		rsID=rs("id")
%>
  <tr title="����鿴������Ϣ" style="cursor:hand" onClick="Javascript:window.location='userMod.asp?id=<%=rs("id")%>'"> 
    <td width="248" height="9">
      <div align="center"><%=rs("IP")%>��</div>
      </td>
    <td width="239" height="9">
    <%=rs("TIMES")%>��
      </td>
    <td width="68" height="9" align="center">
    <a href="ip.asp?abc=del&id=<%=rs("id")%>">���</a></td>
  </tr>
  <%
		i=i+1
		if i>maxPerPage then exit do
		rs.moveNext
		loop
%>
  <tr bgcolor="#4296E7"> 
    <td colspan="3" width="724" height="21"> 
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
  </tr>
</table>
  </center>
</div>
</body>
</html>