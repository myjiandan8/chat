<%sub admindown_body()
opendown
sql="select * from cat"
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
          <td bgcolor="#E8E8E8" class="chinese"><a href="admin_down.asp">分类管理</a> 
            | <a href="admin_down.asp?action=newcat">新建分类</a> | <a href="admin_soft.asp">程序管理</a> 
            | <a href="New_soft.asp?action=newsoft">新增程序</a><br>
            -------------------------------------------------------<br>
<%do while not rs.eof%><%=rs("cat_name")%> &nbsp;[<a href="admin_down.asp?action=newclass">新建子分类</a>]&nbsp;[<a href="admin_down.asp?action=editcat&id=<%=rs("cat_id")%>&name=<%=rs("cat_name")%>">修改</a>]&nbsp;[<a href="admin_down.asp?action=delcat&id=<%=rs("cat_id")%>&name=<%=rs("cat_name")%>">删除</a>]<br>
<%sql="select * from class where cat_id="&rs("cat_id")
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs2("class_name")%> &nbsp;&nbsp;[<a href="admin_down.asp?action=editclass&id=<%=rs2("class_id")%>&cid=<%=rs("cat_id")%>&name=<%=rs2("class_name")%>">修改</a>] 
            [<a href="admin_down.asp?action=delclass&id=<%=rs2("class_id")%>&cid=<%=rs("cat_id")%>&name=<%=rs2("class_name")%>">删除</a>]<br>
<%
rs2.movenext
loop
response.write "<br>"
if rs2.bof and rs2.eof then
response.write "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前没有子分类！"
end if
rs2.close
set rs2=nothing
rs.movenext
loop
if rs.bof and rs.eof then
response.write "当前没有分类！"
end if
%>
          </td>
        </tr>
      </table>  
      <br>
<%if request.querystring("action")="newcat" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="admin_down.asp">
		<tr> 
          <td bgcolor="#eeeeee" class="diaryhead">新建分类</td>
        </tr>
        <tr> 
          <td bgcolor="#FFFFFF" class="chinese">分类名称-
            <input type="text" name="cat_name" size="40" class="textarea">
          </td>
        </tr>
        <tr> 
          <td bgcolor="#E8E8E8" height="30" align="center">
              <input type="submit" name="Submit" value="确定新增" class="button">
              <input type="reset" name="Reset" value="取消重填" class="button">
              [<a href="admin_down.asp">返回</a>] </td>
        </tr>
		<input type="hidden" name="action" value="newcat">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
<%end if
if request.querystring("action")="newclass" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
	    <form name="form2" method="post" action="admin_down.asp">
        <tr> 
          <td bgcolor="#eeeeee" class="diaryhead">新建子分类</td>
        </tr>
        <tr> 
          <td bgcolor="#FFFFFF" class="chinese">子分类名称-
              <input type="text" name="class_name" size="50" class="textarea">
              <br>
              所属分类-
              <select name="cat_id">
                <%sql="select * from cat"
set rs=conn.execute(sql)
do while not rs.eof
%><option value="<%=rs("cat_id")%>"><%=rs("cat_name")%></option>
<%rs.movenext
loop
if rs.eof and rs.bof then%><option value="0">暂无分类</option>
<%end if%>
              </select>
            </td>
        </tr>
        <tr> 
            <td bgcolor="#EFEBEF" height="30" align="center"> 
              <input type="submit" name="Submit2" value="确定新增" class="button">
              <input type="reset" name="Reset2" value="取消重填" class="button">
              [<a href="admin_down.asp">返回</a>] </td>
        </tr>
		<input type="hidden" name="action" value="newclass">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
<%end if
if request.querystring("action")="editcat" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
	    <form name="form1" method="post" action="admin_down.asp">
        <tr> 
          <td bgcolor="#eeeeee" class="diaryhead">修改分类</td>
        </tr>
        <tr> 
            <td bgcolor="#FFFFFF" class="chinese">分类名称- 
              <input type="text" name="cat_name" size="40" class="textarea" value="<%=request.querystring("name")%>">
          </td>
        </tr>
        <tr> 
            <td bgcolor="#EFEBEF" height="30" align="center">
              <input type="submit" name="Submit3" value="确定修改" class="button">
              <input type="reset" name="Reset3" value="取消重填" class="button">
              [<a href="admin_down.asp">返回</a>] </td>
        </tr>
		<input type="hidden" name="action" value="editcat">
		<input type="hidden" name="id" value="<%=request.querystring("id")%>">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
<%end if
if request.querystring("action")="editclass" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="admin_down.asp">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">修改子分类</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">子分类名称- 
              <input type="text" name="class_name" size="50" class="textarea" value="<%=request.querystring("name")%>">
              <br>
              所属分类- 
              <select name="cat_id">
                <%sql="select * from cat"
set rs=conn.execute(sql)
do while not rs.eof
%>
                <option value="<%=rs("cat_id")%>" <%if rs("cat_id")=cint(request.querystring("cid")) then response.write "selected" end if%>><%=rs("cat_name")%></option>
                <%rs.movenext
loop
if rs.eof and rs.bof then%>
                <option value="0">暂无分类</option>
                <%end if%>
              </select>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#EFEBEF" height="30" align="center"> 
              <input type="submit" name="Submit" value="确定修改" class="button">
              <input type="reset" name="Reset" value="取消重填" class="button">
              [<a href="admin_down.asp">返回</a>] </td>
          </tr>
          <input type="hidden" name="action" value="editclass">
		  <input type="hidden" name="id" value="<%=request.querystring("id")%>">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.querystring("action")="delcat" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="admin_down.asp">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">删除分类</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">分类名称- 
              <input type="text" name="cat_name2" size="40" class="textarea" value="<%=request.querystring("name")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#EFEBEF" height="30" align="center"> <input name="Submit" type="submit" class="button" id="Submit" value="确定删除">
              [<a href="admin_down.asp">返回</a>] </td>
          </tr>
          <input type="hidden" name="action" value="delcat">
          <input type="hidden" name="id" value="<%=request.querystring("id")%>">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.querystring("action")="delclass" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="admin_down.asp">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">删除子分类</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">子分类名称- <%=request.querystring("name")%>
              <br>
              所属分类- 
                <%sql="select * from cat where cat_id="&cint(request.querystring("cid"))
set rs=conn.execute(sql)
%>
<%=rs("cat_name")%>
</td>
          </tr>
          <tr> 
            <td bgcolor="#EFEBEF" height="30" align="center"> <input name="Submit" type="submit" class="button" id="Submit" value="确定删除">
              [<a href="admin_down.asp">返回</a>] </td>
          </tr>
          <input type="hidden" name="action" value="delclass">
          <input type="hidden" name="id" value="<%=request.querystring("id")%>">
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