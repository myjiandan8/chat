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
<SCRIPT language=javascript>
<!--
//���뿪ʼ �ű���ƣ�����Ƽ�

function tian() // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	var m=login.renshu.value*6;
	if(login.shipin.value==1){m=m+login.renshu.value*3};
	if(login.liti.value==1){m=m+login.renshu.value*1};
	login.m.value=m;
}

function yuyin(sx) // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	login.renshu.value=sx;
	//login.liti.value=1;
	tian();
}

function shipins(sx) // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	login.renshu.value=sx;
	login.shipin.value=1;
	tian();
}

function litis(sx) // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	login.renshu.value=sx;
	login.liti.value=1;
	tian();
}

//-->
</SCRIPT>
<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�����Ҳ�Ʒ���� - �����������</TITLE>

<% call top %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="542" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="542">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>��ӭ 
			[ <%=UN%> 
          ] ����</b>[����������]<b>-����������� </b>
          ��������ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="542"></td>
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="187">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8">
            <font color="#FFFFFF"><b>
            ��<a name="cp">BChat</a>[<a name="js">��</a>��]��Ƶ���������� [1001]��</b>�������Ҫ���ϵͳ���Զ�����۸�</font></td>
          </tr>
          <tr>
          
            <td width="68" height="23" align="center"><b>��������</b></td>
            <td width="79" height="23" align="center"><b>����</b></td>
            <td width="88" height="23" align="center"><b>װ��Ƶ</b></td>
            <td width="84" height="23" align="center"><b>װ������</b></td>
            <td width="52" height="23" align="center"><b>����Ƶ</b></td>
            <td width="52" height="23" align="center"><b>������</b></td>
            <td width="59" height="23" align="center"><b>�ű��ռ�</b></td>
            <td width="59" height="23" align="center"><b>�����ײ�</b></td>
            
          </tr>
<%
i=30
do while (i<61) %>
          <tr>
            <td width="68" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000"><b><%=i%></b></font>��</td>
            <td width="79" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:yuyin(<%=i%>);" title="�����������<%=i%>�˵����������Ҽ۸�"><b><font color="#FF0000"><%=i*6%></font></b>Ԫ/��</a> 
			��</td>
            <td width="88" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:shipins(<%=i%>);" title="�����������<%=i%>�˼���Ƶ���ܵ����������Ҽ۸�">
			��<b><font color="#FF0000"><%=i*3%></font></b>Ԫ/��</a>
			��</td>
            <td width="84" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:litis(<%=i%>);" title="�����������<%=i%>�˼����������ܵ����������Ҽ۸�">
			��<b><font color="#FF0000"><%=i%></font></b>Ԫ/��</a>
			��</td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">2</font></b><font color="#008000">��</font></td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">3</font></b><font color="#008000">��</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">2</font></b><font color="#008000">��</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#tc"><font color="#006600">�ײ�һ</font></a></td>
          </tr>
<%
 i=i+30
 loop %>
<%
i=100
do while (i<501) %>

          <tr>
            <td width="68" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000"><b><%=i%></b></font>��</td>
            <td width="79" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:yuyin(<%=i%>);" title="�����������<%=i%>�˵����������Ҽ۸�"><b><font color="#FF0000"><%=i*6%></font></b>Ԫ/��</a> 
			��</td>
            <td width="88" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:shipins(<%=i%>);" title="�����������<%=i%>�˼���Ƶ���ܵ����������Ҽ۸�">
			��<b><font color="#FF0000"><%=i*3%></font></b>Ԫ/��</a>
			��</td>
            <td width="84" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:litis(<%=i%>);" title="�����������<%=i%>�˼����������ܵ����������Ҽ۸�">
			��<b><font color="#FF0000"><%=i%></font></b>Ԫ/��</a>
			��</td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">2</font></b><font color="#008000">��</font></td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">3</font></b><font color="#008000">��</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">2</font></b><font color="#008000">��</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#tc"><font color="#006600">�ײ�һ</font></a></td>
          </tr>
<%
 i=i+50
 loop %>
     <tr>
            <td width="592" height="57" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left">&nbsp;<font color="#008000"><a name="jss">�۸���㹫ʽ</a>�� </font>
			[��&nbsp;&nbsp;&nbsp; ��]<b> </b>����������� x ��6<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[�� �� Ƶ]<b> </b>����������� x ��3<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[��������]<b> </b>����������� x ��1&nbsp;&nbsp;&nbsp; 
			֧���Զ�������</td>
     </tr>
        	<tr>
            <td width="592" height="13" align="center" colspan="8" bgcolor="#FFFFFF">
            <table border="0" width="100%" id="table8" cellspacing="1" height="26">
<form name="login" id="login" action="shop_bchat_add.asp" method="post">
						<tr>
							<td width="67" height="26"><font color="#008000">
							�۸���㣺</font></td>
							<td height="26" width="298">
							<select size="1" name="renshu" onChange="tian();">
<%
i=30
do while (i<1001) %>
							<option style="color: #0000ff" value=<%=i%>>��������<%=i%>��</option>
<%
 i=i+1
 loop %>					
							</select><select size="1" name="shipin" onChange="tian();">
							<option style="color: #ff0000" value="0">����װ��Ƶ</option>
							<option style="color: #008000" value="1">��װ��Ƶ</option>
							</select><select size="1" name="liti" onChange="tian();">
							<option style="color: #ff0000" value="0">����װ������</option>
							<option style="color: #008000" value="1">��װ������</option>
							</select></td>

							<td width="136" height="26"><input style="color: #0000ff" type="text" name="m" size="8" value="180">Ԫ/��</td>
							<td width="64" height="26">
							<p align="left">
							<input type="submit" value="��������" name="B1"></td>
						</tr>
</form>
					</table>

            </td>
     		</tr>
     <tr>
            <td width="592" height="26" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left"><b><font color="#FF0000">�ر��Żݣ�</font></b><font color="#FF0000">��2005��1��20��֮ǰ�����κ�һ�������Ҳ�Ʒ������ѻ���[�ײ�һ]һ�����</font></td>
     </tr>        </table>
        </center>
      </div>
      
      <br>
     
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