<%sub adminvote_body()
%>
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
          <td bgcolor="#E8E8E8" width="50%" class="chinese"><a href="admin_vote.asp?action=newvote">新增投票主题</a></td>
          <td bgcolor="#E8E8E8" width="50%" class="chinese"><a href="admin_vote.asp?action=vote">投票管理</a></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
	  <%if request.querystring("action")="newvote" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="2" class="diaryhead">新增投票主题</td>
          </tr>
          <tr> 
            <td width="16%" bgcolor="#FFFFFF" class="chinese">主题名称</td>
            <td width="84%" bgcolor="#FFFFFF"> 
              <input type="text" name="vt_name" size="50" maxlength="50" class="textarea">
            </td>
          </tr>
          <tr> 
            <td width="16%" bgcolor="#FFFFFF" class="chinese">开始日期</td>
            <td width="84%" bgcolor="#FFFFFF" class="chinese"> 
              <input type="text" name="vt_startdate" size="30" class="textarea">
              例子：2002-09-30 </td>
          </tr>
          <tr> 
            <td width="16%" bgcolor="#FFFFFF" class="chinese">过期日期</td>
            <td width="84%" bgcolor="#FFFFFF" class="chinese"> 
              <input type="text" name="vt_expiredate" size="30" class="textarea">
              同上</td>
          </tr>
          <tr align="center"> 
            <td height="30" colspan="2" bgcolor="#E8E8E8"> 
              <input type="submit" name="Submit" value="确定新增" class="button">
              <input type="reset" name="Reset" value="清空重填" class="button">
            </td>
          </tr>
          <input type="hidden" name="action" value="newvote">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.querystring("action")="vote" then
	  openadmin
sql="select * from votetopic"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>

      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#eeeeee"> 
          <td colspan="3" class="diaryhead">投票主题管理</td>
        </tr>
        <tr align="center"> 
          <td width="10%" bgcolor="#FFFFFF" class="chinese">编号</td>
          <td width="60%" bgcolor="#FFFFFF" class="chinese">投票主题</td>
          <td width="30%" bgcolor="#FFFFFF" class="chinese">操作</td>
        </tr>
<%do while not rs.eof%>
        <tr> 
          <td align="center" bgcolor="#FFFFFF" class="chinese"><%=rs("vt_id")%></td>
          <td bgcolor="#FFFFFF" class="chinese"><%=rs("vt_name")%></td>
          <td align="center" bgcolor="#FFFFFF" class="chinese"><a href="admin_vote.asp?action=vote&caction=edit&id=<%=rs("vt_id")%>">edit</a> 
            <a href="admin_vote.asp?action=vote&caction=del&id=<%=rs("vt_id")%>">del</a></td>
        </tr>
<%rs.movenext
loop
if rs.bof and rs.eof then%>
        <tr> 
          <td colspan="3" align="center" bgcolor="#FFFFFF" class="chinese">当前没有投票主题！</td>
        </tr>
<%end if%>
      </table>
	  <br>
<%if request.querystring("action")="vote" and request.querystring("caction")="edit" then
if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
  call diserror()
  response.end
end if
sql="select * from votetopic where vt_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="3" class="diaryhead">修改投票主题</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="18%" class="chinese">主题名称</td>
            <td class="chinese" colspan="2"> 
              <input type="text" name="vt_name" size="50" maxlength="50" class="textarea" value="<%=rs("vt_name")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="18%" class="chinese">开始日期</td>
            <td class="chinese" colspan="2"> 
              <input type="text" name="vt_startdate" size="30" class="textarea" value="<%=rs("vt_startdate")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="18%" class="chinese">过期日期</td>
            <td class="chinese" colspan="2"> 
              <input type="text" name="vt_expiredate" size="30" class="textarea" value="<%=rs("vt_expiredate")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td colspan="3" class="chinese"><a href="admin_vote.asp?action=newitem&id=<%=rs("vt_id")%>">新增投票选项</a></td>
          </tr>
<%sql="select * from voteitem where vt_id="&cint(request.querystring("id"))
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof
%>
          <tr bgcolor="#FFFFFF"> 
            <td width="18%" class="chinese">投票选项</td>
            <td width="57%" class="chinese"><%=rs2("item_name")%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newshead"><%=rs2("item_count")%></span>票</td>
            <td width="25%" align="center" class="chinese"><a href="admin_vote.asp?action=edititem&id=<%=rs2("vt_id")%>&itemid=<%=rs2("item_id")%>">edit</a> 
              <a href="admin_vote.asp?action=delitem&id=<%=rs2("vt_id")%>">del</a></td>
          </tr>
<%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" colspan="3">当前没有投票选项！</td>
          </tr>
<%end if
rs2.close
set rs2=nothing%>
          <tr align="center"> 
            <td colspan="3" bgcolor="#E8E8E8" height="30">
              <input type="submit" name="Submit" value="确定修改" class="button">
              <input type="reset" name="Reset" value="清空重填" class="button">
            </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("vt_id")%>">
          <input type="hidden" name="action" value="editvote">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%
	  rs.close
set rs=nothing
	  end if
	  end if
	  if request.querystring("action")="newitem" then
if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
  call diserror()
  response.end
