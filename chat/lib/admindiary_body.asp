<%sub admindiary_body()
dim totaldiary,adperpage,Currentpage,totalpages,i
adperpage=15
opendiary
sql="select * from diary order by d_id DESC"
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
      <table width="98%" border="0" cellspacing="1" cellpadding="6" bgcolor="#C7C7C7">
        <tr bgcolor="#E8E8E8" align="center"> 
          <td class="chinese" width="50%"><a href="admin_diary.asp">日记管理</a></td>
          <td class="chinese" width="50%"><a href="admin_diary.asp?action=newdiary#newdiary">新增日记</a></td>
        </tr>
      </table>
      <table width="96%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="6"></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#eeeeee"> 
          <td colspan="3" class="diaryhead">日记管理</td>
        </tr>
        <tr align="center" bgcolor="#E8E8E8"> 
          <td class="chinese" width="10%">编号</td>
          <td class="chinese" width="70%">内容</td>
          <td class="chinese" width="20%">操作</td>
        </tr>
        <%if not rs.eof then
rs.Movefirst
rs.pagesize=adperpage
if trim(request("page"))<>"" then
    currentpage=clng(request("page"))
	if currentpage>rs.pagecount then
	   currentpage=rs.pagecount
	end if
else
    currentpage=1
end if
    totaldiary=rs.recordcount
	if currentpage<>1 then
	   if(currentpage-1)*adperpage<totaldiary then
	      rs.move(currentpage-1)*adperpage
		  dim bookmark
		  bookmark=rs.bookmark
	   end if
	end if
	if (totaldiary mod adperpage)=0 then
	   totalpages=totaldiary\adperpage
	else
	   totalpages=totaldiary\adperpage+1
	end if
i=0
do while not rs.eof and i<adperpage
%>
        <tr> 
          <td bgcolor="#FFFFFF" class="chinese" align="center"><%=rs("d_id")%></td>
          <td bgcolor="#FFFFFF" class="chinese"><a href="showdiary.asp?id=<%=rs("d_id")%>" target="_blank"><%=cutstr(formatstr(rs("d_content")),20,false,none)%></a> <span class="date"><%=rs("d_date")%></span></td>
          <td bgcolor="#FFFFFF" class="chinese" align="center"><a href="admin_diary.asp?id=<%=rs("d_id")%>&action=editdiary#editdiary">edit</a> 
            <a href="admin_diary.asp?id=<%=rs("d_id")%>&action=deldiary#deldiary">del</a> 
            <a href="showdiary.asp?id=<%=rs("d_id")%>" target="_blank">view</a></td>
        </tr>
        <%i=i+1
rs.movenext
loop
else
If rs.EOF And rs.BOF Then%>
        <tr> 
          <td bgcolor="#FFFFFF" class="chinese" colspan=3 align="center">当前还没有日记！</td>
        </tr>
        <%end if
end if%>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <form name="form2" method="post" action="admin_diary.asp">
          <tr> 
            <td class="chinese" align="right"><%=currentpage%>/<%=totalpages%>页,<%=totaldiary%>条记录/<%=adperpage%>篇每页. 
              <%
i=1
dy10=false
showye=totalpages
if showye>10 then
dy10=true
showye=10
end if
for i=1 to showye
if i=currentpage then
%>
              <%=i%> 
              <%else%>
              <a href="admin_diary.asp?page=<%=i%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="admin_diary.asp?page=<%=page%>" title="下一页">>></a>
              <%end if%>
            </td>
          </tr>
        </form>
      </table>
      <br>
      <%if request.querystring("action")="newdiary" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="newdiary">新的日记</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"> 
              <%call ubbshow()%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF"> 
              <textarea name="textfield" cols="85" rows="19" class="textarea" wrap="VIRTUAL"></textarea>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" align="center" height="30"> 
              <input type="submit" name="Submit" value="确定新增" class="button">
              <input type="reset" name="Reset" value="清空重写" class="button">
            </td>
          </tr>
          <input type="hidden" name="action" value="newdiary">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%end if
if request.querystring("action")="editdiary" then
if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的日记ID参数！"
	call diserror()
	response.end
  end if
end if
sql="select * from diary where d_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="editdiary">修改日记</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"> 
              <%call ubbshow()%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF"> 
              <textarea cols="85" rows="19" class="textarea" wrap="VIRTUAL" name="textfield"><%=rs("d_content")%></textarea>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" align="center" height="30"> 
              <input type="submit" name="Submit" value="确定修改" class="button">
              <input type="reset" name="Reset" value="清空重写" class="button">
            </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("d_id")%>">
          <input type="hidden" name="action" value="editdiary">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
      <%end if
if request.querystring("action")="deldiary" then
if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的日记ID参数！"
	call diserror()
	response.end
  end if
end if
sql="select * from diary where d_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
	  %>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863" class="chinese">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="deldiary">删除日记</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF"><%=ubb2html(formatStr(autourl(rs("d_content"))), true, true)%>
			<div align="right"><br>
        <br>
        <img src="images/SIGN.GIF" width="299" height="12"><br>
        第<span class="newshead"><%=rs("d_id")%></span>篇，发表于-<span class="newshead"><%=rs("d_date")%></span></div></td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" align="center" height="30"> 
              <input type="submit" name="Submit" value="确定删除" class="button">
              [<a href="admin_diary.asp">返回</a>] </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("d_id")%>">
          <input type="hidden" name="action" value="deldiary">
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