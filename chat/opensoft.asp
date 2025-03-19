<!--#include file="CONFIG.ASP" -->
<!--#include file="CONN.ASP" -->
<!--#include file="FORMAT.ASP" -->

<!--#include file="lib/INCFOOTER.ASP" -->
<!--#include file="lib/INCTOP.ASP" -->

<%
dim founderr,errmsg
errmsg=""
founderr=false
call chkparam()
if founderr then
   call head()
   call diserror()
   call endpage()
else
   softdowncount
   call geturl()
end if

sub chkparam()
if request.querystring("soft_id")<>"" then
  if not isInteger(request.querystring("soft_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的软件ID参数。"
  end if
else
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你没有指定要下载的软件。"
end if
if request.querystring("url")<>"" then
  if not isInteger(request.querystring("url")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的下载地址参数。"
  end if
else
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你没有指定下载地址参数。"
end if
end sub

sub geturl()
if(request.querystring("soft_id") <> "") then
  colname = request.querystring("soft_id")
end if
url="soft_url"+request("url")
sql="select "&url&" from soft where soft_id="&colname&""
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
downurl=rs(0)
response.redirect downurl
rs.close
set rs=nothing
end sub

function softdowncount()
if(request.querystring("soft_id") <> "") then
  upddcount__colname = request.querystring("soft_id")
end if 
opendown
set rs=conn.execute("select soft_id,soft_dcount from soft")
sql="UPDATE soft SET soft_dcount = soft_dcount + 1  WHERE soft_id = " + Replace(upddcount__colname, "'", "''") + ""
conn.execute (sql)
rs.close
set rs=nothing
end function
%>