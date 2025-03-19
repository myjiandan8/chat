<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
set rs=server.createObject("adodb.recordset")
sql = "Select * from CW_user where uid="& Request("uid")
rs.open sql,conn,1,1
if rs.eof then
Call errstr("你要的帐户不存在！！")
end if
%>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>帐目查询</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">
<%
'URL 携带信息取值
myKeyword=Request("myKeyword")

dm=Request("dm")
xz=Request("xz")
max=Request("max")
sc=Request("sc")

if dm="" then
   dm="s"
end if

if xz="" then
   xz="s"
end if

if max="" then
   max=20
end if

if sc="" then
   sc="desc"
end if


maxPerPage=max '每页显示的记录数

page=Request("page")



if (page="" or isempty(page)) then page=1
thisUrl="sou.asp?xz="&xz&"&dm="&dm&"&sc="&sc&"&max="&max&"&myKeyword="&myKeyword
session("adminOldUrl")=thisUrl&"&page="&page

set rsf=server.createobject("adodb.recordset")
sql="select * from CW_user where 1=1 "


if dm<>"s" then
	'sql=sql&" and id2="& dm &" "
end if

if xz<>"s" then
	'sql=sql&" and huiyuan="& xz &" "
end if
 
if myKeyword<>"" then
	sql=sql&" and (name like '%"&myKeyword&"%')"
end if


sql=sql&" order by id "&sc

'response.write sql
'response.End

rsf.open sql,conn,1,1
rsf.pagesize=MaxPerPage
%>
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
	this.document.location="<%=thisUrl%>&page=<%=rsf.pageCount%>";}
}
//-->
</script>
<br>
<div align="center">
  <center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" id="AutoNumber6">
  <tr>
    <td width="100%">
    　</td>
  </tr>
</table>
  </center>
</div>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="232">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"> 
		用户财务</td>
    </tr>
    <tr>
      <td width="100%" height="208" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="197">
        <tr>
          <td width="100%" height="1"></td>
        </tr>
        <form method="post" action="listuser.asp" name="form1">
        </form>
<form name=myform method=post action="ruzhang.asp">
</form>
        <tr>
          <td width="100%" height="196" valign="top"> 
          
          <table border="0" width="648" id="table1" height="176">
			<tr>
				<td width="642" colspan="2" height="14"></td>
			</tr>
			<tr>
				<td width="144">用户ID：</td>
				<td width="494">用户名：</td>
			</tr>
			<tr>
				<td height="19" width="642" colspan="2">　</td>
			</tr>
			<tr>
				<td height="33" width="642" colspan="2">　</td>
			</tr>
			<tr>
				<td height="89" width="642" colspan="2">　</td>
			</tr>
			<tr>
				<td width="642" colspan="2" height="14"></td>
			</tr>
			</table>
          
          </td>
        </tr>
      </table>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>



</body>