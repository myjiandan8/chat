<!--�������ݿ��ļ�#include file="../../INC/Chatfl.asp" -->
<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call OpenChatconn
set rs=server.createObject("adodb.recordset")

    menu=Request("menu")
    if menu="" then menu="add"
    roomid=Request("roomid")
    if roomid="" then roomid=0
    roomid=clng(roomid)

    ff=clng(Request("ff"))
    

	roomname = Request("roomname")
	userpasswd = Request("password")
	newType = int(Request("newType"))
	admin = Request("admin")
	adminid = Request("adminid")
	
	max = Request("max")
	loginw = Request("loginw")
	logins = Request("logins")
	
    
	weburl = Request("weburl")
	regurl = Request("regurl")
    
	
	rtype=Request("rtype")


'�õ����������ID
Function upufid(fffid)

		'if fffid=0 then 
		'	upufid = 0
		'	exit Function
		'end if

		sql="select * from chatff where fid="& fffid
		set rs=chatconn.execute (sql)
			if rs("ufid")>0 then
				upufid = upufid(rs("ufid"))
			else
				upufid = rs("fid")
			end if
		rs.close

End Function


'Call OpenChatconn
if menu="addsave" or menu="editsave" then

	sysff=clng(Request("sysff"))
	fid=clng(Request("fid"))
	ufid=0
	if adminid="" then adminid=0
	
	if ff<2 or ff>20 then errstr("����վѡ�����")

	if weburl="" or regurl="" then
	
		sql="select * from newweb where webid="& ff
		set rs=chatconn.execute (sql)
			weburl = rs("weburl")
			regurl = rs("regurl")
		rs.close
		
	end if

	ufid=upufid(fid)

newroomid = roomid

if roomid=0 then

  i= 5000
  do while (i<8000)
  	i=i+1
  	set rsr=chatconn.Execute("SELECT id FROM [Web] where id=" & i)
    if  rsr.eof or err then
    newroomid=i
    i=8000
    end if
  loop
  rsr.close

end if


    if ff="" or roomname="" or logins="" or max="" or rtype="" then errstr("����д������")

sql="select * from web where id="& roomid
set rs=chatconn.execute (sql)
if (not rs.eof) and menu="addsave" then errstr("��ID�Ѿ���ռ�ã��뻻һ����")
rs.close


	sql="SELECT * FROM [Web] where id=" & clng(roomid)
	rs.open sql,chatconn,1,3

       
       if menu="addsave" then
       rs.addnew
       rs("cid") = newroomid
       rs("id") = newroomid
       
       rs("newday") = date()
       rs("date") = date()
       rs("chatxy") = "��ӭ����" & Roomname & " - ����������Ƶ�����ң����鹵ͨ�����￪ʼ��"
       rs("webbg") = "http://liaowan.com/images/newbg.jpg"
       end if
       
       rs("fid") = fid
       rs("ufid") = ufid
       rs("ff") = ff
       rs("sysff") = sysff
       rs("Roomname") = Roomname
       rs("max") = max
       rs("adminid") = adminid
       rs("admin") = admin
       
       rs("regurl") = regurl
       rs("passurl") = passurl
       
       rs("adminpasswd") = userpasswd 
	   rs("newType") = newType
       rs("rtype") = rtype
       rs("logins") = logins
       rs("loginw") = loginw

       rs.Update
       rs.close

		errstr("�༭�ɹ�"&fid)
end if



if menu="edit" and roomid<>"" then

sql="select * from [web] where id= "& roomid
set rs=chatconn.execute (sql)

if rs.eof then errstr("�Ƿ�ID" & roomid)

    ff=rs("ff")
    sysff = rs("sysff")
	roomname = rs("roomname")
	userpasswd = rs("adminpasswd")

	admin = rs("admin")
	adminid = rs("adminid")
	fid = rs("fid")

	max = rs("max")
	logins = rs("logins")
	loginw=rs("loginw")
	
    passurl = rs("passurl")
    regurl = rs("regurl")
	
	rtype=rs("rtype")

	rs.close

end if



ii=0
i=0

sub BBSList(selec,vsid)

sql="Select * From chatff where ufid="& selec &" order by fid"
Set Rs1=chatconn.Execute(sql)
do while not rs1.eof or err
Response.write "<option value="&rs1("fid")
if rs1("fid")=vsid then Response.write " selected"
Response.write ">"&string(ii,"��")&""&rs1("fname")&"</option>"
ii=ii+1
BBSList rs1("fid"),vsid
ii=ii-1
rs1.movenext
loop
Set Rs1 = Nothing

end sub


%>


<HTML>
<HEAD>
<TITLE>�¿�����</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


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
    <FORM action="addchat.asp" method="POST" name="roomedit">
  <INPUT type="hidden" name="TempPassword" value="<!--$TempPassword-->"><INPUT type="hidden" name="UserNameAdmin" value="<!--$UserNameAdmin-->">
  <TABLE border="3" width="662" cellpadding="2" style="border-collapse: collapse" bordercolor="#111111" cellspacing="0" height="380">

<TR>
        <TD align="center" class="title" height="20" width="652" colspan="2"> 
		<font color=red><% if menu="add" then response.write "���" else response.write "�༭"%>�ҽ�������</font> </TD>
      </TR>
