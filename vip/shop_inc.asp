<% sub caiwu %>

 <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_user where uid=" & uid
	  rsf.open sql,conn,1,1
	  if rsf.eof or err then
	  %>SORRY!�㻹û�������忪�����ʻ���<br>
	    ����������������һλ���ۿͻ��������<br>
	  <%
	  else
	  %>
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="107">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="6"><b>
            <font color="#FFFFFF">�������ʻ���Ϣ��</font></b></td>
          </tr>
          <tr>
          
            <td width="77" height="29" align="center"><b>���</b></td>
            <td width="79" height="29" align="center"><b>����</b></td>
            <td width="75" height="29" align="center"><b>�˿�</b></td>
            <td width="70" height="29" align="center"><b>����</b></td>
            <td width="75" height="29" align="center"><b>�����ʽ�</b></td>
            <td width="71" height="29" align="center"><b>������</b></td>
            
          </tr>
          <tr>
          
            <td width="77" height="21" align="center" bgcolor="#F9F9F7">��<%=rsf("jn")%>Ԫ</td>
            <td width="79" height="21" align="center" bgcolor="#F9F9F7">��<%=rsf("dn")%>Ԫ</td>
            <td width="75" height="21" align="center" bgcolor="#F9F9F7">��<%=rsf("tn")%>Ԫ</td>
            <td width="70" height="21" align="center" bgcolor="#F9F9F7">��<%=rsf("xn")%>Ԫ</td>
            <td width="75" height="21" align="center" bgcolor="#F9F9F7">��<%=rsf("kn")%>Ԫ</td>
            <td width="71" height="21" align="center" bgcolor="#F9F9F7">��<font color="#FF0000"><%=rsf("yn")%></font>Ԫ</td>
            
          </tr>

          <tr>
            <td width="592" height="25" align="center" colspan="6" bgcolor="#FFFFFF">
            <p align="left"><b>��ز���</b>��<font color="#BD7200">��<b>�������&nbsp; 
            ���л��&nbsp; ���߸���&nbsp; �ֻ�����&nbsp; ��Ʊ��Ҫ�������˿�&nbsp; ���ʽ��</b></font></td>
            </tr>

        </table>
        </center>
      </div>
      
      <br>
      

      
      <%
	  end if
      %><% end sub %>