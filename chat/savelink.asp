<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<link rel="stylesheet" href="Sams.css" type="text/css">
<%
dim founderr,errmsg,isimage
isimage=true
founderr=false
errmsg=""

opensites
sql="select * from friendlink"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
if trim(request.form("fl_name"))="" then
   founderr=true
   Response.Write "<script>"
   Response.Write"alert('վ������δ��д');"
   Response.Write "</script>"
   response.end
   errmsg=errmsg+"<br>"+"<li>վ������δ��д��"
else
  if strLength(trim(request.form("fl_name")))>50 then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('վ������̫���������Գ���50���ַ���');"
	  Response.Write "</script>"
	  response.end
	  errmsg=errmsg+"<br>"+"<li>վ������̫���������Գ���50���ַ���"
  else
      rs("fl_name")=trim(request.form("fl_name"))
  end if
end if
if trim(request.form("fl_url"))="" then
   founderr=true
   Response.Write "<script>"
   Response.Write"alert('վ���ַδ��д��');"
   Response.Write "</script>"
   Response.end
   errmsg=errmsg+"<br>"+"<li>վ���ַδ��д��"
else
  if strLength(trim(request.form("fl_url")))>150 then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('վ���ַ̫���������Գ���150���ַ���');"
	  Response.Write "</script>"
	  Response.end
	  errmsg=errmsg+"<br>"+"<li>վ���ַ̫���������Գ���150���ַ���"
  else
      rs("fl_url")=trim(request.form("fl_url"))
  end if
end if
if cint(request.Form("flcat_id"))<1 then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('��ѡ����࣡');"
	  Response.Write "</script>"
	  Response.end
	  errmsg=errmsg+"<br>"+"<li>��ѡ����࣡"
else
   sql="select isimage from flcat where flcat_id="&cint(request.Form("flcat_id"))
   set rs2=server.createobject("adodb.recordset")
   rs2.open sql,conn,1,1
   if rs2("isimage")=1 then
     isimage=false
   end if
   rs2.close
   set rs2=nothing
   rs("flcat_id")=cint(request.Form("flcat_id"))
end if
if trim(request.form("fl_logo"))<>"" then
if strLength(trim(request.form("fl_logo")))>100 then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('վ��logo��ַ̫���������Գ���150���ַ���');"
	  Response.Write "</script>"
	  Response.end
	  errmsg=errmsg+"<br>"+"<li>վ��logo��ַ̫���������Գ���150���ַ���"
  else
      rs("fl_logo")=trim(request.form("fl_logo"))
end if
else
if isimage then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('�÷��಻���ı����ӷ��࣬������logo��ַ��');"
	  Response.Write "</script>"
	  Response.end
	  errmsg=errmsg+"<br>"+"<li>�÷��಻���ı����ӷ��࣬������logo��ַ��"
end if
end if
rs("passed")=1
if founderr then
  call diserror()
  response.end
end if
rs.update
rs.close
set rs=nothing
Response.Write "<script>"
Response.Write"alert('�������������Ϣ���ݽ��ɹ�,������........\n\n�������ǻἰʱ��ˣ������ӵ���ӹ�վ��������Ϣ��������ʱ����վ�������ǵ�Logo���ӣ�лл!\n\n:::::�������ӵ�˵��:::::\n\n1.��վ���Ӳ��ֵȼ����������У�������뱾վ���ӵ�վ�㣬ֻҪ������������\n��������롢ר�������ģ���������˺�վ�������ʱ����������\n\n2.���������뱾վ���ӣ���������վ�����������ǵ�Logo���ӣ���վ�����ڶ�\n���������Ӳ��ֽ��м�飬�����޷������򿪡�û���໥���ӡ����ݲ�����Ҫ��\n����վ�㣬������������ܾ���ɫ�顢�����򷴶����ݵ�վ�㣻\n\n3.���ǻ�����Դ�ÿһ�����󣬵�������������������һ�ɲ���𸴡�\n����������:ֻҪ���վ��������ȥ���ģ����ҷ������������Ҫ�������ǲ�\n����ܾ��ġ�\n\n��������һ���໥�Ķ�����Ҳϣ���������ܺ������!');"
'Response.Write "history.go(-1)"
Response.Write "</script>"
response.end
closedatabase%>