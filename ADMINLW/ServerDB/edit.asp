<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->

<%
	Call quanxian(session("UID"),"admin",0)
	Call OpenChatConn()
    sid=Request("sid")
    cid=Request("cid")
    menu=Request("menu")
    webid=Request("webid")
    if menu="" then menu="add"
    if sid="" then sid=0
    if cid="" then cid=0
 

	chathostip=trim(Request("chathostip"))
	chatserialno=trim(Request("chatserialno"))
	dsnname=trim(Request("dsnname"))
	dsnuser=trim(Request("dsnuser"))
	dsnpass=trim(Request("dsnpass"))
	'loginpasswd=trim(Request("loginpasswd"))
	roomcfgdir=trim(Request("roomcfgdir"))
	moduledir=trim(Request("moduledir"))
	keyfile=trim(Request("keyfile"))

	newDM=trim(Request("newDM"))
	websys=trim(Request("websys"))
	md5pass=trim(Request("md5pass"))
	txt=trim(Request("txt"))
 
    
	if menu="del" and name<>"" then

		chatconn.execute "delete from [ServerDB] where sid like "& sid &" and webid="& webid
		wenti("ɾ���ɹ�")
		response.redirect "list.asp"
		response.end
	
	end if
    
    
    
if menu="addsave" or menu="editsave" then

	if chathostip="" or dsnname=""  or dsnuser=""  or dsnpass="" or websys="" then errstr("����д������")
	if cid>0 and (chatserialno=""  or roomcfgdir="" or moduledir="" or keyfile="") then errstr("����д������")
	
	if menu="addsave" then
		sql="select * from [ServerDB] where chathostip='"& chathostip &"' and cid="& cid &" and webid="& webid
		set rs=chatconn.execute (sql)
		if (not rs.eof) then errstr("�÷������Ѿ����ڣ�")
		rs.close
	end if

	Set rs= Server.CreateObject("ADODB.Recordset")
	sql="SELECT * FROM [ServerDB] where sid like "& sid
	rs.open sql,chatconn,1,3

       
       if menu="addsave" then
	       rs.addnew
	       
		   rs("chathostip")=chathostip
		 'rs("fid")=fid
		  rs("cid")=cid
       end if

		rs("webid") = webid
		rs("dsnname")=dsnname
		rs("dsnuser")=dsnuser
		rs("dsnpass")=dsnpass
		'rs("loginpasswd")=loginpasswd
		rs("chatserialno")=chatserialno
		rs("roomcfgdir")=roomcfgdir
		rs("moduledir")=moduledir
		rs("keyfile")=keyfile
		
		rs("newDM")=newDM
		rs("websys")=websys
		rs("md5pass")=md5pass
		rs("txt")=txt

        rs.Update
        rs.close

	   wenti("�����ɹ���")
	   
end if



if menu="edit" and sid>0 then

sql="select * from [ServerDB] where sid like "& sid
set rs=chatconn.execute (sql)

if rs.eof then errstr("�Ƿ�ID")
'if webid<>rs("webid") then errstr("��ûȨ�޹���÷�����")

	'fid=rs("fid")
	webid=rs("webid")
	cid=rs("cid")
	chathostip=rs("chathostip")
	chatserialno=rs("chatserialno")
	dsnname=rs("dsnname")
	dsnuser=rs("dsnuser")
	dsnpass=rs("dsnpass")
	'loginpasswd=rs("loginpasswd")
	roomcfgdir=rs("roomcfgdir")
	moduledir=rs("moduledir")
	keyfile=rs("keyfile")

	newDM=rs("newDM")
	websys=rs("websys")
	md5pass=rs("md5pass")
	txt=rs("txt")

	rs.close

end if
%>
<html>
<head>
<title>����������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</head>
<body bgcolor="#9CC7EF" text="#000000">
<br>
<br>
<br>
<form method="post" action="edit.asp" name="form1">
        	<% if menu="edit" then %>
        	<input type="hidden" name="menu" size="30" maxlength="10" value="editsave">
        	<input type="hidden" name="sid" size="30" maxlength="10" value="<%=sid%>"> 
        	<input type="hidden" name="cid" size="30" maxlength="10" value="<%=cid%>"> 
			<% else %>
        	<input type="hidden" name="menu" size="30" maxlength="10" value="addsave">
        	<input type="hidden" name="sid" size="30" maxlength="10" value="<%=sid%>"> 
        	<input type="hidden" name="cid" size="30" maxlength="10" value="<%=cid%>"> 
        	<% end if %>
  <table width="550" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" align="center" height="231">
    <tr bgcolor="#4296E7"> 
      <td colspan="2" height="6"> 
        <div align="center"><font color="#FFFFFF">
        <% if menu="add" then %>
			���
        <% else %>
			�༭
        <% end if %>
        
        <% if cid=0 then %>
			�����ݿ������
        <% else %>
			<%=cip%>��������� 
        <% end if %>
         
        
        </font></div>
      </td>
    </tr>
    <tr>
      <td colspan="2" height="21"> 
        <font color="#FF0000">*</font>�������ù���ԱΪ���ܺ�̨�Ĺ���Ա��<br>
		&nbsp;�������ø�ÿλ����Ա��ͬ��Ȩ�ޣ�����������[�༭Ȩ��]��</td>
    </tr>

    <tr>
      <td width="154" nowrap height="24"> 
        <p align="right">ѡ����վ</td>
      <td width="374" height="24"> 
        <font color="#336699">
                               
