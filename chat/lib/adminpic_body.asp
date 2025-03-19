<%sub adminpic_body()
%>
<link rel="stylesheet" href="Sams.css" type="text/css">

<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td colspan="3" height="8" bgcolor="#FFFFFF"></td>
  </tr>
  <tr> 
    <td width="205" bgcolor="#FFFFFF" valign="top" align="right"> 
      <%call adminmenu()%>
    </td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="554" bgcolor="#FFFFFF" valign="top" align="center"> 
      <table width="98%" border="0" cellspacing="1" cellpadding="10" bgcolor="#B9B9B9">
        <tr align="center"> 
          <td bgcolor="#E8E8E8" width="25%" class="chinese"><a href="admin_pic.asp?action=cscat">图片分类管理</a></td>
          <td bgcolor="#E8E8E8" width="25%" class="chinese"><a href="admin_pic.asp?action=newcscat">新增图片分类</a></td>
          <td bgcolor="#E8E8E8" width="25%" class="chinese"><a href="admin_pic.asp?action=sites">图片管理</a></td>
          <td bgcolor="#E8E8E8" width="25%" class="chinese"><a href="admin_pic.asp?action=newcs">新增图片</a></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
     <%if request.querystring("action")="cscat" then
	 openpic
sql="select * from cscat order by cscat_id DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%> 
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#eeeeee"> 
          <td colspan="3" class="diaryhead">图片分类管理</td>
        </tr>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td width="10%" class="chinese">编号</td>
          <td width="70%" class="chinese">分类名称</td>
          <td width="20%" class="chinese">操作</td>
        </tr>
        <%do while not rs.eof%>
        <tr bgcolor="#FFFFFF"> 
          <td align="center" class="chinese"><%=rs("cscat_id")%></td>
          <td class="chinese"><a href="showcs.asp?cscat_id=<%=rs("cscat_id")%>" target="_blank"><%=rs("cscat_name")%></a></td>
          <td align="center" class="chinese"><a href="admin_pic.asp?id=<%=rs("cscat_id")%>&action=editcscat">edit</a> 
            <a href="admin_pic.asp?id=<%=rs("cscat_id")%>&action=delcscat">del</a> <a href="z_pic.asp?cscat_id=<%=rs("cscat_id")%>" target="_blank">view</a></td>
        </tr>
        <%rs.movenext
loop
if rs.bof and rs.eof then%>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td colspan="3" class="chinese">当前没有酷站分类！</td>
        </tr>
        <%rs.close
set rs=nothing
		end if%>
      </table>
      <br>
     <%end if
	 if request.querystring("action")="newcscat" then%> 
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="">
		<tr> 
            <td bgcolor="#eeeeee" class="diaryhead">新增图片分类</td>
        </tr>
        <tr> 
            <td bgcolor="#FFFFFF" class="chinese">分类名称- 
              <input type="text" name="cscat_name" size="40" class="textarea">
          </td>
        </tr>
        <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center">
              <input type="submit" name="Submit" value="确定新增" class="button">
              <input type="reset" name="Reset" value="清空重填" class="button">
            </td>
        </tr>
		<input type="hidden" name="action" value="newcscat">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
	  <%end if
	  if request.QueryString("action")="editcscat" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的图片分类ID参数！"
	call diserror()
	response.end
  end if
end if
openpic
sql="select * from cscat where cscat_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">修改图片分类</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">分类名称- 
              <input name="cscat_name" type="text" class="textarea" id="cscat_name" size="40" value="<%=rs("cscat_name")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> <input name="Submit" type="submit" class="button" id="Submit" value="确定修改"> 
              <input name="Reset" type="reset" class="button" id="Reset" value="清空重填"> </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("cscat_id")%>">
          <input type="hidden" name="action" value="editcscat">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.QueryString("action")="delcscat" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的图片分类ID参数！"
	call diserror()
	response.end
  end if
end if
openpic
sql="select * from cscat where cscat_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">删除图片分类</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">分类名称- <%=rs("cscat_name")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> 
              <input name="Submit" type="submit" class="button" id="Submit" value="确定删除">
            </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("cscat_id")%>">
          <input type="hidden" name="action" value="delcscat">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%end if
