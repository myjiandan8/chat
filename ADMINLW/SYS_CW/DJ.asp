<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin9.asp"-->
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

ID=request("ID")
name=request("name")
nsv=request("NSv")
zhekou=request("zhekou")
canshu=request("canshu")
zb=request("zb")
CZ=request("CZ")
%>
</head>

<body bgcolor="#9CC7EF" text="#000000">
<p align="center"><br>
<b>����<span lang="zh-cn">��Ʒ���۹���</span></b></p>


<%
'����¼�¼

if cz="TJ" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from CW_DJ where ID=" & ID
			rs.Open sql,conn,1,3
		if not(rs.eof) then call errstr("����ƷID�Ѿ�����")
		
	   rs.AddNew    
	   rs("id") =id
       rs("name") =name
       rs("nsv") =nsv
       rs("zhekou") =zhekou
       rs("zb") =zb
       rs("canshu") =canshu
	   rs.Update

			
%>
<script language=vbs>
<!--
        MsgBox "��������������ӳɹ���������������"
        window.location.href="DJ.asp"

-->
</script>

<% end if %>




<%
'�޸ļ�¼

if cz="XG" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from CW_DJ where ID like '"& ID &"'"
			rs.Open sql,conn,1,3
 	   rs("id") =id
       rs("name") =name
       rs("nsv") =nsv
       rs("zhekou") =zhekou
       rs("zb") =zb
       rs("canshu") =canshu
	   rs.Update


			
%>
<script language=vbs>
<!--
        MsgBox "�������������޸ĳɹ���������������"
        window.location.href="DJ.asp"

-->
</script>

<% end if %>


<%
'ɾ����¼
if cz="DEL" and request("queding")="" then  %>
   
<b>��ȷ��ɾ����</b>
<br>
<input type="button" name="Submit3" value="ȷ��ɾ��" onClick="document.location = 'DJ.asp?id=<%=id%>&XMDB=<%=request("XMDB")%>&queding=OK&CZ=DEL'" >   
<input type="button" name="Submit3" value="  ����  " onClick="document.location = 'Javascript:window.history.go(-1)'" >
<% 
end if

if CZ="DEL" and request("queding")<>"" then 



			sql="delete from CW_DJ where ID like "&request("ID")
			conn.Execute ( sql )

			
%>
<script language=vbs>
<!--
        MsgBox "������������ɾ���ɹ���������������"
        window.location.href="DJ.asp"

-->
</script>

<% end if %>


<% if cz="" then %>


<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#145AA0" width="661" id="AutoNumber1" height="141">
   
    <tr>
      <td width="659" bgcolor="#4296E7" height="23" colspan="7" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>��ӷ����Ʒ����</b></font></span></td>
    </tr>
     <form method="post" action="DJ.asp" name="forma">
    <tr>
      <td width="49" height="27" align="center"> ����</td>
      <td width="174" height="27" align="center"><span lang="zh-cn">��Ʒ����</span></td>
      <td width="67" height="27" align="center">��������</td>
      <td width="53" height="27" align="center">����ۿ�</td>
      <td width="98" height="27" align="center">��Ʒ˵��</td>
      <td width="118" height="27" align="center">��Ʒ����</td>
      <td width="88" height="27" align="center"><span lang="zh-cn">����</span></td>
    </tr>
    
    <tr>
      <td width="49" height="26" align="center"> 
        <input type="text" name="id" size="4"></td>
      <td width="174" height="26" align="center">
      <input type="text" name="name" size="21"></td>
      <td width="67" height="26" align="center">
      <input type="text" name="nsv" size="4">Ԫ</td>
      <td width="53" height="26" align="center">
        <input type="text" name="zhekou" size="4"></td>
      <td width="98" height="26" align="center"> 
        <input type="text" name="zb" size="12"> </td>
      <td width="118" height="26" align="center"> 
        <input type="text" name="canshu1" size="16"></td>
      <td width="88" height="26" align="center"> 
      
    <INPUT TYPE="HIDDEN" NAME="CZ" VALUE="TJ">
    <INPUT TYPE="HIDDEN" NAME="XMDB" VALUE="a">
    
        <input type="submit" name="tj" value=" �� �� "></td>
    </tr>
    <tr>
      <td width="659" bgcolor="#4296E7" height="68" colspan="7">&nbsp;*�Ͻ��޸Ĳ�Ʒ����&nbsp; 
		*�ۿ�д����0.85&nbsp;&nbsp; 0.9&nbsp; *�������������İ�۴��ۣ�����������<br>
&nbsp;*��Ʒ���� ��Ʒ����,��Ƶ,����,����Ƶ����,������,����1,����2,����3&nbsp; 0Ϊ�� 1Ϊ�϶�&nbsp; ����1Ϊʵ����ֵ<br>
&nbsp; �磺1,1,100,3,1,0,0,1&nbsp;&nbsp; ���� BCHAT�����ң���Ƶ��100�ˣ�3����Ƶ�������������ã����ã�֧���ײ�1<br>
&nbsp;*��ϸ����˵����������<br>
&nbsp;*�������۶�Ϊһ��ķ���</td>
    </tr>
    </form>
  </table>
  </center>
</div>

<br>


