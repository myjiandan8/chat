<!-- #include file="setup.asp" -->
<%
if Request.ServerVariables("request_method") <> "POST" then
response.write "<form name=BBSxpPOST method=post action=manage.asp?"&Request.ServerVariables("Query_String")&"></form><SCRIPT>if(confirm('您确定要执行该操作?')){returnValue=BBSxpPOST.submit()}else{returnValue=history.back()}</SCRIPT>"
htmlend
end if


top
if Request.Cookies("username")=empty then error2("请登录后再进行操作！")

id=int(Request("id"))
forumid=Conn.Execute("Select forumid From forum where id="&id)(0)

if membercode > 3 then
pass=1
elseif instr("|"&Conn.Execute("Select moderated From [bbsconfig] where id="&forumid&" ")(0)&"|","|"&Request.Cookies("username")&"|")>0 then
pass=1
end if

if pass<>1 then error("<li>您的权限不够")


username=Conn.Execute("Select username From [forum] where id="&id&"")(0)

select case Request("menu")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "top"
if membercode > 3 then
conn.execute("update [forum] set toptopic=2 where id="&id&"")
succtitle="总置顶主题成功"
else
error("<li>您的权限不够")
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "untop"
if membercode > 3 then
conn.execute("update [forum] set toptopic=0 where id="&id&"")
succtitle="取消总置顶主题成功"
else
error("<li>您的权限不够")
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "movenew"
conn.execute("update [forum] set lasttime='"&now()&"' where id="&id&"")
succtitle="拉前主题成功"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "move"
if Request("moveid")="" then error("<li>您没有选择要将主题移动哪个论坛")
if Conn.Execute("Select pass From [bbsconfig] where id="&Request("moveid")&"")(0)=4 then error("<li>目标论坛为授权发帖状态")
conn.execute("update [forum] set forumid="&Request("moveid")&",toptopic=0,goodtopic=0,locktopic=0 where id="&id&"")
succtitle="移动主题成功"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "deltopic"
if isnumeric(""&Request("retopicid")&"") then
conn.execute("delete from [reforum] where topicid="&id&" and id="&Request("retopicid")&"")
conn.execute("update [forum] set replies=replies-1 where id="&id&"")
succtitle="删除回贴成功"
else
conn.execute("update [user] set deltopic=deltopic+1 where username='"&username&"'")
conn.execute("update [forum] set toptopic=0,deltopic=1,lastname='"&Request.Cookies("username")&"',lasttime='"&now()&"' where id="&id&" and deltopic=0")
succtitle="删除主题成功"
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "goodtopic"
if Conn.Execute("Select goodtopic From [forum] where id="&id&" ")(0)=1 then error("<li>此帖子已经加入精华区了，无需重复添加")
conn.execute("update [forum] set goodtopic=1 where id="&id&"")
conn.execute("update [user] set goodtopic=goodtopic+1 where username='"&username&"'")
succtitle="加入精华区成功"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "delgoodtopic"
if Conn.Execute("Select goodtopic From [forum] where id="&id&" ")(0)=0 then error("<li>此帖子已经移出精华区了")
conn.execute("update [forum] set goodtopic=0 where id="&id&"")
conn.execute("update [user] set goodtopic=goodtopic-1 where username='"&username&"'")
succtitle="移出精华区成功"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "toptopic"
conn.execute("update [forum] set toptopic=1 where id="&id&"")
succtitle="置顶主题成功"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "deltoptopic"
conn.execute("update [forum] set toptopic=0 where id="&id&"")
succtitle="取消置顶主题成功"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "locktopic"
conn.execute("update [forum] set locktopic=1 where id="&id&"")
succtitle="关闭主题成功"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "dellocktopic"
conn.execute("update [forum] set locktopic=0 where id="&id&"")
succtitle="开放主题成功"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "lookip"
if isnumeric(""&Request("retopicid")&"") then
error2("IP地址："&Conn.Execute("Select postip From [reforum] where id="&Request("retopicid")&" ")(0)&"")
else
error2("IP地址："&Conn.Execute("Select postip From [forum] where id="&id&" ")(0)&"")
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
end select
if succtitle="" then error("<li>无效命令")

log(""&succtitle&"，主题ID："&id&"")

message="<li>"&succtitle&"<li><a href=ShowForum.asp?forumid="&forumid&">返回论坛</a><li><a href=Default.asp>返回社区首页</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=ShowForum.asp?forumid="&forumid&">")
%>