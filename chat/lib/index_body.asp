<%
sub index_body()
openadmin
set rswebcount=conn.execute("select * from vcount")
%> 

<SCRIPT language=javascript>
<!--
//���뿪ʼ �ű���ƣ�����Ƽ�

<%
'�ڼ�ҳ
Set chatconn = Server.CreateObject("ADODB.Connection")
chatconn.Open = "chatweb"
fenge = ""
sql="select top 14  Roomname,num,admin,host,id,RoomType,rtype,max from [web] where [liebiao]=0 and ff=0 order by num desc"
set rs=Chatconn.execute (sql)
 i=0
 do while not (rs.eof or err or i=14)

	rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max")
	fenge = ","
	i=i+1
  rs.moveNext
  loop
  rs.close

sql="select top 14  Roomname,num,admin,host,id,RoomType,rtype,max from [web] where liebiao=0 and ff=1 order by num desc"
set rs=Chatconn.execute (sql)
 i=0
 do while not (rs.eof or err or i=14)

	rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max")
	i=i+1
  rs.moveNext
  loop
  rs.close
  

response.write "var rooms = new Array(" & rooms & ");"
%>


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

//-->
</SCRIPT>
<link rel="stylesheet" href="../Sams.css" type="text/css">
<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
  <tr> 
    <td valign="top" width="209"> 

	  <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01.gif"><br>
            :::<strong>ͳ����Ϣ</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
	  <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
		<td height="66" class="chinese" align="center">
		<table width="90%"><tr><td>

<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="0">
        <tr> 
          <td height="29" align="center" class="newshead">��</td>
        </tr>
        <tr> 
          <td height="5" valign="bottom"></td>
        </tr>
        <tr> 
          <td align="center" class="chinese">
            �����Ƭ:<span class="newshead"><%=diarycount%></span>��,���¶�̬:<span class="newshead"><%=newscount%></span>ƪ<br>
            ��ѧ����:<span class="newshead"><%=articlecount%></span>ƪ,������:<span class="newshead"><%=softcount%></span>��<br>
            ��Ʒͼ��:<span class="newshead"><%=piccount%></span>��,����ģ��:<span class="newshead"><%=gbcount%></span>��<br>

          </td>
        </tr>
        <tr> 
          <td align="center" class="chinese"></td>
        </tr>
      </table>







	</td></tr></table>
</td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>

      <br> 
      <%call index_news()%>
      <br>  

</td>
    <td width="4" background="images/dotlinev.gif"></td>
    <td width="4" valign="top"></td>
    <td width="555" valign="top"> 
      
      
    <table border="0" cellpadding="2" cellspacing="1" width="100%" id="AutoNumber1" height="236">
      <tr>
        <td width="100%" height="31" align="center" colspan="2">
        
<table width="544" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="5" width="17"></td>
  </tr>
  <tr> 
    <td width="17" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="488" background="images/tablebg.gif" >��<a target="_blank" href="../newuser/regadd.asp">�û�ע��</a>&nbsp; 
    <a href="../../newuser/usermima.asp">�����һ�</a>&nbsp;
                  <a target="_blank" href="roomlist.asp">�����б�</a> &nbsp;�������&nbsp; <font color="#333399"><a target="_blank" href="paihang.asp">
                  �� �� ��</a></font>&nbsp; <font color="#4D6B88">
                  <a target="_blank" href="/admin">�������</a></font>&nbsp; ˽������&nbsp;
              <a href="help">��������</a></td>
    <td width="11" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="28" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
    <tr> 
    <td height="5" width="17"></td>
  </tr>
</table>

        </td>
      </tr>
                    <tr>
<form name="login" onsubmit="return false;" action="/userlogo.asp" method="post">
                <td width="100%" height="15" align="center" colspan="2">
                �û���:<font color="#003300"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=15 size=6 name=user title="��Ա��д��Ա���,�ο���д�ǳƾͿ���"></font> 
                        ����(�οͲ���):<font color="#336699"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=12 size=6 name=pass type="password" title="�ο͵�½��������"></font> <font color="#336699">
