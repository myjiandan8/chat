<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<html>
<head>
<title>��̨����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
<%
dim xmdb
xmdb=request("xmdb")
if xmdb="" then 
   xmdb="a"
end if

Classid=request("Classid")
classd=request("class")

Cid=request("Cid")
if cid="" then cid=0


CZ=request("CZ")

%>
</head>

<body bgcolor="#E2EFFC" text="#000000">



<%
'��������¼�¼

if cz="TJ" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from class "
			rs.Open sql,conn,1,3
			
	   rs.AddNew    
       rs("class") =classd
       rs("Cid") =cid
	   rs.Update

			
%>
<script language=vbs>
<!--
        MsgBox "��������������ӳɹ���������������"
        window.location.href="fl.asp?cid=<%=cid%>"

-->
</script>

<% end if %>




<%
'�޸ļ�¼

if CZ="XG" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from class where classid="& classid &""
			rs.Open sql,conn,1,3
   
       rs("class") =classd
		rs.Update
			

			
			
%>
<script language=vbs>
<!--
        MsgBox "�������������޸ĳɹ���������������"
        window.location.href="fl.asp?cid=<%=cid%>"

-->
</script>

<% end if %>


<%
'ɾ����¼
if cz="DEL" and request("queding")="" then  %>

<script language="vbscript">
	if msgbox ("���ɾ���������������Ӽ�����Ҳ��ȫ���ᱻɾ��������ɾ����Ͳ��ܻظ�����ȷ��ɾ����",vbYesNo+vbQuestion,"ȷ��ɾ��")=vbYes then
	   window.location.href="fl.asp?classid=<%=request("classid")%>&XMDB=<%=request("XMDB")%>&queding=OK&CZ=DEL"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<% 
end if

if CZ="DEL" and request("queding")<>"" then 



			sql="delete from class where classid="&request("classid")&""
			conn.Execute ( sql )

			
%>
<script language=vbs>
<!--
        MsgBox "������������ɾ���ɹ���������������"
        window.location.href="fl.asp?cid=<%=cid%>"

-->
</script>

<% end if %>


<% if cz="" then %> 
<p align="center"><br>
<b><span lang="zh-cn">����������</span>
<%
if cid<>0 then
sql="select * from class where classid="&cid
rs.Open sql,conn,1,3
Response.Write "=====["& rs("class") &"]�ӷ������"
end if
%>
</b></p>

<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>
<span lang="zh-cn"><a href="fl.asp">����������</a></span></b><br>
<br>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#145AA0" width="623" id="AutoNumber1" height="89">
    <form method="post" action="fl.asp" name="forma">
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="3" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>��Ӷ�������</b></font></span></td>
    </tr>
    <tr>
      <td width="58" height="22" align="center"> </td>
      <td width="166" height="22" align="center"><span lang="zh-cn">��������</span></td>
      <td width="127" height="22" align="center"><span lang="zh-cn">����</span></td>
    </tr>
    <tr>
      <td width="58" height="25" align="center"><span lang="zh-cn">��д</span></td>
      <td width="166" height="25" align="center">
      <input type="text" name="class" size="28"></td>
      <td width="127" height="25" align="center"> 
      <INPUT TYPE="HIDDEN" NAME="CZ" VALUE="TJ">
 		<INPUT TYPE="HIDDEN" NAME="cid" VALUE=<%=cid%>>
        <input type="submit" name="tj" value=" �� �� "></td>
    </tr>
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="3">��</td>
    </tr>
    </form>
  </table>
  </center>
</div>

<br>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#145AA0" width="623" id="AutoNumber1" height="93">
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="4" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>�޸�ɾ����������</b></font></span></td>
    </tr>
    <tr>
      <td width="58" height="24" align="center">ID</td>
      <td width="166" height="24" align="center"><span lang="zh-cn">��������</span></td>
      <td width="127" height="24" align="center"><span lang="zh-cn">������</span></td>
      <td width="78" height="24" align="center"><span lang="zh-cn">�¼��������</span></td>
    </tr>
<%
sql="select * from class where cid="&cid
set rs=conn.execute (sql)
do while not (rs.eof or err)
%>
    <form method="post" action="fl.asp" name="formb">
	<INPUT TYPE="HIDDEN" NAME="CZ" VALUE="XG">
    <INPUT TYPE="HIDDEN" NAME="classid" VALUE="<%=rs("classid")%>">
    <INPUT TYPE="HIDDEN" NAME="cid" VALUE=<%=cid%>>
    <tr>
      <td width="58" height="27" align="center"><%=rs("classid")%></td>
      <td width="166" height="27" align="center">
      <input type="text" name="class" size="20" value="<%=rs("class")%>"></td>
      <td width="127" height="27" align="center"> 
    
    <input type="submit" name="Submit" value="�޸�">
    <input type="button" name="Submit3" value="ɾ��" onClick="document.location = 'fl.asp?classid=<%=rs("classid")%>&CZ=DEL'" ></td>
      <td width="78" height="27" align="center"> 
    <% if cid=0 then %>
    <span lang="zh-cn">
    <a href="fl.asp?cid=<%=rs("classid")%>">�޸��ӷ���</a></span>
    <% end if %>
    </td>
    </tr>
        </form>
<% rs.moveNext
  loop
%>
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="4">��</td>
    </tr>

  </table>
  </center>
</div>
<p>��</p>
<p>��</p>

<% end if %>


<p align="center">
    <input type="button" name="Submit3" value="  ����  " onClick="document.location = 'Javascript:window.history.go(-1)'" ></p>
</body>
</html>