<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#808080" width="660" id="AutoNumber1" height="144">
   
    <tr>
      <td width="658" bgcolor="#145AA0" height="24" colspan="6" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>�޸Ĺ�����</b></font></span></td>
    </tr>

    <tr>
      <td width="56" height="25" align="center"> ����</td>
      <td width="185" height="25" align="center"><span lang="zh-cn">��Ʒ����</span></td>
      <td width="61" height="25" align="center">��������</td>
      <td width="74" height="25" align="center">����ۿ�</td>
      <td width="179" height="25" align="center">��Ʒ����</td>
      <td width="100" height="25" align="center"><span lang="zh-cn">����</span></td>
    </tr>
<%
sql="select * from CW_DJ order by id asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%>
    <form method="post" action="DJ.asp" name="formd">
	<INPUT TYPE="HIDDEN" NAME="CZ" VALUE="XG">
    <INPUT TYPE="HIDDEN" NAME="XMDB" VALUE="a">
    	<tr>
      <td width="647" height="21" colspan="6" bgcolor="#C0C0C0"> 
     <b>��<font color=#ff0000><%=rs("id")%></font> </b>  ������</td>
    </tr>
    <tr>
      <td width="56" height="25" align="center" bgcolor="#FFFFFF"> 
        <input type="text" name="id" size="4" value="<%=rs("id")%>"></td>
      <td width="185" height="25" align="center" bgcolor="#FFFFFF">
      <input type="text" name="name" size="24" value="<%=rs("name")%>"></td>
      <td width="61" height="25" align="center" bgcolor="#FFFFFF">
      <input type="text" name="nsv" size="4" value="<%=rs("nsv")%>">Ԫ</td>
      <td width="74" height="25" align="center" bgcolor="#FFFFFF">
        <input type="text" name="zhekou" size="4" value="<%=rs("zhekou")%>"></td>
      <td width="179" height="25" align="center" bgcolor="#FFFFFF"> 
        <input type="text" name="canshu" size="22" value="<%=rs("canshu")%>"></td>
      <td width="100" height="51" align="center" rowspan="2" bgcolor="#FFFFFF"> 
        <input type="submit" name="tj" value="�޸�">
    <input type="button" name="Submit3" value="ɾ��" onClick="document.location = 'DJ.asp?ID=<%=rs("ID")%>&CZ=DEL'" ></td>
    </tr>
    <tr>
      <td width="56" height="27" align="center" bgcolor="#FFFFFF"> 
        <p align="right">˵����</td>
      <td width="505" height="27" colspan="4" bgcolor="#FFFFFF">
        <textarea rows="3" name="zb" cols="68"><%=rs("zb")%></textarea></td>
      </tr>

    </form>
<% rs.moveNext
  loop
%>
    
    <tr>
      <td width="658" bgcolor="#4296E7" height="27" colspan="6">*�Ͻ��޸Ĳ�Ʒ����&nbsp; 
		*�ۿ�д����0.85 0.9&nbsp; </td>
    </tr>
  </table>
  </center>
</div>




<% end if %>

<p>��</p>
<div align="center">
	<table border="1" width="663" id="table1" height="202" bgcolor="#9CC7EF" cellpadding="0" bordercolor="#0000FF" style="border-collapse: collapse">
		<tr>
			<td height="24" bgcolor="#4296E7">&nbsp;<b><font color="#FFFFFF">��Ʒ����˵��</font></b></td>
		</tr>
		<tr>
			<td height="26">&nbsp;��Ʒ����,��Ƶ,����,����Ƶ����,������,����1,����2,����3&nbsp;&nbsp;&nbsp; 
			��Ӣ��,����������δ�����ܾ�����׼��׼�޸Ĳ�����</td>
		</tr>
		<tr>
			<td height="31">&nbsp;��Ʒ���ͣ�1=BCHAT������&nbsp; 2=MECHAT������&nbsp; 3=�ռ�&nbsp;&nbsp; 
			4=����&nbsp; 5=������վ�ײ� 6�������� ����</td>
		</tr>
		<tr>
			<td>&nbsp;BCHAT������ ��Ʒ��������Ʒ����,��Ƶ,����,����Ƶ,������,����1,����2,����3 </td>
		</tr>
		<tr>
			<td>&nbsp;���ӣ�<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#0000FF">1,0,30,0,0,0,0,1 </font>
			<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">
			BCHAT������Ƶ��30�ˣ��޶���Ƶ�����������������ײ�1</font> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#0000FF">1,1,30,2,0,0,0,1 </font>
			<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">
			BCHAT������Ƶ��30�ˣ�2����Ƶ���ӣ����������������ײ�1</font></td>
		</tr>
		<tr>
			<td height="21">&nbsp;<font color="#FF0000">ע�⣺��Ʒ�����ڳ���ʵ���е�����Ʒ���ɺ����Ĵ��ݱ�Ԫ������޸��д��󣬽��������ϵͳ̱����</font></td>
		</tr>
		<tr>
			<td height="19" bgcolor="#4296E7">&nbsp;<font color="#FFFFFF">��Ʒ����˵��</font></td>
		</tr>
		<tr>
			<td>���ղ�Ʒ���͵ı�ŷŵ�ǧλ��Ȼ��������� �ռ�&nbsp; 3001&nbsp; 3002&nbsp; </td>
		</tr>
	</table>
</div>

<p align="center">
    <input type="button" name="Submit3" value="  ����  " onClick="document.location = 'Javascript:window.history.go(-1)'" ></p>
</body>
</html>