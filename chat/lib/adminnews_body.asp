<%sub adminnews_body()
dim totalnews,Currentpage,totalpages,i
opennews
sql="select * from news order by news_id DESC"
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
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="6"><table width="98%" border="0" align="center" cellpadding="8" cellspacing="1" bgcolor="#C7C7C7">
              <tr align="center" bgcolor="#E8E8E8"> 
                <td width="50%" class="chinese"><a href="admin_news.asp">���Ź���</a></td>
                <td width="50%" class="chinese"><a href="admin_news.asp?action=newnews#newnews">��������</a></td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="6"></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#eeeeee"> 
          <td colspan="3" class="diaryhead">���Ź���</td>
        </tr>
        <tr bgcolor="#E8E8E8" align="center"> 
          <td class="chinese" width="10%">���</td>
          <td class="chinese" width="70%">����&amp;����ʱ��</td>
          <td class="chinese" width="20%">����</td>
        </tr>
<%if not rs.eof then
rs.movefirst
rs.pagesize=newsperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalnews=rs.recordcount
   if currentpage<>1 then
       if (currentpage-1)*newsperpage<totalnews then
	       rs.move(currentpage-1)*newsperpage
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalnews mod newsperpage)=0 then
      totalpages=totalnews\newsperpage
   else
      totalpages=totalnews\newsperpage+1
   end if
i=0
do while not rs.eof and i<newsperpage%>
        <tr> 
          <td bgcolor="#FFFFFF" class="chinese" align="center"><%=rs("news_id")%></td>
          <td bgcolor="#FFFFFF" class="chinese"><a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank"><%=rs("news_title")%></a> <span class="date"><%=rs("news_date")%></span></td>
          <td bgcolor="#FFFFFF" class="chinese" align="center"><a href="admin_news.asp?id=<%=rs("news_id")%>&action=editnews#editnews">edit</a> 
            <a href="admin_news.asp?id=<%=rs("news_id")%>&action=delnews#delnews">del</a> <a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank">view</a></td>
        </tr>
<%i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then%>
        <tr align="center"> 
          <td bgcolor="#FFFFFF" colspan="3" class="chinese">��ǰû�����ţ�</td>
        </tr>
<%end if
end if%>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
	    <form name="form2" method="post" action="admin_news.asp">
        <tr>
          <td class="chinese" align="right"><%=currentpage%> /<%=totalpages%>ҳ,<%=totalnews%>����¼/<%=newsperpage%>ƪÿҳ. 
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
              <a href="admin_news.asp?page=<%=i%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="admin_news.asp?page=<%=page%>" title="��һҳ">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button"></td>
        </tr>
		</form>
      </table>
      <br>
	  <%if request.QueryString("action")="newnews" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="newnews">�µ�����</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input type="text" name="news_author" size="20" class="textarea"> 
              &nbsp;<a href="javascript:setAuthor1('δ֪')">δ֪</a>&nbsp;<a href="javascript:setAuthor1('����')">����</a>&nbsp; �ؼ���- 
              <input type="text" name="news_keyword" size="20" class="textarea"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��Դ- 
              <input type="text" name="news_ahome" class="textarea" size="50" value="�ͼ�Ʒ�� ��������----�������  mz126.com xzggg "> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input type="text" name="news_title" class="textarea" size="50"> 
            </td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF" class="chinese">&nbsp;&nbsp;<a href="javascript" onclick="window.open('news_pic.asp','newwin','width=300,height=140');return false;"><font color="#FF0000"><strong>�ϴ�ͼƬ</strong></font> </a> &nbsp;<%=request.cookies("0")%></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">
              <%call ubbshow()%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"> <textarea name="news_content" cols="85" rows="12" class="textarea"></textarea> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" class="chinese" height="30" align="center"> 
              <input type="submit" name="Submit2" value="ȷ������" class="button"> 
              <input type="reset" name="Reset" value="�������" class="button"> </td>
          </tr>
          <input type="hidden" name="action" value="newnews">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
if request.QueryString("action")="editnews" then
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
sql="select * from news where news_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="editnews">�޸�����</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input type="text" name="news_author" size="20" class="textarea" value="<%=rs("news_author")%>"> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ؼ���- 
              <input type="text" name="news_keyword" size="20" class="textarea" value="<%=rs("news_keyword")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��Դ- 
              <input type="text" name="news_ahome" class="textarea" size="50" value="<%=rs("news_ahome")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- 
              <input type="text" name="news_title" class="textarea" size="50" value="<%=rs("news_title")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">
              <%call ubbshow()%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"> <textarea name="news_content" cols="85" rows="12" class="textarea" id="news_content"><%=rs("news_content")%></textarea> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" class="chinese" height="30" align="center"> 
              <input type="submit" name="Submit" value="ȷ���޸�" class="button"> 
              <input type="reset" name="Reset" value="�������" class="button">
              [<a href="admin_news.asp">����</a>] </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("news_id")%>">
		  <input type="hidden" name="action" value="editnews">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
if request.QueryString("action")="delnews" then
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
sql="select * from news where news_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="delnews" id="delnews">ɾ������</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- <%=rs("news_author")%> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ؼ���- <%=rs("news_keyword")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">��Դ- <%=rs("news_ahome")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">����- <%=rs("news_title")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"><%=ubb2html(formatStr(autourl(rs("news_content"))), true, true)%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" class="chinese" height="30" align="center"> 
              <input name="Submit" type="submit" class="button" id="Submit" value="ȷ��ɾ��"> 
              [<a href="admin_news.asp">����</a>] </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("news_id")%>">
          <input type="hidden" name="action" value="delnews">
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