if request.querystring("action")="sites" then
openpic
sql="select * from pic order by cs_id desc"
if request.querystring("cscat_id")<>"" then
sql="select * from pic where cscat_id="&cint(request.querystring("cscat_id"))&" order by cs_id desc"
end if
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
totalcs=rs.recordcount
%>
 <table width="98%" border="0" cellspacing="1" cellpadding="0" class="chinese">
        <tr>
          <td align="right">
           <a href="admin_pic.asp?action=sites"><strong>显示所有图片</strong></a>
<%sql="select * from cscat"
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof%>
 | <a href="admin_pic.asp?action=sites&cscat_id=<%=rs2("cscat_id")%>"><strong><%=rs2("cscat_name")%></strong></a>
<%rs2.movenext
loop
if rs2.bof and rs2.eof then%>当前没有分类
<%end if
rs2.close
set rs2=nothing%>
            </td>
        </tr>
		</form>
      </table>
<%
if not rs.eof then
rs.movefirst
rs.pagesize=coolsitesperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalcs=rs.recordcount
   if currentpage<>1 then
       if (currentpage-1)*coolsitesperpage<totalcs then
	       rs.move(currentpage-1)*coolsitesperpage
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalcs mod coolsitesperpage)=0 then
      totalpages=totalcs\coolsitesperpage
   else
      totalpages=totalcs\coolsitesperpage+1
   end if
i=0
do while not rs.eof and i<coolsitesperpage
%>
      <table width="98%" border="0" cellspacing="0" cellpadding="10" align="center">
        <tr> 
          <td width="37%" align="center"> 
            <table width="98%" border="0" cellspacing="1" cellpadding="3" bgcolor="#D2D2D2">
              <tr> 
                <td bgcolor="#FFFFFF" align="center"><img src="<%=rs("cs_pic")%>" width="160" height="120"></td>
              </tr>
            </table>
          </td>
          <td width="63%" class="chinese">图片名称：<%=rs("cs_name")%><br>
            链接地址：<a href="picredirectcs.asp?cs_id=<%=rs("cs_id")%>" target="_blank"><%=rs("cs_url")%></a><br>
            加入时间：<%=rs("cs_date")%><br>
            点击次数：<%=rs("cs_count")%><br>
            <a href="admin_pic.asp?id=<%=rs("cs_id")%>&action=editcs">edit</a> 
            <a href="admin_pic.asp?id=<%=rs("cs_id")%>&action=delcs">del</a></td>
        </tr>
        <tr> 
          <td colspan="2" height="1" background="images/dotlineh.gif"></td>
        </tr>
      </table>
      <%
i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then
%>
      <table width="98%" border="0" cellspacing="0" cellpadding="10" align="center">
        <tr> 
          <td bgcolor="#FFFFFF" colspan="2" height="22" align="center" class="chinese">当前没有图片！</td>
        </tr>
      </table>
      <%end if
end if%>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form1" method="post" action="admin_pic.asp?action=sites&cscat_id=<%=request.querystring("cscat_id")%>">
          <tr> 
            <td align="right"> <%=currentpage%> /<%=totalpages%>页,<%=totalcs%>条记录/<%=coolsitesperpage%>篇每页. 
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
              <a href="admin_pic.asp?action=sites&page=<%=i%>&cscat_id=<%=request.querystring("cscat_id")%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="admin_pic.asp?action=sites&page=<%=page%>&cscat_id=<%=request.querystring("cscat_id")%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button">
            </td>
          </tr>
        </form>
      </table>
      <br>
	  <%end if
	  if request.querystring("action")="newcs" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="2" class="diaryhead">新增图片</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片名称</td>
            <td class="chinese" width="83%"> 
              <input type="text" name="name" class="textarea" size="40">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">所属分类</td>
            <td class="chinese" width="83%"> 
              <select name="cscatid" class="textarea">
