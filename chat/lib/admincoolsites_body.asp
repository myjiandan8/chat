<%sub admincoolsites_body()
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
          <td bgcolor="#E8E8E8" width="25%" class="chinese"><a href="admin_coolsites.asp?action=cscat">�������</a></td>
          <td bgcolor="#E8E8E8" width="25%" class="chinese"><a href="admin_coolsites.asp?action=newcscat">��������</a></td>
          <td bgcolor="#E8E8E8" width="25%" class="chinese"><a href="admin_coolsites.asp?action=sites">��վ����</a></td>
          <td bgcolor="#E8E8E8" width="25%" class="chinese"><a href="admin_coolsites.asp?action=newcs">������վ</a></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
     <%if request.querystring("action")="cscat" then
	 opensites
sql="select * from cscat order by cscat_id DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%> 
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#eeeeee"> 
          <td colspan="3" class="diaryhead">��վ�������</td>
        </tr>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td width="10%" class="chinese">���</td>
          <td width="70%" class="chinese">��������</td>
          <td width="20%" class="chinese">����</td>
        </tr>
        <%do while not rs.eof%>
        <tr bgcolor="#FFFFFF"> 
          <td align="center" class="chinese"><%=rs("cscat_id")%></td>
          <td class="chinese"><a href="showcs.asp?cscat_id=<%=rs("cscat_id")%>" target="_blank"><%=rs("cscat_name")%></a></td>
          <td align="center" class="chinese"><a href="admin_coolsites.asp?id=<%=rs("cscat_id")%>&action=editcscat">edit</a> 
            <a href="admin_coolsites.asp?id=<%=rs("cscat_id")%>&action=delcscat">del</a> <a href="showcs.asp?cscat_id=<%=rs("cscat_id")%>" target="_blank">view</a></td>
        </tr>
        <%rs.movenext
loop
if rs.bof and rs.eof then%>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td colspan="3" class="chinese">��ǰû�п�վ���࣡</td>
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
            <td bgcolor="#eeeeee" class="diaryhead">������վ����</td>
        </tr>
        <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��������- 
              <input type="text" name="cscat_name" size="40" class="textarea">
          </td>
        </tr>
        <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center">
              <input type="submit" name="Submit" value="ȷ������" class="button">
              <input type="reset" name="Reset" value="�������" class="button">
            </td>
        </tr>
		<input type="hidden" name="action" value="newcscat">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
	  <%end if
	  if request.QueryString("action")="editcscat" then
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
opensites
sql="select * from cscat where cscat_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">�޸Ŀ�վ����</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��������- 
              <input name="cscat_name" type="text" class="textarea" id="cscat_name" size="40" value="<%=rs("cscat_name")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> <input name="Submit" type="submit" class="button" id="Submit" value="ȷ���޸�"> 
              <input name="Reset" type="reset" class="button" id="Reset" value="�������"> </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("cscat_id")%>">
          <input type="hidden" name="action" value="editcscat">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.QueryString("action")="delcscat" then
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
opensites
sql="select * from cscat where cscat_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead">ɾ����վ����</td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��������- <%=rs("cscat_name")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" height="30" align="center"> 
              <input name="Submit" type="submit" class="button" id="Submit" value="ȷ��ɾ��">
            </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("cscat_id")%>">
          <input type="hidden" name="action" value="delcscat">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%end if
if request.querystring("action")="sites" then
opensites
sql="select * from coolsites order by cs_id desc"
if request.querystring("cscat_id")<>"" then
sql="select * from coolsites where cscat_id="&cint(request.querystring("cscat_id"))&" order by cs_id desc"
end if
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
totalcs=rs.recordcount
%>
 <table width="98%" border="0" cellspacing="1" cellpadding="0" class="chinese">
	    <form name="form3" method="post" action="">
        <tr>
          <td align="right">
              <select name="go" onChange='window.location=form.go.options[form.go.selectedIndex].value'>
			  <option value="">ѡ����ʾ��ʽ</option>
			  <option value="admin_coolsites.asp?action=sites">��ʾ���п�վ</option>
<%sql="select * from cscat"
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof%>
<option value="admin_coolsites.asp?action=sites&cscat_id=<%=rs2("cscat_id")%>"><%=rs2("cscat_name")%></option>
<%rs2.movenext
loop
if rs2.bof and rs2.eof then%><option value="">��ǰû�з���</option>
<%end if
rs2.close
set rs2=nothing%>
              </select>
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
                <td bgcolor="#FFFFFF" align="center"><img src="<%=rs("cs_pic")%>"></td>
              </tr>
            </table>
          </td>
          <td width="63%" class="chinese">��վ���ƣ�<%=rs("cs_name")%><br>
            ��վ��ַ��<a href="redirectcs.asp?cs_id=<%=rs("cs_id")%>" target="_blank"><%=rs("cs_url")%></a><br>
            ����ʱ�䣺<%=rs("cs_date")%><br>
            ���������<%=rs("cs_count")%><br>
            <a href="admin_coolsites.asp?id=<%=rs("cs_id")%>&action=editcs">edit</a> 
            <a href="admin_coolsites.asp?id=<%=rs("cs_id")%>&action=delcs">del</a></td>
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
          <td bgcolor="#FFFFFF" colspan="2" height="22" align="center" class="chinese">��ǰû�п�վ��</td>
        </tr>
      </table>
      <%end if
