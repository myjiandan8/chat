<%sub adminarticle2_body()
dim totalart,Currentpage,totalpages,i,colname
openarticle
sql="select * from art order by art_id DESC"
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
    <td width="554" bgcolor="#FFFFFF" valign="top" align="center"> <table width="98%" border="0" cellspacing="1" cellpadding="8" bgcolor="#C4C4C4">
        <tr align="center" bgcolor="#E8E8E8"> 
          <td width="25%" class="chinese"><a href="admin_article.asp">文章分类管理</a></td>
          <td class="chinese" width="25%"><a href="admin_article2.asp">文章管理</a></td>
          <td class="chinese" width="25%"><a href="admin_article.asp?action=newartcat">新增分类</a></td>
          <td class="chinese" width="25%"><a href="New_article.asp?action=newart">新增文章</a></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#eeeeee"> 
          <td colspan="3" class="diaryhead">文章管理</td>
        </tr>
        <tr align="center"> 
          <td bgcolor="#FFFFFF" class="chinese" width="10%">编号</td>
          <td bgcolor="#FFFFFF" class="chinese" width="70%">文章标题</td>
          <td bgcolor="#FFFFFF" class="chinese" width="20%">操作</td>
        </tr>
<%if not rs.eof then
rs.movefirst
rs.pagesize=articleperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalart=rs.recordcount
   if currentpage<>1 then
      if(currentpage-1)*articleperpage<totalart then
	     rs.move(currentpage-1)*articleperpage
		 dim bookmark
		 bookmark=rs.bookmark
	  end if
   end if
   if (totalart mod articleperpage)=0 then
      totalpages=totalart\articleperpage
   else
      totalpages=totalart\articleperpage+1
   end if
   i=0
do while not rs.eof and i<articleperpage%>
        <tr> 
          <td bgcolor="#FFFFFF" class="chinese" align="center"><%=rs("art_id")%></td>
          <td bgcolor="#FFFFFF" class="chinese"><a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" target="_blank"><%=rs("art_title")%></a></td>
          <td bgcolor="#FFFFFF" class="chinese" align="center"><a href="new_article.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>&action=editart">edit</a> 
            <a href="new_article.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>&action=delart">del</a> <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" target="_blank">view</a></td>
        </tr>
<%
i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then
%>
        <tr align="center"> 
          <td bgcolor="#FFFFFF" class="chinese" colspan="3">当前没有文章！</td>
        </tr>
<%end if
end if%>
      </table>
	  <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
        <form name="form1" method="post" action="admin_article2.asp">
          <tr> 
            <td class="chinese" align="right"><%=currentpage%> /<%=totalpages%>页,<%=totalart%>条记录/<%=articleperpage%>篇每页. 
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
              <a href="admin_article2.asp?page=<%=i%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="admin_article2.asp?page=<%=page%>" title="下一页">>></a> 
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
  <tr> 
    <td colspan="3" height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>