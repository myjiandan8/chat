<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(2) %>
<%

if Request("TemplateNo")<>"" then

	sql="select TemplateNo from [Room] where roomid=" & id
	rs.open sql,mechatconn,1,3
	TemplateNo = Request("TemplateNo")
	if not (rs.eof or err) then
	
       if TemplateNo>0 then
        rs("TemplateNo") = TemplateNo
       else
       	rs("TemplateNo") = id

       end if
       rs.Update
       rs.close
	end if
	Call wenti("�޸ĳɹ�����")
end if
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>ģ���޸�</title>
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
       
<form name="form5" method="post" action="muban.asp">  
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; ѡ��������ģ��</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="370" bgcolor="#FFFFFF" valign="top">
            

  
               <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="236">
          <tr>
	    <td width="103" align=left height="1">ID�ţ�</td>
	    <td width="479" height="1"> <%=port%></td>
	      </tr>
          <tr>
	    <td  align=left height="9" width="103">���ù������Ա��</td>
	    <td height="9" width="479" ><select size="1" name="muban">
		<option value="1">Ĭ��ģ��1</option>
		<option value="0">�Զ���ģ��</option>
		<option value="2">Ĭ��ģ��2</option>
		<option value="3">Ĭ��ģ��3</option>
		<option value="4">Ĭ��ģ��4</option>
		</select> </td>
	      </tr>
          <tr>
	    <td  align=left height="39" width="103"></td>
	    <td height="39" width="479" >��λͬ�ţ�MECHAT���µ���������������<br>
		дд������� �Զ���ģ�����ʹ�ô���޸ĵ�ģ�壡</td>
	      </tr>

          <tr>
	    <td  align=left height="126" width="103">����ģ������أ�</td>
	    <td height="126" width="479" >1&gt;<a href="../down/1.rar">����ģ��</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		û���ر�Ĺ���&nbsp; ���ǻ���ģ��ɣ�<br>
		2&gt;<a href="../down/2.rar">����������ģ��</a>&nbsp;&nbsp;&nbsp; ������ҿ�����ģ�� 
		�����Ĺ��ܶ�����ȥ�ˡ�<br>
		<a href="../down/3.rar">3&gt;�ɸı�ɫ����ֲģ��</a>&nbsp; ��MECHAT�Լ������Ŀ����޸���ɫ��ģ�塣<br>
		<a href="../down/4.rar">4&gt;����������ģ�� </a>&nbsp;&nbsp; ������ҿ�����ģ�� 
		�����Ĺ��ܶ�����ȥ�ˡ�</td>
	      </tr>

          <tr>
            <td width="586" height="58" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
            </td>
            </tr>

        	<tr>
            <td width="586" height="21" align="center" colspan="2" bgcolor="#FFFFFF">
            

            ��</td>
            </tr>

        </table>
        </center>
      </div>
<form>
  
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