<!--�������ݿ��ļ�#include file="../../INC/Chatfl.asp" -->
<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call OpenChatconn
set rs=server.createObject("adodb.recordset")

if Request("menu")="bbsaddok" then

if Request("fname")="" then errstr("�������������")

rs.Open "chatff",chatconn,1,3

rs.addnew
rs("ufid")=clng(Request("ufid"))
rs("fname")=HTMLEncode(Request("fname"))
rs("ftxt")=HTMLEncode(Request("ftxt"))
rs.update

id=rs("fid")

rs.close

end if

if Request("menu")="bbsmanagedel" then
chatconn.execute("delete from [chatff] where fid="& clng(Request("fid")))
wenti("�Ѿ�������̳����������ɾ���ˣ�")
end if

dim ii
ii=0
sub sort(selec)
	sql="Select * From chatff where ufid="&selec&" order by fid"
	Set Rs1=chatconn.Execute(sql)
	do while not rs1.eof

if selec=vid then
%>
  <tr class=a1 id=TableTitleLink height=25 bgcolor=#aaaaaa>
<td>��<a target=_blank href=http://<%=rs1("fid")%>><%=rs1("fname")%></a></td>
<td align="right" width="190">
<a target="_blank" href="chatffedit.asp?menu=bbsadd&fid=<%=rs1("fid")%>">��������</a> | 
<a target="_blank" href="chatffedit.asp?menu=bbsmanagexiu&fid=<%=rs1("fid")%>">�༭����</a> | 
<a onclick=checkclick('��ȷ��Ҫɾ������̳����������?') href=chatff.asp?menu=bbsmanagedel&fid=<%=rs1("fid")%>>
ɾ������</a>
</tr>

<%
else
%>
<tr class=a3 height=25>
<td>��<%=string(ii*2,"��")%><a target=_blank href=<%=rs1("fid")%>><%=rs1("fname")%></a></td>
<td align="right">
<a target="_blank" href="chatffedit.asp?menu=bbsadd&fid=<%=rs1("fid")%>">��������</a> | 
<a target="_blank" href="chatffedit.asp?menu=bbsmanagexiu&fid=<%=rs1("fid")%>">�༭����</a> | 
<a onclick="checkclick('��ȷ��Ҫɾ������̳����������?')" href="chatff.asp?menu=bbsmanagedel&fid=<%=rs1("fid")%>">
ɾ������</a>
</tr>
<%
end if
ii=ii+1
	sort rs1("fid")
ii=ii-1
	rs1.movenext
	loop
	Set Rs1 = Nothing
end sub

%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>��̳������</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="1" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="516" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="515" align="center" valign="top">
       

      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; �����ҷ��������</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="37" bgcolor="#FFFFFF" align="center">
            
<form name="form" method="post" action="chatff.asp?menu=bbsaddok"><input type=hidden name=hide value=0>
	������ƣ������� ���֣�<input name="fname" size="17"><input type="hidden" name="classid" size="18" maxlength="10" value="<%=vid%>"><input type="submit" value="����һ������"></form>
</td>
            </tr>

        	<tr>
            <td width="586" height="333" bgcolor="#FFFFFF" valign="top">
            

<div align="center">
            

<table cellspacing=1 cellpadding="2" width="80%" border="1" class="a2">
<%
sort(0)
%>
</table>

  
            </div>
��</td>
            </tr>

        </table>
        </center>
      </div>
            
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>