<%sub delgb()
opengb
sql="select * from gb where gb_id=" & request("gb_id") & ""
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
sql="select * from admin"
set rs2=conn.execute(sql)
if request.cookies("NGB")("adminname")=rs2("admin_name") and request.cookies("NGB")("adminpwd")=rs2("admin_password") then
ivalue=request.cookies("NGB")("adminpwd")
else
ivalue=""
end if%>
<FORM action=del_gb.asp method=post>
  <TABLE width="90%" align=center border=0>
    <TBODY> 
    <TR> 
      <TD> 
        <P><A class=buttonview href="guestbook.asp" 
      target=_self>察看留言 </A> <A class=buttonview href="index.asp" 
      target=_self>站点首页 </A></P>
        <P class=messagetext>删除<STRONG> <%=rs("gb_poster")%></STRONG>.<BR>
          请在下面输入管理密码.<BR>
          <BR>
          <INPUT type=password maxLength=20 name=adminpwd class="input2" value="<%=ivalue%>">
        </P>
        <P> 
          <INPUT class=buttonsend type=submit value=继续>
          <input type="hidden" name="MM_delete" value="true">
          <input type="hidden" name="MM_recordId" value="<%=request("gb_id")%>">
        </P>
      </TD>
    </TR>
    </TBODY> 
  </TABLE>
</FORM>
<table width="100%" border="0" cellspacing="1" bgcolor="#e9e9e9">
  <tr> 
    <td> 
      <table cellspacing=0 width="90%" align=center border=0>
        <tbody> 
        <%
sql="select * from reply where gb_id="&rs("gb_id")
set rsrep=server.createobject("adodb.recordset")
rsrep.open sql,conn,1,1%>
        <tr> 
          <td valign=center colspan=2> 
            <p class=entry1header><strong><%=rs("gb_poster")%></strong> 
              <%if rs("gb_posterfrom")<>"" then%>
              (<%=rs("gb_posterfrom")%>) 
              <%end if%>
              <%if rs("gb_postersex")=0 then%>
              <img src="<%=themepath%>/gb_male.gif" width="18" height="14" align="middle" alt="帅哥" border="0"> 
              <%else%>
              <img src="<%=themepath%>/gb_female.gif" width="18" height="14" align="middle" alt="美女" border="0"> 
              <%end if%>
              <%if rs("gb_posteremail")<>"" then%>
              <a href="<%=rs("gb_posteremail")%>" target="_blank"><img src="<%=themepath%>/gb_email.gif" width="18" height="14" align="middle" alt="<%=rs("gb_posteremail")%>" border="0"></a> 
              <%end if%>
              <%if rs("gb_posterhome")<>"" then%>
              <a href="<%=rs("gb_posterhome")%>" target="_blank"><img src="<%=themepath%>/gb_homepage.gif" width="18" height="14" align="middle" alt="<%=rs("gb_posterhome")%>" border="0"></a> 
              <%end if%>
              <%if rs("gb_posterqq")<>"" then%>
              <a href="http://search.tencent.com/cgi-bin/friend/user_show_info?ln=<%=rs("gb_posterqq")%>"><img src="<%=themepath%>/qq-gray.gif" width="16" height="16" align="middle" alt="qq:<%=rs("gb_posterqq")%>" border="0"></a> 
              <%end if%>
            </p>
            <p 
      class=entry2text><%=ubb2html(formatStr(autourl(rs("gb_content"))), true, true)%> 
            <p class=entry3date><%=rs("gb_date")%> &nbsp;(<%=rs("gb_id")%>) &nbsp;<a href="New_gb.asp?action=rep&gb_id=<%=rs("gb_id")%>"><img src="<%=themepath%>/gb_comment.gif" alt="回复" border="0" align="middle"></a> 
              <a href="Del_gb.asp?gb_id=<%=rs("gb_id")%>"><img src="<%=themepath%>/gb_trash.gif" alt="删除" border="0" align="middle"></a></p>
            <%
do while not rsrep.eof%>
            <p class=comment1header><%=rsrep("rep_poster")%> 回复</p>
            <p class=comment2text><%=ubb2html(formatStr(autourl(rsrep("rep_content"))), true, true)%></p>
            <p class=comment3date><%=rsrep("rep_date")%></p>
            <%
			rsrep.movenext
loop
%>
          </td>
        </tr>
        </tbody> 
      </table>
    </td>
  </tr>
</table>
<%
rs2.close
set rs2=nothing
rsrep.close
set rsrep=nothing
rs.close
set rs=nothing
end sub%>
