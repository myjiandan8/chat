<!--���ݿ������ļ�#include file="TOP.asp" -->
<!--���ݿ������ļ�#include file="../inc/SQLconn.asp" -->
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�Խ�������</TITLE>
<% 

''''''������ģ��
'
Call OpenConn()
if Request.Cookies("username")<>"" then
sql="select name,passwd from [user] where name='"&HTMLEncode(Request.Cookies("username"))&"'"
Set Rs=Conn.Execute(SQL)
if rs.eof then Response.Cookies("username")=""
if Request.Cookies("userpass") <> rs("passwd") & asc(rs("passwd")) then Response.Cookies("username")=""
rs.close
set connn=nothing
end if
'
''''''
UN= Request.Cookies("username")
%>

<% call top %>

<script>
function OnLogin()
{
	if (!login.agreement.checked)
	{
		alert('����δ�Ķ�������[LiaoWan.Com]�Խ������ҷ�������Э�飡');
		login.agreement.focus();
		return false;
	}

<%
if UN="" then
%>

	if(!validstr(login.name))
	{
		login.name.focus();
		return false;
	}
	if(login.passwd.value.length <= 0)
	{
		alert("���������룬��������ע���û��ſ��Խ������ң�");
		login.passwd.focus();
		return false;
	}

<%
end if
%>

	
	if(!validstr(login.RoomName))
	{
		login.RoomName.focus(); 
		return false;
	}
}
function validstr(str) // ��֤�û���
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("�û�������Ϊ�գ�");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("���ܰ��������ַ�: +=|'#&<>%*`^/\\\";,.�ո�.");
 		str.focus(); return false;
  }}}return true;
}
</script>
<form name="login" action="room_save.asp" method="post" onsubmit="return OnLogin()">
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="448" id="AutoNumber1" height="499">
    <tr>
      <td width="75%" height="19">��</td>
    </tr>
    <tr>
      <td width="75%" height="417">
      <table cellSpacing="0" cellPadding="0" width="444" border="0" style="border-collapse: collapse" bordercolor="#111111" height="75">
        <tr>
          <td align="left" height="44" width="444"><b>
          <font class="titletext" color="#ff0000">
          <img border="0" src="img/Main_02.gif">�Խ�������</font></b></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="444"></td>
        </tr>
        
        <tr>
          <td height="30" width="444"></td>
        </tr>
        
      </table>
      

      <table cellSpacing="1" cellPadding="0" width="448" border="0" height="54">
        <tr>
          <td vAlign="top" width="441" height="307">
          <p>
          

<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
          
          
          <font color="#ff0000">
          �Խ������ҷ�������</font><br>
          


<textarea class=txtbody name="textfield" rows="11" cols="60"> 1�Խ�����������ȫ��ѵ�
 2������ܲ����ط�������
 3�緢����Υ���߽��ƽ��йز���
 4ֻ��ע���û��ſ��Խ���������
 5�Խ������ҿ����ǹ���Ҳ����Ϊ����
 6�Խ����������˿պ󣱣�����ɾ��


�����Խ������ҷ���ʹ��Э��

1,�Ͻ��������Ҵ���ɫ�顢���ࡢ���������š������Ա����ӡ��������ӡ��������衢�����衢����ȸ�����Υ������ط���涨�,
2,����Υ����Ϊ,���ǽ�����������ƽ�˾�����Ŵ���.

��.���졢���ԡ��ϴ���Ƭ��Ӧע��ʲô�� 
�����ء��л����񹲺͹��������Ϣϵͳ��ȫ���������������������Ϣ�������������ȫ��������취�������л����񹲺͹��������Ϣ������������������й涨ʵʩ�취�����һ�й涨�� 
ϣ������֮���໥���أ����ù���ʹ������������ͬ���ð���е��û�������Ȱ����Ч������£�����Ա��Ȩ��Υ���涨���������վ�� 
�������ϵ��¡��������أ��벻Ҫ�ò����Դʣ� �Ͻ���������ɫ���Լ�����Υ�����ҷ��ɹ涨�����ۡ� 
ʹ�����ɶ������Ļ��⣬�����벻Ҫ�漰���Ρ��ڽ̵����л��⡣ 
�Ͻ��ϴ�ɫ�顢���ࡢ���������š������Ա����ӡ��������ӡ��������衢�����衢����ȸ�����Υ������ط���涨����Ƭ�� 
�е�һ����������Ϊ��ֱ�ӻ��ӵ��µ����»����·������Ρ� 


