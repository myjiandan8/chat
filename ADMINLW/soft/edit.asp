<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<!--数组数据库文件#include file="../../INC/CLA.asp" -->
<%
dim rs,sql
dim page,maxPerPage
maxPerPage=30 '每页显示的记录数

myKeyword=Request("myKeyword")
admin=Request("admin")
classid=Request("classid")

page=Request("page")
if (page="" or isempty(page)) then page=1
thisUrl="edit.asp?myKeyword="& myKeyword & "&admin=" & admin & "&classid=" & classid
session("adminOldUrl")=thisUrl&"&page="&page
set rs=server.createobject("adodb.recordset")
sql="select * from soft where  1=1"

if not (myKeyword="" or isempty(myKeyword) ) then
	sql=sql&" and (softname like '%"&myKeyword&"%' or filename like '%"&myKeyword&"%') "
end if

if not (admin="" or isempty(admin) )   then
	sql=sql&" and (addid like '"& admin &"')"
end if

if not (classid="" or isempty(classid) ) then
	sql=sql&" and (classid like "& classid &")"
end if


sql=sql&" order by id desc"
rs.open sql,conn,1,1
rs.pagesize=MaxPerPage

%>

<html>
<head>
<title>新闻管理</title>
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
<script language=Javascript src="/include/opennew.js"--></script>
</head>

<body bgcolor="#9CC7EF" text="#000000" leftmargin="0" topmargin="0">
<div align="center"><br>
  软件管理</div>
<div align="center">
  <center>
<table width="673" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" style="border-collapse: collapse" bordercolor="#111111">
  <tr> 
    <form method="post" action="edit.asp" name="form1">
      <td colspan="5" bgcolor="#1C79D7" width="909"> 
        <div align="right"><font color="#FFFFFF"><span lang="zh-cn">软件搜索</span>：</font> 
          <input type="text" name="myKeyword" size="22" value="<%=myKeyword%>">
          <select size="1" name="classid">
          <option value="">选择类型</option>
  <%    set rsv=conn.execute("SELECT * FROM class where cid=0")                                           
        do while not rsv.eof                        
        %>
        <OPTION value="<%=rsv("classid")%>"><%=trim(rsv("class"))%></OPTION>
       <% rsv.movenext                        
        loop                        
        rsv.close 
        %>  
          
          </select><select size="1" name="admin">
          <option value="">选择管理员</option>
  <%    set rsr=conn.execute("SELECT uid,name FROM admin")                                           
        do while not rsr.eof                        
        %>
        <OPTION value="<%=rsr("uid")%>"><%=trim(rsr("name"))%></OPTION>
       <% rsr.movenext                        
        loop
        rsr.close               
        %>    
          
          </select>
          <input type="submit" name="Submit" value="搜索">
        </div>
      </td>
    </form>
  </tr>
  <tr>    <form method="post" action="edits.asp" name="form3">
      <td colspan="5" bgcolor="#348CE4" width="909" align="center"> 
              <div align="right"><font color="#FFFFFF">直接输入软件ID：</font> 
          <input type="text" name="id" size="16" >
          <input type="submit" name="Submit" value="修改">
        </div>
        </td> </form>
    </tr>
  <tr bgcolor="#5EA5E6"> 
    <td width="90" nowrap> 
      <div align="center"><font color="#FFFFFF">类型</font></div>
    </td>
    <td width="90" nowrap align="center"> 
      <font color="#FFFFFF">分类</font></td>
    <td width="294" nowrap>
      <div align="center"><font color="#FFFFFF">软件名</font></div>
    </td>
    <td width="69" nowrap align="center">
      <span lang="zh-cn"><font color="#FFFFFF">管理员</font></span></td>
    <td width="95" nowrap> 
      <div align="center"><font color="#FFFFFF">操作</font></div>
    </td>
  </tr>
  <%
		dim rsID
		i=1
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		do while not (rs.eof or err) 
%>
  <tr title="点击查看具体信息" > 
    <td width="90"  align="center">『<%=CLA(rs("classid"),0)%>』</td>
    <td width="90"  align="center">「<%=CLA(rs("Nclassid"),rs("classid"))%>」</td>
    <td width="294" align="center"><%=rs("softname")%>　</td>
    <td width="69" align="center"><%=rs("addid")%>　</td>
    <td width="95" align="center"><a href="edits.asp?id=<%=rs("id")%>">编辑</a> <a href="edit.asp?abc=del&id=<%=rs("id")%>">删除</a></td>
  </tr>
  <%
		i=i+1
		if i>maxPerPage then exit do
		rs.moveNext
		loop
%>
  <tr bgcolor="#4296E7"> 
    <td colspan="5" width="595"> 
      <div align="right"><font color=#FFFFFF><%=rs.recordCount%> 个软件　第<%=page%>/<%=rs.pageCount%> 
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
  </tr>
</table>
  </center>
</div>
</body>
</html>