<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--���ݿ������ļ�#include file="../INC/BBTOP.asp" -->
<!--�������ݿ��ļ�#include file="../INC/Chatfl.asp" -->
<%
page=Request("page")
if (page="" or isempty(page)) then page=1
%>
<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
          
          
<LINK href="images/Style.css" rel=stylesheet>
<TITLE>��Լ<%=page%>--�����������������-BCHAT OR LWOO ����Ƽ�</TITLE>

<% call top %>
<SCRIPT language=Javascript src="/Room.asp?page=<%=page%>&maxPerPage=70" type=text/javascript></SCRIPT>
<SCRIPT language=javascript>
<!--
//���뿪ʼ �ű���ƣ�����Ƽ�

var num=7, count=rooms.length/num; // count = �ܿ��ŷ�����, num=���������Field����
function GetRoomname(n)	{n=n*num;if(n<rooms.length)return rooms[n+0];else return null;} 	// ��������,����n��ʾ�ڼ�������
function Getnum(n)		{n=n*num;if(n<rooms.length)return rooms[n+1];else return 0;} 		// ȡ��ָ��������������
function GetRoomAdmin(n){n=n*num;if(n<rooms.length)return rooms[n+2];else return null;} 	// ��������
function GetRoomURL(n)	{n=n*num;if(n<rooms.length)return rooms[n+3];else return null;} 	// �˿� 
function GetRoomType(n)	{n=n*num;if(n<rooms.length)return rooms[n+4];else return 0;} 		// ������� 
function GetrType(n)	{n=n*num;if(n<rooms.length)return rooms[n+5];else return null;} 	// ֧������.��Ƶ
function Getmaxnum(n)	{n=n*num;if(n<rooms.length)return rooms[n+6];else return 100;} 		// ���������

/*��½ģ��*/

function OnLogin(n) // ��¼������
{
	if(!validstr(login.user))return ;
	
	window.open("about:blank", "chat","toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,resizable=yes") ;
	login.target = "chat" ;
	login.action = "/login.asp" ;
	login.port.value=GetRoomURL(n);
	login.submit() ;		
}

//if(count<=0)alert("ϵͳ�����뾡���������Ա��"); // ���������Ϊ0�Ļ�����ʾ������Ϣ

function ROMS(i,vvv) // �̶����������Ǵ����,Ҳ����Ϊ���ٵ���������
{    if(i<(count)){
        document.writeln("<TR><TD class=l15 width=120>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='����:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000>" + Getnum(i) + "</font>)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='��������'>");
		document.writeln("</TD><TD width=120>");
	 };
		
  if(i<vvv){i++;
	  if(i<(count)){
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='����:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000>" + Getnum(i) + "</font>)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='��������'>");
		document.writeln("<TR>");
	  };
   };
}


function validstr(str) // ��֤�û���
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("�ʻ�|�سƲ���Ϊ�գ�");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("�ʻ�|�����в��ܰ��������ַ�: +=|'#&<>%*`^/\\\";,.�ո�.");
 		str.focus(); return false;
  }}}return true;
}

function validpass(str) // ��֤����
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("���벻��Ϊ�գ�");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("����������: +=|'#&<>%*`^/\\\";,.�ո�.");
 		str.focus(); return false;
  }}}return true;
}


function OnLogins() // ��½��������

{
	if(!validstr(login.user))return ;
	if(!validpass(login.pass))return ;
	login.target = "_blank" ;
	login.action = "USadmin/login.asp" ;
	login.submit() ;		
}
function OnLogins() // ��½��������

{
	if(!validstr(login.user))return ;
	if(!validpass(login.pass))return ;
	login.target = "_blank" ;
	login.action = "/userlogin.asp" ;
	login.submit() ;		
}

//-->
</SCRIPT>

<div align="center">
  <center>
  <table border="0" cellpadding="2" width="600" id="AutoNumber1" height="157">
    <form name="login" onsubmit="return false;" action="/" method="post">
<input type="hidden" name="port">
<input type="hidden" name="ROOMID">
    <tr>
      <td width="600" height="32" align="center" colspan="3">
      
      ��Լ�����ң� <a href="ROOMTY.ASP?page=1">��Լһ</a>&nbsp;
      <a href="ROOMTY.ASP?page=2">��Լ��</a>&nbsp; <a href="ROOMTY.ASP?page=3">��Լ��</a>&nbsp;
      <a href="ROOMTY.ASP?page=4">��Լ��</a></td>
    </tr>
    <tr>
      <td width="600" height="32" align="center" colspan="3">
      
      �û���:<font color="#003300"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=15 size=6 name=user title="��Ա��д��Ա���,�ο���д�ǳƾͿ���"></font> 
                        ����(�οͲ���):<font color="#336699"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=12 size=6 name=pass type="password" title="�ο͵�½��������"></font> <font color="#336699">
<INPUT type="radio" name="SEX" value="1"></font>�� <font color="#336699"> <INPUT type="radio" name="SEX" value="2" ></font>Ů &nbsp;��֤��: <font color="#336699">
<input name="adminid" size="4" maxLength=4 style="border:1px inset; BACKGROUND-COLOR: #efefef"></font><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>
                <font color="#336699">
                <input onclick="OnLogins();"  type="button" value="��½" name="B1"> 
                </td>
    </tr>
    </form>
    <tr>
      <td width="600" height="18" colspan="3">
      <p align="center">��ǰΪ��<font color="#800080"><b> ��Լ<%=page%></b></font></td>
    </tr>
               
<script>
	for(var i=0; i<50; i++) 
	{	
		if(i<(count)){
        document.writeln("<TR><td width='198' height='30' valign='top'>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='����:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(����<font color=#ff0000><b>" + Getnum(i) + "</b></font>��)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='��Ƶ������������'>");
		document.writeln("</td>");
	 	};  
	 	i++
	 	if(i<(count)){
        document.writeln("<td width='198' height='30' valign='top'>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='����:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(����<font color=#ff0000><b>" + Getnum(i) + "</b></font>��)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='��Ƶ������������'>");
		document.writeln("</td>");
	 	};  
	 	i++
	 	if(i<(count)){
        document.writeln("<td width='198' height='30' valign='top'>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='����:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(����<font color=#ff0000><b>" + Getnum(i) + "</b></font>��)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='��Ƶ������������'>");
		document.writeln("</td></TR>");
	 	};  

  
	 }
    </script>

           
    <tr>
      <td width="198" height="23" valign="top">��</td>
      <td width="200" height="23" valign="top">��</td>
      <td width="202" height="23" valign="top">��</td>
    </tr>
    
    <tr>
      <td width="198" height="69" valign="top">��</td>
      <td width="200" height="69" valign="top">��</td>
      <td width="202" height="69" valign="top">��</td>
    </tr>
    </table>
  </center>
</div>

    
<p>
</p>
<%
Set rs = Nothing
Set conn = Nothing
%>
<% call di %>