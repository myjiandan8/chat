<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/newsoft_body.asp"-->
<%
dim founderr,errmsg
founderr=false
errmsg=""

if request.form("MM_insert") then

if request.Form("action")="newsoft" then
opendown
sql="select * from soft"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim soft_name,soft_size,soft_mode,roof,commend,demo,home,showpic,desc,url1,url2,url3,url4
soft_name=trim(replace(request.form("name"),"'",""))
soft_size=trim(replace(request.form("size"),"'",""))
soft_mode=trim(replace(request.form("mode"),"'",""))
roof=trim(replace(request.form("roof"),"'",""))
commend=cint(request.form("commend"))
demo=trim(replace(request.form("demo"),"'",""))
home=trim(replace(request.form("home"),"'",""))
showpic=trim(replace(request.form("showpic"),"'",""))
desc=trim(replace(request.form("desc"),"'",""))
url1=trim(replace(request.form("url1"),"'",""))
url2=trim(replace(request.form("url2"),"'",""))
url3=trim(replace(request.form("url3"),"'",""))
url4=trim(replace(request.form("url4"),"'",""))

if soft_name="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������д������ƣ�"
else
  rs("soft_name")=soft_name
end if
if soft_size="" then
  rs("soft_size")="δ֪"
else
  rs("soft_size")=soft_size
end if
if soft_mode="" then
  rs("soft_mode")="δ֪"
else
  rs("soft_mode")=soft_mode
end if
if roof="" then
  rs("soft_roof")="δ֪"
else
  rs("soft_roof")=roof
end if
if commend<1 then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ѡ������Ƽ��̶ȣ�"
else
  rs("soft_commend")=commend
end if
if request("of")<>"" then
		Set rsclass = Server.CreateObject("ADODB.Recordset")
		sqlclass="SELECT * FROM class where class_id="&request("of")
		rsclass.OPEN sqlclass,Conn,1,1
		rs("soft_classid")=rsclass("class_id")
		rs("soft_classname")=rsclass("class_name")
		rs("soft_catid")=rsclass("cat_id")
		set rscat = Server.CreateObject("ADODB.Recordset")
		sqlcat="select cat_name from cat where cat_id="&rsclass("cat_id")
		rscat.open sqlcat,conn,1,1
		rs("soft_catname")=rscat("cat_name")
		rscat.close
		rsclass.close
		set rscat=nothing
		set rsclass=nothing
else
		founderr=true
		errmsg=errmsg+"<br>"+"<li>�����ѡ���������࣬���߷Ƿ�������"
end if
if demo="" then
  rs("soft_demo")=""
else
  rs("soft_demo")=demo
end if
if home="" then
  rs("soft_home")="http:///"
else
  rs("soft_home")=home
end if
if showpic="" then
  rs("soft_showpic")="δ֪"
else
  rs("soft_showpic")=showpic
end if
if desc="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������д�����飡"
else
  rs("soft_desc")=desc
end if
if url1="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������д������ص�ַ��"
else
  rs("soft_url1")=url1
end if
if url2="" then
  rs("soft_url2")=""
else
  rs("soft_url2")=url2
end if
if url3="" then
  rs("soft_url3")=""
else
  rs("soft_url3")=url3
end if
if url4="" then
  rs("soft_url4")=""
else
  rs("soft_url4")=url4
end if

if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  openadmin
  sql="update allcount set softcount = softcount + 1"
  conn.execute(sql)
  closedatabase
  response.redirect "admin_soft.asp"
end if
end if

'edit
if request.Form("action")="editsoft" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ָ�������Ķ���"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ������id������"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opendown
sql="select * from soft where soft_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
soft_name=trim(replace(request.form("name"),"'",""))
soft_size=trim(replace(request.form("size"),"'",""))
soft_mode=trim(replace(request.form("mode"),"'",""))
roof=trim(replace(request.form("roof"),"'",""))
commend=cint(request.form("commend"))
demo=trim(replace(request.form("demo"),"'",""))
home=trim(replace(request.form("home"),"'",""))
showpic=trim(replace(request.form("showpic"),"'",""))
desc=trim(replace(request.form("desc"),"'",""))
url1=trim(replace(request.form("url1"),"'",""))
url2=trim(replace(request.form("url2"),"'",""))
url3=trim(replace(request.form("url3"),"'",""))
url4=trim(replace(request.form("url4"),"'",""))

if soft_name="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������д������ƣ�"
else
  rs("soft_name")=soft_name
end if
if soft_size="" then
  rs("soft_size")="δ֪"
else
  rs("soft_size")=soft_size
end if
if soft_mode="" then
  rs("soft_mode")="δ֪"
else
  rs("soft_mode")=soft_mode
end if
if roof="" then
  rs("soft_roof")="δ֪"
else
  rs("soft_roof")=roof
end if
if commend<1 then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ѡ������Ƽ��̶ȣ�"
else
  rs("soft_commend")=commend
end if
if request("of")<>"" then
		Set rsclass = Server.CreateObject("ADODB.Recordset")
		sqlclass="SELECT * FROM class where class_id="&request("of")
		rsclass.OPEN sqlclass,Conn,1,1
		rs("soft_classid")=rsclass("class_id")
		rs("soft_classname")=rsclass("class_name")
		rs("soft_catid")=rsclass("cat_id")
		set rscat = Server.CreateObject("ADODB.Recordset")
		sqlcat="select cat_name from cat where cat_id="&rsclass("cat_id")
		rscat.open sqlcat,conn,1,1
		rs("soft_catname")=rscat("cat_name")
		rscat.close
		rsclass.close
		set rscat=nothing
		set rsclass=nothing
else
		founderr=true
		errmsg=errmsg+"<br>"+"<li>�����ѡ���������࣬���߷Ƿ�������"
end if
if demo="" then
  rs("soft_demo")=""
else
  rs("soft_demo")=demo
end if
if home="" then
  rs("soft_home")="http:///"
else
  rs("soft_home")=home
end if
if showpic="" then
  rs("soft_showpic")="δ֪"
else
  rs("soft_showpic")=showpic
end if
if desc="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������д�����飡"
else
  rs("soft_desc")=desc
end if
if url1="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������д������ص�ַ��"
else
  rs("soft_url1")=url1
end if
if url2="" then
  rs("soft_url2")=""
else
  rs("soft_url2")=url2
end if
if url3="" then
  rs("soft_url3")=""
else
  rs("soft_url3")=url3
end if
if url4="" then
  rs("soft_url4")=""
else
  rs("soft_url4")=url4
end if

if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_soft.asp"
end if
end if

'delete
if request.Form("action")="delsoft" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ָ�������Ķ���"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ������id������"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opendown
sql="select * from soft where soft_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  openadmin
  sql="update allcount set softcount = softcount - 1"
  conn.execute(sql)
  closedatabase
  response.redirect "admin_soft.asp"
end if

end if

if session("adminlogin")<>sessionvar then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>����δ��¼�����߳�ʱ�ˣ���<a href='admin_index.asp'>���µ�¼</a>��"
  call diserror()
  response.end
else
call top()
call admin_nav()
call Newsoft_body()
call adminendpage()
end if
%>