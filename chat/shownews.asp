<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="error.asp"-->
<!--#include file="format.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/shownews_body.asp"-->

<!--#include file="incfooter.asp"-->
<%
stats="最新动态"
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("news_id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
else
  if not isInteger(request.querystring("news_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的新闻id参数。"
  end if
end if

if founderr then
  call diserror()
  response.end
else
call top()
call news_nav()
rcount
call shownews_body()
call endpage()
end if

function rcount()
OPENnews  
set rscount=conn.execute("select * from news")
sql="UPDATE news SET news_count = news_count + 1 where news_id="&request.querystring("news_id")
conn.execute (sql)
rscount.close
set rscount=nothing
end function
%>