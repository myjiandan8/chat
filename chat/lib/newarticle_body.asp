<%sub Newarticle_body()%>
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
          <td width="25%" class="chinese"><a href="admin_article.asp">���·������</a></td>
          <td class="chinese" width="25%"><a href="admin_article2.asp">���¹���</a></td>
          <td class="chinese" width="25%"><a href="admin_article.asp?action=newartcat">��������</a></td>
          <td class="chinese" width="25%"><a href="New_article.asp?action=newart">��������</a></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
	  <%if request.QueryString("action")="newart" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="addart" method="post" action="">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">��������</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input type="text" name="art_poster" size="40" class="textarea">&nbsp;<a href="javascript:setAuthor2('δ֪')">δ֪</a>&nbsp;<a href="javascript:setAuthor2('����')">����</a> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��Դ- 
              <input type="text" name="art_from" size="60" class="textarea" value="�ͼ�Ʒ�� ��������----�������  mz126.com xzggg "> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input type="text" name="art_title" size="60" class="textarea"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">�������� 
              <select name="cat_id">
                <%openarticle
sql="select * from cat"
set rs=conn.execute(sql)
do while not rs.eof%>
                <option value="<%=rs("cat_id")%>"><%=rs("cat_name")%></option>
                <%rs.movenext
loop
rs.close
set rs=nothing%>
              </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ؼ���- 
              <input type="text" name="art_keyword" class="textarea"> </td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF" class="chinese">&nbsp;&nbsp;<a href="javascript" onclick="window.open('news_pic.asp','newwin','width=300,height=140');return false;"><font color="#FF0000"><strong>�ϴ�ͼƬ</strong></font> 
              </a> &nbsp;<%=request.cookies("0")%></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"> 
              <%call ubbshow()%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF"> <textarea cols="85" name="art_content" rows="20" class="textarea"></textarea> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> <input type="submit" name="Submit" value="ȷ������" class="button"> 
              <input type="reset" name="Reset" value="�����д" class="button">
              [<a href="admin_article2.asp">����</a>] </td>
          </tr>
          <input type="hidden" name="action" value="newart">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.QueryString("action")="editart" then
if request.querystring("art_id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("art_id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������ID������"
	call diserror()
	response.end
  end if
end if
if request.querystring("cat_id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("cat_id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������ID������"
	call diserror()
	response.end
  end if
end if
openarticle
sql="select * from art where art_id="&cint(request.querystring("art_id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="addart" method="post" action="">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">�޸�����</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input name="art_poster" type="text" class="textarea" id="art_poster" size="40" value="<%=rs("art_poster")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��Դ- 
              <input name="art_from" type="text" class="textarea" id="art_from" size="60" value="<%=rs("art_from")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input name="art_title" type="text" class="textarea" id="art_title" size="60" value="<%=rs("art_title")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">�������� 
              <select name="cat_id" id="cat_id">
                <%openarticle
sql="select * from cat"
set rs2=conn.execute(sql)
do while not rs2.eof%>
                <option value="<%=rs2("cat_id")%>" <%if cstr(rs2("cat_id"))=cstr(request.querystring("cat_id")) then response.Write "selected" end if%>><%=rs2("cat_name")%></option>
                <%rs2.movenext
loop
rs2.close
set rs2=nothing%>
              </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ؼ���- 
              <input name="art_keyword" type="text" class="textarea" id="art_keyword" value="<%=rs("art_keyword")%>"> </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"> 
              <%call ubbshow()%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF"> <textarea name="art_content" cols="85" rows="20" class="textarea" id="art_content"><%=rs("art_content")%></textarea> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> <input name="Submit" type="submit" class="button" id="Submit" value="ȷ���޸�"> 
              <input name="Reset" type="reset" class="button" id="Reset" value="�����д">
              [<a href="admin_article2.asp">����</a>] </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("art_id")%>">
		  <input type="hidden" name="action" value="editart">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  	  if request.QueryString("action")="delart" then
if request.querystring("art_id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("art_id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������ID������"
	call diserror()
	response.end
  end if
end if
if request.querystring("cat_id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("cat_id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������ID������"
	call diserror()
	response.end
  end if
end if
openarticle
sql="select * from art where art_id="&cint(request.querystring("art_id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="addart" method="post" action="">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">ɾ������</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- <%=rs("art_poster")%> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��Դ- <%=rs("art_from")%> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- <%=rs("art_title")%> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">�������� 
                <%
sql="select * from cat where cat_id="&cint(request.querystring("cat_id"))
set rs2=conn.execute(sql)
%>
<%=rs2("cat_name")%>
<%
rs2.close
set rs2=nothing%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ؼ���- <%=rs("art_keyword")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"><%=ubb2html(formatStr(autourl(rs("art_content"))), true, true)%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> <input name="Submit" type="submit" class="button" id="Submit" value="ȷ��ɾ��">
              [<a href="admin_article2.asp">����</a>] </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("art_id")%>">
          <input type="hidden" name="action" value="delart">
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
<%end sub%>