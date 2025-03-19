
<%
''''''ÃÜÂë¼ì²âÄ£¿é
'
Set connn = Server.CreateObject("ADODB.Connection")
connn.Open = "liaowancmvip"
sql="select name,passwd from [user] where name='"&HTMLEncode(Request.Cookies("username"))&"'"
Set Rs=Connn.Execute(SQL)
if rs.eof then Response.Cookies("username")=""
if Request.Cookies("userpass") <> rs("passwd") & asc(rs("passwd")) then Response.Cookies("username")=""
rs.close
set connn=nothing
'
''''''
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open = "liaowanbbsdb"
sql="select * from [user] where username='"&HTMLEncode(Request.Cookies("username"))&"'"
Set Rs=Conn.Execute(SQL)
if rs.eof then Response.Cookies("username")=""

ik="heheasfdasfafdasd"
response.write Request.Cookies("username")
response.write "<br>"
response.write Request.Cookies("userpass")


function HTMLEncode(fString)
fString=replace(fString,";","&#59;")
fString=replace(fString,"<","&lt;")
fString=replace(fString,">","&gt;")
fString=replace(fString,"\","&#92;")
fString=replace(fString,"--","&#45;&#45;")
fString=replace(fString,"'","&#39;")
fString=replace(fString,CHR(34),"&quot;")
fString=replace(fString,vbCrlf,"<br>")
HTMLEncode=fString
end function
%>