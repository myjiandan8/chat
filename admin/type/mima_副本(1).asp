<!--#include file="../../inc/sqlconn.asp"-->
<% newnj="admin" %>
<!--#include file="../checkUser.asp"-->


<%
	if Request("xx")<>"" then
	
	if Request("xx")=1 then
	
		if Request("adminpasswd")<>userroompasswd then Call errstr("ԭ�����������")
		if Request("password")="" then Call errstr("�����벻��Ϊ��")
		if Request("password")<>Request("password1") then Call errstr("�������������벻ͬ��")
		
	end if
		sql="select adminpasswd,question,answer from web where cid=" & rmport
		rs.open sql,chatconn,1,3
		
		if Request("xx")=1 then rs("adminpasswd") =trim(Request("password1"))
		
		rs("question") =trim(Request("question"))
		rs("answer") =trim(Request("answer"))
       	rs.Update
       	rs.close
	
		'sql="select adminpasswd from [Room] where port=" & rmport
		'rs.open sql,Bchatconn,1,3
		'rs("adminpasswd") =trim(Request("password1"))
       	'rs.Update
       	'rs.close
		
		session("rmpass") = trim(Request("password1"))
		
		Call errstr("�������������޸ĳɹ�����")
	
	end if
	

	if Request("userpasswd1")<>"" and Request("userpasswd2")<>"" then

		sql="select userpasswd1,userpasswd2 from web where id=" & rmport
		rs.open sql,chatconn,1,3
		rs("userpasswd1") =trim(Request("userpasswd1"))
		rs("userpasswd2") =trim(Request("userpasswd2"))
       	rs.Update
       	rs.close

		Call errstr("�޸ĳɹ�����")
	
	end if


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>�����޸�</title>
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="512">

<form name="form5" method="post" action="mima_����(1).asp">
          <tr>
            <td width="586" bgcolor="#0075F7" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp; �޸�����</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
            
          <tr>
	    <td width="127" align=left height="1">�˿ںţ�</td>
	    <td width="455" height="1"> <%=rmport%></td>
	      </tr>
            
          <tr>
	    <td width="582" align=left height="1" colspan="2"><font color="#008000">
		�޸���������</font></td>
	      </tr>
          <tr>
	    <td  align=left height="27" width="98">�Ƿ��޸����룺</td>
	    <td height="27" width="484" >
        ���޸�<input type="radio" value="0" name="xx" checked>&nbsp;&nbsp; �޸�<input type="radio" value="1" name="xx"></td>
	      </tr>
			<tr>
	    <td  align=left height="0" width="98">ԭ���룺</td>
	    <td height="0" width="484" >
        <input type="password" name="adminpasswd" size="18"  maxlength=15></td>
	      </tr>
          <tr>
	    <td  align=left height="4" width="98">�����룺</td>
	    <td height="4" width="484" >
        <input type="password" name="password" size="18"  maxlength=15></td>
	      </tr>

          <tr>
	    <td  align=left height="12" width="98">������֤��</td>
	    <td height="12" width="484" >
        <input type="password" name="password1" size="18"  maxlength=15></td>
	      </tr>

          <tr>
	    <td  align=left height="26" width="98">�����һ����⣺</td>
	    <td height="26" width="484" >
        <input name="question" size="18"  maxlength=25 value="<%=question%>">
		<img border="0" src="../../chat/images/new.gif" width="28" height="11"> 
		�հ�Ϊ�����������һع���</td>
	      	</tr>
			<tr>
	    <td  align=left height="25" width="98">�����һش𰸣�</td>
	    <td height="25" width="484" >
        <input name="answer" size="18"  maxlength=25 value="<%=answer%>">
		<img border="0" src="../../chat/images/new.gif" width="28" height="11"></td>
	      </tr>

          <tr>
	    <td  align=left height="53" width="582" colspan="2">
        <p align="center">
            
            <input type="submit" value=" ȷ���޸� " name="B2"></td>
	      </tr>
			<tr>
	    <td  align=left height="24" width="582" colspan="2">
        ��</td>
	      </tr>
</form>
<form name="form6" method="post" action="mima_����(1).asp">
          <tr>
	    <td  align=left height="25" width="582" colspan="2">
        ��</td>
	      </tr>
			<tr>
	    <td  align=left height="75" width="582" colspan="2">
        <font color="#008000">�޸���������������������</font> <br>
		���һ������Ϊ�գ���ô�ù�����Ŀ��Ϊ��Ч��Ϊ�˰�ȫ����û�б�Ҫ������²�Ҫ�������롣ͬ��Ϊ�˰�ȫ������˸��������߸߹������Ը�������Щ���룬������صĹ�����Ҫ���������������ṩ�����ˡ�</td>
	      </tr>
          <tr>
	    <td  align=left height="51" width="98">�������룺</td>
	    <td height="51" width="484" >
        <input name="userpasswd1" size="18"  maxlength=15 value="<%=userpasswd1%>"></td>
	      </tr>
          <tr>
	    <td  align=left height="24" width="98">�������������룺</td>
	    <td height="24" width="484" >
        <input type="text" name="userpasswd2" size="18"  maxlength=15 value="<%=userpasswd2%>"></td>
	      </tr>

          <tr>
            <td width="586" height="61" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
            </td>
            </tr>
</form>
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