<%
openpic
sql="select * from cscat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof%><option value="<%=rs("cscat_id")%>"><%=rs("cscat_name")%></option>
<%rs.movenext
loop
if rs.eof and rs.bof then%><option value="0">当前没有图片分类</option>
<%end if%>
              </select>
              &nbsp;&nbsp;&nbsp;<a href="javascript" onclick="window.open('pic.asp','newwin','width=300,height=140');return false;"><font color="#FF0000"><strong>上传图片</strong></font> </a>
              -&gt;&gt;&gt; </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">链接地址</td>
            <td class="chinese" width="83%"> 
              <input type="text" name="url" class="textarea" size="60" value="<%=request.cookies("0")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片地址</td>
            <td class="chinese" width="83%"> 
              <input type="text" name="pic" class="textarea" size="60" value="<%=request.cookies("1")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片介绍</td>
            <td class="chinese" width="83%"> 
              <textarea name="desc" class="textarea" cols="65" rows="6"></textarea>
            </td>
          </tr>
          <tr bgcolor="#E8E8E8" align="center"> 
            <td colspan="2" height="30" class="chinese"> 
              <input type="submit" name="Submit" value="确定新增" class="button">
              <input type="reset" name="Reset" value="清空重填" class="button">
            </td>
          </tr>
		  <input type="hidden" name="action" value="newcs">
		<input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%end if
	  if request.QueryString("action")="editcs" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的ID参数！"
	call diserror()
	response.end
  end if
end if
openpic
sql="select * from pic where cs_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr background="#eeeeee"> 
            <td colspan="2" class="diaryhead">修改图片</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片名称</td>
            <td class="chinese" width="83%"> 
              <input name="name" type="text" class="textarea" id="name" size="40" value="<%=rs("cs_name")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">所属分类</td>
            <td class="chinese" width="83%"> 
              <select name="cscatid" class="textarea" id="cscatid">
                <%
openpic
sql="select * from cscat"
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof%>
                <option value="<%=rs2("cscat_id")%>" <%if rs2("cscat_id")=rs("cscat_id") then response.write "selected" end if%>><%=rs2("cscat_name")%></option>
                <%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
                <option value="0">当前没有图片分类</option>
                <%end if%>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">链接地址</td>
            <td class="chinese" width="83%"> 
              <input name="url" type="text" class="textarea" id="url" size="60" value="<%=rs("cs_url")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片地址</td>
            <td class="chinese" width="83%"> 
              <input name="pic" type="text" class="textarea" id="pic" size="60" value="<%=rs("cs_pic")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片介绍</td>
            <td class="chinese" width="83%"> 
              <textarea name="desc" cols="65" rows="6" class="textarea" id="desc"><%=rs("cs_desc")%></textarea>
            </td>
          </tr>
          <tr bgcolor="#E8E8E8" align="center"> 
            <td colspan="2" height="30" class="chinese"> 
              <input name="Submit" type="submit" class="button" id="Submit" value="确定修改"> 
              <input type="reset" name="Reset" value="清空重填" class="button">
            </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("cs_id")%>">
          <input type="hidden" name="action" value="editcs">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.QueryString("action")="delcs" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的图片ID参数！"
	call diserror()
	response.end
  end if
end if
openpic
sql="select * from pic where cs_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="2" class="diaryhead">删除图片</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片名称</td>
            <td class="chinese" width="83%"> <%=rs("cs_name")%>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">所属分类</td>
            <td class="chinese" width="83%"> 
                <%
openpic
sql="select * from cscat where cscat_id="&rs("cscat_id")
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
%><%=rs2("cscat_name")%>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">链接地址</td>
            <td class="chinese" width="83%"><%=rs("cs_url")%>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片地址</td>
            <td class="chinese" width="83%"><img src="<%=rs("cs_pic")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">图片介绍</td>
            <td class="chinese" width="83%"><%=rs("cs_desc")%>
            </td>
          </tr>
          <tr bgcolor="#E8E8E8" align="center"> 
            <td colspan="2" height="30" class="chinese"> 
              <input name="Submit" type="submit" class="button" id="Submit" value="确定删除">
            </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("cs_id")%>">
          <input type="hidden" name="action" value="delcs">
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
end sub%>