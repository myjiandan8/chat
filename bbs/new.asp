<!-- #include file="conn.asp" -->
<%
'=========================================================
' ���ñ������
'<span id=yuzi>Loading...</span>
'<script src=new.asp?id=yuzi&forumid=1&TopicCount=10&Count=15&showtime=1&icon=��></script>
'---------------------------------------------------------
' �������ݴ���
'<span id=yuzi>Loading...</span>
'<script src=new.asp?id=yuzi&showcontent=1&icon=��></script>
'---------------------------------------------------------
' id:         ����ʶ�����[���С�yuzi�����Զ��壬��һ��ҳ������������Ը��Ĳ�ͬ�Ĵ��룬��2����Ҫ�޸�]
' forumid:    ָ����̳��ID
' TopicCount: ��ʾ����������
' Count:      ���� ����
' showtime:   1=��ʾʱ�� 0=����ʾʱ��
' showcontent:1=��ʾ���� 0=����ʾ����
' icon:       ����ǰ�ķ���
'=========================================================
forumid=int(Request("forumid"))
if Request("TopicCount")=empty then
TopicCount=10
else
TopicCount=int(Request("TopicCount"))
end if

if Request("Count")=empty then
Count=100
else
Count=int(Request("Count"))
end if


Set conn=Server.CreateObject("ADODB.Connection")
conn.open ConnStr
cluburl=Conn.Execute("Select cluburl From clubconfig")(0)

	if forumid <> empty then sqlforumid=" and forumid="&forumid&""
	sql="select top "&TopicCount&" * from forum where deltopic=0 "&sqlforumid&" order by id desc"
	Set Rs=Conn.Execute(sql)
	do while Not RS.Eof

	if Request("showcontent")=1 then
	list=list&" <table border=0 width="&CHR(34)&"100%"&CHR(34)&" style=TABLE-LAYOUT:fixed><tr><td>"&Request("icon")&" <a href="&cluburl&"ShowPost.asp?id="&rs("id")&" target=_blank>"&rs("Topic")&"</a></td></tr><tr><td height=100>"&rs("content")&"</td></tr><tr><td align=right><a href="&cluburl&"ShowPost.asp?id="&rs("id")&" target=_blank><u> "&rs("username")&" ������ "&rs("posttime")&" - "&rs("replies")&" ������</u></a></td></tr></table><hr>"
	else
	if Request("showtime")=1 then showtime=" ["&rs("lasttime")&"]"
	list=list&""&Request("icon")&" <a href="&cluburl&"ShowPost.asp?id="&rs("id")&" target=_blank>"&left(rs("Topic"),Count)&"</a>"&showtime&"<br>"
	end if


	RS.MoveNext
	Loop
	set rs=nothing
	conn.close
	set conn=nothing
%>
<%=Request("id")%>.innerHTML='<%=list%>'