<INPUT type="radio" name="SEX" value="1"></font>�� <font color="#336699"> <INPUT type="radio" name="SEX" value="2" ></font>Ů &nbsp;��֤��: <font color="#336699">
<input name="adminid" size="4" maxLength=4 style="border:1px inset; BACKGROUND-COLOR: #efefef"></font><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>
                <font color="#336699">
                <input onclick="OnLogins();"  type="button" value="��½" name="B1"> 
                <input type="hidden" name="ROOMID">
<input type="hidden" name="port"></td>
</form>
              </tr>
      <tr>
        <td width="66%" height="133" valign="top" align="center">
        <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber20" height="351">
                  <tr>
                    <td width="50%" height="17" bgcolor="#86D0FD" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-top-style: solid; border-top-width: 1" bordercolor="#86D0FD">
                    <font color="#2969AD">&nbsp;BChat<span lang="en">&reg;</span> 
                    �𱩷����&nbsp; more.</font></td>
                    <td width="2%" height="347" rowspan="2">��</td>
                    <td width="49%" height="17" bgcolor="#FF9999" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-top-style: solid; border-top-width: 1" bordercolor="#FF9999">
                    <font color="#BF004D">&nbsp;MeChat<span lang="en">&reg;</span> 
                    �𱩷����&nbsp; more.</font></td>
                  </tr>
                  <tr>
                    <td width="50%" height="330" valign="top" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1" bordercolor="#86D0FD">                    
<div align="center">
  <center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber23">

<script>
	for(var i=0; i<14; i++) 
	{	
		if(i<(count)){
        document.writeln("<TR><td width='100%' height=23>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='����:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000><b>" + Getnum(i) + "</b></font>��)");
		if(GetrType(i)=="V")document.write("<img border=0 src=../images/eye.gif alt='��Ƶ������������'>");
		document.writeln("</TD></TR>");
	 	};    
	 }
  </script>
           

</table>
                      
                      
           
  </center>
</div>
                    
                    </td>
                    <td width="49%" height="330" valign="top" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1" bordercolor="#FF9999">
                    <div align="center">
  <center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber23">
<script>
	for(var i=14; i<28; i++) 
	{	
		if(i<(count)){
        document.writeln("<TR><td width='100%' height=23>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='����:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000><b>" + Getnum(i) + "</b></font>��)");
		if(GetrType(i)=="V")document.write("<img border=0 src=../images/eye.gif alt='��Ƶ������������'>");
		document.writeln("</TD></TR>");
	 	};    
	 }
  </script>
</table>

  </center>
</div>
                    
                    </td>
                  </tr>
                </table>

        
        </td>
        <td width="34%" height="133" valign="top" align="center">��</td>
      </tr>
      <tr>
        <td width="100%" height="11" colspan="2"></td>
      </tr>
      <tr>
        <td width="100%" height="16" colspan="2"></td>
      </tr>
      <tr>
        <td width="100%" height="16" colspan="2"></td>
      </tr>
    </table>
      
      
    </td>
    <td width="6" valign="top">��</td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif" colspan=5 width="778"></td>
  </tr>
</table>
  </center>
</div>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr> 
    <td height="60"> 
      <div align="center"> 
	  <%'call index_pic()%>
	      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="778" height="107" id="box3" align="middle">
