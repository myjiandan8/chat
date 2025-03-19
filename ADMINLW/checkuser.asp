<% 
Session.Timeout=900
'登陆超时检测

if session("usercctvcomsinacom")<>"1" then
response.redirect "/adminlw/Error.asp?m=由于你停留时间过长或未登陆！"
end if

sub wenti(message)
%>
<script>alert('<%=message%>');</script>
<%
end sub


if jk="ok" then call OpenConn

sub quanxian(user,name,jibei)

	if jk="ok" then
	sql="select admin,"& name &" from admin where UID='" & user & "'"
	set rs = conn.Execute(sql)
	if rs(name)=0 and rs("admin")=0 then errstr("提示：您没有进入该页面的权限！")
	end if

end sub

%>