<%sub index_diary()
dim totaldiary,Currentpage,totalpages,i
opendiary
sql="select * from diary order by d_date DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<table width="100%" border="0" cellspacing="1">
  <tr> 
    <td height="8"></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="38%" background="images/tablebg.gif" class="newshead">&nbsp;::::: 
      心情日记 ::::::</td>
    <td width="54%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" align="center" cellpadding="0" bgcolor="#E7E3E7">
  <%if not rs.eof then
rs.Movefirst
rs.pagesize=diaryperpage
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
	   if(currentpage-1)*diaryperpage<totaldiary then
	      rs.move(currentpage-1)*diaryperpage
		  dim bookmark
		  bookmark=rs.bookmark
	   end if
	end if
	if (totaldiary mod diaryperpage)=0 then
	   totalpages=totaldiary\diaryperpage
	else
	   totalpages=totaldiary\diaryperpage+1
	end if
i=0
do while not rs.eof and i<diaryperpage
url="viewdia.asp?d_id="&rs("d_id")%>
  <tr> 
    <td bgcolor="#FFFFFF" align="right"> 
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="8" colspan="3"></td>
        </tr>
        <tr> 
          <td width="35%" rowspan="2" align="center" class="chinese"><img src="img/0114.GIF" width="37" height="18"><a href="rising">&nbsp;&nbsp;瑞星升级请进<br>
            <br>
            </a><img src="img/0114.GIF" width="37" height="18"> <a href="http://www.liaowan.com/xzg/guestbook.asp">免费QQ号</a></td>
          <td width="3%" rowspan="2" class="chinese">&nbsp;</td>
          <td class="chinese"><%=ubb2html(cutstr(formatStr(autourl(rs("d_content"))),700,true,url), true, true)%></td>
        </tr>
        <tr> 
          <td width="62%" class="chinese"><br>
      <img src="images/sign.gif"><br>
      <!--a href="showdiary.asp?id=<%=rs("d_id")%>" target="_blank" title="点击打开新窗口查看！">第<%=rs("d_id")%>篇</a-->发表于<%=rs("d_date")%></td>
        </tr>
      </table>
      </td>
  </tr>
  <%
i=i+1
rs.movenext
loop
else
If rs.EOF And rs.BOF Then%>
  <tr> 
    <td height="30" class="chinese" align="center" bgcolor="#E7E3E7">正在更新之中........</td>
  </tr>
  <%end if
end if%>
</table>
<table width="100%" border="0" cellspacing="0" align="center" cellpadding="0">
  <form name="form1" method="post" action="index.asp">
    <tr> 
      <td align="right"><!--%=currentpage%>/<%=totalpages%>页,<%=totaldiary%>条记录/<%=diaryperpage%>篇每页.--> 
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
        <font color=red><%=i%></font> 
        <%else%>
        <a href="index.asp?page=<%=i%>"><%=i%></a> 
        <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
repage=request("page")-1
page=request("page")+1
end if%>
        <a href="index.asp<%if repage<>"" then%>?page=<%=repage%><%end if%>" title="BACK"><img src="images/rebiao.gif" border="0"></a> <a href="index.asp?page=<%if request("page")="" then
		response.write "2" 
		else 
		response.write page
		end if%>" title="NEXT"><img src="images/biao.gif" border="0"></a>&nbsp; 
        <%end if%>
<%if dy10 then%> 
        <input type="text" name="page" class="input" size="2">
        <input type="submit" name="Submit" value="Go" class="input"></td>
        <%end if%>
    </tr>
  </form>
</table>
<%
rs.close
set rs=nothing
end sub%>