<param name="allowScriptAccess" value="sameDomain" />
<param name="movie" value="images/banr.swf" />
<param name="quality" value="High" />
<param name="bgcolor" value="000000" />
                          <param name="_cx" value="20585">
                          <param name="_cy" value="2831">
                          <param name="FlashVars" value>
                          <param name="Src" value="images/banr.swf">
                          <param name="WMode" value="Window">
                          <param name="Play" value="0">
                          <param name="Loop" value="-1">
                          <param name="SAlign" value>
                          <param name="Menu" value="-1">
                          <param name="Base" value>
                          <param name="Scale" value="ShowAll">
                          <param name="DeviceFont" value="0">
                          <param name="EmbedMovie" value="0">
                          <param name="SWRemote" value>
                          <param name="MovieData" value>
                          <param name="SeamlessTabbing" value="1">
    <embed src="file:///F:/WEB/lianwan.com/chat/lib/images/banr.swf" quality="high" bgcolor="#000000" width="192" height="122" name="box2" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object>
    
    
      </div></td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td valign="top" width="9">��</td>
    <td valign="top" width="190"> 
      <%'call index_coolsites()%>
      <br>
      <%call index_vote()%>
      <%call index_flink()%>
    </td>
    <td width="5" valign="top">��</td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="5" valign="top" background="img/xu.gif"> <br> 
    <br> </td>
    <td width="553" valign="top"> 
      <TABLE width=553 border=0 align=center cellPadding=0 cellSpacing=0>
        <TBODY>
          <TR> 
            <td align=top width=276 height="38" background="img/heike.gif"><img src="img/0.gif" width="276" height="40" usemap="#Map2Map" border="0"> 
              <map name="Map2Map">
                <area shape="rect" coords="215,3,269,20" href="article.asp" title="��������....">
            </map>            </td>
            <td width=1 background="img/xu.gif"></TD>
            <td align=top width=276 height="56" background="img/flash.gif"><img src="img/0.gif" width="276" height="40" usemap="#Map3Map" border="0"> 
              <map name="Map3Map">
                <area shape="rect" coords="218,3,267,20" href="article.asp" title="��������....">
              </map>
            </td>
          </tr>
          <TR> 
            <td height="200" align=top valign="top" background="img/bbgg4.gif"><%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=20 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
&nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,������<%=rs("art_date")%>,�Ѿ����Ķ�<%=rs("art_count")%>�Ρ�" target="_blank"><%=left(rs("art_title"),10)&"..."%></a> <br>
<%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;���ڸ���֮��........"
	end if
	%></td>
            <td width=1 background="img/xu.gif"></TD>
            <td width=276 align=top valign="top" background="img/bbgg4 (1).gif"> 
              <%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=12 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
              &nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> 
              <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,������<%=rs("art_date")%>,�Ѿ����Ķ�<%=rs("art_count")%>�Ρ�" target="_blank"><%=left(rs("art_title"),36)&"..."%></a> 
              <br>
              <%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;���ڸ���֮��........"
	end if
	%>
            </td>
          </tr>
          <TR> 
            <td align=top width=276 height="56" background="img/down.jpg"><img src="img/0.gif" width="276" height="40" usemap="#Map4Map" border="0"> 
              <map name="Map4Map">
                <area shape="rect" coords="218,5,270,20" href="download.asp" title="��������....">
              </map> </td>
            <td width=1 background="img/xu.gif"></TD>
            <td align=top width=276 height="56" background="img/asp.gif"><img src="img/0.gif" width="276" height="40" border="0" usemap="#Map5Map"> 
              <map name="Map5Map">
                <area shape="rect" coords="219,4,269,19" href="article.asp" title="������Ч....">
              </map>
            </td>
          </tr>
          <TR> 
            <td height="199" align=top valign="top" background="img/bbgg4 (1).gif"> 
              <%call index_soft()%>            </td>
            <td width=1 background="img/xu.gif"></TD>
            <td width=276 align=top valign="top" background="img/bbgg4 (2).gif"> 
              <%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=8 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
              &nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> 
              <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,������<%=rs("art_date")%>,�Ѿ����Ķ�<%=rs("art_count")%>�Ρ�" target="_blank"><%=left(rs("art_title"),36)&"..."%></a> 
              <br>
              <%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;���ڸ���֮��........"
	end if
	%>
            </td>
          </tr>
      </table> </td>
    <td width="1" align="left" valign="top" background="images/dotlinev.gif">��</td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif" colspan=7></td>
  </tr>
</table>
<div align="center">
  <center>
<table width="778" border="0" cellpadding="0" cellspacing="0" height="51" bgcolor="#FFFFFF">
  <tr> 
    <td width="778" height="50" bgcolor="#FFFFFF"><div align="center">
    ��</div></td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
  </center>
</div>
</body>
</html>
<%
rswebcount.close
set rswebcount=nothing
end sub
%>