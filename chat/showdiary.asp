<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<%
stats="�鿴�ռ�"
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
else
  if not isInteger(request.querystring("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ����ռ�id������"
  end if
end if

if founderr then
  call diserror()
  response.end
else
%>
<html>
<head>
<title>��Ƶ���� �������� ���� ��������-�鿴�ռ�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="Sams.css" type="text/css">
</head>

<body bgcolor="#FFFFFF" text="#000000" background="images/bg1.gif">
<%
opendiary
sql="select * from diary where d_id="&cint(request.querystring("id"))
set rs=conn.execute(sql)
%>
<table width="760" border="0" cellspacing="1" cellpadding="6" align="center" bgcolor="#293863">
  <tr> 
    <td class="diaryhead">�鿴�ռ�</td>
  </tr>
  <tr> 
    <td bgcolor="#FFFFFF" class="chinese"><br>
      <%=ubb2html(formatStr(autourl(rs("d_content"))), true, true)%> 
	  <div align="right"><br>
        <br>
        <img src="images/SIGN.GIF" width="299" height="12"><br>
        ��<span class="newshead"><%=rs("d_id")%></span>ƪ��������-<span class="newshead"><%=rs("d_date")%></span></div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF" class="chinese">[<a href="#;" onclick="window.close()">�رմ���</a>]</td>
  </tr>
</table>
<%rs.close
set rs=nothing%>
</body>
</html>
<%end if%>