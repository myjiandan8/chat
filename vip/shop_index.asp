<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<!--#include file="shop_inc.asp"-->
<%
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=�Ƿ�������"
		response.end
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
      
      
      <table cellPadding="0" width="478" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="478">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>��ӭ [ <%=UN%> 
          ] ��������������� </b>
          ��������ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="478"></td>
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
      
 <% call caiwu %>
      
      
     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="80">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8"><b>
            <font color="#FFFFFF">���ѹ��������</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>���</b></td>
            <td width="99" height="23" align="center"><b>��������</b></td>
            <td width="45" height="23" align="center"><b>��Ʒid</b></td>
            <td width="56" height="23" align="center"><b>���</b></td>
            <td width="68" height="23" align="center"><b>��ͨ����</b></td>
            <td width="65" height="23" align="center"><b>����ʱ��</b></td>
            <td width="46" height="23" align="center"><b>״̬</b></td>
            <td width="133" height="23" align="center"><b>����</b></td>
            
          </tr>
<%
sql="select * from CW_CP where uid=" & uid
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
            <td width="46" height="21" align="center" bgcolor="#F9F9F7"><%=rs("id")%></td>
            <td width="99" height="21" align="center" bgcolor="#F9F9F7"><%=rs("djname")%></td>
            <td width="45" height="21" align="center" bgcolor="#F9F9F7"><%=rs("vid")%></td>
            <td width="56" height="21" align="center" bgcolor="#F9F9F7"><%=rs("n")%>Ԫ</td>
            <td width="68" height="21" align="center" bgcolor="#F9F9F7"><%=rs("ktimes")%></td>
            <td width="65" height="21" align="center" bgcolor="#F9F9F7"><%=rs("dtimes")%></td>
            <td width="46" height="21" align="center" bgcolor="#F9F9F7"><%
           if rs("zt")=0 then
           response.write "ֹͣ"
           elseif rs("zt")=1 then 
           response.write "����"
           else
           response.write "�쳣"
           end if
            
            %></td>
            <td width="133" height="21" align="center" bgcolor="#F9F9F7">
            <a href="http://liaowan.com/admin">����</a>
            <a href="CW_CP.asp?user=<%=UN%>&id=<%=rs("id")%>&cz=x">����</a></td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>
        </table>
        </center>
      </div>
      
      
      <br> 

      

      

 <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="232">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="4"><b>
            <font color="#FFFFFF">��<a name="cp">��������Ʒ</a>��</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>���</b></td>
            <td width="187" height="23" align="center"><b>��������</b></td>
            <td width="272" height="23" align="center"><b>����˵��</b></td>
            <td width="65" height="23" align="center"><b>��񶩼�</b></td>
            
          </tr>

          <tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">1001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			BChat[����]��Ƶ����������</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">���������е�������Ƶ������/��Ƶ����ϵͳ</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            <a href="shop_bchat.asp"><font color="#FF0000">�鿴����</font></a></td>
          </tr>

     		<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">2001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			MeChat[����]��Ƶ����������</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">������Ƶ������/��Ƶ����ϵͳ ����֮��</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            <a href="shop_mechat.asp">�鿴����</a></td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">3001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			���ķ���ҽ��ײ�ϵͳ</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			[�ṩȫ�׷���]Ŀǰ�������</td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            <a href="shop_bliaochat.asp"><font color="#FF0000">��������</font></a></td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">6001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			������������վ�ײ�</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">����������/��վ/��ҳ/����/���/��̳/���԰�</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            �鿴����</td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">7001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">�������� 
			��������</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">com net 
			org cn com.cn net.cn org.cn ������</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            �鿴����</td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">8001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">����������ռ�</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">�������ܿռ�֧�ָ������ݿ�ͽű�����</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            ��Ʒ�б�</td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">9001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			������Ƶ���������</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">�������ֱ��ͬ 
			���칤���� ���ݺ��� ��ϵ</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            ��Ʒ�б�</td>
          </tr>

     <tr>
            <td width="592" height="21" align="center" colspan="4" bgcolor="#FFFFFF">
            <p align="left">&nbsp;<font color="#008000">��������Ʒ����鿴���ۣ��鿴���������ͼ۸�Ȼ��Ϳ���ʵʱ����ͨ��Ҫ�ķ����Ʒ��</font></td>
     </tr>
        </table>
        </center>
      </div>
          
      <br>
      
      
      <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_dl where uid=" & uid
	  rsf.open sql,conn,1,1
	  if not (rsf.eof or err) then
	  %>
      
      
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="121">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="4"><b>
            <font color="#FFFFFF">��Ӫ���ʻ���Ϣ��</font></b></td>
          </tr>
          <tr>
          
            <td width="67" height="24" align="center"><b>�ȼ�</b></td>
          
            <td width="163" height="24" align="center"><b>�����</b></td>
            <td width="156" height="24" align="center"><b>���˿�</b></td>
            <td width="149" height="24" align="center"><b>������</b></td>
            
          </tr>
          <tr>
          
            <td width="67" height="24" align="center" bgcolor="#F9F9F7"><%
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
          
            <td width="163" height="24" align="center" bgcolor="#F9F9F7"><%=rsf("zn")%>Ԫ</td>
            <td width="156" height="24" align="center" bgcolor="#F9F9F7"><%=rsf("tn")%>Ԫ</td>
            <td width="149" height="24" align="center" bgcolor="#F9F9F7"><font color="#FF0000"><%=rsf("yn")%></font>Ԫ</td>
            
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="80">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8"><b>
            <font color="#FFFFFF">��ҵ����¼��</font></b></td>
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
sql="select * from CW_CP where dl=" & uid
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
            <td width="46" height="24" align="center" bgcolor="#F9F9F7"><%=rs("id")%></td>
            <td width="161" height="24" align="center" bgcolor="#F9F9F7"><%=rs("djname")%></td>
            <td width="46" height="24" align="center" bgcolor="#F9F9F7"><%=rs("vid")%></td>
            <td width="75" height="24" align="center" bgcolor="#F9F9F7"><%=rs("n")%>Ԫ/��</td>
            <td width="65" height="24" align="center" bgcolor="#F9F9F7"><%=rs("ktimes")%></td>
            <td width="64" height="24" align="center" bgcolor="#F9F9F7"><%=rs("dtimes")%></td>
            <td width="33" height="24" align="center" bgcolor="#F9F9F7"><%
           if rs("zt")=0 then
           response.write "ֹͣ"
           elseif rs("zt")=1 then 
           response.write "����"
           else
           response.write "�쳣"
           end if
            
            %></td>
            <td width="67" height="24" align="center" bgcolor="#F9F9F7"><%=rs("dldj")%>Ԫ</td>
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



<%call endpage()
%>