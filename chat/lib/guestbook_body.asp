<%
sub showgb_body()
dim totalgb,Currentpage,totalpages,i
opengb
sql="SELECT * FROM gb ORDER BY gb_id DESC"
if request("key")<>"" and request("colname")<>"" then
sql="select * from gb where "& request("colname") &" like '%"& request("key") &"%' order by gb_id desc"
end if
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<div align="center">
<table width="780" border="0" cellspacing="1" style="TABLE-LAYOUT: fixed; BORDER-COLLAPSE: collapse" bgcolor="#FFFFFF" >
  <tr> 
    <td width="560" valign="top"><br>
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td background="images/tablebg.gif"><a class=buttonview 
      onFocus=if(this.blur)this.blur() 
      href="New_gb.asp?action=gb" target=_self>发表留言</a> <a class=buttonview href="guestbook.asp" 
      target=_self>查看留言</a></td>
          <td background="images/tablebg.gif" align="right">查看:[ <a href="javascript:doZoom(16)">大字</a> 
            <a href="javascript:doZoom(14)">中字</a> <a href="javascript:doZoom(12)">小字</a> 
            ]</td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table>
      <!--tbody>
          <tr> 
            <td colspan="2" align=center></td>
          </tr-->
<TABLE width="96%" height=140 border=0 align="center" cellPadding=3 cellSpacing=0 borderColor=#111111 id=AutoNumber8 style="TABLE-LAYOUT: fixed; BORDER-COLLAPSE: collapse">
  <TBODY>
    <TR>
      <td valign=center colspan=2 id="zoom"> 
<%if not rs.eof then
rs.movefirst
rs.pagesize=gbperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalgb=rs.recordcount
   if currentpage<>1 then
       if (currentpage-1)*gbperpage<totalgb then
	       rs.move(currentpage-1)*gbperpage
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalgb mod gbperpage)=0 then
      totalpages=totalgb\gbperpage
   else
      totalpages=totalgb\gbperpage+1
   end if
i=0
do while not rs.eof and i<gbperpage
sql="select * from reply where gb_id="&rs("gb_id")
set rsrep=server.createobject("adodb.recordset")
rsrep.open sql,conn,1,1%><span class="line">
<a name="reply<%=i%>"> 
              <img src="images/b.gif" border="0">  <strong><%=keys(rs("gb_poster"))%></strong> 
                <%if rs("gb_posterfrom")<>"" then%>
                <font color=#BCBCBC><%=rs("gb_posterfrom")%></font>
                <%end if%>
                <%if rs("gb_postersex")=0 then%>
                <img src="images/plus.gif" alt="帅哥" border="0"> 
                <%else%>
                <img src="images/plus.gif" alt="美女" border="0"> 
                <%end if
				response.write "<font color=#cccccc>"&rs("gb_posterip")&"</font>"%>
                <%if rs("gb_posteremail")<>"" then%>
                <a href="mailto:<%=rs("gb_posteremail")%>" target="_blank"><img src="images/email.gif"  alt="<%=rs("gb_posteremail")%>" border="0"></a> 
                <%end if%>
                <%if rs("gb_posterhome")<>"" then%>
                <a href="<%=rs("gb_posterhome")%>" target="_blank"><img src="images/homepage.gif"  alt="<%=rs("gb_posterhome")%>" border="0"></a> 
                <%end if%>
                <%if rs("gb_posterqq")<>"" then%>
                <a href="http://search.tencent.com/cgi-bin/friend/user_show_info?ln=<%=rs("gb_posterqq")%>" target="_blank"><img src="images/profile.gif" alt="qq:<%=rs("gb_posterqq")%>" border="0"></a> 
                <%end if%><BR>
              </a> <%=keys(ubb2html(formatStr(autourl(rs("gb_content"))), true, true))%> <BR>
              <font color=#cccccc><%=rs("gb_date")%> (<%=rs("gb_id")%>)</font><%if session("adminlogin")=sessionvar then
%> <a href="New_gb.asp?action=rep&gb_id=<%=rs("gb_id")%>"><img src="images/gb_comment.gif" alt="回复" border="0" align="middle"></a> 
                <a href="delgb.asp?id=<%=rs("gb_id")%>">del</a><%end if%>                <br>
              <%if not rsrep.eof then
			dim totalrep,Currentreppage,totalreppages,j
