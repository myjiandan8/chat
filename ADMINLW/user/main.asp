<!--#include file="../sys/sys.asp"-->
<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>管理首页</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">
<%
maxPerPage=50 '每页显示的记录数
myKeyword=Request("myKeyword")
nid=Request("nid")
if nid="" then
   nid="s"
end if

page=Request("page")


if (page="" or isempty(page)) then page=1
thisUrl="ETSuser.asp?xz=gongqiu&myKeyword="&myKeyword&"&nid="&nid
session("adminOldUrl")=thisUrl&"&page="&page

set rsf=server.createobject("adodb.recordset")
sql="select * from ETS_GQ where uid='"& uid &"'"


if nid<>"s" then
	sql=sql&" and nid="& nid &" "
end if
 
if myKeyword<>"" then
	sql=sql&" and (title like '%"&myKeyword&"%' or neirong like '%"&myKeyword&"%')"
end if


sql=sql&" order by id desc"
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
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="232">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif">
      <span lang="zh-cn">企业用户管理</span></td>
    </tr>
    <tr>
      <td width="100%" height="208" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="165">
        <tr>
          <td width="100%" height="1"></td>
        </tr>
        <form method="post" action="index.asp?xz=gongqiu&uid=<%=uid%>" name="form1">
        <tr>
          <td width="100%" align="right" height="21">　 
          <img border="0" src="../img/mini_query.gif"> <span lang="zh-cn">企业用户搜索</span>&nbsp; <input type="text" name="myKeyword" size="16" value="<%=myKeyword%>"> 
          
<SELECT class=f11 name=nid size="1"> 

<OPTION selected value=s >全部</OPTION> 

<%
sql="select * from ETS_GQ_fl where NFLS like 1 "
set rss=conn.execute (sql)
do while not (rss.eof or err)
%> 
<option value=<%=rss("NID")%>><%=rss("NFL")%></option>
<% rss.moveNext
  loop
%>
</SELECT>
 <input type="submit" name="Submit" value="搜索">
          
          </td>
        </tr>
        </form>
        <tr>
          <td width="100%" align="center" height="15">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
        </tr>
        <tr>
          <td width="100%" height="28">　
          
                    <% vurl="index.asp?xz=gongqiu&uid="& uid &"&myKeyword="& myKeyword &"&" %>
          显示方式 :
          | <a href="<%=vurl%>nid=s">全部</a> | <a href="<%=vurl%>nid=1">买</a> | 
          <a href="<%=vurl%>nid=2">卖</a> | <a href="<%=vurl%>nid=3">合作</a> | 
          <a href="<%=vurl%>nid=4">代理</a> | <a href="<%=vurl%>nid=5">引资</a> | 
          <a href="<%=vurl%>nid=6">投资</a> | 
          
          </td>
        </tr>
        <tr>
          <td width="100%" height="6" valign="top"> 
          
          </td>
        </tr>
        
        <%

		i=1
		if not (rsf.eof or err) then rsf.move (page-1)*maxPerPage
		do while not (rsf.eof or err) 
%>
        
        <tr>
          <td width="100%" height="60" valign="top">　</td>
        </tr>
        
       <%
		i=i+1
		if i>maxPerPage then exit do
		rsf.moveNext
		loop
%>
        <tr>
          <td width="100%" height="20" valign="top">　</td>
        </tr>
        <tr>
          <td width="100%" height="10" align="right"> 
   共 <%=rsf.recordCount%> 条　第<%=page%>/<%=rsf.pageCount%> 页
        <%if page>1 then%>
        <input type="button" name="Submit3" value="首页" onClick="Javascript:jumpTo(1)">
        <input type="submit" name="Submit4" value="上页" onClick="Javascript:jumpTo(2)">
        <%else%>
        <input type="button" name="Submit3" value="首页" disabled>
        <input type="submit" name="Submit4" value="上页" disabled>
        <%end if
if rsf.recordCount>page*maxPerPage then%>
        <input type="submit" name="Submit5" value="下页" onClick="Javascript:jumpTo(3)">
        <input type="submit" name="Submit6" value="末页" onClick="Javascript:jumpTo(4)">
        <%else%>
        <input type="submit" name="Submit5" value="下页" disabled>
        <input type="submit" name="Submit6" value="末页" disabled>
        <%end if%>
          </td>
        </tr>
        <tr>
          <td width="100%" height="5" valign="top"> 
          
          </td>
        </tr>
      </table>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="68">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif">
      <span lang="zh-cn">企业用户信息管理</span></td>
    </tr>
    <tr>
      <td width="100%" height="44">　</td>
    </tr>
    </table>
  </center>
</div>
<br>


</body>

</html>