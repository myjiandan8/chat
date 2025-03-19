<%sub Newsoft_body()
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
          <td bgcolor="#E8E8E8" class="chinese" valign="top"><a href="admin_down.asp">分类管理</a> 
            | <a href="admin_down.asp?action=newcat">新建分类</a> | <a href="admin_soft.asp">程序管理</a> 
            | <a href="New_soft.asp?action=newsoft">新增程序</a><br>
            -------------------------------------------------------<br>
            <br>
			<%if request.QueryString("action")="newsoft" then%>
            <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863" align="center">
              <form name="form1" method="post" action="New_soft.asp">
			  <tr bgcolor="#eeeeee"> 
                <td colspan="2" class="diaryhead">新增软件</td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">软件名称</td>
                <td width="84%" class="chinese">
                    <input type="text" name="name" size="40" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">软件大小</td>
                <td width="84%" class="chinese">
                    <input type="text" name="size" size="20" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">授权方式</td>
                <td width="84%" class="chinese">
                    <input name="mode" type="text" class="textarea" value="免费版">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">应用平台</td>
                <td width="84%" class="chinese">
                    <input name="roof" type="text" class="textarea" value="win98/2000/xp">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">推荐程度</td>
                <td width="84%" class="chinese">
                    <select name="commend">
					<option value="5">5stars</option>
                      <option value="4">4stars</option>
                      <option value="3">3stars</option>
                      <option value="2">2stars</option>
                      <option value="1">1stars</option>
                      <option value="0">0stars</option>
                    </select>
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">所属分类</td>
                <td width="84%" class="chinese">
                    <select name="of">
                      <%
dim catname,classname,catid,classid
opendown
Set rs = Server.CreateObject("ADODB.Recordset")
sql="SELECT * FROM cat"
rs.OPEN sql,Conn,1,1
if not (rs.eof and rs.bof) then
rs.movefirst
do while not rs.eof
sql="select * from class where cat_id="&rs("cat_id")
Set rs2 = Server.CreateObject("ADODB.Recordset")
rs2.OPEN sql,Conn,1,1
if not (rs2.eof and rs2.bof) then
do while not rs2.eof
catid=rs("cat_id")
classid=rs2("class_id")
catname=rs("cat_name")
classname=rs2("class_name")
%>
                      <option value='<%=rs2("class_id")%>' selected><%=rs2("class_name")%>（<%=rs("cat_name")%>）</option>
                      <%
rs2.movenext
loop
end if
rs.movenext
rs2.close
set rs2=nothing
loop
end if
%>
                    </select>
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">演示地址</td>
                <td width="84%" class="chinese">
                    <input type="text" name="demo" size="60" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">主页地址</td>
                <td width="84%" class="chinese">
                    <input type="text" name="home" size="60" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">图片地址</td>
                <td width="84%" class="chinese">
                    <input type="text" name="showpic" size="60" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">程序简介</td>
                <td width="84%" class="chinese">
                    <textarea name="desc" cols="65" rows="10" class="textarea"></textarea>
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">下载地址1</td>
                <td width="84%" class="chinese">
                    <input type="text" name="url1" size="60" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">下载地址2</td>
                <td width="84%" class="chinese">
                    <input type="text" name="url2" size="60" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">下载地址3</td>
                <td width="84%" class="chinese">
                    <input type="text" name="url3" size="60" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td width="16%" class="chinese">下载地址4</td>
                <td width="84%" class="chinese">
                    <input type="text" name="url4" size="60" class="textarea">
                  </td>
              </tr>
              <tr bgcolor="#E8E8E8"> 
                <td colspan="2" class="chinese" align="center" height="30">
                    <input type="submit" name="Submit" value="确定新增" class="button">
                    <input type="reset" name="Reset" value="清空重填" class="button">
                    [<a href="admin_soft.asp">返回</a>] </td>
              </tr>
			  <input type="hidden" name="action" value="newsoft">
			  <input type="hidden" name="MM_insert" value="true">
			  </form>
            </table>
			<%end if
			if request.QueryString("action")="editsoft" then
			if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的软件ID参数！"
	call diserror()
	response.end
  end if
end if
sql="select * from soft where soft_id="&cint(request.querystring("id"))
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1%>
            <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863" align="center">
              <form name="form1" method="post" action="New_soft.asp">
                <tr bgcolor="#eeeeee"> 
                  <td colspan="2" class="diaryhead">编辑软件</td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">软件名称</td>
                  <td width="84%" class="chinese"> <input type="text" name="name" size="40" class="textarea" value="<%=rs2("soft_name")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">软件大小</td>
                  <td width="84%" class="chinese"> <input type="text" name="size" size="20" class="textarea" value="<%=rs2("soft_size")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">授权方式</td>
                  <td width="84%" class="chinese"> <input type="text" name="mode" class="textarea" value="<%=rs2("soft_mode")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">应用平台</td>
                  <td width="84%" class="chinese"> <input type="text" name="roof" class="textarea" value="<%=rs2("soft_roof")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">推荐程度</td>
                  <td width="84%" class="chinese"> <select name="commend" id="commend">
                      <option value="5" <%if rs2("soft_commend")=5 then response.write "selected" end if%>>5stars</option>
                      <option value="4" <%if rs2("soft_commend")=4 then response.write "selected" end if%>>4stars</option>
                      <option value="3" <%if rs2("soft_commend")=3 then response.write "selected" end if%>>3stars</option>
                      <option value="2" <%if rs2("soft_commend")=2 then response.write "selected" end if%>>2stars</option>
                      <option value="1" <%if rs2("soft_commend")=1 then response.write "selected" end if%>>1stars</option>
                      <option value="0" <%if rs2("soft_commend")=0 then response.write "selected" end if%>>0stars</option>
                    </select> </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">所属分类</td>
                  <td width="84%" class="chinese"> <select name="of" id="of">
                      <%
