<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<%
UN= Request.Cookies("username")
if UN<>""then
	sql="select name,sex,pic,uid from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=�Ƿ�������"
		response.end
	end if
	UID=rs("uid")
end if
%>
<head>
<style>
<!--
TD			{FONT-SIZE: 12px; COLOR: #000000; WORD-BREAK: break-all; }
.text			{FONT-SIZE: 13px; line-height: 160%;font-family: "����"}
.en			{FONT-FAMILY: verdana; FONT-SIZE: 11px; }
-->
</style>
</head>          
          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�û���������</TITLE>

<% call top %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="578" id="AutoNumber1" height="415">
    <tr>
      <td width="100%" height="1"></td>
    </tr>
    <tr>
      <td width="100%" height="364" align="center">
      <div align="left">
      <table cellSpacing="0" cellPadding="0" width="543" border="0" style="border-collapse: collapse" bordercolor="#111111" height="77">
        <tr>
          <td align="left" height="64" width="543">
          <font class="titletext" color="#ff0000">
          <b>
          <img border="0" src="img/Main_02.gif">��ӭ [ <%=UN%> ] ���������û��������� </b>
          ������������ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="543"></td>
        </tr>
        
        <tr>
          <td height="12" width="543">
          <p align="center"></td>
        </tr>
        
      </table>
      </div>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="578" id="AutoNumber2" height="250">
        <tr>
          <td width="578" height="1" colspan="4"></td>
        </tr>
        <tr>
          <td width="517" height="21" align="right" colspan="3">
          ��������ڹ�������ʹ�ü�������뿪ʱ������<a style="color: #0000FF; text-decoration: underline" target="_self" href="../Logout.asp?user=<%=UN%>">�˳�</a>�����û���������...&nbsp;&nbsp;&nbsp; </td>
          <td width="61" height="249" rowspan="11" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>

        <tr>
          <td width="104" height="19" align="center">
          �ҵ���������</td>
          <td width="414" height="18" colspan="2">&nbsp;</td>
          </tr>
        <tr>
          <td width="104" height="162" align="center" rowspan="5">
<img border="0" src="../PIC/FACE/<%if rs("sex")=1 then Response.Write "gg"%><%if rs("sex")=2 then Response.Write "mm"%><%=rs("pic")%>.gif"><br>
<br>
<a href="dudu">��������</a></td>
          <td width="52" height="28"><img border="0" src="img/button_1.gif"> </td>
          <td width="363" height="28">
          <a href="vip_dangan.asp">�޸ĵ���</a> |
          <a href="vip_diqu.asp">�޸����ڵ�</a> |
          <a href="mima.asp">�޸�����</a> |
          <a target="_self" href="../Logout.asp?user=<%=UN%>">�˳���½</a></td>
          </tr>
        <tr>
          <td width="52" height="28"><img border="0" src="img/button_2.gif"></td>
          <td width="363" height="28">
          <a href="../chat">������ҳ</a> |
          <a target="_blank" href="room_add.asp">�Խ�����</a> |
          <a href="shop_bchat.asp">���򷿼�</a> | 
			<a href="shop_bliaochat.asp"><font color="#FF0000">�������ͨ</font></a> | 
			<a href="../admin">˽������</a> 
          | </td>
          </tr>
        <tr>
          <td width="52" height="29"><img border="0" src="img/button_7.gif"></td>
          <td width="363" height="29">
          <a target="_blank" href="/bbs/favorites.asp">��ַ��ǩ</a> | 
			<a target="_blank" href="/bbs/friend.asp">ͨѶ¼</a> | 
			<a href="calendar.asp">�ռǱ�</a> | <a href="/bbs/message.asp">�鿴����</a> |</td>
          </tr>
        <tr>
          <td width="52" height="31"><img border="0" src="img/button_4.gif"></td>
          <td width="363" height="31"><a href="/bbs/friend.asp">�����б�</a> | ������ |</td>
          </tr>
        <tr>
          <td width="52" height="33"><img border="0" src="img/button_5.gif"></td>
          <td width="363" height="33"><a target="_blank" href="/bbs">��Ƶ����</a> | �������� | </td>
          </tr>
        <tr>
          <td width="517" height="1" colspan="3" align="center">
          </td>
          </tr>
        <tr>
          <td width="517" height="15" valign="top" colspan="3" align="center">
          <p></p>
			<p></p>
			<p>
          </td>
          </tr>

        <tr>
          <td width="517" height="16" valign="top" colspan="3">
          <font color="#008000">
          <b>������ͨ��</b></font><p>&nbsp;&nbsp; �ڱ���ӵ���Լ�������û������и��ˣ�����ı��ķ���ҽ�ϵͳ[<font color="#FF0000">����980Ԫ�����</font>]��<font color="#008000">��<b>���</b>�ṩ����</font>��<font color="#FF0000">ʹ����Ϊ2����</font>�������������ͬ�����������һ���ķ���ӵ���Լ��������ҵ�<b><font color="#000080">��վϵͳ����������ϵͳ�����š��������ӡ���վ���Զ������������ұ�־���������ϵͳ����̳����ϵͳ�����ֲ�[���]ϵͳ</font></b>������һ��ӵ�����е���һ�У�����һ�����ڶ�����ѵ��ṩ���㡣GO 
			GO GO��<br>
&nbsp;&nbsp;&nbsp; <b><font color="#800000">ע</font></b>������󷿼�����ÿ�ն��ﵽ80�����ϵ������ʣ��÷�����������ṩ���㡣<br>
&nbsp;&nbsp;&nbsp; <b><font color="#008000">ע</font></b>�����������ӵ���Լ�����վ����Ӧ�����뱾���񣬷����е�����ϵͳ���ǿ��Զ����ҽ�<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ������վ������Ŀ��<br>
&nbsp;&nbsp;&nbsp; <b><font color="#000080">ע</font></b>����Ҫ��֤����Ҫ���뷿���ӵ���ˣ��������������������ߵĻ�������Ȩ��ϵͳ�ջػ�<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ת��������ӵ���ˡ�<br>
			<br>
&nbsp;&nbsp;&nbsp; <b>����ϸ�Ĺ�����ҽ�˵�������</b><br>
��</td>
          </tr>
		<tr>
          <td width="517" height="15" valign="top" colspan="3" align="center">
          </td>
          </tr>

        </table>
      </td>
    </tr>
    <tr>
      <td width="100%" height="44" align="center">
      <p align="left"><font color="#008000">��ʾ</font>:���������Ҫ128λ��ȫSSL���䣬��IE5.5���°汾������� 
		����΢��128bit���ܰ���<br>
&nbsp;&nbsp;&nbsp;&nbsp;
		<a target="_blank" href="http://www.microsoft.com/windows/ie_intl/cn/download/128bit/highenc.mspx">
		http://www.microsoft.com/windows/ie_intl/cn/download/128bit/highenc.mspx</a></td>
    </tr>
	<tr>
      <td width="100%" height="6" align="center">
      </td>
    </tr>
    </table>
  </center>
</div>

    
    <p>
          </p>



<%call endpage()
%>