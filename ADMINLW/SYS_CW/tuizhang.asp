<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin9.asp"-->

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

if request("s")<>"" and request("id")<>"" then 
			
			set rs=server.createobject("adodb.recordset")
			sql="select * from [User] where id like "&request("id")
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


 <form method=post action="tuizhang.asp">

          <INPUT TYPE="HIDDEN" NAME="ss" VALUE="<%=s%>">
          <INPUT TYPE="HIDDEN" NAME="uid" VALUE="<%=rs("id")%>">
          <INPUT TYPE="HIDDEN" NAME="n" VALUE="<%=request("n")%>">
          <INPUT TYPE="HIDDEN" NAME="bz" VALUE="<%=request("bz")%>">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" width="489" height="95" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="487" bgcolor="#990099" height="26" bordercolor="#990099" colspan="4">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          </b><font color="#FFFFFF"><b>�������
          <%
          if s="j" then
          Response.Write "�������"
          else
          Response.Write "��������"
          end if
          %> </b></font></td>
        </tr>
        <tr>
          <td width="76" height="28" bordercolor="#D6D3CE" align="right">&nbsp;�û�ID:</td>
          <td width="137" height="28" bordercolor="#D6D3CE">��<%=rs("id")%></td>
          <td width="74" height="28" bordercolor="#D6D3CE" align="right">�û�����:</td>
          <td width="192" height="28" bordercolor="#D6D3CE">��<%=rs("name")%></td>
        </tr>
        <tr>
          <td width="76" height="30" bordercolor="#D6D3CE" align="right">&nbsp;��������: </td>
          <td width="137" height="30" bordercolor="#D6D3CE">��<%
          if s="j" then
          Response.Write "�������"
          else
          Response.Write "��������"
          end if
          %></td>
          <td width="74" height="30" bordercolor="#D6D3CE" align="right">���׽��:</td>
          <td width="192" height="30" bordercolor="#D6D3CE">��<%=request("n")%> Ԫ</td>
        </tr>
        <tr>
          <td width="487" height="18" bordercolor="#D6D3CE" colspan="4">&nbsp;���׹���Ա:<%=session("UID")%></td>
        </tr>
        <tr>
          <td width="487" height="29" bordercolor="#D6D3CE" colspan="4">&nbsp;��ע:<%=request("bz")%></td>
        </tr>
        <tr>
          <td width="487" height="21" bordercolor="#D6D3CE" colspan="4">
          <p align="right">
<input type=submit name=dd value="ȷ���ύ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
          <td width="487" height="2" bordercolor="#D6D3CE" colspan="4">
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
			sql="select * from CW_user where uid like "&request("uid")
			rs.Open sql,conn,1,3
			
			
			if rs.eof then
			
	   		rs.AddNew    
       		rs("uid") = request("uid")
       		
          if ss="j" then

       		rs("jn") = request("n")
       		rs("dn") = 0
       		rs("kn") = request("n")
       		rs("yn") = 0 - request("n")
			
          else

       		rs("jn") = 0
       		rs("dn") = request("n")
       		rs("kn") = request("n")
       		rs("yn") = request("n")

          end if
       		
       
	   		rs.Update
			
			else
			
          if ss="j" then

       		rs("jn") = rs("jn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") - request("n")
			
          else

       		rs("dn") = rs("dn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("kn") + request("n")

          end if
          
			end if
			
			rs.Update
			rs.close
			
			
'��������ͳ�����ݿ�

		sql="select * from CW_TJ"
		rs.Open sql,conn,1,3
			
          if ss="j" then

       		rs("jn") = rs("jn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") - request("n")
			
          else

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
       			
          if ss="j" then
          
			rs("x") = 1
       		rs("n") = request("n")
			
          else

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
        window.location.href="ruzhang.asp?s=<%=ss%>"

-->
</script>
             
            
			
			
			
<% else %>
<body>
 <form method=post action="tuizhang.asp">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" width="489" height="1" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="487" bgcolor="#990099" height="26" bordercolor="#990099">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          </b><font color="#FFFFFF"><b>�������
          <%
          if s="j" then
          Response.Write "�������"
          else
          Response.Write "��������"
          end if
          %> </b></font></td>
        </tr>
        <tr>
          <td width="487" height="31" bordercolor="#D6D3CE">��</td>
        </tr>
        <tr>
          <td width="487" height="21" bordercolor="#D6D3CE">&nbsp;&nbsp; �ʻ�����ID:<input name=id size=10>&nbsp; 
          ���ʽ��:<input name=n size=8>Ԫ&nbsp; ע��:<input name=bz size=15>
          
          <INPUT TYPE="HIDDEN" NAME="s" VALUE="<%=s%>">
          </td>
        </tr>
        <tr>
          <td width="487" height="1" bordercolor="#D6D3CE">
          <p align="right">
<input type=submit name=dd value="ȷ��">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
          <td width="487" height="1" bordercolor="#D6D3CE">
          ��</td>
        </tr>
        <tr>
          <td width="487" height="1" bordercolor="#D6D3CE">
          <p align="right">��</td>
        </tr>
      </table>
      </center>
    </div>
    </td>
  </tr>
</table></form>

<% end if %>