<%
index_top_pic="../ad/show/top-music.jpg"
%>
<!--#include file="../tongji.asp" -->
<!--#include file="../INC/Chatfl.asp" -->
<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="incfooter.asp"-->
<%
Server.ScriptTimeOut=9000
stats="��ҳ"
dim founderr,errmsg
founderr=false
errmsg=""

openadmin
sql="select articlecount,softcount,piccount,modelcount,coolsitescount,friendlinkcount,newscount,diarycount,gbcount from allcount"
set rs=conn.execute(sql)
articlecount=rs("articlecount")
softcount=rs("softcount")
piccount=rs("piccount")
modelcount=rs("modelcount")
coolsitescount=rs("coolsitescount")
friendlinkcount=rs("friendlinkcount")
newscount=rs("newscount")
diarycount=rs("diarycount")
gbcount=rs("gbcount")
rs.close

call top()

openadmin
set rswebcount=conn.execute("select * from vcount")
%> 

<SCRIPT language=javascript>
<!--
//���뿪ʼ �ű���ƣ�����Ƽ�

<%
'�ڼ�ҳ
fenge = ""

sql="select top 32 Roomname,num,admin,host,id,RoomType,rtype,max,newtype,sysff from [web] where [liebiao]=0 order by num desc"
set rs=Chatconn.execute (sql)
 i=0
 do while not (rs.eof or err or i=32)

	rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max") & "," & rs("newtype") & "," & rs("sysff")
	fenge = ","
	i=i+1
  rs.moveNext
  loop
  rs.close
 

response.write "var rooms = new Array(" & rooms & ");"
%>


var num=9, count=rooms.length/num; // count = �ܿ��ŷ�����, num=���������Field����
function GetRoomname(n)	{n=n*num;if(n<rooms.length)return rooms[n+0];else return null;} 	// ��������,����n��ʾ�ڼ�������
function Getnum(n)		{n=n*num;if(n<rooms.length)return rooms[n+1];else return 0;} 		// ȡ��ָ��������������
function GetRoomAdmin(n){n=n*num;if(n<rooms.length)return rooms[n+2];else return null;} 	// ��������
function GetRoomURL(n)	{n=n*num;if(n<rooms.length)return rooms[n+3];else return null;} 	// �˿� 
function GetRoomType(n)	{n=n*num;if(n<rooms.length)return rooms[n+4];else return 0;} 		// ������� 
function GetrType(n)	{n=n*num;if(n<rooms.length)return rooms[n+5];else return null;} 	// ֧������.��Ƶ
function Getmaxnum(n)	{n=n*num;if(n<rooms.length)return rooms[n+6];else return 100;} 		// ���������
function Getnewtype(n)	{n=n*num;if(n<rooms.length)return rooms[n+7];else return 3;} 		// �·���
function Getff(n)		{n=n*num;if(n<rooms.length)return rooms[n+8];else return 0;} 		// ��������

/*��½ģ��*/

function OnLogin(n) // ��¼������
{
	if(!validstr(login.user))return ;
	
	window.open("about:blank", "chat","toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,resizable=yes") ;
	login.target = "chat" ;
	login.action = "/login2.asp" ;
	login.port.value=GetRoomURL(n);
	login.submit() ;		
}

if(count<=0)alert("ϵͳ�����뾡���������Ա��"); // ���������Ϊ0�Ļ�����ʾ������Ϣ

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
	login.action = "/userlogin.asp" ;
	login.submit() ;		
}

function OnLogind(n) // ��¼������ ��ID
{
	if(!validstr(login.user))return ;
	
	window.open("about:blank", "chat","toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,resizable=yes") ;
	login.target = "chat" ;
	login.action = "/login2.asp" ;
	login.port.value= n;
	login.submit() ;		
}

//-->
</SCRIPT>
<style type="text/css">
<!--
.yin1 {	FILTER: DropShadow(Color=#ffffff, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "����"; FONT-SIZE: 9pt}
.yin2 {	BORDER-BOTTOM: #000000 1px solid; BORDER-TOP: #000000 1px solid; FILTER: DropShadow(Color=#ffffcc, OffX=1, OffY=1, Positive=1); FONT-FAMILY: "����"; FONT-SIZE: 9pt; }
.yin3 {	FILTER: DropShadow(Color=#ffffFF, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "����"; FONT-SIZE: 10pt}
-->
</style>
</head>
<div align="center">
	<table border="0" cellpadding="0" cellspacing="0" width="778" id="table1" bgcolor="#FFFFFF">
		<tr>
			<td>��</td>
		</tr>
		<tr>
			<td height="402">��</td>
		</tr>
		<tr>
			<td>��</td>
		</tr>
		<tr>
			<td>��</td>
		</tr>
	</table>
</div>

  <%
rswebcount.close
set rswebcount=nothing
%><%call endpage()
%></body></html>