<TR>
        <TD height="26" width="129"> ID����:</TD>
        <TD height="26" width="518"> 
        <% if menu="add" then %>
        <input type="text" name="roomid" size="9"> 
        <input type="hidden" name="menu" size="18" maxlength="10" value="addsave">
        <% else %>
        <input type="hidden" name="roomid" size="18" maxlength="10" value="<%=roomid%>"><%=roomid%>
        <input type="hidden" name="menu" size="18" maxlength="10" value="editsave">
        <% end if %>
        
        
		��Χ 2000-9999&nbsp; ����6000 [<font color="#0000FF">��д�Ļ����Զ�����һ��</font>]</TD></TR>
<tr>
        <TD height="27" width="129"> ����������:&nbsp;
        </TD>
        <TD height="27" width="518"> 
            
          <INPUT type="text" name="RoomName" maxlength="20" size="20" value="<%=RoomName%>">
        ���ֲ��ܰ����Ƿ��ַ�</TD>
      </tr>
<tr>
        <TD height="27" width="129"> ѡ��������:</TD>
        <TD height="27" width="518"> 
            
		<select size="1" name="ff">
<option value="0">ȫ��</option>
<%
sql="select * from newweb order by webid asc"
set rsm=chatconn.execute (sql)
%>
<%
do while not (rsm.eof or err)
%> 
<option value="<%=rsm("webid")%>"  <%if ff=rsm("webid") then response.write " selected"%>><%=rsm("webname")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
		</select></TD>
      </tr>
<tr>
        <TD height="26" width="129"> ����������:</TD>
        <TD height="26" width="518"> <select size="1" name="sysff">
		<option value="0" <%if sysff=0 then response.write " selected"%>>����BCHAT����</option>
		<option value="1" <%if sysff=1 then response.write " selected"%>>VP���˳���</option>
		<option value="2" <%if sysff=2 then response.write " selected"%>>MeChat����</option>
		<option value="3" <%if sysff=3 then response.write " selected"%>>������֮�����</option>
		</select></TD>
</tr>
<tr>
        <TD height="26" width="129"> ��������:</TD>
        <TD height="26" width="518"> <select size="1" name="rtype">
		<option value="0" <%if rtype=0 then response.write " selected"%>>��Ƶ</option>
		<option value="1" <%if rtype=1 then response.write " selected"%>>����</option>
		<option value="2" <%if rtype=2 then response.write " selected"%>>����</option>
		</select></TD>
</tr>
<tr>
	    <td width="129" align=left height="26">���Է��ࣺ</td>
	    <td width="518" height="26">  
        
<select name="fid" size="1">
<%
Call BBSList(0,fid)
%>
</select>


&nbsp;
<img border="0" src="../../PIC/IMG/s01.gif" width="15" height="13">���� 
<img border="0" src="../../PIC/IMG/s12.gif" width="15" height="13">��� 
<img border="0" src="../../PIC/IMG/s23.gif" width="15" height="13">���</td>
	      </tr>
<tr>
        <TD height="26" width="129"> ����������ID:</TD>
        <TD height="26" width="518"> 
		<input type="text" name="loginw" maxlength="200" size="35" value="<%=loginw%>"> 
		������׽������������Ϣ���û���½ [<font color="#FF0000">�ɲ�д</font>]</TD>
</tr>
<tr>
        <TD height="13" width="129"> �����½��ַ:</TD>
        <TD height="13" width="518"> 
		<input type="text" name="logins" maxlength="200" size="35" value="<%=logins%>"> 
		�� http://202.96.140.88:9983 [<font color="#FF0000">������ȷ</font>]</TD>
</tr>
<tr>
        <TD height="8" width="129"> ���������û�ע��:</TD>
        <TD height="8" width="518"> 
		<input type="text" name="regurl" maxlength="200" size="35" value="<%=regurl%>"> 
		д��ַ����&nbsp; [<font color="#0000FF">����д��ʹ�ø�����վĬ��</font>]</TD>
</tr>
<tr>
        <TD height="29" width="129"> �����������һ�:</TD>
        <TD height="29" width="518"> 
		<INPUT type="text" name="passurl" maxlength="50" size="35" value="<%=passurl%>"> 
		д��ַ����&nbsp; [<font color="#0000FF">����д��ʹ�ø�����վĬ��</font>]</TD>
</tr>
<tr>
        <TD height="30" width="129"> ������������:</TD>
        <TD height="30" width="518"> 
		<INPUT type="text" name="password" maxlength="20" size="24" value="<%=userpasswd%>"> 
		������ϵͳ�ĵĳ����������롣[<font color="#0000FF">�Ҳ�����������</font>]</TD>
      </tr>
<tr>
        <TD height="26" width="129"> ������: </TD>
        <TD height="26" width="518"> 
		<input type="text" name="Admin" maxlength="200" size="24" value="<%=Admin%>"> 
		������������� [<font color="#0000FF">�Ҳ�����������</font>]</TD>
      </tr>
<tr>
        <TD height="26" width="129"> ��������ID: </TD>
        <TD height="26" width="518"> 
		<input type="text" name="Adminid" maxlength="200" size="24" value="<%=Adminid%>"> 
		��������û�����ID [<font color="#0000FF">������</font>]</TD>
      </tr>
<TR>
        <TD height="26" width="129"> ��������:&nbsp;
        </TD>
        <TD height="26" width="518"> 
		<input type="text" name="max" maxlength="4" size="24" value="<%=max%>"> 
		�������</TD>
      </TR>
 <TR><TD align="center" height="29" width="652" colspan="2">
<INPUT type="submit" value="ȷ��" name=submit1>
        </TD>
      </TR>
</TABLE>
</form>
</div>
</BODY>
</HTML>