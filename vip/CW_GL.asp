<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--ģ���ļ�#include file="../inc/BBTOP.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
<%
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=�Ƿ�������"
		response.end
	end if
end if

if Request("cz")="kaihu" then
	   '����
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_user where name='"& UN &"' "
	  rsf.open sql,conn,1,3
	  if rsf.eof or err then
	  
			rsf.AddNew    
       		rsf("uid") = session("Uid")
			rsf("name") = UN
			rsf.Update
			rsf.close

	  %>
	  
	<script language=Javascript>
		alert("�����ɹ�");
		//window.history.go(-1);	
	</script>
	
	<% else %>
	
	 <script language=Javascript>
		alert("��粻Ҫ��������Ц�ò���!!");
		//window.history.go(-1);	
	</script>
	  
	  
	  <%
	  end if
end if

%>

<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�����������</TITLE>

<% call top %>
<base target="_blank">


<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="363" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="363">
          <img border="0" src="../user/img/Main_01.gif"><font class="titletext" color="#ff0000"><b>��ӭ [ <%=UN%> 
          ] ��������������� </b>
          ��������CM:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="363"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="30" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="322">
      
      
      
      




      <p align="center">��
      <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_user where name='"& UN &"' "
	  rsf.open sql,conn,1,1
	  if rsf.eof or err then
	  %> SORRY!�㻹û�������忪�����ʻ�!<br>
	  ���Ҫ���� <a target="_self" href="CW_GL.asp?user=<%=UN%>&cz=kaihu">�������￪��</a><br>
	  <%
	  else
	  %>
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="149">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="7"><b>
            <font color="#FFFFFF">��<%=UN%>�������ʻ���Ϣ��</font></b></td>
          </tr>
          <tr>
          
            <td width="77" height="29" align="center"><b>�ܽ��</b></td>
            <td width="72" height="29" align="center"><b>�����</b></td>
            <td width="79" height="29" align="center"><b>�ܻ��</b></td>
            <td width="75" height="29" align="center"><b>���˿�</b></td>
            <td width="70" height="29" align="center"><b>������</b></td>
            <td width="75" height="29" align="center"><b>�����ʽ�</b></td>
            <td width="71" height="29" align="center"><b>������</b></td>
            
          </tr>
          <tr>
          
            <td width="77" height="29" align="center" bgcolor="#F9F9F7">��<%=rsf("jn")%>Ԫ</td>
            <td width="72" height="29" align="center" bgcolor="#F9F9F7">��<%=rsf("hn")%>Ԫ</td>
            <td width="79" height="29" align="center" bgcolor="#F9F9F7">��<%=rsf("dn")%>Ԫ</td>
            <td width="75" height="29" align="center" bgcolor="#F9F9F7">��<%=rsf("tn")%>Ԫ</td>
            <td width="70" height="29" align="center" bgcolor="#F9F9F7">��<%=rsf("xn")%>Ԫ</td>
            <td width="75" height="29" align="center" bgcolor="#F9F9F7">��<%=rsf("kn")%>Ԫ</td>
            <td width="71" height="29" align="center" bgcolor="#F9F9F7">��<font color="#FF0000"><%=rsf("yn")%></font>Ԫ</td>
            
          </tr>

          <tr>
            <td width="592" height="46" align="center" colspan="7" bgcolor="#FFFFFF">
            <p align="left"><b>��ز���</b>��<font color="#BD7200">��<b>�������&nbsp; 
            ���л��&nbsp; ���߸���&nbsp; �ֻ�����&nbsp; ��Ʊ��Ҫ�������˿�&nbsp; ���ʽ��</b></font></td>
            </tr>

        </table>
        </center>
      </div>
      
      <br> <br>
      
     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="84">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8"><b>
            <font color="#FFFFFF">��<%=UN%>���ѹ��������</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>���</b></td>
            <td width="160" height="23" align="center"><b>��������</b></td>
            <td width="47" height="23" align="center"><b>��Ʒid</b></td>
            <td width="75" height="23" align="center"><b>���</b></td>
            <td width="73" height="23" align="center"><b>��ͨ����</b></td>
            <td width="66" height="23" align="center"><b>����ʱ��</b></td>
            <td width="40" height="23" align="center"><b>״̬</b></td>
            <td width="50" height="23" align="center"><b>����</b></td>
            
          </tr>
<%
sql="select * from CW_CP where name='"& UN &"'"
set rs=conn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="592" height="26" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left">��Ǹ�㻹û�й����κ�һ�ַ����Ʒ!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
          <tr>
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("id")%></td>
            <td width="161" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("djname")%></td>
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("vid")%></td>
            <td width="75" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("n")%>Ԫ/��</td>
            <td width="73" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("ktimes")%></td>
            <td width="66" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("dtimes")%></td>
            <td width="40" height="1" align="center" bgcolor="#F9F9F7">��<%
           if rs("zt")=0 then
           response.write "ֹͣ"
           elseif rs("zt")=1 then 
           response.write "����"
           else
           response.write "�쳣"
           end if
            
            %></td>
            <td width="50" height="1" align="center" bgcolor="#F9F9F7">
            <a href="CW_CP.asp?user=<%=UN%>&id=<%=rs("id")%>&cz=x">����</a></td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>
        </table>
        </center>
      </div>
      
      
      <br> <br>
      
      
 <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="137">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="5"><b>
            <font color="#FFFFFF">��<a name="cp">��������Ʒ�б�</a>��</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>���</b></td>
            <td width="154" height="23" align="center"><b>��������</b></td>
            <td width="78" height="23" align="center"><b>����</b></td>
            <td width="237" height="23" align="center"><b>����˵��</b></td>
            <td width="42" height="23" align="center"><b>����</b></td>
            
          </tr>
