<%sub adminfriendlink_body()
opensites
sql="select * from flcat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
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
          <td bgcolor="#E8E8E8" width="34%" class="chinese" background="images/pic000/c007.jpg"><a href="admin_friendlink.asp">���ӷ������</a></td>
          <td bgcolor="#E8E8E8" width="33%" class="chinese" background="images/pic000/c007.jpg"><a href="admin_friendlink.asp?action=link">���ӹ���</a></td>
          <%dim passing
		  sql="select fl_id from friendlink where passed=1"
		  set rs2=server.createobject("adodb.recordset")
		  rs2.open sql,conn,1,1
		  passing=rs2.recordcount
		  rs2.close
		  set rs2=nothing%>
		  <td bgcolor="#E8E8E8" width="33%" class="chinese" background="images/pic000/c007.jpg"><a href="admin_friendlink.asp?action=check">�������(�������:<span class="newshead"><%=passing%></span>)</a></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
	  <%if request.querystring("action")="" then%>
      <table width="98%" border="1" cellspacing="0" cellpadding="4" bordercolor="#C0C0C0" style="border-collapse: collapse">
        <tr> 
          <td colspan="3" class="diaryhead" background="images/pic000/c005.jpg">
          <font color="#333333">���ӷ������</font></td>
        </tr>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td width="10%" class="chinese">���</td>
          <td width="70%" class="chinese">��������</td>
          <td width="20%" class="chinese">����</td>
        </tr>
<%do while not rs.eof%>
        <tr bgcolor="#FFFFFF"> 
          <td align="center" class="chinese"><%=rs("flcat_id")%>��</td>
          <td class="chinese"><%=rs("flcat_name")%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#ff6600"><%if rs("isimage")=1 then response.write "�ı�����" end if%></font></td>
          <td align="center" class="chinese"><a href="admin_friendlink.asp?id=<%=rs("flcat_id")%>&action=editflcat">edit</a> 
            <a href="admin_friendlink.asp?id=<%=rs("flcat_id")%>&action=delflcat">del</a></td>
        </tr>
<%rs.movenext
loop
if rs.bof and rs.eof then%>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td colspan="3" class="chinese">��ǰû�����ӷ��࣡</td>
        </tr>
<%end if%>
      </table>
      <br>
      <table width="98%" border="1" cellspacing="0" cellpadding="4" bordercolor="#C0C0C0" style="border-collapse: collapse">
        <form name="form1" method="post" action="">
		<tr> 
          <td class="diaryhead" background="images/pic000/c005.jpg">
          <font color="#333333">�������ӷ���</font></td>
        </tr>
        <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��������-
              <input type="text" name="flcat_name" size="40" class="textarea">
              &nbsp;&nbsp;&nbsp;
              <input type="checkbox" name="isimage" value="1" class="textarea">
              �ı�����</td>
        </tr>
        <tr> 
            <td bgcolor="#F5F5F5" height="30" align="center">
              <input type="submit" name="Submit" value="ȷ������" class="button">
              <input type="reset" name="Reset" value="�������" class="button">
            </td>
        </tr>
		<input type="hidden" name="action" value="newflcat">
		<input type="hidden" name="MM_insert" value="true">
		</form>
      </table>
	  <%end if
	  if request.querystring("action")="editflcat" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ������ӷ���ID������"
	call diserror()
	response.end
  end if
end if
sql="select * from flcat where flcat_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
	  <table width="98%" border="1" cellspacing="0" cellpadding="4" bordercolor="#C0C0C0" style="border-collapse: collapse">
        <form name="form1" method="post" action="">
          <tr> 
            <td class="diaryhead" background="images/pic000/c005.jpg">
            <font color="#333333">�޸����ӷ���</font></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��������- 
              <input type="text" name="flcat_name" size="40" class="textarea" value="<%=rs("flcat_name")%>">
			  &nbsp;&nbsp;&nbsp;
              <input type="checkbox" name="isimage" value="1" class="textarea" <%if rs("isimage")=1 then response.write "checked" end if%>>
              �ı����� </td>
          </tr>
          <tr> 
            <td bgcolor="#F5F5F5" height="30" align="center"> 
              <input type="submit" name="Submit" value="ȷ���޸�" class="button">
              <input type="reset" name="Reset" value="�������" class="button">
            </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("flcat_id")%>">
          <input type="hidden" name="action" value="editflcat">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.querystring("action")="delflcat" then
	  if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>�Ƿ������ӷ���ID������"
	call diserror()
	response.end
  end if
