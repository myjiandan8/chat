<% sub caiwu %>

 <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_user where uid=" & uid
	  rsf.open sql,conn,1,1
	  if rsf.eof or err then
	  %>SORRY!你还没有在聊湾开财务帐户！<br>
	    开户方法，请你找一位销售客户服务代表！<br>
	  <%
	  else
	  %>
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="107">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="6"><b>
            <font color="#FFFFFF">　财务帐户信息　</font></b></td>
          </tr>
          <tr>
          
            <td width="77" height="29" align="center"><b>借款</b></td>
            <td width="79" height="29" align="center"><b>到款</b></td>
            <td width="75" height="29" align="center"><b>退款</b></td>
            <td width="70" height="29" align="center"><b>消费</b></td>
            <td width="75" height="29" align="center"><b>可用资金</b></td>
            <td width="71" height="29" align="center"><b>结余金额</b></td>
            
          </tr>
          <tr>
          
            <td width="77" height="21" align="center" bgcolor="#F9F9F7">　<%=rsf("jn")%>元</td>
            <td width="79" height="21" align="center" bgcolor="#F9F9F7">　<%=rsf("dn")%>元</td>
            <td width="75" height="21" align="center" bgcolor="#F9F9F7">　<%=rsf("tn")%>元</td>
            <td width="70" height="21" align="center" bgcolor="#F9F9F7">　<%=rsf("xn")%>元</td>
            <td width="75" height="21" align="center" bgcolor="#F9F9F7">　<%=rsf("kn")%>元</td>
            <td width="71" height="21" align="center" bgcolor="#F9F9F7">　<font color="#FF0000"><%=rsf("yn")%></font>元</td>
            
          </tr>

          <tr>
            <td width="592" height="25" align="center" colspan="6" bgcolor="#FFFFFF">
            <p align="left"><b>相关操作</b>：<font color="#BD7200">　<b>邮政汇款&nbsp; 
            银行汇款&nbsp; 在线付款&nbsp; 手机付款&nbsp; 发票索要　结余退款&nbsp; 疑问解答</b></font></td>
            </tr>

        </table>
        </center>
      </div>
      
      <br>
      

      
      <%
	  end if
      %><% end sub %>