<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<% '
Call quanxian(session("UID"),"admin",0)
Call OpenChatConn()
'ɾ����¼
if request("Delid")<>"" and request("queding")="" then  %>

<script language="vbscript">
	if msgbox ("���ɾ�����޷��ָ���ȷ��ɾ����",vbYesNo+vbQuestion,"ȷ��ɾ��")=vbYes then
	   window.location.href="list.asp?Delid=<%=request("Delid")%>&queding=OK"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<%
  response.end
end if
	
if request("Delid")<>"" and request("queding")<>""  then 
 
			sql="delete from ServerDB where sid="& request("Delid") &""
			Chatconn.Execute ( sql )

			
%>
<script language=vbs>
        MsgBox "�����ɹ���"	
</script>
	
<% end if %>
<html>
<head>
<title>�������Ƭ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
</HEAD>


<BODY bgcolor="#468ea3">


 <TABLE width="626" border="0" align="center" cellspacing="1" height="383">
             <TBODY>
             
<%

    sid=Request("sid")
    cid=Request("cid")

if cid=0 then
%>
             
             <TR align="center">
             <TD height="30" bgcolor="#145f74" width="622" colspan="5">
				<FONT color="#FFFFFF"><B>
				�����ݿ����������&nbsp; </B>
				<a target="_blank" href="edit.asp?cid=0&menu=add"><font color="#FFFFFF">�������������</font></a></FONT></TD></TR><TR>
             <TD align="center" width="33" nowrap bgcolor="#A5D0DC" height="23">
				<b>����</b></TD>
             <TD align="center" width="35" nowrap bgcolor="#A5D0DC" height="23">
				ID</TD>
             <TD align="center" width="124" nowrap bgcolor="#A5D0DC" height="23">
				<b>������</b></TD>
             <TD align="center" width="212" nowrap bgcolor="#A5D0DC" height="23">
				<b>WEBϵͳ��ַ</b></TD>
             <TD align="center" width="206" nowrap bgcolor="#A5D0DC" height="23">
				<b>����</b></TD>
				</TR>
				
<%
sql="select * from ServerDB where cid=0"
set rs=chatconn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="619" height="26" align="center" colspan="5" bgcolor="#FFFFFF">
            ����û����һ��������������� �������������!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
				<tr>
             <TD align="center" width="33" nowrap bgcolor="#FFFFFF" height="29">
             		<%=rs("webid")%>
				��</TD>
             <TD align="center" width="35" nowrap bgcolor="#FFFFFF" height="29">
             		��<%=rs("sid")%></TD>
             <TD align="center" width="124" nowrap bgcolor="#FFFFFF" height="29">
             		��<%=rs("chathostip")%></TD>
             <TD align="center" width="212" nowrap bgcolor="#FFFFFF" height="29">
             		<%=rs("websys")%>
				��</TD>
             <TD align="center" width="206" nowrap bgcolor="#FFFFFF" height="29">
				<a href="edit.asp?sid=<%=rs("sid")%>&menu=edit">�༭</a> 
				<a href="list.asp?Delid=<%=rs("sid")%>">ɾ��</a> ��Ϣͬ�� 
				<a href="list.asp?cid=<%=rs("sid")%>">�����ӷ�����</a></TD>
				</tr>


<% rs.moveNext
  loop
  rs.close
end if

%>
				
				
<%
else
	sql="select * from ServerDB where sid=" & cid
	set rs=chatconn.execute (sql)
	if rs.eof or err then errstr("�Ƿ�������") 
	Cserver=rs("chathostip")
	rs.close
%>


             <TR align="center">
             <TD height="30" bgcolor="#145f74" width="619" colspan="5">
				<font color="#FFFFFF"><b>[<%=Cserver%>]�������������&nbsp; </b><a href="edit.asp?cid=<%=cid%>&menu=add">
				<font color="#FFFFFF">���[<%=Cserver%>]���������</font></a></font></TD></TR><TR>
             <TD align="center" width="33" nowrap bgcolor="#A5D0DC" height="23">
				<b>����</b></TD>
             <TD align="center" width="35" nowrap bgcolor="#A5D0DC" height="23">
				ID</TD>
             <TD align="center" width="124" nowrap bgcolor="#A5D0DC" height="23">
				<b>������</b></TD>
             <TD align="center" width="212" nowrap bgcolor="#A5D0DC" height="23">
				<b>WEBϵͳ��ַ</b></TD>
             <TD align="center" width="206" nowrap bgcolor="#A5D0DC" height="23">
				<b>����</b></TD>
			</TR>
				
<%
sql="select * from ServerDB where cid=" & cid
set rs=chatconn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="619" height="29" align="center" colspan="5" bgcolor="#FFFFFF">
            ����û����һ��[<%=Cserver%>]�µ������������<font color="#FFFFFF"><a href="edit.asp?cid=<%=cid%>&menu=add">���[<%=Cserver%>]���������</a></font> </td>
     </tr>

<%
else
do while not (rs.eof or err)
%>

				<tr>
             <TD align="center" width="33" nowrap bgcolor="#FFFFFF" height="26">
             		<%=rs("webid")%>
				��</TD>
             <TD align="center" width="35" nowrap bgcolor="#FFFFFF" height="26">
             		��<%=rs("sid")%></TD>
             <TD align="center" width="124" nowrap bgcolor="#FFFFFF" height="26">
             		��<%=rs("chathostip")%></TD>
             <TD align="center" width="212" nowrap bgcolor="#FFFFFF" height="26">
             		<%=rs("websys")%>
				��</TD>
             <TD align="center" width="206" nowrap bgcolor="#FFFFFF" height="26">
				<a href="edit.asp?sid=<%=rs("sid")%>&menu=edit">�༭</a> 
				<a href="list.asp?Delid=<%=rs("sid")%>">ɾ��</a> 
				<a href="list.asp?sid=<%=rs("sid")%>">&nbsp;������</a>�б�</TD>
				</tr>

<% rs.moveNext
  loop
  
end if
%>
				
<%
end if
%>			
				

				<tr>
             <TD width="616" nowrap bgcolor="#FFFFFF" height="157" colspan="5">
				&nbsp;* <font color="#008000">�����ݿ������</font><br>
&nbsp;&nbsp; �Ƿ���[VCU�����ݿ�ϵͳ]�ķ������������Է���������SQLSERVER���ݿ�ͬһ̨����������������Զ�̷�������<br>
&nbsp;&nbsp; ����ϵͳ���Ǽ����Ƚ����һ�νӴ���ϵͳ��<font color="#006699">����VCUͬ�˹���ʦָ���½������ú�ѧϰ��<br>
				</font>&nbsp;* <font color="#008000">�������������</font> 
				���������һ̨���������ı����ӡ��ο���ʾ������ȷ������<br>
&nbsp;&nbsp; һ��ͬ��վ������ж�������ݿ��������<br>
&nbsp;* <font color="#008000">�༭</font> �����޸��Ѿ����ڵ������ݿ������������Ϣ��<br>
&nbsp;* <font color="#008000">ɾ��</font> ɾ��һ���Ѿ����ڵ������ݿ��������<font color="#FF0000">�ò���
				��ɾ�����������з������������������</font><br>
&nbsp;* <font color="#008000">�����ӷ�����</font> ���������ݿ�������µ������������<br>
&nbsp;* <font color="#0000FF">��Ϣͬ��</font> �ǽ�ͬ�����������ݿ�������VCU��ϵͳ��������ͬ�������������������״ΰ�װ��
				����ڹ���ʦָ��<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �½���</TD>
             </tr>
				
				
				
				</TBODY></TABLE>
				

</BODY></HTML>