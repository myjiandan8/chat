<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/admincoolsites_body.asp"-->
<title>视频聊天 语音聊天 聊湾 蓝天语音-酷站管理</title>
<%
dim founderr,errmsg
founderr=false
errmsg=""

if request.form("MM_insert") then

if request.form("action")="newcscat" then
opensites
sql="select * from cscat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim cscatname
cscatname=trim(replace(request.form("cscat_name"),"'",""))
if cscatname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写分类名称！"
else
  rs("cscat_name")=cscatname
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  openadmin
  sql="update allcount set coolsitescount = coolsitescount + 1"
  conn.execute(sql)
  closedatabase
  response.redirect "admin_coolsites.asp?action=cscat"
end if
elseif request.form("action")="newcs" then
opensites
sql="select * from coolsites"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim cscatid,csname,csurl,cspic,csdesc,csisbest
cscatid=cint(request.form("cscatid"))
csname=trim(replace(request.form("name"),"'",""))
csurl=trim(replace(request.form("url"),"'",""))
cspic=trim(replace(request.form("pic"),"'",""))
csdesc=trim(replace(request.form("desc"),"'",""))
csisbest=request.form("isbest")
if csname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写酷站名称！"
else
  rs("cs_name")=csname
end if
if cscatid<1 then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须选择酷站所属分类！"
else
  rs("cscat_id")=cscatid
end if
if csurl="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写酷站地址！"
else
  rs("cs_url")=csurl
end if
if cspic="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写酷站的图片地址！"
else
  rs("cs_pic")=cspic
end if
if csdesc="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写酷站的简要说明！"
else
  rs("cs_desc")=csdesc
end if
if cint(csisbest)=1 then
  rs("isbest")=cint(csisbest)
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_coolsites.asp?action=sites"
end if
elseif request.form("action")="editcs" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的酷站id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opensites
sql="select * from coolsites where cs_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
cscatid=cint(request.form("cscatid"))
csname=trim(replace(request.form("name"),"'",""))
csurl=trim(replace(request.form("url"),"'",""))
cspic=trim(replace(request.form("pic"),"'",""))
csdesc=trim(replace(request.form("desc"),"'",""))
csisbest=request.form("isbest")
if csname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写酷站名称！"
else
  rs("cs_name")=csname
end if
if cscatid<1 then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须选择酷站所属分类！"
else
  rs("cscat_id")=cscatid
end if
if csurl="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写酷站地址！"
else
  rs("cs_url")=csurl
end if
if cspic="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写酷站的图片地址！"
else
  rs("cs_pic")=cspic
end if
if csdesc="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写酷站的简要说明！"
else
  rs("cs_desc")=csdesc
end if
rs("isbest")=cint(csisbest)

if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_coolsites.asp?action=sites"
end if
elseif request.form("action")="delcs" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的酷站id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opensites
sql="select * from coolsites where cs_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  openadmin
  sql="update allcount set coolsitescount = coolsitescount - 1"
  conn.execute(sql)
  closedatabase
  response.redirect "admin_coolsites.asp?action=sites"
elseif request.form("action")="editcscat" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的酷站分类id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opensites
sql="select * from cscat where cscat_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
cscatname=trim(replace(request.form("cscat_name"),"'",""))
if cscatname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写分类名称！"
else
  rs("cscat_name")=cscatname
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_coolsites.asp?action=cscat"
end if
elseif request.form("action")="delcscat" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的酷站分类id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opensites
sql="select * from cscat where cscat_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  response.redirect "admin_coolsites.asp?action=cscat"
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
call admincoolsites_body()
call adminendpage()
end if
%>