opendown
Set rs = Server.CreateObject("ADODB.Recordset")
sql="SELECT * FROM cat"
rs.OPEN sql,Conn,1,1
if not (rs.eof and rs.bof) then
rs.movefirst
do while not rs.eof
sql="select * from class where cat_id="&rs("cat_id")
Set rs3 = Server.CreateObject("ADODB.Recordset")
rs3.OPEN sql,Conn,1,1
if not (rs3.eof and rs3.bof) then
do while not rs3.eof
catid=rs("cat_id")
classid=rs3("class_id")
catname=rs("cat_name")
classname=rs3("class_name")
%>
                      <option value='<%=rs3("class_id")%>' selected <%if rs3("class_id")=rs2("soft_classid") then response.Write "selected" end if%>><%=rs3("class_name")%>（<%=rs("cat_name")%>）</option>
                      <%
rs3.movenext
loop
end if
rs.movenext
rs3.close
set rs3=nothing
loop
end if
%>
                    </select> </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">演示地址</td>
                  <td width="84%" class="chinese"> <input type="text" name="demo" size="60" class="textarea" value="<%=rs2("soft_demo")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">主页地址</td>
                  <td width="84%" class="chinese"> <input type="text" name="home" size="60" class="textarea" value="<%=rs2("soft_home")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">图片地址</td>
                  <td width="84%" class="chinese"> <input type="text" name="showpic" size="60" class="textarea" value="<%=rs2("soft_showpic")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">程序简介</td>
                  <td width="84%" class="chinese"> <textarea name="desc" cols="65" rows="10" class="textarea" id="desc"><%=rs2("soft_desc")%></textarea> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">下载地址1</td>
                  <td width="84%" class="chinese"> <input type="text" name="url1" size="60" class="textarea" value="<%=rs2("soft_url1")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">下载地址2</td>
                  <td width="84%" class="chinese"> <input type="text" name="url2" size="60" class="textarea" value="<%=rs2("soft_url2")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">下载地址3</td>
                  <td width="84%" class="chinese"> <input type="text" name="url3" size="60" class="textarea" value="<%=rs2("soft_url3")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">下载地址4</td>
                  <td width="84%" class="chinese"> <input type="text" name="url4" size="60" class="textarea" value="<%=rs2("soft_url4")%>"> 
                  </td>
                </tr>
                <tr bgcolor="#E8E8E8"> 
                  <td colspan="2" class="chinese" align="center" height="30"> 
                    <input name="Submit" type="submit" class="button" id="Submit" value="确定修改"> 
                    <input type="reset" name="Reset2" value="清空重填" class="button">
                    [<a href="admin_soft.asp">返回</a>] </td>
                </tr>
				<input type="hidden" name="id" value="<%=request.QueryString("id")%>">
                <input type="hidden" name="action" value="editsoft">
                <input type="hidden" name="MM_insert" value="true">
              </form>
            </table>
			<%end if
			if request.QueryString("action")="delsoft" then
			if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的软件ID参数！"
	call diserror()
	response.end
  end if
end if
sql="select * from soft where soft_id="&cint(request.querystring("id"))
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
			%>
            <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863" align="center">
              <form name="form1" method="post" action="New_soft.asp">
                <tr bgcolor="#eeeeee"> 
                  <td colspan="2" class="diaryhead">删除软件</td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">软件名称</td>
                  <td width="84%" class="chinese"><%=rs2("soft_name")%>
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">软件大小</td>
                  <td width="84%" class="chinese"><%=rs2("soft_size")%>
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">授权方式</td>
                  <td width="84%" class="chinese"><%=rs2("soft_mode")%> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">应用平台</td>
                  <td width="84%" class="chinese"><%=rs2("soft_roof")%>
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">推荐程度</td>
                  <td width="84%" class="chinese"><img src="images/<%=rs2("soft_commend")%>stars.gif"></td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">所属分类</td>
                  <td width="84%" class="chinese"><%=rs2("soft_catname")%> | <%=rs2("soft_classname")%></td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">演示地址</td>
                  <td width="84%" class="chinese"><%=rs2("soft_demo")%> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">主页地址</td>
                  <td width="84%" class="chinese"><%=rs2("soft_home")%>
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">图片地址</td>
                  <td width="84%" class="chinese"><%=rs2("soft_showpic")%>
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">程序简介</td>
                  <td width="84%" class="chinese"><%=ubb2html(formatStr(autourl(rs2("soft_desc"))), true, true)%>
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">下载地址1</td>
                  <td width="84%" class="chinese"><%=rs2("soft_url1")%> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">下载地址2</td>
                  <td width="84%" class="chinese"><%=rs2("soft_url2")%> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">下载地址3</td>
                  <td width="84%" class="chinese"><%=rs2("soft_url3")%> 
                  </td>
                </tr>
                <tr bgcolor="#FFFFFF"> 
                  <td width="16%" class="chinese">下载地址4</td>
                  <td width="84%" class="chinese"><%=rs2("soft_url4")%> 
                  </td>
                </tr>
                <tr bgcolor="#E8E8E8"> 
                  <td colspan="2" class="chinese" align="center" height="30"> 
                    <input name="Submit" type="submit" class="button" id="Submit" value="确定删除">
                    [<a href="admin_soft.asp">返回</a>] </td>
                </tr>
                <input type="hidden" name="id" value="<%=request.QueryString("id")%>">
                <input type="hidden" name="action" value="delsoft">
                <input type="hidden" name="MM_insert" value="true">
              </form>
            </table>
			<%end if%>
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