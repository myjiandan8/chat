<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<% if adminname<>"admin" then errstr("ֻ�������ſ��Ա༭����Ա��")%>

<%

    menu=Request("menu")
    if menu="" then menu="add"
    
    admin = Request("admin")


    uid=Request("uid")
    
	name=trim(Request("name"))
	passwd=trim(Request("passwd"))
	passwd2=trim(Request("passwd2"))
	question=HTMLEncode(Request("question"))
	answer=HTMLEncode(Request("answer"))
	
	cname=trim(Request("cname"))
	txt=trim(Request("txt"))
	times=trim(Request("times"))
    
	if menu="del" and name<>"" then

		chatconn.execute "delete from [admin] where name like '"& name &"' and roomid="& rmport
		wenti("ɾ���ɹ�")
		response.redirect "userlist.asp"
		response.end
	
	end if
    
    
    
if menu="addsave" or menu="editsave" then


if name="" or cname="" or txt="" then errstr("����д������")
if name="admin" then errstr("�û���adminΪ�����û��� ��")

if menu="addsave" then

sql="select * from [admin] where name='"& name &"' and roomid="& rmport
set rs=chatconn.execute (sql)
if (not rs.eof) then errstr("�ù���ID�Ѿ����ڣ��뻻һ���������ԣ�")
rs.close
if passwd="" or  passwd2="" then errstr("����д������")
if passwd<>passwd2 then  errstr("�����������벻��ȷ��")
end if

if Request("modifypasswd")=1 then
if passwd="" or  passwd2=""  then errstr("����д������")
if passwd<>passwd2 then  errstr("�����������벻��ȷ��")
end if



	sql="SELECT * FROM [admin] where name like '"& name &"' and roomid="& rmport
	rs.open sql,chatconn,1,3

       
       if menu="addsave" then
       rs.addnew
       rs("roomid") = rmport
       rs("name") = name
       end if
       
       rs("cname") = cname
       if passwd<>"" then rs("passwd") = passwd
       rs("question") = question
       rs("answer") = answer
       rs("txt") = txt
       
       rs("admin") = admin

       rs.Update
       rs.close

	   errstr("�༭�ɹ�")
end if



if menu="edit" and name<>"" then

sql="select * from [admin] where name like '"& name &"' and roomid="& rmport
set rs=chatconn.execute (sql)

if rs.eof then errstr("�Ƿ�ID" & name)

	name=rs("name")
	passwd=rs("passwd")
	question=rs("question")
	answer=rs("answer")
	
	admin=rs("admin")
	cname=rs("cname")
	txt=rs("txt")
	
	

	rs.close

end if
%>
<html>
<head>
<title>��ӹ���Ա</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</head>
<body bgcolor="#9CC7EF" text="#000000">
<br>
<br>
<br>
<form method="post" action="useradd.asp" name="form1">
  <table width="469" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" align="center" height="231">
    <tr bgcolor="#4296E7"> 
      <td colspan="4" height="6"> 
        <div align="center"><font color="#FFFFFF">��ӱ༭����Ա</font></div>
      </td>
    </tr>
    <tr>
      <td colspan="4" height="21"> 
        �������õ��ʺ�Ϊ�����Һ�̨�ʺţ����������û�û�й�ϵ����</td>
    </tr>
    <tr> 
      <td width="127" nowrap height="26"> 
        <div align="right">����Ա�ʺ�</div>
      </td>
      <td width="320" height="26" colspan="3"> 
        <% if menu="add" then %>
        <input type="text" name="name" size="18"> 
        <input type="hidden" name="menu" size="18" maxlength="10" value="addsave">
        <% else %>
        <input type="hidden" name="name" size="18" maxlength="10" value="<%=name%>"><%=name%>
        <input type="hidden" name="menu" size="18" maxlength="10" value="editsave">
        <% end if %>
        
      </td>
    </tr>
    <tr>
      <td width="127" nowrap height="26">
        <div align="right">����Ա��ʵ����</div>
      </td>
      <td width="320" height="26" colspan="3">
        <input type="text" name="cname" size="18" value="<%=cname%>">
      </td>
    </tr>
    <% if menu="add" then %>
    <tr> 
      <td width="127" nowrap height="26"> 
        <div align="right">����Ա����</div>
      </td>
      <td width="320" height="26" colspan="3"> 
        <input type="password" name="passwd" size="18">
      </td>
    </tr>
    <tr> 
      <td width="127" nowrap height="26"> 
        <div align="right">����������</div>
      </td>
      <td width="320" height="26" colspan="3"> 
        <input type="password" name="passwd2" size="18">
      </td>
    </tr>
    <% else %>
    <tr>
      <td width="127" align="right" height="1" nowrap> 
        <div align="right">����Ա����</div>
      </td>
      <td width="320" height="1" colspan="3"> 
        <input type="checkbox" name="modifypasswd" value="1">
        <font color="#FF0000">�޸�����</font> 
        <input type="password" name="passwd" size="12">
        <input type="password" name="passwd2" size="12">
      </td>
    </tr>
    <% end if %>
    <tr>
      <td width="127" nowrap height="26" align="right"> 
        ������ʾ����</td>
      <td width="320" height="26" colspan="3"> 
        <input name="question" size="18" value="<%=question%>"></td>
    </tr>
	<tr>
      <td width="127" nowrap height="26" align="right"> 
        ������ʾ��</td>
      <td width="320" height="26" colspan="3"> 
        <input name="answer" size="18" value="<%=answer%>"></td>
    </tr>
    <tr>
      <td width="127" nowrap height="69"> 
        <p align="right">����˵��</td>
      <td width="320" height="69" colspan="3"> 
        <textarea rows="7" name="txt" cols="32"><%=txt%></textarea></td>
    </tr>
    <tr>
      <td width="127" nowrap height="43" align="right"> 
        �༭Ȩ��</td>
      <td width="93" height="43" valign="top"> 
        ϵͳ����<input type="checkbox" name="admin" value="admin1" <%if InStr(admin,"admin1")>0 then response.write " checked"%>>
		<br>
		����������<input type="checkbox" name="admin" value="admin22" <%if InStr(admin,"admin22")>0 then response.write " checked"%>>
		<br>
		���ֲ�����<input type="checkbox" name="admin" value="admin5" <%if InStr(admin,"admin5")>0 then response.write " checked"%>> 
		</td>
      <td width="105" height="43" valign="top"> 
        ���һ�������<input type="checkbox" name="admin" value="admin20" <%if InStr(admin,"admin20")>0 then response.write " checked"%>>
        <br>
        ��վ����<input type="checkbox" name="admin" value="admin3" <%if InStr(admin,"admin3")>0 then response.write " checked"%>><br>
		��̳����<input type="checkbox" name="admin" value="admin6" <%if InStr(admin,"admin6")>0 then response.write " checked"%>></td>
      <td width="102" height="43" valign="top"> 
        �Զ���ű�<input type="checkbox" name="admin" value="admin21" <%if InStr(admin,"admin21")>0 then response.write " checked"%>> 
		<br>
		������<input type="checkbox" name="admin" value="admin4" <%if InStr(admin,"admin4")>0 then response.write " checked"%>></td>
    </tr>
    <tr> 
      <td colspan="4" height="22"> 
        <div align="center"> 
          <input type="submit" name="Submit" value=" ȷ �� ">
          
        	<a href="useradd.asp?menu=del&name=<%=name%>">ɾ�����û�</a></div>
      </td>
    </tr>
    <tr bgcolor="#4296E7"> 
      <td colspan="4" height="19">��</td>
    </tr>
  </table>
</form>
</body>
</html>