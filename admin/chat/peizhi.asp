<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(20) %>
<%


if Request("roomname")<>"" then


	roomname = Request("roomname")
	max = Request("max")
	rtype=Request("rtype")
	logins=Request("logins")
	
	
	if CheckHtml(roomname) then errstr("���������зǷ��ַ���")


  'if loginw<100000 or loginw loginw>999999 then errstr("����д��ȷ�ı��ķ���ID��")

  if roomname="" or max="" or rtype="" then errstr("����д������")
  
	sql="SELECT * FROM [Web] where id =" & rmport
	rs.open sql,chatconn,1,3

       rs("Roomname") = Roomname
       rs("max") = max
       rs("rtype") = rtype
       rs("logins")=logins
       'rs("loginw")=loginw

       rs.Update
       rs.close

	   errstr("�޸ĳɹ���")
	   
end if


%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>�������ù���</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="265">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; ����</font></b><font color="#FFFFFF"><b>��Ϣ����</b></font></td>
          </tr>
          
          <tr>
            <td width="586" height="235" bgcolor="#FFFFFF" valign="top">
            

  <form name="form5" method="post" action="peizhi.asp">
                    
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="209">
          <tr>
	    <td width="20%" align=right height="16">�˿ں�:</td>
	    <td width="80%" height="16"> <%=rmport%>��</td>
	      </tr>
          <tr>
        <TD height="26" width="103" align="right"> ����������ID:</TD>
        <TD height="26" width="483"> 
		<%=loginw%> </TD>
			</tr>
          <tr>
        <TD height="26" width="103" align="right"> ����������:&nbsp;
        </TD>
        <TD height="26" width="483"> 
            
          <INPUT type="text" name="RoomName" maxlength="20" size="20" value="<%=RoomName%>">
        	��֤ͬ���������������ͬ</TD>
      	</tr>
			<tr>
        <TD height="26" width="103" align="right"> �����ҵ�½��ַ:</TD>
        <TD height="26" width="483"> 
            
		<input type="text" name="logins" maxlength="200" size="32" value="<%=logins%>"></TD>
      		</tr>
			<tr>
        <TD height="26" width="103" align="right"> ����������:</TD>
        <TD height="26" width="483"> <select size="1" name="ff">
		<option value="2" <%if ff=3 then response.write " selected"%>>����</option>
		</select></TD>
			</tr>
			<tr>
        <TD height="26" width="103" align="right"> ��������:</TD>
        <TD height="26" width="483"> <select size="1" name="rtype">
		<option value="0" <%if rtype=0 then response.write " selected"%>>��Ƶ</option>
		<option value="1" <%if rtype=1 then response.write " selected"%>>����</option>
		<option value="2" <%if rtype=2 then response.write " selected"%>>����</option>
		</select></TD>
			</tr>
			<tr>
        <TD height="26" width="103" align="right"> ��������:&nbsp;
        </TD>
        <TD height="26" width="483"> 
		<input type="text" name="max" maxlength="3" size="24" value="<%=max%>"> 
		�������&nbsp; Ҫ��ʵ����ͬŶ</TD>
      	</tr>

          <tr>
            <td width="592" height="38" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
            </td>
            </tr>

        </table>
        </center>
      </div>
            
</form> 
  
            </td>
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