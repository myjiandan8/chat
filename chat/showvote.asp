<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->

<%
dim itemid,founderr,errmsg,itemname
founderr=false
errmsg=""

if request.querystring("vt_id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ָ��ͶƱ�����⣡"
else
  if not isInteger(request.querystring("vt_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ���ͶƱ�����id������"
  else
    vtid=cint(request.querystring("vt_id"))
  end if
end if

if founderr then
  call diserror()
  response.end
else
%>
<link rel="stylesheet" href="Sams.css" type="text/css">
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
  <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr> 
        <td height="40" align="right" background="images/lefttablo_01f.gif"><br>
          :::<strong>ͶƱ���</strong>:::&nbsp;&nbsp;&nbsp;</td>
      </tr>
    </table>
    <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
      <tr> 
        <td height="6"></td>
      </tr>
      <tr> 
        <td height="108" align="center"><table width="90%" border="0" cellpadding="0" cellspacing="2">
            <%
openadmin
sql="select vt_name from votetopic where vt_id="&vtid
set rs=conn.execute(sql)
%>
            <tr> 
              <td colspan="2"><%=rs("vt_name")%></td>
            </tr>
            <%sql="select * from voteitem where vt_id="&vtid
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
totalvote=0
rs2.movefirst
do while not rs2.eof
totalvote=totalvote+rs2("item_count")
rs2.movenext
loop
rs2.movefirst
do while not rs2.eof
%>
            <tr> 
              <td width="85" align="center"><%=rs2("item_name")%></td>
              <td width="96"><img src="images/votebar.gif" width="<%= FormatNumber((rs2("item_count")/totalvote*87),4) %>" height="12" title="<%=rs2("item_count")%>Ʊ"> <font color=#cccccc><%=rs2("item_count")%></font></td>
            </tr>
            <%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
            <tr> 
              <td colspan="2" align="center">��ǰû��ͶƱѡ�</td>
            </tr>
            <%end if
rs2.close
set rs2=nothing%>
            <tr> 
              <td height="30" colspan="2" align="center"> 
                <%if request.cookies("npw")("voted")<>"yes" then%>
                ����δͶƱ�� 
                <%else%>
                ���Ѿ�Ͷ��Ʊ�� 
                <%end if%>
                &nbsp;�ܼ�Ʊ��<span class="newshead"><%=totalvote%></span>Ʊ </td>
            </tr>
            <tr> 
              <td colspan="2" align="center">[<a href="javascript:window.close()">�رմ���</a>]</td>
            </tr>
          </table></td>
      </tr>
      <tr> 
        <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
      </tr>
    </table>
    </center>
</div>
</body>
<%
end if
%>