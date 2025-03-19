<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="error.asp"-->
<!--#include file="FORMAT.ASP" -->
<%
dim founderr,errmsg,rename
founderr=false
errmsg=""

if request.querystring("cs_id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  dim csid
  if not isInteger(request.querystring("cs_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的id参数。"
  else
    csid=cint(request.querystring("cs_id"))
  end if
end if

if founderr then
  call diserror()
else
openpic
sql="select cs_count,cs_url from pic where cs_id="&csid
set rs=conn.execute(sql)
dim csurl
csurl=rs("cs_url")
sql="UPDATE pic SET cs_count = cs_count + 1 where cs_id="&csid
conn.execute(sql)
rs.close
set rs=nothing
closedatabase
rename=right(csurl,4)
if rename=".gif" or rename=".GIF" or rename=".jpg" or rename=".JPG" or rename=".bmp" or rename=".BMP" or rename="jpeg" or rename=".JPEG" then
response.redirect "viewpic.asp?id="&csurl
else
response.redirect csurl
end if
end if
%>