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
          <td bgcolor="#E8E8E8" width="50%" class="chinese"><a href="admin_admin.asp?action=modpass">�޸Ĺ���Ա����</a></td>
          <td bgcolor="#E8E8E8" width="50%" class="chinese"><a href="admin_admin.asp?action=admin">����Ա��</a></td>
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
            <td bgcolor="#EEEEEE" class="diaryhead">�޸Ĺ���Ա����</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">���� 
              <input type="text" name="adminname" size="30" class="textarea">
              ���� 
              <input type="password" name="oldpwd" size="30" class="textarea">
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">������
<input type="password" name="adminpwd" size="30" class="textarea">
              ȷ���� 
              <input type="password" name="confirm" size="30" class="textarea">
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> 
              <input type="submit" name="Submit" value="ȷ���޸�" class="button">
              <input type="reset" name="Reset" value="�����д" class="button">
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
          <td colspan="3" class="diaryhead">����Ա��</td>
        </tr>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td width="10%" class="chinese">���</td>
          <td width="60%" class="chinese">����Ա����</td>
          <td width="30%" class="chinese">����</td>
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
          <td bgcolor="#EEEEEE" class="diaryhead">�µĹ���Ա</td>
        </tr>
        <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����-
              <input type="text" name="adminname" size="30" class="textarea">
              &nbsp;&nbsp;<br>
              ����- 
              <input type="password" name="adminpwd" size="30" class="textarea">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ȷ������- 
              <input type="password" name="confirm" size="30" class="textarea">
            </td>
        </tr>
        <tr> 
          <td bgcolor="#E8E8E8" height="30" align="center">
              <input type="submit" name="Submit" value="ȷ������" class="button">
              <input type="reset" name="Reset" value="�������" class="button">
            </td>
        </tr>
		<input type="hidden" name="action" value="newadmin">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
      <%end if
	  if request.querystring("action")="editadmin" then
	   if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ��Ŀ�վ����ID������"
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
            <td bgcolor="#EEEEEE" class="diaryhead">�༭����Ա</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input type="text" name="adminname" size="30" class="textarea" value="<%=rs("admin_name")%>">
              &nbsp;&nbsp;<br>
              ����
              <input type="password" name="adminpwd" size="30" class="textarea" value="<%'=rs("admin_password")%>">
              &nbsp;&nbsp;ȷ������
              <input type="password" name="confirm" size="30" class="textarea" value="<%'=rs("admin_password")%>">
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> 
              <input type="submit" name="Submit" value="ȷ���޸�" class="button">
              <input type="reset" name="Reset" value="�������" class="button">
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
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ��Ŀ�վ����ID������"
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
            <td bgcolor="#EEEEEE" class="diaryhead">ɾ������Ա</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- <%=rs("admin_name")%>
              &nbsp;&nbsp;<br>
              ����- <%=rs("admin_password")%>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ȷ������- <%=rs("admin_password")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> 
              <input type="submit" name="Submit" value="ȷ��ɾ��" class="button">
              [<a href="admin_admin.asp?action=admin">����</a>] </td>
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