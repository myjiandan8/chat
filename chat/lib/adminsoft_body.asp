<%sub adminsoft_body()
dim keyword,class_id,colname,totalsoft,Currentpage,totalpages,i
opendown
keyword=trim(replace(request.form("keyword"),"'",""))
cat_id=request("cat_id")
class_id=request("class_id")
colname=request("colname")

sql="select soft_id,soft_name,soft_joindate,soft_catname,soft_classname,soft_rcount,soft_dcount,soft_desc from soft order by soft_joindate desc"
if cat_id<>"" and class_id="" then
    sql="SELECT soft_id,soft_name,soft_joindate,soft_catname,soft_classname,soft_rcount,soft_dcount,soft_desc FROM soft where soft_catid="&cat_id&" order by soft_joindate desc"
elseif class_id<>"" and keyword="" then
	sql="SELECT soft_id,soft_name,soft_joindate,soft_catname,soft_classname,soft_rcount,soft_dcount,soft_desc FROM soft where soft_classid="&class_id&" order by soft_joindate desc"
elseif keyword<>"" and colname<>"0" then
	sql="select soft_id,soft_name,soft_joindate,soft_catname,soft_classname,soft_rcount,soft_dcount,soft_desc from soft where "&colname&" like '%"&keyword&"%' order by soft_joindate desc"
else
	sql="SELECT soft_id,soft_name,soft_joindate,soft_catname,soft_classname,soft_rcount,soft_dcount,soft_desc FROM soft order by soft_joindate desc"
end if
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<link rel="stylesheet" href="Sams.css" type="text/css">

<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td colspan="3" height="8" bgcolor="#FFFFFF"></td>
  </tr>
  <tr> 
    <td width="205" bgcolor="#FFFFFF" valign="top">
      <%call adminmenu()%>
    </td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="554" bgcolor="#FFFFFF" valign="top" align="center"> 
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
      
      <table width="98%" border="0" cellspacing="1" cellpadding="6" bgcolor="#293863">
        <tr> 
          <td bgcolor="#E8E8E8" class="chinese" valign="top"><a href="admin_down.asp">分类管理</a> 
            | <a href="admin_down.asp?action=newcat">新建分类</a> | <a href="admin_soft.asp">程序管理</a> 
            | <a href="New_soft.asp?action=newsoft">新增程序</a><br>
            -------------------------------------------------------<br>
            <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
              
                <tr>
				<form>
				 <td width="33%" align="right" class="chinese">
                    跳转到 
                    <select name="go" onChange='window.location=form.go.options[form.go.selectedIndex].value'>
                      <option value="admin_soft.asp">选择分类</option>
                      <option value="admin_soft.asp">软件管理首页</option>
                      <%
Set rscat = Server.CreateObject("ADODB.Recordset")
sqlcat="SELECT * FROM cat"
rscat.OPEN sqlcat,Conn,1,1
do while not rscat.eof
colparam1=rscat("cat_id")
%>
                      <option value="admin_soft.asp?cat_id=<%=rscat("cat_id")%>">----<%=rscat("cat_name")%>----</option>
                      <%
Set rsclass = Server.CreateObject("ADODB.Recordset")
sqlclass="SELECT * FROM class where cat_id=" &colparam1& ""
rsclass.OPEN sqlclass,Conn,1,1
	do while not rsclass.eof
%>
                      <option value='admin_soft.asp?cat_id=<%=rsclass("cat_id")%>&class_id=<%=rsclass("class_id")%>'><%=rsclass("class_name")%></option>
                      <%
		rsclass.movenext
	loop
	rsclass.close
set rsclass=nothing
rscat.movenext
loop
rscat.close
set rscat=nothing
set rstotal=nothing
%>
                    </select>
                  </td></form><form name="form1" method="post" action="admin_soft.asp">
                  <td width="67%" align="right" class="chinese"> <select name="colname">
                      <option value="soft_name" selected>软件名称</option>
                      <option value="soft_desc">软件描述</option>
                    </select>
                    <input type="text" name="keyword" class="textarea"> 
                    &nbsp;&nbsp; <input type="submit" name="Submit" value="搜索" class="button"> 
                  </td>  </form>
                 
                </tr>
            
            </table>
            <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td class="chinese"> 
                  
                </td>
                <td align="right" class="chinese"> 
                  <%dim flname
			flname=""
			if request.querystring("class_id")<>"" then
			sql="select class_name from class where class_id="&request.querystring("class_id")
			set rsclass=conn.execute(sql)
			flname=rsclass("class_name")
			rsclass.close
			set rsclass=nothing
			elseif request.querystring("class_id")="" and request.querystring("cat_id")<>"" then
			sql="select cat_name from cat where cat_id="&request.querystring("cat_id")
			set rscat=conn.execute(sql)
			flname=rscat("cat_name")
			rscat.close
			set rscat=nothing
			end if%>
                  <font color="#ff6600"><%=flname%></font>分类共有<%=rs.recordcount%>个程序 </td>
              </tr>
            </table>
            <br>
<%if not rs.eof then
rs.movefirst
rs.pagesize=softperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalsoft=rs.recordcount
   if currentpage<>1 then
       if (currentpage-1)*softperpage<totalsoft then
	       rs.move(currentpage-1)*softperpage
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalsoft mod softperpage)=0 then
      totalpages=totalsoft\softperpage
   else
      totalpages=totalsoft\softperpage+1
   end if
i=0
do while not rs.eof and i<softperpage%>
            <table width="98%" border="0" cellspacing="1" cellpadding="4" align="center" bgcolor="#BBBBBB">
              <tr> 
                <td bgcolor="#EFEBEF" class="chinese" width="80%"><a href="showsoft.asp?soft_id=<%=rs("soft_id")%>" target="_blank"><b><%=rs("soft_name")%></b></a> <span class="date"><%=rs("soft_joindate")%></span> <span class="newshead"><%=rs("soft_dcount")%></span>/<span class="newshead"><%=rs("soft_rcount")%></span></td>
                <td bgcolor="#EFEBEF" class="chinese" width="20%" align="center"><a href="new_soft.asp?id=<%=rs("soft_id")%>&action=editsoft">edit</a> 
                  <a href="new_soft.asp?id=<%=rs("soft_id")%>&action=delsoft">del</a> </td>
              </tr>
              <tr> 
                <td height="13" bgcolor="#FFFFFF" class="chinese" colspan="2"><%=cutstr(rs("soft_desc"),40,false,none)%></td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="8"></td>
              </tr>
            </table>
<%i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then%>
            <table width="98%" border="0" cellspacing="1" cellpadding="4" align="center" bgcolor="#BDBABD">
              <tr> 
                <td bgcolor="#EFEBEF" align="center" class="chinese">当前没有程序！</td>
              </tr>
            </table>
<%end if
end if%>
            <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form3" method="post" action="admin_soft.asp?cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>">
          <tr> 
            <td class="chinese" align="right"><%=currentpage%> /<%=totalpages%>页,<%=totalsoft%>条记录/<%=softperpage%>个每页. 
              <%
i=1
showye=totalpages
if showye>10 then
showye=10
end if

for i=1 to showye
if i=currentpage then
%>
              <%=i%> 
              <%else%>
              <a href="admin_soft.asp?page=<%=i%>&cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="admin_soft.asp?page=<%=page%>&cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button">
            </td>
          </tr>
        </form>
      </table>
            <br>
          </td>
        </tr>
      </table>  
      <br>
    </td>
  </tr>
  <tr> 
    <td colspan="3" height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>