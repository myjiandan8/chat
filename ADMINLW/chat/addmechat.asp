<!--�������ݿ��ļ�#include file="../../INC/Chatfl.asp" -->
<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<HTML>
<HEAD>
<TITLE>�¿�����</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<SCRIPT LANGUAGE="JavaScript">
<!--
function validResume(str) // ��֤
{ var s,i,j; s="+=|'#&<>%*`^/\\\""; str1=str.value.toString();
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("����а��������ַ�: +=|'#&<>%*`^/\\\"");
 		str.focus(); return false;
  }}}return true;
}

function check()
{
	return;
/*	if(ValidEmail(regist.Email.value))
	{
		alert("��������Ч��Email��ַ!") ;
		regist.Email.focus() ;
		return false ;
	}
*/	if(regist.Photo.value.length > 60)
	{
		alert("��Ƭ·��̫��!") ;
		regist.Photo.focus() ;
		return false ;
	}

	if(!validResume(regist.Resume))
	{
		return false;
	}

	if(regist.Resume.value.length > 100)
	{
		alert("���̫���˵��!") ;
		regist.Resume.focus() ;
		return false ;
	}
	return true;
}
function ValidEmail(item){
var etext
var elen
var i
var aa
etext=item
elen=etext.length
if (elen<5)
 return true;
i= etext.indexOf("@",0)
if (i==0 || i==-1 || i==elen-1)
 return true;
else
 {if (etext.indexOf("@",i+1)!=-1)
  return true;}
if (etext.indexOf("..",i+1)!=-1)
 return true;
i=etext.indexOf(".",0)
if (i==0 || i==-1 || etext.charAt(elen-1)=='.')
 return true;
if ( etext.charAt(0)=='-' ||  etext.charAt(elen-1)=='-')
 return true;
if ( etext.charAt(0)=='_' ||  etext.charAt(elen-1)=='_')
 return true;
for (i=0;i<=elen-1;i++)
{ aa=etext.charAt(i)
  if (!((aa=='.') || (aa=='@') || (aa=='-') ||(aa=='_') || (aa>='0' && aa<='9') || (aa>='a' && aa<='z') || (aa>='A' && aa<='Z')))
   return true;
}
return false;
}
//-->
</SCRIPT>
</HEAD>
<STYLE type=text/css>
<!--
td {  font-family: "����"; font-size: 9pt}
body {  font-family: "����"; font-size: 11pt; line-height: 15pt}
.title {  font-family: "����"; font-size: 11pt}
A {text-decoration: none; font-family: "����"}
A:hover {text-decoration: underline; color: #FF0000; font-family: "����"} 
-->
</style>
<BODY bgcolor="#EEEEFF" LANGUAGE="JavaScript">
<div align=center>
    <FORM action="addmechatsave.asp" method="POST" name="roomedit" onsubmit="return check();">
  <INPUT type="hidden" name="TempPassword" value="<!--$TempPassword-->"><INPUT type="hidden" name="UserNameAdmin" value="<!--$UserNameAdmin-->">
  <TABLE border="3" width="564" cellpadding="2" style="border-collapse: collapse" bordercolor="#111111" cellspacing="0" height="903">

<TR>
        <TD align="center" class="title" height="20" width="554"> <font color=red>����MeChat������</font> </TD>
      </TR>
<TR>
        <TD height="20" width="554"> ID����:<input type="text" name="roomid" size="9">&nbsp; ��Χ
	    2000-9999&nbsp; ����6000 VIP�߼����� 1000-1999 ������� 500-999</TD></TR>
<TR>
        <TD height="12" width="554"> ����������:
            
          <INPUT type="text" name="RoomName" maxlength="20" size="20">
        </TD>
      </TR>
<tr>
        <TD height="5" width="554"> ������������:<INPUT type="text" name="password" maxlength="20" size="20"></TD>
      </tr>
<tr>
        <TD height="13" width="554"> ���ù�������:<INPUT type="text" name="userpasswd1" maxlength="20" size="20"></TD>
      </tr>
<tr>
        <TD height="28" width="554"> ������������:<INPUT type="text" name="userpasswd2" maxlength="20" size="20"></TD>
      </tr>
<tr>
        <TD height="33" width="554"> ������:<input type="text" name="Admin" maxlength="200" size="24"> 
		��ʵ����</TD>
      </tr>
<tr>
        <TD height="27" width="554"> ����ID:<input type="text" name="Adminid" maxlength="200" size="24"> 
		�û�������ID</TD>
      </tr>
<TR>
        <TD height="52" width="554"> һ������Ա,�������Ա֮�����<b>Ӣ�Ķ���</b>�ֿ�<br> 
          <input type="text" name="Administrators1" maxlength="200" size="50">
        </TD>
      </TR>
<TR>
        <TD height="58" width="554"> ��������Ա,�������Ա֮�����<b>Ӣ�Ķ���</b>�ֿ�<br>
          <INPUT type="text" name="Administrators2" maxlength="200" size="50"> 
</TD></TR>	  
<TR>
        <TD height="20" width="554"> ������û���: 
        
<select size="1" name="MaxUser">

<option>20</option>

        <option>30</option>
<option>50</option>
<option>60</option>
<option>80</option>
<option selected>100</option>
<option>150</option>
<option>200</option>
<option>300</option>
<option>400</option>
<option>500</option>

        </select>
        </TD>
      </TR>
<TR>
        <TD height="15" width="554">����״̬�������û���:&nbsp; 
        
<select size="1" name="NearMaxUser">

<option>20</option>

        <option>30</option>
<option>50</option>
<option>60</option>
<option selected>80</option>
<option>100</option>
<option>150</option>
<option>200</option>
<option>300</option>

        </select></TD>
      </TR>
<TR>
        <TD height="60" width="554"> �����ļ��ı�ţ����� IniNo= 1 ,���Ӧ�������ļ���Ŀ¼/SysData/ini/1����<br>
          <INPUT type="text" name="IniNo" maxlength="30" value="1" size="20"> 
</TD></TR>
<TR>
        <TD height="60" width="554"> web��ҳ��Template���,���� TemplateNo= 2�����Ӧ����ҳ��Ŀ¼/SysData/template/2����: 
          <br>
          <INPUT type="text" name="TemplateNo" maxlength="20" size="20" value="1"> 
</TD></TR>
<TR>
        <TD height="40" width="554"> �Ƿ��¼���������,��������ʱ,��¼��־Ӱ��ϵͳ����<br>
          ��
          <input type="radio" name="LogRoom" value="0" checked>
          �� <input type="radio" name="LogRoom" value="1">
        </TD>
      </TR>
<TR>
        <TD height="40" width="554"> �Ƿ��¼��������ݰ���IP:<br>
          ��
          <input type="radio" name="LogIP" value="0" checked>
          �� 
          <input type="radio" name="LogIP" value="1">
          </TD>
      </TR>
<TR>
        <TD height="40" width="554"> ��¼���������: <br>
          <INPUT type="text" name="LastMessage" maxlength="20" size="20" value="6"> 
</TD></TR>
<TR>
        <TD height="20" width="554"> �Ƿ������οͷ���: 
          ��<input type="radio" name="AllowGuest" value="0">
          �� 
          <input type="radio" name="AllowGuest" value="1" checked>
        </TD>
      </TR>
<TR>
        <TD height="20" width="554"> �Ƿ������������г�: 
          ��<input type="radio" name="AllowPublic" value="0">
          �� 
          <input type="radio" name="AllowPublic" value="1" checked>
        </TD>
      </TR>
<TR>
        <TD height="20" width="554"> ����������: 
        
<select size="1" name="RoomType">
<%
i=1
do while (i<Chatfls) %>
<option value="<%=i%>"><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
        </select></TD></TR>
<TR>
        <TD height="20" width="554">�Ƿ�֧������: 
          ��<input type="radio" name="SupportAudio" value="0">
          �� 
          <input type="radio" name="SupportAudio" value="1" checked>
        </TD>
      </TR>
<TR>
        <TD height="20" width="554"> �Ƿ�֧����Ƶ: 
         ��<input type="radio" name="SupportVideo" value="0">
          �� 
          <input type="radio" name="SupportVideo" value="1" checked>
        </TD>
      </TR>
<TR>
        <TD height="46" width="554"> ����ͼƬ��url: <br>
          <INPUT type="text" name="Background" maxlength="100" size="50"> 
</TD></TR>
<TR>
        <TD height="40" width="554"> ����������: 
          <INPUT type="text" name="RoomTopic" maxlength="200" size="50" value="��ӭ���������"> 
</TD></TR>
<TR>
        <TD height="40" width="554">����������,����Ϊ�ջ�,�����һ����: <br>
          <INPUT type="text" name="RoomPassword" maxlength="20" size="20"> 
</TD></TR>
<TR>
        <TD height="18" width="554"> �˳�������url: <br>
          <INPUT type="text" name="LogoutUrl" maxlength="50" size="33" value="http://lwmm.com"> 
</TD></TR>
 <tr>
        <TD height="22" width="554"> ������������:<br>
          <INPUT type="text" name="ExternValue" maxlength="200" size="50"></TD>
</tr>
 <TR><TD align="center" height="21" width="554">
<INPUT type="submit" value="����������" name=submit1>
        </TD>
      </TR>
</TABLE>
</form>
</div>
</BODY>
</HTML>