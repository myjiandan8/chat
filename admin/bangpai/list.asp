<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="inc.asp"-->
<% Call quanxian(5) %>

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>俱乐部成员管理</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>

<body bgcolor="#EEF2FF" topmargin="0">


<%
'修改信息
if request("dengji")<>"" and request("uid")<>"" then

sql="select top 100 * from [User] where uid="& request("uid")
rs.open sql,bbsconn,1,3

		if rs("faction")<>factionname then errstr("该用户不是本俱乐部的成员！")
		
	    rs("shenfen")=request("shenfen")
	    rs("dengji")=request("dengji")
		
       rs.Update
       rs.close
		
	   Call wenti("修改成功！")
end if




'删除记录
cl=request("cl")
if cl="del" and request("queding")="" then  %>

<script language="vbscript">
	if msgbox ("你确定辞退该用户吗？",vbYesNo+vbQuestion,"确定")=vbYes then
	   window.location.href="list.asp?uid=<%=request("uid")%>&queding=OK&cl=del"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<% 
end if

if cl="del" and request("queding")<>"" then 



			bbsconn.execute("update [user] set faction='',shenfen='',dengji=0 where uid=" & Request("uid"))
			Call wenti("辞退成功！")

end if %>


<%

'URL 携带信息取值
myKeyword=Request("myKeyword")

dengji=cint(Request("dengji"))
xz=Request("xz")
max=cint(Request("max"))
sc=Request("sc")

if dengji="" or dengji=0 then dengji=10

if xz="" then xz="s"

if max="" or max=0 then max=20

if sc="" then sc="desc"



maxPerPage=max '每页显示的记录数

page=Request("page")



if (page="" or isempty(page)) then page=1
thisUrl="listuser.asp?max="&max&"&myKeyword="&myKeyword
session("adminOldUrl")=thisUrl&"&page="&page

set rsf=server.createobject("adodb.recordset")
sql="select top 100 * from [User] where faction='"& factionname &"'"


if dengji<10 then
	sql=sql&" and dengji="& dengji &" "
end if

if xz<>"s" then
	'sql=sql&" and huiyuan="& xz &" "
end if
 
if myKeyword<>"" then
	sql=sql&" and (name like '%"&myKeyword&"%')"
end if


sql=sql&" order by uid "&sc

'response.write sql
'response.End

rsf.open sql,bbsconn,1,1
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
		[<%=factionname%>]俱乐部会员管理</td>
    </tr>
    <tr>
      <td width="100%" height="208" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="102">
        <tr>
          <td width="100%" height="1"></td>
        </tr>
        <form method="post" action="list.asp" name="form1">
        <tr>
          <td width="100%" align="right" height="30">　 
          <img border="0" src="../img/mini_query.gif"> 用户搜索&nbsp; <input type="text" name="myKeyword" size="16" value="<%=myKeyword%>">
<SELECT name=dengji size="1">
<option value="10" <%if dengji=10 then response.write " selected"%>>全部</option>
<option value=0 <%if dengji=0 then response.write " selected"%>>未验证</option>
<%
i=1
do while not (i>9)

%> 
<option value=<%=i%> <%if dengji=i then response.write " selected"%>><%=i%>级</option>

<% 
  i=i+1
  loop
%>
</SELECT><SELECT class=f11 name=max size="1"> 
<option value="20" <%if max=20 then response.write " selected"%>>显示20条</option>
<option value=5 <%if max=5 then response.write " selected"%>>显示5条</option>
<OPTION value=50  <%if max=50 then response.write " selected"%>>显示50条</OPTION> 
<option value=100 <%if max=100 then response.write " selected"%>>显示100条</option>
</SELECT>

<SELECT class=f11 name=sc size="1"> 
<option value="desc" <%if sc="desc" then response.write " selected"%>>倒序</option>
<option value="asc" <%if sc="asc" then response.write " selected"%>>顺序</option>
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
          <td width="100%" height="27">　</td>
        </tr>
        <tr>
          <td width="100%" height="3"> 
          
          </td>
        </tr>
        

        <tr>
          <td width="100%" height="42"> 
          
          <div align="center">
            <center>
            <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="95%" id="AutoNumber6" height="89">
              <tr>
                <td width="10%" height="29" bgcolor="#E7E6FF" align="center">帐号</td>
                <td width="19%" height="29" bgcolor="#E7E6FF" align="center">用户名</td>
                <td width="7%" height="29" bgcolor="#E7E6FF" align="center">性别</td>
                <td width="30%" height="29" bgcolor="#E7E6FF" align="center">
				俱乐部内身份</td>
                <td width="16%" height="29" bgcolor="#E7E6FF" align="center">
				身份等级</td>
                <td width="20%" height="29" bgcolor="#E7E6FF" align="center">
                <span lang="zh-cn">处理</span></td>
              </tr>
              
               
<%

		i=1
		if not (rsf.eof or err) then rsf.move (page-1)*maxPerPage
		if (rsf.eof or err) then
%>
              <tr>
                <td width="100%" height="30" align="center" colspan="6">
                　您的俱乐部还没有成员！
                </td>
              </tr>

<%		
		else
		do while not (rsf.eof or err) 
%>
	<form method="post" action="list.asp" name="form3">
              <tr>
                <td width="10%" height="30" align="center">　<input type="hidden" name="uid" size="18" maxlength="10" value="<%=rsf("uid")%>"><a href="edituser.ASP?id=<%=rsf("uid")%>"><%=rsf("uid")%></a></td>
                <td width="19%" height="30" align="center">　<%=rsf("username")%></td>
                <td width="7%" height="30" align="center">　<%=rsf("sex")%></td>
                <td width="30%" height="30" align="center">
				<input type="text" name="shenfen" size="20" value="<%=rsf("shenfen")%>"></td>
                <td width="16%" height="30" align="center">
<SELECT name=dengji>
<option value=0 <%if rsf("dengji")=0 then response.write " selected"%>>未验证</option>
<%
i=1
do while not (i>9)

%> 
<option value=<%=i%> <%if rsf("dengji")=i then response.write " selected"%>><%=i%>级</option>

<% 
  i=i+1
  loop
%>
</SELECT></td>
                <td width="20%" height="30" align="center"> 
                <input type="submit" value="修改" name="sc2">
                短信 <a href="list.asp?cl=del&uid=<%=rsf("uid")%>">辞退</a></td>
              </tr>
              
    </form>        
       <%
		i=i+1
		if i>maxPerPage then exit do
		rsf.moveNext
		loop
		
		end if
%>
              <tr>
                <td width="100%" height="25" align="left" colspan="6"></td>
              </tr>
             
            </table>
            </center>
          </div>
          
          </td>
        </tr>
        
        <tr>
          <td width="100%" height="1" valign="top"></td>
        </tr>
        

        <tr>
          <td width="100%" height="1" valign="top"></td>
        </tr>
        <tr>
          <td width="100%" height="16" valign="top">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
        </tr>
        <tr>
          <td width="100%" height="10" align="right"> 
   共 <%=rsf.recordCount%> 个会员 每页显示<%=maxPerPage%>条　第<%=page%>/<%=rsf.pageCount%> 页
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
        <input type="submit" name="Submit6" value="末页" disabled><b> </b>
                        
                        

        <%end if%>
<SELECT name=DMID2 onChange=location.href=options[selectedIndex].value;>
<option  selected>第<%=page%>页</option>
<%
x=rsf.pageCount
i=1
do while not (i>x)

%> 
<option value=<%=thisUrl%>&page=<%=i%>>第<%=i%>页</option>

<% 
  i=i+1
  loop
%>
</SELECT>
        
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



</body>