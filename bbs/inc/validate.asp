<%
if pass="0" then
error("<li>����̳��ʱ�رգ����ٽ��ܷ��ʣ�")
elseif pass="2" then
if Request.Cookies("username")=empty then error("<li>ֻ��<a href=login.asp>��¼</a>����������̳")
elseif pass="3" then
if instr("|"&userlist&"|","|"&Request.Cookies("username")&"|")<=0 or Request.Cookies("username")=empty then error("<li>����̳��δ��Ȩ�����ʣ�")
elseif pass="4" then
if instr(""&Request.ServerVariables("script_name")&"","newtopic.asp") > 0 and instr("|"&userlist&"|","|"&Request.Cookies("username")&"|")<=0 then error("<li>����̳��δ��Ȩ��������")
end if

if password<>empty then
if password<>Request.Cookies("password") then response.redirect "login.asp?menu=password&url=http://"&Request.ServerVariables("server_name")&Request.ServerVariables("script_name")&"?"&Request.ServerVariables("Query_String")&""
end if
%>