<%
sql="select * from CW_DJ"
set rs=conn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="592" height="26" align="center" colspan="5" bgcolor="#FFFFFF">
            <p align="left">ϵͳ����!��͹���Ա��ϵ!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
          <tr>
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("id")%></td>
            <td width="154" height="1" align="center" bgcolor="#F9F9F7">��<b><%=rs("name")%></b></td>
            <td width="78" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("nsv")%>Ԫ/��</td>
            <td width="237" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("zb")%></td>
            <td width="42" height="1" align="center" bgcolor="#F9F9F7">
            <a href="CW_CP.asp?user=<%=UN%>&id=<%=rs("id")%>&cz=m">����</a></td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>

     <tr>
            <td width="592" height="79" align="center" colspan="5" bgcolor="#FFFFFF">
            <p align="left"><font color="#CC6600">&gt; </font>
            <font color="#FF0000">�ر��Żݻ:ǰ50�������ҹ����û���������JS�ű��ռ�һ��,���һ��.</font><font color="#CC6600"><br>
            &gt; �����ҷ���,�ṩ�������ù���,�û�����ͨ���޸�һ��JS���ýű������Ի������Լ���������<br>
            &gt; </font><font color="#008000">
            ����10��������[����10��]���ϵ��û�,���Ͷ����û����ݿ�,�������,���ֲ�,��̳,��������(��һ��)</font></td>
     </tr>
        </table>
        </center>
      </div>
            
      

      
      
      <br>
      <%
	  end if
      %>
      
      
      
      <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_dl where name='"& UN &"' "
	  rsf.open sql,conn,1,1
	  if not (rsf.eof or err) then
	  %>
      
      


 <br>
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="121">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="4"><b>
            <font color="#FFFFFF">��<%=UN%>��Ӫ���ʻ���Ϣ��</font></b></td>
          </tr>
          <tr>
          
            <td width="67" height="24" align="center"><b>�ȼ�</b></td>
          
            <td width="163" height="24" align="center"><b>�����</b></td>
            <td width="156" height="24" align="center"><b>���˿�</b></td>
            <td width="149" height="24" align="center"><b>������</b></td>
            
          </tr>
          <tr>
          
            <td width="67" height="24" align="center" bgcolor="#F9F9F7">��<%
            select case rsf("dj")
				case 0
				response.write "��ͨ"
				case 1
				response.write "�߼�"
				case 2
				response.write "����"
				case 3
				response.write "�ر�"
            end select
            %>����</td>
          
            <td width="163" height="24" align="center" bgcolor="#F9F9F7">��<%=rsf("zn")%>Ԫ</td>
            <td width="156" height="24" align="center" bgcolor="#F9F9F7">��<%=rsf("tn")%>Ԫ</td>
            <td width="149" height="24" align="center" bgcolor="#F9F9F7">��<font color="#FF0000"><%=rsf("yn")%></font>Ԫ</td>
            
          </tr>

          <tr>
            <td width="592" height="28" align="center" colspan="4" bgcolor="#FFFFFF">
            <p align="left"><b>&nbsp; ��ز���</b>��<font color="#BD7200">��<b>����ת������ʺ�&nbsp; �������˿�&nbsp;&nbsp; ���ʽ��</b></font></td>
            </tr>

        </table>
        </center>
      </div>
      
      
<br><br>

     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="81">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8"><b>
            <font color="#FFFFFF">��<%=UN%>���ѹ��������</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="20" align="center"><b>���</b></td>
            <td width="160" height="20" align="center"><b>��������</b></td>
            <td width="47" height="20" align="center"><b>��Ʒid</b></td>
            <td width="75" height="20" align="center"><b>���</b></td>
            <td width="65" height="20" align="center"><b>��ͨ����</b></td>
            <td width="64" height="20" align="center"><b>����ʱ��</b></td>
            <td width="33" height="20" align="center"><b>״̬</b></td>
            <td width="67" height="20" align="center"><b>���</b></td>
            
          </tr>
<%
sql="select * from CW_CP where dl='"& UN &"'"
set rs=conn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="592" height="26" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left">��Ǹ�㻹û�й����κ�һ�ַ����Ʒ!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
          <tr>
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("id")%></td>
            <td width="161" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("djname")%></td>
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("vid")%></td>
            <td width="75" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("n")%>Ԫ/��</td>
            <td width="65" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("ktimes")%></td>
            <td width="64" height="1" align="center" bgcolor="#F9F9F7">��<%=rs("dtimes")%></td>
            <td width="33" height="1" align="center" bgcolor="#F9F9F7"><%
           if rs("zt")=0 then
           response.write "ֹͣ"
           elseif rs("zt")=1 then 
           response.write "����"
           else
           response.write "�쳣"
           end if
            
            %></td>
            <td width="67" height="1" align="center" bgcolor="#F9F9F7"><%=rs("dldj")%>Ԫ</td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>
        </table>
        </center>
      </div>
      
<% end if %>







<br><br>
      </td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="87%"></td>
        </tr>
    <tr>
      <td width="87%" height="18">��</td>
    </tr>
  </table>
  </center>
</div>






<% call di %>