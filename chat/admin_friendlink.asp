<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/adminfriendlink_body.asp"-->
<title>视频聊天 语音聊天 聊湾 蓝天语音-链接管理</title>
<%
dim founderr,errmsg,isimage
isimage=true
founderr=false
errmsg=""

if request.form("MM_insert") then

if request.form("action")="newflcat" then
opensites
sql="select * from flcat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim flcatname
flcatname=trim(replace(request.form("flcat_name"),"'",""))
if flcatname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写分类名称！"
else
  rs("flcat_name")=flcatname
end if
if request.form("isimage")=1 then
  rs("isimage")=1
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_friendlink.asp"
end if
end if
if request.form("action")="editflcat" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的文章分类id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opensites
sql="select * from flcat where flcat_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
flcatname=trim(replace(request.form("flcat_name"),"'",""))
if flcatname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写分类名称！"
else
  rs("flcat_name")=flcatname
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_friendlink.asp"
end if
end if
if request.form("action")="delflcat" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的文章分类id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opensites
sql="select * from flcat where flcat_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  openadmin
  sql="update allcount set friendlinkcount = friendlinkcount - 1"
  conn.execute(sql)
  closedatabase
  response.redirect "admin_friendlink.asp"
end if
if request.form("action")="editfl" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的文章分类id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opensites
sql="select * from friendlink where fl_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
flcatid=cint(request.form("flcat_id"))
flname=trim(replace(request.form("fl_name"),"'",""))
flurl=trim(replace(request.form("fl_url"),"'",""))
fllogo=trim(replace(request.form("fl_logo"),"'",""))
if flcatid<1 then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>非法的酷站分类参数！"
else
  sql="select isimage from flcat where flcat_id="&cint(request.form("flcatid"))
   set rs2=server.createobject("adodb.recordset")
   rs2.open sql,conn,1,1
   if rs2("isimage")=1 then
     isimage=false
   end if
   rs2.close
   set rs2=nothing
   rs("flcat_id")=flcatid
end if
if flname="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>站点名称未填写！"
else
  if strLength(flname)>50 then
      founderr=true
	  errmsg=errmsg+"<br>"+"<li>站点名称太长，不可以超过50个字符！"
  else
      rs("fl_name")=flname
  end if
end if
if flurl="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>站点地址未填写！"
else
  if strLength(flurl)>150 then
      founderr=true
	  errmsg=errmsg+"<br>"+"<li>站点地址太长，不可以超过150个字符！"
  else
      rs("fl_url")=flurl
  end if
end if
if fllogo<>"" then
if strLength(fllogo)>100 then
      founderr=true
	  errmsg=errmsg+"<br>"+"<li>站点logo地址太长，不可以超过100个字符！"
else
      rs("fl_logo")=fllogo
end if
else
if isimage then
      founderr=true
	  errmsg=errmsg+"<br>"+"<li>该分类不是文本链接分类，请输入logo地址！"
end if
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_friendlink.asp?action=link"
end if
end if
if request.form("action")="delfl" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的文章分类id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opensites
sql="select * from friendlink where fl_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  response.redirect "admin_friendlink.asp?action=link"
end if

end if

if session("adminlogin")<>sessionvar then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你尚未登录，或者超时了！请<a href='admin_index.asp'>重新登录</a>！"
  call diserror()
  response.end
else
call top()
call admin_nav()
call adminfriendlink_body()
closedatabase
call adminendpage()
end if
%>