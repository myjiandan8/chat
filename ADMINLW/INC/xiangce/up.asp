<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<!--�������ݿ��ļ�#include file="../../INC/CLA.asp" -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


<%
Server.ScriptTimeOut = 300

if Request("menu")="up" then

Set UP = Server.CreateObject("lw.up")

classid=Trim(UP.form("classid"))
set file = UP.file("file")
EXT=LCase(file.FileExt)

	if classid<>"" and (EXT="rar" or EXT="zip") then

	file.SaveFile Server.mappath("/soft/"& classid &"/"&file.FileName&"")

%>

&nbsp;
<br>�ļ��ϴ��ɹ�,Ҫ<a href=up.asp>�����ϴ��������</a>
<%
	else
	
	wenti "����ԭ��1����û��ѡ��������͡�ԭ��2ֻ���ϴ�.rar��.zip�ļ���"

	end if

set UP = Nothing

else

%>


<html>
<head>
<title>�ļ��ϴ�</title>
<link rel="stylesheet" href="../../../admin/img/lw.css" type="text/css">

</head>

<body bgcolor="#9CC7EF" text="#000000" leftmargin="0" topmargin="0">

<p>��</p>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="586" id="AutoNumber1" bgcolor="#FFFFFF" height="196">
    <tr>
      <td width="586" height="38" align="center"><b><font size="4">�ϴ��ļ�</font></b></td>
    </tr>
    <tr>
      <td width="586" height="22">����3M�ļ�����ʹ��FTP�ϴ��ɣ� <br>
      ������Ͻ������ǵ��ļ�������ѹ������Ҫ���ܡ�<a href="../../../soft/wenjian.rar">���ؽ����ļ�</a>
      <span lang="zh-cn">���������ļ�������ѹ�������棡</span></td>
    </tr>
    <form enctype=multipart/form-data method=post name="myform"  action=up.asp?menu=up>
    <tr>
      <td width="586" height="30">����������ͣ�  
<%
    sql = "select * from class where cid=0"
    rs.open sql,conn,1,1
	if rs.eof and rs.bof then
	response.write "���������Ŀ��"
	response.end
	else
%> <SELECT name="classid" size="1">
             <OPTION selected value>==��ѡ����==</OPTION>
 <% 
        do while not rs.eof
%><OPTION value="<%=trim(rs("classid"))%>"><%=trim(rs("class"))%></OPTION><%
        rs.movenext
        loop
	end if
        rs.close
        set rs = nothing
        conn.Close
        set conn = nothing
%></SELECT> </td>
    </tr>
    <tr>
      <td width="586" height="46">ѡ��Ҫ�ϴ����ļ���<input type=file style=FONT-SIZE:9pt name=file size="45"></td>
    </tr>
    <tr>
      <td width="586" height="28" align="center"><input style=FONT-SIZE:9pt type="submit" value=" �� �� " name=Submit></td>
    </tr>
    <tr>
      <td width="586" height="32">FTP �ϴ���Ҫ��ʶ��Щ�ļ��� <p>
      </p>
      <p><span lang="zh-cn">1 ASPԴ�� <br>
      2 CGIԴ�� <br>
      3 PHPԴ�� <br>
      4 JSPԴ��<br>
      5 FLASHԴ�� <br>
      6 ��������<br>
      7 ����Դ�� <br>
      8 �鼮�̳�<br>
      9 ���ù���</span></td>
    </tr>
    </form>
  </table>
  </center>
</div>
</body>
</html>
<%
end if
%>