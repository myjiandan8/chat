<!--���ݿ������ļ�#include file="../cool.asp" -->
<!--#include file="CHAR.asp" -->
<LINK href="../../images/Style.css" rel=stylesheet>
<%
	dim rs,sql
	dim name
	dim content
	'dim id
	dim qq
	dim email
	dim homepage
	dim founderr
	dim head
	dim T_Emot
	founerr=false
	if trim(request.form("name"))="" then
  		founderr=true
  		errmsg="<li>��û����д������ơ�</li><li><a href=javascript:history.back(1)><font color=red>�����ﷵ�ظ�������</font></a></li>"
	end if

	if trim(request.form("content"))="" then
  		founderr=true
  		errmsg=errmsg+"<li>��û����д�������ݡ�</li><li><a href=javascript:history.back(1)><font color=red>�����ﷵ�ظ�������</font></a></li>"
	end if
	if trim(request.form("email"))="" then
  		founderr=true
  		errmsg=errmsg+"<li>��û����д������ʵ�ַ(EMAIL��ַ)</li><li><a href=javascript:history.back(1)><font color=red>�����ﷵ�ظ�������</font></a></li>"
	end if
        
	if founderr=false then
		name=htmlencode(request.form("name"))
		Nkey=htmlencode(trim(request.form("key")))
		email=request.form("email")
		qq=request.form("qq")
		homepage=request.form("homepage")
        head=request.form("head")
        T_Emot=request.form("T_Emot")
        ss=int(request.form("ss"))
        
        'ע���û�����
        
        if request("u_name")<>"" and request("passwd")<>"" then
        
        	uid= Upuser(request("u_name"),request("passwd"))
        	if uid=0 then
        		errstr("�����ʺŻ��������!�οͿ��Բ���д!")
        		response.end
        	end if
        	
        else
        
        	uid=""
        
        end if
		
		if request("htmlable")="yes" then
		content=htmlencode2(request("content"))
		else
		content=ubbcode(request.form("content"))
		end if

	set rs=server.createobject("adodb.recordset")
	if request("action")="add" then
		call newsoft()
	elseif request("action")="edit" then
		call editsoft()
	else
		founderr=true
		errmsg=errmsg+"<li>û��ѡ������</li>"
	end if
	
sub newsoft()

	sql="select * from book where (id is null)" 
	rs.open sql,conn,1,3
	
	rs.addnew
	
	rs("admin")=admin
	rs("roomid")=id
	rs("ss")=ss
	rs("uid")=uid
	rs("name")=name
	rs("content")=content
	rs("email")=email
	rs("qq")=qq
	rs("homepage")=homepage
	rs("head")=head
	rs("T_Emot")=T_Emot
	rs("hits")=0
	rs("addtime")=date()
	rs.update
	id=rs("id")
end sub

sub editsoft()
	sql="select * from book where id="&request("id")
	rs.open sql,conn,1,3
	rs("name")=name
	rs("content")=content
	rs("email")=email
	rs("qq")=qq
	rs("head")=head
	if request.form("writer")<>"" then
		rs("writer")=trim(request.form("writer"))
	end if
	if request.form("writefrom")<>"" then
		rs("writefrom")=trim(request.form("writefrom"))
	end if
	rs.update
	id=rs("id")
end sub

	rs.close
	set rs=nothing
	conn.close
	set conn=nothing
%>
<html>

<head>
<title></title>
<link rel="stylesheet" type="text/css" href="3.css">

<% if ss=1 then %>
<meta http-equiv=refresh content="1; url=index.asp">
<% elseif ss=2 then %>
<meta http-equiv=refresh content="1; url=../main.asp">
<% end if %>
<title>�ظ��ɹ�</title></head>

<body>
<p>��</p><p align="center"><FONT size=2>Please Wait......</FONT></p>


<% if ss=1 then %>
<p align="center"><font size="2">�ύ�ɹ��������Ӻ�ϵͳ�Զ��������Բ�ҳ��</font></p>
<% elseif ss=2 then %>
<p align="center"><font size="2">�ύ�ɹ��������Ӻ�ϵͳ�Զ�������ҳ</font></p>
<% end if %>

<%
else
 response.write "<b>�������µ�ԭ���ܱ������ݣ�</B>"
 response.write errmsg
end if
%>

</body>
</html>