<select style="color: #006699; font-size: 9pt; font-family: ����,SimSun" onchange="gotolinkroom(this)" name="webid" size="1">
<%
sql="select * from newweb order by webid asc"
set rsm=chatconn.execute (sql)
%>
&nbsp;<%
do while not (rsm.eof or err)
%> 
<option value="<%=rsm("webid")%>" <%if rsm("webid")=webid then response.write "selected"%>><%=rsm("webname")%></option>
<% rsm.moveNext
  loop
  rsm.close
%>
</select></font></td>
    </tr>
	<tr>
      <td width="154" nowrap height="10"> 
        <div align="right">������</div>
      </td>
      <td width="374" height="10"> 
        <input name="chathostip" size="30" value="<%=chathostip%>">

        <font color="#FF0000">*</font> д������ д��Ȩ������        
        <% if menu="add" then %>
        	<% else %>
        	<% end if %></td>
    </tr>
    <tr> 
      <td width="154" nowrap height="10"> 
        <div align="right">WEBϵͳ�Ľӿڵ�ַ</div>
      </td>
      <td width="374" height="10"> 
        <input name="websys" size="30" value="<%=websys%>">
        <font color="#FF0000">* </font>ϵͳ�Ľӿڵ�URL��ַ</td>
    </tr>
    <tr>
      <td width="154" nowrap height="26" align="right"> 
        ������Ĭ�϶�������</td>
      <td width="374" height="26"> 
        <input name="newDM" size="30" value="<%=newDM%>">
        <font color="#FF0000">* </font>�� liaowan.com<font color="#FF0000"><br>
		</font>���� <a href="http://2000.liaowan.com">http://2000.liaowan.com</a> 
		��д liaowan.com</td>
    </tr>
    <tr>
      <td width="154" nowrap height="27" align="right"> 
        ϵͳ���ӵ�MD5�����ֵ</td>
      <td width="374" height="27"> 
        <input name="md5pass" size="30" value="<%=md5pass%>"><font color="#FF0000"> 
		*</font> 
		6-16λ���ֻ���ĸ���</td>
    </tr>

    <tr>
      <td width="154" align="right" height="1" nowrap> 
        <div align="right">���ݿ�DSN����Դ ����</div>
      </td>
      <td width="374" height="1"> 
        <input name="dsnname" size="30" value="<%=dsnname%>"><font color="#FF0000"> 
		*</font>
      </td>
    </tr>

    <tr>
      <td width="154" nowrap height="26" align="right"> 
        DSN����Դ���� �û���</td>
      <td width="374" height="26"> 
        <input name="dsnuser" size="30" value="<%=dsnuser%>"><font color="#FF0000"> 
		*</font> </td>
    </tr>
	<tr>
      <td width="154" nowrap height="10" align="right"> 
        DSN����Դ���� ����</td>
      <td width="374" height="10"> 
        <input name="dsnpass" size="30" value="<%=dsnpass%>"><font color="#FF0000"> 
		*</font></td>
    </tr>
    <tr>
      <td width="538" nowrap height="24" align="right" colspan="2"> 
        <p align="center"><font color="#FF0000">&amp;</font>VCUϵͳʹ��SQL SERVER ���ݿ� 
		���Ϸ�������ȫ<br>
		��ر������ݿ�������ϵ�TCP1433�˿ڣ����ⱻ�ڿ����ã�</td>
      </tr>
      
<% if cid>0 then %>
    <tr>
      <td width="154" nowrap height="26" align="right"> 
        BCHATϵͳ�ļ��е����·��</td>
      <td width="374" height="26"> 
        <input name="roomcfgdir" size="30" value="<%=roomcfgdir%>"><font color="#FF0000"> 
		* �� C:\bchat</font></td>
    </tr>
	<tr>
      <td width="154" nowrap height="9" align="right"> 
        BCHAT�����ļ��е����·��</td>
      <td width="374" height="9"> 
        <input name="moduledir" size="30" value="<%=moduledir%>"> 
        <font color="#FF0000">* �� C:\bchat\module</font></td>
    </tr>
    <tr>
      <td width="154" nowrap height="30" align="right"> 
        BCHAT��Ȩ�����к�</td>
      <td width="374" height="30"> 
        <input name="chatserialno" size="30" value="<%=chatserialno%>"> 
        <font color="#FF0000">* �� BCHAT��config.asp</font></td>
    </tr>
	<tr>
      <td width="154" nowrap height="30" align="right"> 
        BCHAT��Ȩ�ļ�</td>
      <td width="374" height="30"> 
        <input name="keyfile" size="30" value="<%=keyfile%>"><font color="#FF0000"> 
		* �� BCHAT��config.asp</font></td>
    </tr>
<% end if %>
    <tr>
      <td width="154" nowrap height="69"> 
        <p align="right">����˵��</td>
      <td width="374" height="69"> 
        <textarea rows="7" name="txt" cols="32"><%=txt%></textarea></td>
    </tr>
    <tr> 
      <td colspan="2" height="22"> 
        <div align="center"> 
          <input type="submit" name="Submit" value=" ȷ �� ">
          
        	<a href="useradd.asp?menu=del&name=<%=name%>">ɾ�����û�</a></div>
      </td>
    </tr>
    <tr bgcolor="#4296E7"> 
      <td colspan="2" height="19">��</td>
    </tr>
  </table>
</form>
</body>
</html>


<%
'������
 



%>