rsrep.movefirst
rsrep.pagesize=gbrepperpage
reppage="reppage"&i
if trim(request(reppage))<>"" then
   currentreppage=clng(request(reppage))
   if currentreppage>rsrep.pagecount then
      currentreppage=rsrep.pagecount
   end if
else
   currentreppage=1
end if
   totalrep=rsrep.recordcount
   if currentreppage<>1 then
       if (currentreppage-1)*gbrepperpage<totalrep then
	       rsrep.move(currentreppage-1)*gbrepperpage
		   dim repbookmark
		   repbookmark=rsrep.bookmark
	   end if
   end if
   if (totalrep mod gbrepperpage)=0 then
      totalreppages=totalrep\gbrepperpage
   else
      totalreppages=totalrep\gbrepperpage+1
   end if
j=0
do while not rsrep.eof and j<gbrepperpage
k=j+1%>
              <img src="images/r.gif" border="0"> <%=rsrep("rep_poster")%> <font color=#dddddd><%=rsrep("rep_date")%></font><br>
              <%=ubb2html(formatStr(autourl(rsrep("rep_content"))), true, true)%>
              
              <%j=j+1
			rsrep.movenext
loop
end if
%><br><img src="images/plus.gif" border="0">共有<%=rsrep.recordcount%>条回复 
                <%if rsrep.recordcount<>0 then
j=1
for j=1 to totalreppages%>
                <%
if j=currentreppage then
%>
                <font color=#eeeeee><b><%=j%> </b></font>
                <%else
			  if request("page")<>"" then
			  %>
                <a href="guestbook.asp?page=<%=request("page")%>&<%=reppage%>=<%=j%>#reply<%=i%>"><font color=red><b>[<%=j%>]</b></font></a> 
                <%else%>
                <a href="guestbook.asp?<%=reppage%>=<%=j%>#reply<%=i%>"><font color=red><b>[<%=j%>]</b></font></a> 
                <%end if
			  end if
next
end if%><hr color=#dddddd size=1></span>
<%
rsrep.close
set rsrep=nothing
i=i+1
rs.movenext
loop
%>
            </TD>
    </TR>
  </TBODY>
</TABLE>
<%
else
if rs.eof and rs.bof then
%> <table cellspacing=0 width="92%" align=center border=0 style="TABLE-LAYOUT: fixed; BORDER-COLLAPSE: collapse">
          <tr> 
            <td valign=center colspan=2 align="center" height="30"> <p 
      class=entry2text>系统找不到您所要查询的记录！</p></td>
          </tr>
		  </table>
          <%
end if
end if
rs.close
set rs=nothing
%> <table cellspacing=0 width="92%" align=center border=0 style="TABLE-LAYOUT: fixed; BORDER-COLLAPSE: collapse">
          <tr> 
            <td colspan=2> 
              共有<strong> 
              <%if totalgb<>"" then response.write totalgb else response.write "0" end if%>
              </strong>条留言|<strong> 
              <%if totalpages<>"" then response.write totalpages else response.write "0" end if%>
              </strong>页<strong> 
              <%
i=1
for i=1 to totalpages
if i=currentpage then
%>
              <%=i%> 
              <%else
			  if request("key")<>"" and request("colname")<>"" then%>
              </strong>[<strong><a href="guestbook.asp?page=<%=i%>&key=<%=request("key")%>&colname=<%=request("colname")%>"><%=i%></a></strong>]<strong> 
              <%else%>
              </strong>[<strong><a href="guestbook.asp?page=<%=i%>"><%=i%></a></strong>]<strong> 
              <%end if
			  end if
next%>
              </strong> </td>
          </tr>
      </table>
    </td>
	<td align="center" valign="top" background="images/dotlinev.gif" width="1"></td>
    <td width="213" valign="top">
	<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01f.gif"><br>
            :::<strong>留言搜索</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr><form name=search action="guestbook.asp">
        <tr> 
            <td align="center" height="106" class="chinese"> <select name="colname">
                <option value="gb_poster">留 言 者</option>
                <option value="gb_content">留言内容</option>
              </select>
              <br><br>
              <input 
      name=key class="input2" 
      title=" You can search the entire guestbook &#13; To leave search mode &#13; Search an empty string or &#13; Click the ALL link that will show up below " size="14" maxlength="50">
              <br><br>
              <input class=input type=submit value=搜索 name="submit">
            </td>
        </tr></form>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table></td>
  </tr>
</table>
</div>

<%end sub%>