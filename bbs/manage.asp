<!-- #include file="setup.asp" -->
<%
if Request.ServerVariables("request_method") <> "POST" then
response.write "<form name=BBSxpPOST method=post action=manage.asp?"&Request.ServerVariables("Query_String")&"></form><SCRIPT>if(confirm('��ȷ��Ҫִ�иò���?')){returnValue=BBSxpPOST.submit()}else{returnValue=history.back()}</SCRIPT>"
htmlend
end if


top
if Request.Cookies("username")=empty then error2("���¼���ٽ��в�����")

id=int(Request("id"))
forumid=Conn.Execute("Select forumid From forum where id="&id)(0)

if membercode > 3 then
pass=1
elseif instr("|"&Conn.Execute("Select moderated From [bbsconfig] where id="&forumid&" ")(0)&"|","|"&Request.Cookies("username")&"|")>0 then
pass=1
end if

if pass<>1 then error("<li>����Ȩ�޲���")


username=Conn.Execute("Select username From [forum] where id="&id&"")(0)

select case Request("menu")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "top"
if membercode > 3 then
conn.execute("update [forum] set toptopic=2 where id="&id&"")
succtitle="���ö�����ɹ�"
else
error("<li>����Ȩ�޲���")
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "untop"
if membercode > 3 then
conn.execute("update [forum] set toptopic=0 where id="&id&"")
succtitle="ȡ�����ö�����ɹ�"
else
error("<li>����Ȩ�޲���")
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "movenew"
conn.execute("update [forum] set lasttime='"&now()&"' where id="&id&"")
succtitle="��ǰ����ɹ�"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "move"
if Request("moveid")="" then error("<li>��û��ѡ��Ҫ�������ƶ��ĸ���̳")
if Conn.Execute("Select pass From [bbsconfig] where id="&Request("moveid")&"")(0)=4 then error("<li>Ŀ����̳Ϊ��Ȩ����״̬")
conn.execute("update [forum] set forumid="&Request("moveid")&",toptopic=0,goodtopic=0,locktopic=0 where id="&id&"")
succtitle="�ƶ�����ɹ�"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "deltopic"
if isnumeric(""&Request("retopicid")&"") then
conn.execute("delete from [reforum] where topicid="&id&" and id="&Request("retopicid")&"")
conn.execute("update [forum] set replies=replies-1 where id="&id&"")
succtitle="ɾ�������ɹ�"
else
conn.execute("update [user] set deltopic=deltopic+1 where username='"&username&"'")
conn.execute("update [forum] set toptopic=0,deltopic=1,lastname='"&Request.Cookies("username")&"',lasttime='"&now()&"' where id="&id&" and deltopic=0")
succtitle="ɾ������ɹ�"
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "goodtopic"
if Conn.Execute("Select goodtopic From [forum] where id="&id&" ")(0)=1 then error("<li>�������Ѿ����뾫�����ˣ������ظ����")
conn.execute("update [forum] set goodtopic=1 where id="&id&"")
conn.execute("update [user] set goodtopic=goodtopic+1 where username='"&username&"'")
succtitle="���뾫�����ɹ�"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "delgoodtopic"
if Conn.Execute("Select goodtopic From [forum] where id="&id&" ")(0)=0 then error("<li>�������Ѿ��Ƴ���������")
conn.execute("update [forum] set goodtopic=0 where id="&id&"")
conn.execute("update [user] set goodtopic=goodtopic-1 where username='"&username&"'")
succtitle="�Ƴ��������ɹ�"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "toptopic"
conn.execute("update [forum] set toptopic=1 where id="&id&"")
succtitle="�ö�����ɹ�"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "deltoptopic"
conn.execute("update [forum] set toptopic=0 where id="&id&"")
succtitle="ȡ���ö�����ɹ�"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "locktopic"
conn.execute("update [forum] set locktopic=1 where id="&id&"")
succtitle="�ر�����ɹ�"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "dellocktopic"
conn.execute("update [forum] set locktopic=0 where id="&id&"")
succtitle="��������ɹ�"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "lookip"
if isnumeric(""&Request("retopicid")&"") then
error2("IP��ַ��"&Conn.Execute("Select postip From [reforum] where id="&Request("retopicid")&" ")(0)&"")
else
error2("IP��ַ��"&Conn.Execute("Select postip From [forum] where id="&id&" ")(0)&"")
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
end select
if succtitle="" then error("<li>��Ч����")

log(""&succtitle&"������ID��"&id&"")

message="<li>"&succtitle&"<li><a href=ShowForum.asp?forumid="&forumid&">������̳</a><li><a href=Default.asp>����������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=ShowForum.asp?forumid="&forumid&">")
%>