end if
sql="select * from flcat where flcat_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="1" cellspacing="0" cellpadding="4" bordercolor="#C0C0C0" style="border-collapse: collapse">
        <form name="form1" method="post" action="">
          <tr> 
            <td class="diaryhead" background="images/pic000/c005.jpg">
            <font color="#333333">ɾ�����ӷ���</font></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��������- <%=rs("flcat_name")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#F5F5F5" height="30" align="center"> 
              <input type="submit" name="Submit" value="ȷ��ɾ��" class="button">
            </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("flcat_id")%>">
          <input type="hidden" name="action" value="delflcat">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%end if
	  if request.querystring("action")="link" then
sql="select * from friendlink where passed=0 order by fl_id desc"
if request.querystring("flcat_id")<>"" then
sql="select * from friendlink where flcat_id="&cint(request.querystring("flcat_id"))&" and passed=0 order by fl_id desc"
end if
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
      <table width="98%" border="0" cellspacing="1" cellpadding="0" class="chinese">
	    <form name="form3" method="post" action="">
        <tr>
          <td align="right">
            <select name="go" onChange='window.location=form.go.options[form.go.selectedIndex].value'>
			  <option value="">ѡ����ʾ��ʽ</option>
			  <option value="admin_friendlink.asp?action=link">��ʾ��������</option>
<%sql="select * from flcat"
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof%>
<option value="admin_friendlink.asp?action=link&flcat_id=<%=rs2("flcat_id")%>"><%=rs2("flcat_name")%></option>
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
      <table width="98%" border="1" cellspacing="0" cellpadding="4" bordercolor="#C0C0C0" style="border-collapse: collapse">
        <tr> 
          <td colspan="3" class="diaryhead" background="images/pic000/c005.jpg">
          <font color="#333333">���ӹ���</font></td>
        </tr>
        <tr bgcolor="#FFFFFF" align="center"> 
          <td width="10%" class="chinese">���</td>
          <td width="70%" class="chinese">��������</td>
          <td width="20%" class="chinese">����</td>
        </tr>
<%if not rs.eof then
rs.movefirst
rs.pagesize=adflperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalfl=rs.recordcount
   if currentpage<>1 then
       if (currentpage-1)*adflperpage<totalfl then
	       rs.move(currentpage-1)*adflperpage
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalfl mod adflperpage)=0 then
      totalpages=totalfl\adflperpage
   else
      totalpages=totalfl\adflperpage+1
   end if
i=0
do while not rs.eof and i<adflperpage
sql="select flcat_name from flcat where flcat_id="&rs("flcat_id")
set rs2=conn.execute(sql)%>
        <tr bgcolor="#FFFFFF"> 
          <td class="chinese" align="center"><%=rs("fl_id")%>��</td>
          <td class="chinese"><a href="<%=rs("fl_url")%>" title="<%=rs("fl_url")%>" target="_blank"><%=rs("fl_name")%></a>  &nbsp;&nbsp;��������-<font color="#ff6600"><%=rs2("flcat_name")%>&nbsp;&nbsp;
              <%if rs("fl_logo")<>"" then response.write "<img src='"&rs("fl_logo")&"'>" else response.write "<font color='#ff6600'>��Logo</font>" end if%>
              </font></td>
          <td class="chinese" align="center"><a href="admin_friendlink.asp?id=<%=rs("fl_id")%>&action=editfl">edit</a> 
            <a href="admin_friendlink.asp?id=<%=rs("fl_id")%>&action=delfl">del</a></td>
        </tr>
<%
i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then
%>
        <tr bgcolor="#FFFFFF"> 
          <td colspan="3" class="chinese" align="center">��ǰ��û�����ӣ�</td>
        </tr>
<%end if
end if%>
      </table>
	  <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form1" method="post" action="admin_friendlink.asp?action=link&flcat_id=<%=request.querystring("cscat_id")%>">
          <tr> 
            <td align="right"> <%=currentpage%> /<%=totalpages%>ҳ,<%=totalfl%>����¼/<%=adflperpage%>ƪÿҳ. 
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
              <%else
                if request.querystring("action")="link" then%>
<a href="admin_friendlink.asp?action=link&page=<%=i%>"><%=i%></a> 
              <%else%>
              <a href="admin_friendlink.asp?action=sites&page=<%=i%>&flcat_id=<%=request.querystring("cscat_id")%>"><%=i%></a> 
              <%
               end if
             end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="admin_friendlink.asp?action=link&page=<%=page%>&flcat_id=<%=request.querystring("cscat_id")%>" title="��һҳ">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button">
            </td>
          </tr>
        </form>
      </table>
	  <%end if
	  if request.querystring("action")="editfl" then
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
sql="select * from friendlink where fl_id="&cint(request.querystring("id"))
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1%>
	  <table width="98%" border="1" cellspacing="0" cellpadding="3" class="chinese" bordercolor="#C0C0C0" style="border-collapse: collapse">
        <form name="form1" method="post" action="">
          <tr> 
            <td class="diaryhead" background="images/pic000/c005.jpg">
            <font color="#333333">�޸�����</font></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF"> ѡ����� 
              <select name="flcat_id" id="flcat_id">
                <%sql="select * from flcat"