��.������Ϊ�ǲ��ܱ�վ��ӭ����Ϊ����������Ϊ����ʱ������Ա��Ȩ��Υ���������վ������Ҫ����:
��������ɫ���Լ�����Υ�����ҷ��ɹ涨�����۵ģ� 
���������������������ģ� 
�ظ�������ͬ�����Ƶ����ݻ���������Ŀ�ĵ�ʹ��EMOTE����ˢ���� 
���ⷴ������ĳվ��������Ե���ҵ�����Ϊ�� 
ʹ�ô����Ա����ӡ��������ӡ��������衢�����衢����Ȳ���ID�����ǳƣ� 
���ⳤʱ������������ϰʹ��emote�����������������û����е���Ϊ�� 
��������ʹ��emote�����ڴ�ܡ��ǲ������͵���Ϊ����������߽�ȫ���������� 
ʹ�á����Ļ������ܶ�ĳ�˻���ĳЩ�˽���������Ϊ��
���������Ͻ�ʹ��ɫ�顢�����������������û������ǳƣ�һ�������������� 

</textarea><br>

  <input type='checkbox' class='form' name='agreement' value='on'>�����Ķ�������[LiaoWan.Com]�Խ������ҷ�������Э��<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber3">
            <tr>
              <td width="100%">��</td>
            </tr>
            <tr>
              <td width="100%" align="center">
<%
if UN=""  then
%>����Ա�ǳƣ�<input type="text" name="name" maxlength=14 style="WIDTH: 200px" size="20">
<BR>
              ����Ա���룺<input type="password" name="passwd" maxlength=14 style="WIDTH: 200px" size="20">
<BR>
<% else %>

			 ��ӭ <font color="#FF0000"><%=UN%></font> �Խ������ң�
<br>

<%
end if
%>���������ƣ�<INPUT name=RoomName maxlength=30 style="WIDTH: 200px" size="20">
<BR>
              �����һ��⣺<INPUT  name=RoomTopic maxlength=255 style="WIDTH: 200px" size="20">
              <br>
              �����ҷ��ࣺ<select size="1" name="RoomType" style="WIDTH: 200px">

<option value="1">�����</option>

<option value="2">Լ����</option>

<option value="3">У԰��</option>

<option value="4">������</option>

<option value="5">������</option>

<option value="6">������</option>

<option value="7">������</option>

<option value="8">������</option>

<option value="9">������</option>

<option value="10">��̸��</option>

        </select>

<BR>
              ���������룺<INPUT  name=Roompasswd maxlength=25 style="WIDTH: 200px;" size="20"><BR>
(<font color="#FF9900">�����������룬����״̬����ƾ����ſɽ���</font>)<br>
              ����������:������<input type="radio" value="1" checked name="AllowPublic">&nbsp; 
              ���� <input type="radio" value="0" name="AllowPublic"><BR><BR>
&nbsp;&nbsp;</td>
            </tr>
            <tr>
              <td width="100%" align="center">
<INPUT type="submit" value="����������"  name=submit1 style="WIDTH: 150px">


</td>
            </tr>
            <tr>
              <td width="100%">��</td>
            </tr>
            <tr>
              <td width="100%">��</td>
            </tr>
          </table>
          
   
          
          </td>
          <td vAlign="top" width="4" height="53" rowspan="2">
          ��</td>
        </tr>
        <tr>
          <td vAlign="top" width="441" height="26" align="center">
          &nbsp;&nbsp; </td>
          </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td width="75%" height="44">��</td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="75%"></td>
        </tr>
    <tr>
      <td width="75%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>
   </form>    
<%call endpage()
%>