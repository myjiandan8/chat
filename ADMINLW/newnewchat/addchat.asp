<!--�������ݿ��ļ�#include file="../../INC/Chatfl.asp" -->
<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%

    menu=Request("menu")
    if menu="" then menu="add"
    
    roomid=clng(Request("roomid"))
    
    ff=Request("ff")
    
	roomname = Request("roomname")
	userpasswd = Request("password")
	newType = int(Request("newType"))
	admin = Request("admin")
	adminid = Request("adminid")
	
	max = Request("max")
	loginw = Request("loginw")
	logins = Request("logins")
	
	rtype=Request("rtype")

Call OpenChatconn
if menu="addsave" or menu="editsave" then

    if roomid="" or loginw="" or ff="" or roomname="" or userpasswd="" or admin="" or adminid="" or max="" or logins="" or rtype="" then errstr("����д������")

sql="select * from web where id="& roomid
set rs=chatconn.execute (sql)
if (not rs.eof) and menu="addsave" then errstr("��ID�Ѿ���ռ�ã��뻻һ����")
rs.close


	sql="SELECT * FROM [Web] where id=" & clng(roomid)
	rs.open sql,chatconn,1,3

       
       if menu="addsave" then
       rs.addnew
       rs("cid") = roomid
       rs("id") = roomid
       rs("newday") = date()
       rs("date") = date()
       rs("chatxy") = "��ӭ����" & Roomname & " - ����������Ƶ�����ң����鹵ͨ�����￪ʼ��"
       rs("webbg") = "http://liaowan.com/images/newbg.jpg"
       end if
       
       rs("ff") = ff
       rs("Roomname") = Roomname
       rs("max") = max
       rs("adminid") = adminid
       rs("admin") = admin
       
       rs("adminpasswd") = userpasswd 
	   rs("newType") = newType
       rs("rtype") = rtype
       rs("logins") = logins
       rs("loginw") = loginw

       rs.Update
       rs.close

		errstr("�༭�ɹ�")
end if



if menu="edit" and roomid<>"" then

sql="select * from [web] where id= "& roomid
set rs=chatconn.execute (sql)

if rs.eof then errstr("�Ƿ�ID" & roomid)

    ff=rs("ff")
	roomname = rs("roomname")
	userpasswd = rs("adminpasswd")

	admin = rs("admin")
	adminid = rs("adminid")

	max = rs("max")
	logins = rs("logins")
	loginw=rs("loginw")
	
	rtype=rs("rtype")

	rs.close

end if

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
        <TD height="26" width="84"> ID����:</TD>
        <TD height="26" width="562"> 
        <% if menu="add" then %>
        <input type="text" name="roomid" size="9"> 
        <input type="hidden" name="menu" size="18" maxlength="10" value="addsave">
        <% else %>
        <input type="hidden" name="roomid" size="18" maxlength="10" value="<%=roomid%>"><%=roomid%>
        <input type="hidden" name="menu" size="18" maxlength="10" value="editsave">
        <% end if %>
        
        
		��Χ 2000-9999&nbsp; ����6000</TD></TR>
<tr>
        <TD height="26" width="84"> ����������:&nbsp;
        </TD>
        <TD height="26" width="562"> 
            
          <INPUT type="text" name="RoomName" maxlength="20" size="20" value="<%=RoomName%>">
        ���ֲ��ܰ����Ƿ��ַ�</TD>
      </tr>
<tr>
        <TD height="26" width="84"> ����������:</TD>
        <TD height="26" width="562"> <select size="1" name="ff">
		<option value="2" <%if ff=3 then response.write " selected"%>>BChat</option>
		</select></TD>
</tr>
<tr>
        <TD height="26" width="84"> ��������:</TD>
        <TD height="26" width="562"> <select size="1" name="rtype">
		<option value="0" <%if rtype=0 then response.write " selected"%>>��Ƶ</option>
		<option value="1" <%if rtype=1 then response.write " selected"%>>����</option>
		<option value="2" <%if rtype=2 then response.write " selected"%>>����</option>
		</select></TD>
</tr>
<tr>
	    <td width="127" align=left height="26">���Է��ࣺ</td>
	    <td width="455" height="26">  
        
<select size="1" name="newType">

<option value="1" <%if newType=i then response.write "selected"%>>����</option>
<option value="2" <%if newType=i then response.write "selected"%>>���</option>
<option value="3" <%if newType=i then response.write "selected"%>>���</option>

</select>&nbsp;
<img border="0" src="../../PIC/IMG/s01.gif" width="15" height="13">���� 
<img border="0" src="../../PIC/IMG/s12.gif" width="15" height="13">��� 
<img border="0" src="../../PIC/IMG/s23.gif" width="15" height="13">���</td>
	      </tr>
<tr>
        <TD height="26" width="84"> ����������ID:</TD>
        <TD height="26" width="562"> 
		<input type="text" name="loginw" maxlength="200" size="31" value="<%=loginw%>"> 
		������׽������������Ϣ���û���½</TD>
</tr>
<tr>
        <TD height="26" width="84"> �����½��ַ:</TD>
        <TD height="26" width="562"> 
		<input type="text" name="logins" maxlength="200" size="31" value="<%=logins%>"> 
		�� http://202.96.140.86/cgi-bin/login.cgi</TD>
</tr>
<tr>
        <TD height="26" width="84"> ������������:</TD>
        <TD height="26" width="562"> 
		<INPUT type="text" name="password" maxlength="20" size="20" value="<%=userpasswd%>"> 
		������ϵͳ�ĵĳ����������롣 ����������Լ��ӵ�ʹ�ÿ�����</TD>
      </tr>
<tr>
        <TD height="26" width="84"> ������: </TD>
        <TD height="26" width="562"> 
		<input type="text" name="Admin" maxlength="200" size="24" value="<%=Admin%>"> 
		�������������</TD>
      </tr>
<tr>
        <TD height="26" width="84"> ��������ID: </TD>
        <TD height="26" width="562"> 
		<input type="text" name="Adminid" maxlength="200" size="24" value="<%=Adminid%>"> 
		��������û�����ID</TD>
      </tr>
<TR>
        <TD height="26" width="84"> ��������:&nbsp;
        </TD>
        <TD height="26" width="562"> 
		<input type="text" name="max" maxlength="3" size="24" value="<%=max%>"> 
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