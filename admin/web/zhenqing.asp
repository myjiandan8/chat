<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(3) %>

<%

if Request("chatxy")<>"" then

	if len(Request("chatxy"))>1500 then Call errstr("1500�����ڲſ���Ŷ����")

	sql="select chatxy from web where id=" & rmport
	rs.open sql,chatconn,1,3
	chatxy = Request("chatxy")
	if not (rs.eof or err) then
       rs("chatxy") = chatxy
       rs.Update
       rs.close
	end if

	Call errstr("�޸ĳɹ�����")
	
else

		sql="select chatxy from web where id=" & rmport
		rs.open sql,chatconn,1,3
       chatxy = rs("chatxy")
       rs.close


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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; �������</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="370" bgcolor="#FFFFFF" valign="top">
            

  
    <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="451">
          <tr>
	    <td width="82" align=left height="1">�˿ںţ�</td>
	    <td width="500" height="1"> <%=port%></td>
	      </tr>
<form name="form5" method="post" action="zhenqing.asp">  
          <tr>
	    <td  align=left height="169" width="82">������</td>
	    <td height="169" width="500" >
		<textarea rows="23" name="chatxy" cols="69"><%=chatxy%></textarea> </td>
	      </tr>
          <tr>
	    <td  align=left height="20" width="82"></td>
	    <td height="20" width="500" >����������������վ��ҳ��ʾ 1500������ ֧�� HTML �� JS�ű� ��HTML 
		Ԫ��</td>
	      </tr>

          <tr>
            <td width="586" height="52" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
            </td>
            </tr>
<form>
        	<tr>
            <td width="586" height="27" align="center" colspan="2" bgcolor="#FFFFFF">
            

            ��</td>
            </tr>
			<tr>
            <td width="82" height="164" align="center" bgcolor="#FFFFFF">
            

            ����</td>
            <td width="497" height="164" align="center" bgcolor="#FFFFFF">
            

            <p align="left"><font color="#008000">Ϊ�˷��������պ�ѧϰ���ֲ��������������˸��������ṩ��Ҳο�ѧϰ��<br>
			��������</font><a target="_blank" href="http://2000.liaowan.com"><font color="#008000">http://2000.liaowan.com</font></a><font color="#008000"> 
			����֮�� ��������ҿ��Կ���Ч����</font><textarea rows="24" name="dfdfd" cols="69">	<table border="0" width="83%" id="table1" cellpadding="0">
		<tr>
			<td height="25">��</td>
		</tr>
		<tr>
			<td height="62" valign="top" style="filter:glow(color=#ffffff, strength=4)">
<br><br><br><br><br><br><br><br><br><br><br>�������:<b><font size="4" face="�����п�" color="#9EA822"  ><br>    ��ӭ��������֮�� - ����������Ƶ�����ң����鹵ͨ�����￪ʼ�������ǴӴ˳�Ϊ֪�����ѣ���ѧϰ�빤��֮����������ۣ�</font></b>
			</td>
		</tr>
		<tr>
			<td>��</td>
		</tr>
	</table></textarea></td>
            </tr>

        </table>
        </center>
      </div>

  
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