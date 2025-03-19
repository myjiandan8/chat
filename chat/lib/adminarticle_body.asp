<%sub adminarticle_body()
openarticle
sql="select * from cat order by cat_id DESC"
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
      <table width="98%" border="0" cellspacing="1" cellpadding="8" bgcolor="#C4C4C4">
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
          <td colspan="3" class="diaryhead">文章分类管理</td>
        </tr>
        <tr align="center" bgcolor="#E8E8E8"> 
          <td width="10%" class="chinese">编号</td>
          <td width="70%" class="chinese">分类名称</td>
          <td width="20%" class="chinese">操作</td>
        </tr>
        <%do while not rs.eof%>
        <tr> 
          <td bgcolor="#FFFFFF" align="center" class="chinese"><%=rs("cat_id")%></td>
          <td bgcolor="#FFFFFF" class="chinese"><a href="article.asp?cat_id=<%=rs("cat_id")%>" target="_blank"><%=rs("cat_name")%></a></td>
          <td bgcolor="#FFFFFF" align="center" class="chinese"><a href="admin_article.asp?id=<%=rs("cat_id")%>&action=editartcat">edit</a> 
            <a href="admin_article.asp?id=<%=rs("cat_id")%>&action=delartcat">del</a> 
            <a href="article.asp?cat_id=<%=rs("cat_id")%>" target="_blank">view</a></td>
        </tr>
        <%rs.movenext
loop
if rs.bof and rs.eof then%>
        <tr align="center"> 
          <td bgcolor="#FFFFFF" class="chinese" colspan="3">当前没有文章分类！</td>
        </tr>
        <%end if%>
      </table>
      <br>
	  <%if request.QueryString("action")="newartcat" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="admin_article.asp">
		<tr> 
            <td bgcolor="#eeeeee" class="diaryhead">新的文章分类</td>
        </tr>
        <tr> 
          <td bgcolor="#FFFFFF" class="chinese">分类名称-
              <input type="text" name="cat_name" size="40" class="textarea">
          </td>
        </tr>
        <tr> 
            <td bgcolor="#E8E8E8" align="center" height="30">
              <input type="submit" name="Submit" value="确定新增" class="button">
              <input type="reset" name="reset" value="清空重写" class="button">
              [<a href="admin_article.asp">返回</a>] </td>
        </tr>
		<input type="hidden" name="action" value="newartcat">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
	  <%end if
	  if request.QueryString("action")="editartcat" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的新闻ID参数！"
	call diserror()
	response.end
  end if
end if
sql="select * from cat where cat_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="admin_article.asp">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">修改文章分类</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">分类名称- 
              <input name="cat_name" type="text" class="textarea" id="cat_name" size="40" value="<%=rs("cat_name")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" align="center" height="30"> <input name="Submit" type="submit" class="button" id="Submit" value="确定修改"> 
              <input name="reset" type="reset" class="button" id="reset" value="清空重写">
              [<a href="admin_article.asp">返回</a>] </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("cat_id")%>">
		  <input type="hidden" name="action" value="editartcat">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  	  if request.QueryString("action")="delartcat" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的新闻ID参数！"
	call diserror()
	response.end
  end if
end if
sql="select * from cat where cat_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="admin_article.asp">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">删除文章分类</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">分类名称- <%=rs("cat_name")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" align="center" height="30"> <input name="Submit" type="submit" class="button" id="Submit" value="确定删除">
              [<a href="admin_article.asp">返回</a>] </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("cat_id")%>">
          <input type="hidden" name="action" value="delartcat">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if%>
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