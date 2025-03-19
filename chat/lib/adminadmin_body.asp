<%sub adminadmin_body()
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
      <table width="98%" border="0" cellspacing="1" cellpadding="10" bgcolor="#B9B9B9">
        <tr align="center"> 
          <td bgcolor="#E8E8E8" width="50%" class="chinese"><a href="admin_admin.asp?action=modpass">修改管理员密码</a></td>
          <td bgcolor="#E8E8E8" width="50%" class="chinese"><a href="admin_admin.asp?action=admin">管理员组</a></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
	  <%if request.querystring("action")="modpass" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="admin_admin.asp">
          <tr> 
            <td bgcolor="#EEEEEE" class="diaryhead">修改管理员密码</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">名称 
              <input type="text" name="adminname" size="30" class="textarea">
              密码 
              <input type="password" name="oldpwd" size="30" class="textarea">
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">新密码
<input type="password" name="adminpwd" size="30" class="textarea">
              确认码 
              <input type="password" name="confirm" size="30" class="textarea">
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> 
              <input type="submit" name="Submit" value="确定修改" class="button">
              <input type="reset" name="Reset" value="清空重写" class="button">
            </td>
          </tr>
          <input type="hidden" name="action" value="modpass">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
if request.querystring("action")="admin" then
openadmin
sql="select * from admin"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#EEEEEE"> 
          <td colspan="3" class="diaryhead">管理员组</td>
        </tr>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td width="10%" class="chinese">编号</td>
          <td width="60%" class="chinese">管理员名称</td>
          <td width="30%" class="chinese">操作</td>
        </tr>
<%do while not rs.eof%>
        <tr bgcolor="#FFFFFF"> 
          <td class="chinese" align="center"><%=rs("admin_id")%></td>
          <td class="chinese"><%=rs("admin_name")%></td>
          <td class="chinese" align="center" bgcolor="#FFFFFF">
<%if rs("issuper")<>1 then%>
            <a href="admin_admin.asp?id=<%=rs("admin_id")%>&action=editadmin">edit</a> 
            <a href="admin_admin.asp?id=<%=rs("admin_id")%>&action=deladmin">del</a> 
            <%end if%></td>
        </tr>
<%rs.movenext
loop%>
      </table>
      <br>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
		<tr> 
          <td bgcolor="#EEEEEE" class="diaryhead">新的管理员</td>
        </tr>
        <tr> 
            <td bgcolor="#FFFFFF" class="chinese">名称-
              <input type="text" name="adminname" size="30" class="textarea">
              &nbsp;&nbsp;<br>
              密码- 
              <input type="password" name="adminpwd" size="30" class="textarea">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确认密码- 
              <input type="password" name="confirm" size="30" class="textarea">
            </td>
        </tr>
        <tr> 
          <td bgcolor="#E8E8E8" height="30" align="center">
              <input type="submit" name="Submit" value="确定新增" class="button">
              <input type="reset" name="Reset" value="清空重填" class="button">
            </td>
        </tr>
		<input type="hidden" name="action" value="newadmin">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
      <%end if
	  if request.querystring("action")="editadmin" then
	   if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的酷站分类ID参数！"
	call diserror()
	response.end
  end if
end if
openadmin
sql="select * from admin where admin_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr> 
            <td bgcolor="#EEEEEE" class="diaryhead">编辑管理员</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">名称- 
              <input type="text" name="adminname" size="30" class="textarea" value="<%=rs("admin_name")%>">
              &nbsp;&nbsp;<br>
              密码
              <input type="password" name="adminpwd" size="30" class="textarea" value="<%'=rs("admin_password")%>">
              &nbsp;&nbsp;确认密码
              <input type="password" name="confirm" size="30" class="textarea" value="<%'=rs("admin_password")%>">
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> 
              <input type="submit" name="Submit" value="确定修改" class="button">
              <input type="reset" name="Reset" value="清空重填" class="button">
            </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("admin_id")%>">
          <input type="hidden" name="action" value="editadmin">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%rs.close
	  set rs=nothing
	  end if
	  if request.querystring("action")="deladmin" then
	   if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的酷站分类ID参数！"
	call diserror()
	response.end
  end if
end if
openadmin
sql="select * from admin where admin_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr> 
            <td bgcolor="#EEEEEE" class="diaryhead">删除管理员</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">名称- <%=rs("admin_name")%>
              &nbsp;&nbsp;<br>
              密码- <%=rs("admin_password")%>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确认密码- <%=rs("admin_password")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> 
              <input type="submit" name="Submit" value="确定删除" class="button">
              [<a href="admin_admin.asp?action=admin">返回</a>] </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("admin_id")%>">
          <input type="hidden" name="action" value="deladmin">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%rs.close
	  set rs=nothing
	  end if%>
      <br>
    </td>
  </tr>
  <tr> 
    <td colspan="3" height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
<%
end sub%>