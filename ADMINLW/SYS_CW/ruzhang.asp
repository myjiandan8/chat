<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->

<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�û������һ�</TITLE>

<meta http-equiv="Content-Language" content="zh-cn">
<style type="text/css">
<!--
td    { font-size: 12px} 
-->
</style>
<% 
s=request("s")
ss=request("ss")

if request("s")<>"" and request("uid")<>"" then 
			
			set rs=server.createobject("adodb.recordset")
			sql="select * from [User] where uid like "& ContentEncode(request("uid"))
			rs.Open sql,conn,1,3
			
			if  rs.eof then  
			
			%>
		<script language=vbs>
<!--
        MsgBox "û�������������û�ID"
        window.location.href="Javascript:window.history.go(-1)"

-->
   		</script>
   		
<% else %>


 <form method=post action="ruzhang.asp">

          <INPUT TYPE="HIDDEN" NAME="ss" VALUE="<%=s%>">
          <INPUT TYPE="HIDDEN" NAME="uid" VALUE="<%=rs("uid")%>">
          <INPUT TYPE="HIDDEN" NAME="name" VALUE="<%=rs("name")%>">
          <INPUT TYPE="HIDDEN" NAME="n" VALUE="<%=request("n")%>">
          <INPUT TYPE="HIDDEN" NAME="bz" VALUE="<%=request("bz")%>">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#000000" width="528" height="95" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="526" bgcolor="#990099" height="26" bordercolor="#990099" colspan="4">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          </b><font color="#FFFFFF"><b>�������
          <%
          if s=1 then
          Response.Write "�������"
          elseif s=2 then
          Response.Write "��������"
          else
          Call errstr("�Ƿ�����������")
          end if
          %> </b></font></td>
        </tr>
        <tr>
          <td width="76" height="28" bordercolor="#D6D3CE" align="right">&nbsp;�û��ʻ�:</td>
          <td width="137" height="28" bordercolor="#D6D3CE">��<%=rs("uid")%></td>
          <td width="74" height="28" bordercolor="#D6D3CE" align="right">�û���:</td>
          <td width="232" height="28" bordercolor="#D6D3CE">��<%=rs("name")%></td>
        </tr>
        <tr>
          <td width="76" height="30" bordercolor="#D6D3CE" align="right">&nbsp;��������: </td>
          <td width="137" height="30" bordercolor="#D6D3CE">��<%
          if s=1 then
          Response.Write "�������"
          elseif s=2 then
          Response.Write "��������"
          else
          Call errstr("�Ƿ�����������")
          end if
          %></td>
          <td width="74" height="30" bordercolor="#D6D3CE" align="right">���׽��:</td>
          <td width="232" height="30" bordercolor="#D6D3CE">��<%=request("n")%> Ԫ</td>
        </tr>
        <tr>
          <td width="526" height="18" bordercolor="#D6D3CE" colspan="4">&nbsp; ���׹���Ա:&nbsp; <%=session("UID")%></td>
        </tr>
        <tr>
          <td width="526" height="29" bordercolor="#D6D3CE" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ע:&nbsp; <%=request("bz")%></td>
        </tr>
        <tr>
          <td width="526" height="21" bordercolor="#D6D3CE" colspan="4">
          <p align="right">
<input type=submit name=dd value="ȷ���ύ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
          <td width="526" height="2" bordercolor="#D6D3CE" colspan="4">
          <p align="right">��</td>
        </tr>
        </table>
      </center>
    </div>
    </td>
  </tr>
</table></form>
</body>
<% end if %>



<% elseif   ss<>"" and request("uid")<>"" then 

'�����û���������

uid=request("uid")
name=request("name")
n=request("n")



			set rs=server.CreateObject ("adodb.recordset")

			sql="select * from CW_user where uid like "&request("uid")
			rs.Open sql,conn,1,3
			
			
	if rs.eof then
			
	   		rs.AddNew    
       		rs("uid") = request("uid")
       		rs("name")= request("name")
       		
          if ss=1 then

       		rs("jn") = request("n")
       		rs("dn") = 0
       		rs("kn") = request("n")
       		rs("yn") = 0 - request("n")
			
          elseif ss=2 then

       		rs("jn") = 0
       		rs("dn") = request("n")
       		rs("kn") = request("n")
       		rs("yn") = request("n")

          end if

	else
			
          if ss=1 then

       		rs("jn") = rs("jn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") - request("n")
			
          elseif ss=2 then

       		rs("dn") = rs("dn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") + request("n")

          end if
          
	end if
			
			rs.Update
			rs.close
			
			
'��������ͳ�����ݿ�

		sql="select * from CW_TJ"
		rs.Open sql,conn,1,3
			
          if ss=1 then

       		rs("jn") = rs("jn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") - request("n")
			
          elseif ss=2 then

       		rs("dn") = rs("dn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") + request("n")
       		
          end if

			rs.Update
			rs.close


'������ˮ��Ŀ
			
			sql="select * from CW_JL "
			rs.Open sql,conn,1,3
			
			rs.AddNew    
       		rs("uid") = request("uid")
       		rs("name")= request("name")	
       			
          if ss=1 then
          
			rs("x") = 1
       		rs("n") = request("n")
			
          elseif ss=2 then

			rs("x") = 2
       		rs("n") = request("n")
       		
          end if
          
			rs("admin") = session("UID")
			rs("bz") = request("bz")
			rs("times") = now()
			rs.Update
			rs.close


			%>
<script language=vbs>
<!--
        MsgBox "��������ɹ���"
        window.location.href="ruzhang.asp"

-->
</script>
             
            
			
			
			
<% else %>

<script language="javascript">
function Check(){var Name=document.myform.name.value;
window.open("addname.asp?abc=1&name="+Name,"","width=200,height=20");
}
</script>
<body>
 <form name=myform method=post action="ruzhang.asp">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#000000" width="556" height="174" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="554" bgcolor="#990099" height="26" bordercolor="#990099">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          </b><font color="#FFFFFF"><b>�������
          </b></font></td>
        </tr>
        <tr>
          <td width="554" height="31" bordercolor="#000000">��</td>
        </tr>
        <tr>
          <td width="554" height="21" bordercolor="#000000">&nbsp;&nbsp; �ʻ�ID:<input name=uid size=7>&nbsp;����:<select size="1" name="s">
			<option value="1">�������</option>
			<option value="2">��������</option>
			</select>&nbsp; ���:<input name=n size=5>Ԫ&nbsp; Ӫ���ͷ�ID:<input name=uid0 size=7>
    
          </td>
        </tr>
        <tr>
          <td width="554" height="1" bordercolor="#000000">
        
&nbsp;&nbsp;  
ע&nbsp; ��:<input name=bz0 size=57>
    
          <input type=submit name=dd value="ȷ��">&nbsp; </td>
        </tr>
        <tr>
          <td width="554" height="1" bordercolor="#000000">
          ��</td>
        </tr>
        <tr>
          <td width="554" height="11" bordercolor="#000000">
          <p align="right">�����û�����<input name=name size=10> 
             <INPUT onclick="javascript:Check()" type="button" value="���û�ID" name="cmdcancel1" class="buttonface">&nbsp;&nbsp;&nbsp; </td>
        </tr>
      	<tr>
          <td width="554" height="4" bordercolor="#000000">
          ��</td>
        </tr>
		<tr>
          <td width="554" height="39" bordercolor="#000000">
          <p align="right">��ע��д:����� �� ������Ϣ&nbsp;</td>
        </tr>
      </table>
      </center>
    </div>
    </td>
  </tr>
</table></form>

<% end if %>