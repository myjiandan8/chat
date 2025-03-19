<%
openadmin
ip = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
if ip = "" then
ip = Request.ServerVariables("REMOTE_ADDR")
end if
strsql = "select * from online where online_ip = '" & ip & "'"
set rs = conn.Execute (strsql)
struser = "游客"
if rs.eof or rs.bof then
  strsql = "insert into online (online_name, online_ip, online_stats, online_lasttime) values ('" & struser & "', '" & ip & "','" & stats & "','" &now()& "')"
  conn.Execute (strsql)
else
   strsql = "update online set online_name = '"&struser& "', online_stats='"&stats&"', Online_LastTime = #" &now()&"# where online_ip = '" & ip & "'"
   conn.Execute (strsql)
end if
if struser <> "游客" then
  strsql = "delete from online where online_name = '" & struser & "' and online_ip <> '" & ip & "'"
  conn.Execute (strsql)
end if
strsql = "select online_id, online_lasttime from online"
set rs = conn.Execute (strsql)
if not (rs.eof or rs.bof) then
do until rs.Eof
  if DateDiff("h",rs("online_lasttime"),now())>OnlineTime then
    strsql = "delete from online where online_id = " & rs("online_id")
    conn.Execute (strsql)
  end if
  rs.movenext
loop
end if

strsql="select Online_Name from online"
	  guest=0
	  user=0
	  total=0
	  username=""
set rs = conn.Execute (strsql)
if rs.eof or rs.bof then
  username="无在线用户"
else
  do until rs.Eof
    if rs("Online_Name") <> "游客" then
	user=user+1
	username=username+rs("Online_Name")+"&nbsp;"
    else
     guest = guest+1
    end if
  rs.movenext
  loop
  total=user+guest
end if

sql="select online_topnum,online_topdate from allcount"
set rs2=conn.execute(sql)
online_topnum=rs2("online_topnum")
online_topdate=rs2("online_topdate")
rs2.close
set rs2=nothing

  if total>online_topnum then
  online_topnum=total
  online_topdate=now()
  strsql = "update allcount set online_topnum = '"&total& "', Online_topdate = #" &now()& "#"
  conn.Execute (strsql)
end if
strsql = "update online set online_stats = '" & stats & "' where online_ip = '" & ip & "'"
conn.Execute (strsql)
rs.close
set rs=nothing
%>