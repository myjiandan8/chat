<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/adminvote_body.asp"-->
<title>��Ƶ���� �������� ���� ��������-ͶƱ����</title>
<%
dim founderr,errmsg
founderr=false
errmsg=""

if request.form("MM_insert") then
 if request.form("action")="newvote" then
  dim vtname,startdate,expiredate
  vtname=trim(replace(request.form("vt_name"),"'",""))
  startdate=request.form("vt_startdate")
  expiredate=request.form("vt_expiredate")
  if vtname="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>�������дͶƱ���⣡"
  end if
  if startdate="" then
    startdate=formatdatetime(now(),2)
  else
    startdate=formatdatetime(startdate,2)
  end if
  if expiredate="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>�������д��ͶƱ����Ĺ������ڣ�"
  else
    expiredate=formatdatetime(expiredate,2)
  end if
  
  if founderr then
    call diserror()
	response.end
  else
    openadmin
	sql="select * from votetopic"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,3
	rs.addnew
	rs("vt_name")=vtname
	rs("vt_startdate")=startdate
	rs("vt_expiredate")=expiredate
	rs.update
	rs.close
	set rs=nothing
	response.redirect "admin_vote.asp?action=vote"
  end if
 end if
 if request.form("action")="editvote" then
  dim vtid
  vtname=trim(replace(request.form("vt_name"),"'",""))
  startdate=request.form("vt_startdate")
  expiredate=request.form("vt_expiredate")
  if request.form("id")="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>�����ָ�������Ķ���"
  else
    vtid=cint(request.form("id"))
  end if
  if vtname="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>�������дͶƱ���⣡"
  end if
  if startdate="" then
    startdate=formatdatetime(now(),2)
  else
    startdate=formatdatetime(startdate,2)
  end if
  if expiredate="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>�������д��ͶƱ����Ĺ������ڣ�"
  else
    expiredate=formatdatetime(expiredate,2)
  end if
  
  if founderr then
    call diserror()
	response.end
  else
    openadmin
	sql="select * from votetopic where vt_id="&vtid
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,3
	rs("vt_name")=vtname
	rs("vt_startdate")=startdate
	rs("vt_expiredate")=expiredate
	rs.update
	rs.close
	set rs=nothing
	response.redirect "admin_vote.asp?action=vote"
  end if
 end if
 if request.form("action")="delvote" then
  if request.form("id")="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>�����ָ�������Ķ���"
  else
    vtid=cint(request.form("id"))
  end if
  
  if founderr then
    call diserror()
	response.end
  else
    openadmin
	sql="select * from votetopic where vt_id="&vtid
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,3
	rs.delete
	rs.close
	set rs=nothing
	response.redirect "admin_vote.asp?action=vote"
  end if
 end if
 if request.form("action")="newitem" then
   dim itemname
   vtid=cint(request.form("id"))
   itemname=trim(replace(request.form("item_name"),"'",""))
   if vtid<1 then
     founderr=true
	 errmsg=errmsg+"<br>"+"<li>�Ƿ��Ķ��������"
   end if
   if itemname="" then
     founderr=true
	 errmsg=errmsg+"<br>"+"<li>�������дѡ�����ƣ�"
   end if
   
   if founderr then
     call diserror()
	 response.end
   else
     openadmin
	 sql="select * from voteitem"
	 set rs=server.createobject("adodb.recordset")
	 rs.open sql,conn,1,3
	 rs.addnew
	 rs("item_name")=itemname
	 rs("vt_id")=vtid
	 rs.update
	 rs.close
	 set rs=nothing
	 response.redirect "admin_vote.asp?action=vote&caction=edit&id="&vtid
   end if
 end if
 if request.form("action")="edititem" then
   dim itemid
   itemid=cint(request.form("id"))
   itemname=trim(replace(request.form("item_name"),"'",""))
   if itemid<1 then
     founderr=true
	 errmsg=errmsg+"<br>"+"<li>�Ƿ��Ķ��������"
   end if
   if itemname="" then
     founderr=true
	 errmsg=errmsg+"<br>"+"<li>�������дѡ�����ƣ�"
   end if
   
   if founderr then
     call diserror()
	 response.end
   else
     openadmin
	 sql="select * from voteitem where item_id="&itemid
	 set rs=server.createobject("adodb.recordset")
	 rs.open sql,conn,1,3
	 rs("item_name")=itemname
	 rs.update
	 rs.close
	 set rs=nothing
	 response.redirect "admin_vote.asp?action=vote&caction=edit&id="&request.form("vtid")
   end if
 end if
 if request.form("action")="delitem" then
   itemid=cint(request.form("id"))
   if itemid<1 then
     founderr=true
	 errmsg=errmsg+"<br>"+"<li>�Ƿ��Ķ��������"
   end if

   if founderr then
     call diserror()
	 response.end
   else
     openadmin
	 sql="select * from voteitem where item_id="&itemid
	 set rs=server.createobject("adodb.recordset")
	 rs.open sql,conn,1,3
	 rs("item_name")=itemname
	 rs.delete
	 rs.close
	 set rs=nothing
	 response.redirect "admin_vote.asp?action=vote&caction=edit&id="&request.form("vtid")
   end if
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
call adminvote_body()
call adminendpage()
end if
%>