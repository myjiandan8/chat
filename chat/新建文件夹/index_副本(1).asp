<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="lib/incjs.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="lib/index_news.asp"-->
<!--#include file="lib/index_pic.asp"-->
<!--#include file="lib/index_model.asp"-->
<!--#include file="lib/index_diary.asp"-->
<!--#include file="lib/index_article.asp"-->
<!--#include file="lib/index_soft.asp"-->
<!--#include file="lib/index_wpm.asp"-->
<!--#include file="lib/index_body.asp"-->
<!--#include file="incfooter.asp"-->
<!--#include file="lib/zoom.asp"-->
<%
session("download")="#89*&%"
stats="首页"
dim founderr,errmsg
founderr=false
errmsg=""

if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的id参数。"
  end if
end if

if founderr then
  call diserror()
  response.end
else
openadmin
sql="select articlecount,softcount,piccount,modelcount,coolsitescount,friendlinkcount,newscount,diarycount,gbcount from allcount"
set rs=conn.execute(sql)
articlecount=rs("articlecount")
softcount=rs("softcount")
piccount=rs("piccount")
modelcount=rs("modelcount")
coolsitescount=rs("coolsitescount")
friendlinkcount=rs("friendlinkcount")
newscount=rs("newscount")
diarycount=rs("diarycount")
gbcount=rs("gbcount")
rs.close
set rs=nothing

call top()
call index_nav()
call index_body()
call endpage()
end if
%>