end if%>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form1" method="post" action="admin_coolsites.asp?action=sites&cscat_id=<%=request.querystring("cscat_id")%>">
          <tr> 
            <td align="right"> <%=currentpage%> /<%=totalpages%>ҳ,<%=totalcs%>����¼/<%=coolsitesperpage%>ƪÿҳ. 
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
              <a href="admin_coolsites.asp?action=sites&page=<%=i%>&cscat_id=<%=request.querystring("cscat_id")%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="admin_coolsites.asp?action=sites&page=<%=page%>&cscat_id=<%=request.querystring("cscat_id")%>" title="��һҳ">>></a> 
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
            <td colspan="2" class="diaryhead">������վ</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ������</td>
            <td class="chinese" width="83%"> 
              <input type="text" name="name" class="textarea" size="40">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">��������</td>
            <td class="chinese" width="83%"> 
              <select name="cscatid" class="textarea">
<%
opensites
sql="select * from cscat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof%><option value="<%=rs("cscat_id")%>"><%=rs("cscat_name")%></option>
<%rs.movenext
loop
if rs.eof and rs.bof then%><option value="0">��ǰû�п�վ����</option>
<%end if%>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ���ַ</td>
            <td class="chinese" width="83%"> 
              <input type="text" name="url" class="textarea" size="60">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">ͼƬ��ַ</td>
            <td class="chinese" width="83%"> 
              <input type="text" name="pic" class="textarea" size="60">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ�����</td>
            <td class="chinese" width="83%"> 
              <textarea name="desc" class="textarea" cols="65" rows="6"></textarea>
            </td>
          </tr>
          <tr bgcolor="#E8E8E8" align="center"> 
            <td colspan="2" height="30" class="chinese"> 
              <input type="checkbox" name="isbest" value="1" class="textarea">
              �Ƽ�&nbsp;&nbsp;&nbsp; 
              <input type="submit" name="Submit" value="ȷ������" class="button">
              <input type="reset" name="Reset" value="�������" class="button">
              [<a href="admin_coolsites.asp?action=sites">����</a>] </td>
          </tr>
		  <input type="hidden" name="action" value="newcs">
		<input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%end if
	  if request.QueryString("action")="editcs" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������ID������"
	call diserror()
	response.end
  end if
end if
opensites
sql="select * from coolsites where cs_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="2" class="diaryhead">�޸Ŀ�վ</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ������</td>
            <td class="chinese" width="83%"> 
              <input name="name" type="text" class="textarea" id="name" size="40" value="<%=rs("cs_name")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">��������</td>
            <td class="chinese" width="83%"> 
              <select name="cscatid" class="textarea" id="cscatid">
                <%
opensites
sql="select * from cscat"
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof%>
                <option value="<%=rs2("cscat_id")%>" <%if rs2("cscat_id")=rs("cscat_id") then response.write "selected" end if%>><%=rs2("cscat_name")%></option>
                <%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
                <option value="0">��ǰû�п�վ����</option>
                <%end if%>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ���ַ</td>
            <td class="chinese" width="83%"> 
              <input name="url" type="text" class="textarea" id="url" size="60" value="<%=rs("cs_url")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">ͼƬ��ַ</td>
            <td class="chinese" width="83%"> 
              <input name="pic" type="text" class="textarea" id="pic" size="60" value="<%=rs("cs_pic")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ�����</td>
            <td class="chinese" width="83%"> 
              <textarea name="desc" cols="65" rows="6" class="textarea" id="desc"><%=rs("cs_desc")%></textarea>
            </td>
          </tr>
          <tr bgcolor="#E8E8E8" align="center"> 
            <td colspan="2" height="30" class="chinese"> <input name="isbest" type="checkbox" class="textarea" id="isbest" value="1" <%if rs("isbest")=1 then response.write "checked" end if%>>
              �Ƽ�
              <input name="Submit" type="submit" class="button" id="Submit" value="ȷ���޸�"> 
              <input type="reset" name="Reset" value="�������" class="button">
              [<a href="admin_coolsites.asp?action=sites">����</a>] </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("cs_id")%>">
          <input type="hidden" name="action" value="editcs">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.QueryString("action")="delcs" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������ID������"
	call diserror()
	response.end
  end if
end if
opensites
sql="select * from coolsites where cs_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form2" method="post" action="">
          <tr bgcolor="#eeeeee"> 
            <td colspan="2" class="diaryhead">ɾ����վ</td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ������</td>
            <td class="chinese" width="83%"> <%=rs("cs_name")%>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">��������</td>
            <td class="chinese" width="83%"> 
                <%
opensites
sql="select * from cscat where cscat_id="&rs("cscat_id")
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
%><%=rs2("cscat_name")%>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ���ַ</td>
            <td class="chinese" width="83%"><%=rs("cs_url")%>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">ͼƬ��ַ</td>
            <td class="chinese" width="83%"><img src="<%=rs("cs_pic")%>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" width="17%">վ�����</td>
            <td class="chinese" width="83%"><%=rs("cs_desc")%>
            </td>
          </tr>
          <tr bgcolor="#E8E8E8" align="center"> 
            <td colspan="2" height="30" class="chinese"> 
              <input name="isbest" type="checkbox" class="textarea" id="isbest" value="1" <%if rs("isbest")=1 then response.write "checked" end if%>>
              �Ƽ� 
              <input name="Submit" type="submit" class="button" id="Submit" value="ȷ��ɾ��">
              [<a href="admin_coolsites.asp?action=sites">����</a>] </td>
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