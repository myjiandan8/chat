<%

request_ip=Request.ServerVariables("REMOTE_ADDR")
re_ip=Split(replace_ip,"|")
For i=0 To UBound(re_ip)
	if right(re_ip(i),1)="*" then
		if left(re_ip(i),6)=left(request_ip,6) then
		response.write "很抱歉，本功能暂停开放，请稍后再试"
		response.end
		end if
	elseif re_ip(i)=request_ip then
		response.write "很抱歉，本功能暂停开放，请稍后再试"
		response.end
	end if
next

	dim startime
	dim conn
	dim connstr
	startime=timer()
	
function openarticle
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_article)
    conn.Open connstr
End Function

function opensites
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_sites)
    conn.Open connstr
End Function

function openpic
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_pic)
    conn.Open connstr
End Function

function openmodel
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_model)
    conn.Open connstr
End Function

function opennews
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_news)
    conn.Open connstr
End Function

function opendiary
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_diary)
    conn.Open connstr
End Function

function opendown
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_down)
    conn.Open connstr
End Function

function opengb
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_gb)
    conn.Open connstr
End Function

function openadmin
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_admin)
    conn.Open connstr
End Function
	
function CloseDatabase

	Conn.close
	Set conn = Nothing

End Function

Function keys(str)
word=replace_word
reword=Split(word,",")
For i=0 To UBound(reword)
	if i=0 then
	restr=replace(str,reword(i),"<font color=red>***</font>")
	else
	restr=replace(re_1,reword(i),"<font color=red>***</font>")
	end if
	re_1=restr
next
keys=restr
End Function 
%>