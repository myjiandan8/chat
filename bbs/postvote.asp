<!-- #include file="setup.asp" -->
<%

id=int(Request("id"))

if Request("menu")="look" then

list=""&Application(CacheName&"vote"&id&"")&""
if list=empty then error2("Ŀǰ��ʱû�м�¼ͶƱ���û�������")
error2("����ͶƱ���û�������\n"&list&"")

end if


if Request.Cookies("username")=empty then error2("�������¼�����ͶƱ")

if Request("postvote")="" then error2("��ѡ����ҪͶƱ����Ŀ��")

if instr(Application(CacheName&"vote"&id&""),""&Request.Cookies("username")&" ")>0 or instr(Request.Cookies("vote"),""&id&"|")>0 then error2("���Ѿ�Ͷ��Ʊ�ˣ������ظ�ͶƱ��")

if instr(Application(CacheName&"voteip"&id&""),""&remoteaddr&" ")>0 then error2("��IP�Ѿ�Ͷ��Ʊ�ˣ������ظ�ͶƱ��")


if Conn.Execute("Select locktopic From [forum] where ID="&id&"")(0)=1 then error("<li>�������Ѿ��رգ��������µ�ͶƱ")




sql="select * from forum where id="&id&""
rs.Open sql,Conn,1,3
for each ho in request.form("postvote")
pollresult=split(rs("pollresult"),"|")
for i = 0 to ubound(pollresult)
if not pollresult(i)="" then
if cint(ho)=i then
pollresult(i)=pollresult(i)+1
end if
allpollresult=""&allpollresult&""&pollresult(i)&"|"
end if
next

rs("pollresult")=allpollresult
rs("lastname")=Request.Cookies("username")
rs("lasttime")=now()
rs.update
allpollresult=""
next


rs.close
Application(CacheName&"vote"&id&"")=""&Request.Cookies("username")&" "&Application(CacheName&"vote"&id&"")&""
Application(CacheName&"voteip"&id&"")=""&remoteaddr&" "&Application(CacheName&"voteip"&id&"")&""
Response.Cookies("vote")=""&Request.Cookies("vote")&""&id&"|"
error2("ͶƱ�ɹ�!")


%>