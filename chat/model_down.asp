
<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="error.asp"-->
<!--#include file="FORMAT.ASP" -->
<%
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("cs_id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  dim csid
  if not isInteger(request.querystring("cs_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的模板id参数。"
  else
    csid=cint(request.querystring("cs_id"))
  end if
end if

if founderr then
  call diserror()
else
openmodel
sql="select cs_count,cs_url from coolsites where cs_id="&csid
set rs=conn.execute(sql)
dim csurl,urlid
csurl=rs("cs_url")
sql="UPDATE coolsites SET cs_count = cs_count + 1 where cs_id="&csid
conn.execute(sql)
rs.close
set rs=nothing
closedatabase
response.redirect csurl
end if
%>