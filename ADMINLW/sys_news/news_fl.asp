<!--#include file="../cdmdb.asp"-->
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

NID=request("NID")
NFL=request("NFL")
NFLEN=request("NFLEN")
NFLS=request("NFLS")
CZ=request("CZ")
%>
</head>

<body bgcolor="#9CC7EF" text="#000000">
<p align="center"><br>
<span lang="zh-cn">���ŷ������</span></p>


<%
'����¼�¼

if cz="TJ" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from SYS_NEWS_FL "
			rs.Open sql,conn,1,3
			
	   rs.AddNew 
	   rs("NFL") =NFL	   
       rs("NFLEN") =NFLEN
       rs("NFLS") =NFLS
		rs.Update

			
%>
<script language=vbs>
<!--
        MsgBox "��������������ӳɹ���������������"
        window.location.href="news_fl.asp"

-->
</script>

<% end if %>




<%
'�޸ļ�¼

if CZ="XG" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from SYS_NEWS_FL where NID like '"& NID &"'"
			rs.Open sql,conn,1,3

	   rs("NFL") =NFL	   
       rs("NFLEN") =NFLEN
       rs("NFLS") =NFLS
		rs.Update
			

			
			
%>
<script language=vbs>
<!--
        MsgBox "�������������޸ĳɹ���������������"
        window.location.href="news_fl.asp"

-->
</script>

<% end if %>


<%
'ɾ����¼
if cz="DEL" and request("queding")="" then  %>
   
<b>���ɾ�������Ӽ�������Ҳ��ȫ���ᱻɾ��������ɾ����Ͳ��ܻظ�����ȷ��ɾ����</b>
<br>
<input type="button" name="Submit3" value="ȷ��ɾ��" onClick="document.location = 'news_fl.asp?FLZCid=<%=request("FLZCid")%>&XMDB=<%=request("XMDB")%>&queding=OK&CZ=DEL'" >   
<input type="button" name="Submit3" value="  ����  " onClick="document.location = 'Javascript:window.history.go(-1)'" >
<% 
end if

if CZ="DEL" and request("queding")<>"" then 



			sql="delete from SYS_NEWS_FL where NID like '"&request("NID")&"'"
			conn.Execute ( sql )

			
%>
<script language=vbs>
<!--
        MsgBox "������������ɾ���ɹ���������������"
        window.location.href="news_fl.asp"

-->
</script>

<% end if %>

<%=nfl%><br>
<%=nflen%><br>
<%=nfls%><br>
<%=cz%><br>
<% if cz="" then %>

<br>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#145AA0" width="623" id="AutoNumber1" height="89">
    <form method="post" action="news_fl.asp" name="forma">
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="5" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>��ӷ���</b></font></span></td>
    </tr>
    <tr>
      <td width="58" height="22" align="center"> </td>
      <td width="166" height="22" align="center"><span lang="zh-cn">������</span></td>
      <td width="180" height="22" align="center"><span lang="zh-cn">Ӣ����</span></td>
      <td width="77" height="22" align="center">����ID</td>
      <td width="127" height="22" align="center"><span lang="zh-cn">����</span></td>
    </tr>
    <tr>
      <td width="58" height="25" align="center"><span lang="zh-cn">��д</span></td>
      <td width="166" height="25" align="center">
      <input type="text" name="NFL" size="20"></td>
      <td width="180" height="25" align="center">
      <input type="text" name="NFLEN" size="20"></td>
      <td width="77" height="25" align="center"> 
        <input type="text" name="NFLS" size="4"> </td>
      <td width="127" height="25" align="center"> 
    <INPUT TYPE="HIDDEN" NAME="CZ" VALUE="TJ">
    <INPUT TYPE="HIDDEN" NAME="XMDB" VALUE="a">
        <input type="submit" name="tj" value=" �� �� "></td>
    </tr>
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="5">��</td>
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
      <td width="621" bgcolor="#4296E7" height="18" colspan="5" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>�޸ķ���</b></font></span></td>
    </tr>
    <tr>
      <td width="58" height="24" align="center">ID</td>
      <td width="166" height="24" align="center"><span lang="zh-cn">��������������</span></td>
      <td width="165" height="24" align="center"><span lang="zh-cn">Ӣ����</span></td>
      <td width="106" height="24" align="center">����ID</td>
      <td width="115" height="24" align="center"><span lang="zh-cn">������</span></td>
    </tr>
<%
sql="select * from SYS_NEWS_FL "
set rs=conn.execute (sql)
do while not (rs.eof or err)
%>
    <form method="post" action="news_fl.asp" name="formb">
	<INPUT TYPE="HIDDEN" NAME="CZ" VALUE="XG">
    <INPUT TYPE="HIDDEN" NAME="Nid" VALUE="<%=rs("NID")%>">
    <INPUT TYPE="HIDDEN" NAME="XMDB" VALUE="a">
    <tr>
      <td width="58" height="27" align="center"><%=rs("NID")%></td>
      <td width="166" height="27" align="center">
      <input type="text" name="NFL" size="20" value="<%=rs("NFL")%>"></td>
      <td width="165" height="27" align="center">
      <input type="text" name="NFLEN" size="20" value="<%=rs("NFLEN")%>"></td>
      <td width="106" height="27" align="center">
      <input type="text" name="NFLS" size="4" value="<%=rs("NFLS")%>"></td>
      <td width="115" height="27" align="center"> 
    
    <input type="submit" name="Submit" value="�޸�">
    <input type="button" name="Submit3" value="ɾ��" onClick="document.location = 'news_fl.asp?NID=<%=rs("NID")%>&CZ=DEL'" ></td>
    </tr>
        </form>
<% rs.moveNext
  loop
%>
    <tr>
      <td width="621" bgcolor="#4296E7" height="18" colspan="5">��</td>
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