<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call quanxian(session("UID"),"admin",0)
%>

<%
dim rs,sql
set rs=server.createobject("adodb.recordset")
sql="select * from admin where id="&Request("id")
'response.write sql
'response.End
rs.open sql,conn,1,1
if not (rs.eof or err) then
%>
<html>
<head>
<title>����Ա����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
<script language=Javascript>
<!--
function deleteMe(){
	if (confirm("ȷ��ɾ�������ǻָ����˵İ���")==1){
		window.location="saveUserDel.asp?id=<%=Request("id")%>";
	}
}
//-->
</script>
</head>

<body bgcolor="#9CC7EF" text="#000000">
<br>
<br>
<br>
<br>
<form method="post" action="saveUserMod.asp" name="form1">
  <table width="98%" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" align="center" height="197">
    <tbody> 
    <tr> 
      <td colspan=2 height="19" bgcolor="#4296E7"> 
        <p align="center"><font color="#ffffff">����Ա����</font></p>
      </td>
    </tr>
    <tr> 
      <td width=84 align="right" height="19" nowrap> 
        <div align="right">����Ա�ʺţ�</div>
      </td>
      <td width="361" height="19"> 
        <input type="text" name="UID" size="20" value="<%=rs("uID")%>" readOnly>
        <input type="hidden" name="id" value="<%=Request("id")%>">
      </td>
    </tr>
    <tr> 
      <td width=84 align="right" height="24" nowrap> 
        ����Ա������</td>
      <td width="361" height="24"> 
        <input type="text" name="name" size="20" value="<%=rs("name")%>">
      </td>
    </tr>
    <tr>
      <td width=84 align="right" height="19" nowrap> 
        ����Ȩ�ޣ�</td>
      <td width="361" height="19"> 
        <select size="1" name="quanxian">
        <option value="0" <%if rs("quanxian") =0 then Response.Write "selected"%>>��������Ա</option>
        <option value="1" <%if rs("quanxian") =1 then Response.Write "selected"%>>Ѳվ����Ա</option>
        <option value="2" <%if rs("quanxian") =2 then Response.Write "selected"%>>���ű༭</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>        </select></td>
    </tr>
    <tr> 
      <td width=84 align="right" height="1" nowrap> 
        <div align="right">����Ա���룺</div>
      </td>
      <td width="361" height="1"> 
        <input type="checkbox" name="modifypasswd" value="1">
        <font color="#FF0000">�޸�����</font> 
        <input type="passwd" name="passwd1" size="12">
        <input type="passwd" name="passwd2" size="12">
      </td>
    </tr>
    <tr>
      <td width=84 align="right" height="21" nowrap> 
        ����˵����</td>
      <td width="361" height="21"> 
        <textarea rows="9" name="shuoming" cols="36"><%=rs("shuoming")%></textarea></td>
    </tr>
    <tr> 
      <td colspan="2" align="right" height="22" nowrap bgcolor="#4296E7"> 
        <div align="center"> 
          <input type="button" name="Submit" value="ɾ��" onClick="deleteMe()">
          <input type="submit" name="Submit2" value="�޸�">
          <input type="button" name="Submit3" value="����" onClick="window.location='<%=session("adminOldUrl")%>'">
        </div>
      </td>
    </tr>
    </tbody> 
  </table>
</form>
</body>
</html>
<%end if %>