end if
openadmin
sql="select vt_name,vt_id from votetopic where vt_id="&cint(request.querystring("id"))
set rs=conn.execute(sql)%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form3" method="post" action="">
		<tr bgcolor="#eeeeee"> 
          <td colspan="2" class="diaryhead">新增投票选项</td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td width="13%" class="chinese">所属主题</td>
          <td width="87%" class="chinese"><%=rs("vt_name")%></td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td width="13%" class="chinese">选项名称</td>
          <td width="87%" class="chinese">
              <input type="text" name="item_name" size="40" maxlength="50" class="textarea">
            </td>
        </tr>
          <tr align="center"> 
            <td colspan="2" bgcolor="#E8E8E8" height="30">
              <input type="submit" name="Submit" value="确定新增" class="button">
              <input type="reset" name="Reset" value="清空重填" class="button">
            </td>
        </tr>
		<input type="hidden" name="id" value="<%=rs("vt_id")%>">
		<input type="hidden" name="action" value="newitem">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
      <%rs.close
	  set rs=nothing
	  end if
	  if request.querystring("action")="edititem" then
if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
  call diserror()
  response.end
end if
openadmin
sql="select vt_name,vt_id from votetopic where vt_id="&cint(request.querystring("id"))
set rs=conn.execute(sql)
sql="select item_id,item_name from voteitem where item_id="&cint(request.querystring("itemid"))
set rs2=conn.execute(sql)%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form3" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="2" class="diaryhead">修改投票选项</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="13%" class="chinese">所属主题</td>
            <td width="87%" class="chinese"><%=rs("vt_name")%></td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="13%" class="chinese">选项名称</td>
            <td width="87%" class="chinese"> 
              <input type="text" name="item_name" size="40" maxlength="50" class="textarea" value="<%=rs2("item_name")%>">
            </td>
          </tr>
          <tr align="center"> 
            <td colspan="2" bgcolor="#E8E8E8" height="30" class="chinese"> 
              <input type="submit" name="Submit" value="确定修改" class="button">
              <input type="reset" name="Reset" value="清空重填" class="button">
              [<a href="admin_vote.asp?action=vote&caction=edit&id=<%=request.querystring("id")%>">返回</a>] 
            </td>
          </tr>
          <input type="hidden" name="vtid" value="<%=rs("vt_id")%>">
          <input type="hidden" name="id" value="<%=rs2("item_id")%>">
          <input type="hidden" name="action" value="edititem">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%rs2.close
	  set rs2=nothing
	  rs.close
	  set rs=nothing
	  end if
	  if request.querystring("action")="delitem" then
if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
  call diserror()
  response.end
end if
openadmin
sql="select vt_name,vt_id from votetopic where vt_id="&cint(request.querystring("id"))
set rs=conn.execute(sql)
sql="select item_id,item_name from voteitem where vt_id="&cint(request.querystring("id"))
set rs2=conn.execute(sql)%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form3" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="2" class="diaryhead">删除投票选项</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="13%" class="chinese">所属主题</td>
            <td width="87%" class="chinese"><%=rs("vt_name")%></td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="13%" class="chinese">选项名称</td>
            <td width="87%" class="chinese"><%=rs2("item_name")%> </td>
          </tr>
          <tr align="center"> 
            <td colspan="2" bgcolor="#E8E8E8" height="30" class="chinese"> 
              <input type="submit" name="Submit" value="确定删除" class="button">
              [<a href="admin_vote.asp?action=vote&caction=edit&id=<%=request.querystring("id")%>">返回</a>] </td>
          </tr>
          <input type="hidden" name="vtid" value="<%=rs("vt_id")%>">
          <input type="hidden" name="id" value="<%=rs2("item_id")%>">
          <input type="hidden" name="action" value="delitem">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%rs2.close
	  set rs2=nothing
	  rs.close
	  set rs=nothing
	  end if
	  if request.querystring("action")="vote" and request.querystring("caction")="del" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
  call diserror()
  response.end
end if
sql="select * from votetopic where vt_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="2" class="diaryhead">删除投票主题</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="18%" class="chinese">主题名称</td>
            <td class="chinese" width="82%"> <%=rs("vt_name")%> </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="18%" class="chinese">开始日期</td>
            <td class="chinese" width="82%"> <%=rs("vt_startdate")%> </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="18%" class="chinese">过期日期</td>
            <td class="chinese" width="82%"> <%=rs("vt_expiredate")%> </td>
          </tr>
          <%sql="select * from voteitem where vt_id="&cint(request.querystring("id"))
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof
%>
          <tr bgcolor="#FFFFFF"> 
            <td width="18%" class="chinese">投票选项</td>
            <td width="82%" class="chinese"><%=rs2("item_name")%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newshead"><%=rs2("item_count")%></span>票</td>
          </tr>
          <%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" colspan="2">当前没有投票选项！</td>
          </tr>
          <%end if
rs2.close
set rs2=nothing%>
          <tr align="center"> 
            <td colspan="2" bgcolor="#E8E8E8" height="30" class="chinese"> 
              <input type="submit" name="Submit" value="确定删除" class="button">
              [<a href="admin_vote.asp?action=vote">返回</a>] </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("vt_id")%>">
          <input type="hidden" name="action" value="delvote">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%
	  rs.close
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