set rs=server.CreateObject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
%>
                <option value="<%=rs("flcat_id")%>" <%if rs("flcat_id")=rs2("flcat_id") then response.write "selected" end if%>><%=rs("flcat_name")%></option>
                <%rs.movenext
loop%>
              </select>
              <br>
              վ������ 
              <input type="text" name="fl_name" size="40" class="textarea" value="<%=rs2("fl_name")%>">
              <br>
              վ���ַ 
              <input type="text" name="fl_url" size="40" class="textarea" value="<%=rs2("fl_url")%>">
              <br>
              Logo��ַ 
              <input type="text" name="fl_logo" size="40" class="textarea" value="<%=rs2("fl_logo")%>">
            </td>
          </tr>
          <tr> 
            <td align="center" bgcolor="#F5F5F5"> 
              <input type="submit" name="Submit" value="ȷ���޸�" class="button">
              <input type="reset" name="reset" value="�������" class="button">
            </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs2("fl_id")%>">
		  <input type="hidden" name="flcatid" value="<%=rs2("flcat_id")%>">
		  <input type="hidden" name="action" value="editfl">
		  <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
	  if request.querystring("action")="delfl" then
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
sql="select * from friendlink where fl_id="&cint(request.querystring("id"))
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1%>
      <table width="98%" border="1" cellspacing="0" cellpadding="3" class="chinese" bordercolor="#C0C0C0" style="border-collapse: collapse">
        <form name="form1" method="post" action="">
          <tr> 
            <td class="diaryhead" background="images/pic000/c005.jpg">
            <font color="#333333">ɾ������</font></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF"> �������: 
                <%sql="select * from flcat where flcat_id="&rs2("flcat_id")
set rs=server.CreateObject("adodb.recordset")
rs.open sql,conn,1,1
%><%=rs("flcat_name")%>
              <br>
              վ������: <%=rs2("fl_name")%>
              <br>
              վ���ַ: <%=rs2("fl_url")%>
              <br>
              Logo��ַ: <%=rs2("fl_logo")%>
            </td>
          </tr>
          <tr> 
            <td align="center" bgcolor="#F5F5F5"> 
              <input type="submit" name="Submit" value="ȷ��ɾ��" class="button">
            </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs2("fl_id")%>">
          <input type="hidden" name="action" value="delfl">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%end if
	  if request.querystring("action")="check" then
sql="select * from friendlink where passed=1"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
      <table width="98%" border="1" cellspacing="0" cellpadding="4" bordercolor="#C0C0C0" style="border-collapse: collapse">
        <form name="form2" method="post" action="checklink.asp">
          <tr> 
            <td colspan="4" class="diaryhead" background="images/pic000/c005.jpg">
            <font color="#333333">�������(�������:<%=passing%>)</font></td>
          </tr>
          <tr bgcolor="#FFFFFF" align="center"> 
            <td class="chinese" width="10%">���</td>
            <td class="chinese" width="60%">��������</td>
            <td class="chinese" width="15%">ͨ��</td>
            <td class="chinese" width="15%">ɾ��</td>
          </tr>
          <%for i=1 to rs.recordcount
sql="select flcat_name from flcat where flcat_id="&rs("flcat_id")
set rs2=conn.execute(sql)%>
          <tr bgcolor="#FFFFFF"> 
            <td class="chinese" align="center"><%=rs("fl_id")%>��</td>
            <td class="chinese"><a href="<%=rs("fl_url")%>" title="<%=rs("fl_url")%>" target="_blank"><%=rs("fl_name")%></a> &nbsp;&nbsp;�ύ��<font color="#ff6600"><%=rs2("flcat_name")%>&nbsp;&nbsp;
              <%if rs("fl_logo")<>"" then response.write "<img src='"&rs("fl_logo")&"'>" else response.write "<font color='#ff6600'>��Logo</font>" end if%>
              </font></td>
            <td class="chinese" align="center"> <a href="checklink.asp?id=<%=rs("fl_id")%>&action=pass">pass</a></td>
            <td class="chinese" align="center"> <a href="checklink.asp?id=<%=rs("fl_id")%>&action=del">del</a></td>
          </tr>
          <%rs.movenext
next
if rs.bof and rs.eof then%>
          <tr bgcolor="#FFFFFF" align="center"> 
            <td colspan="4" class="chinese">��ǰû�д���˵����ӣ�</td>
          </tr>
          <%end if%>
          <input type="hidden" name="action" value="check">
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