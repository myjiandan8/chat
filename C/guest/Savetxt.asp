<!--数据库连接文件#include file="../cool.asp" -->
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
  		errmsg="<li>你没有填写你的名称。</li><li><a href=javascript:history.back(1)><font color=red>点这里返回更正错误！</font></a></li>"
	end if

	if trim(request.form("content"))="" then
  		founderr=true
  		errmsg=errmsg+"<li>你没有填写留言内容。</li><li><a href=javascript:history.back(1)><font color=red>点这里返回更正错误！</font></a></li>"
	end if
	if trim(request.form("email"))="" then
  		founderr=true
  		errmsg=errmsg+"<li>你没有填写的你电邮地址(EMAIL地址)</li><li><a href=javascript:history.back(1)><font color=red>点这里返回更正错误！</font></a></li>"
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
        
        '注册用户处理
        
        if request("u_name")<>"" and request("passwd")<>"" then
        
        	uid= Upuser(request("u_name"),request("passwd"))
        	if uid=0 then
        		errstr("聊湾帐号或密码错误!游客可以不填写!")
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
		errmsg=errmsg+"<li>没有选定参数</li>"
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
<title>回复成功</title></head>

<body>
<p>　</p><p align="center"><FONT size=2>Please Wait......</FONT></p>


<% if ss=1 then %>
<p align="center"><font size="2">提交成功！二秒钟后系统自动返回留言簿页面</font></p>
<% elseif ss=2 then %>
<p align="center"><font size="2">提交成功！二秒钟后系统自动返回首页</font></p>
<% end if %>

<%
else
 response.write "<b>由于以下的原因不能保存数据：</B>"
 response.write errmsg
end if
%>

</body>
</html>