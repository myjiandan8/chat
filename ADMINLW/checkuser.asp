<% 
Session.Timeout=900
'��½��ʱ���

if session("usercctvcomsinacom")<>"1" then
response.redirect "/adminlw/Error.asp?m=������ͣ��ʱ�������δ��½��"
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
	if rs(name)=0 and rs("admin")=0 then errstr("��ʾ����û�н����ҳ���Ȩ�ޣ�")
	end if

end sub

%>