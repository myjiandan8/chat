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
   Response.Write"alert('站点名称未填写');"
   Response.Write "</script>"
   response.end
   errmsg=errmsg+"<br>"+"<li>站点名称未填写！"
else
  if strLength(trim(request.form("fl_name")))>50 then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('站点名称太长，不可以超过50个字符！');"
	  Response.Write "</script>"
	  response.end
	  errmsg=errmsg+"<br>"+"<li>站点名称太长，不可以超过50个字符！"
  else
      rs("fl_name")=trim(request.form("fl_name"))
  end if
end if
if trim(request.form("fl_url"))="" then
   founderr=true
   Response.Write "<script>"
   Response.Write"alert('站点地址未填写！');"
   Response.Write "</script>"
   Response.end
   errmsg=errmsg+"<br>"+"<li>站点地址未填写！"
else
  if strLength(trim(request.form("fl_url")))>150 then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('站点地址太长，不可以超过150个字符！');"
	  Response.Write "</script>"
	  Response.end
	  errmsg=errmsg+"<br>"+"<li>站点地址太长，不可以超过150个字符！"
  else
      rs("fl_url")=trim(request.form("fl_url"))
  end if
end if
if cint(request.Form("flcat_id"))<1 then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('请选择分类！');"
	  Response.Write "</script>"
	  Response.end
	  errmsg=errmsg+"<br>"+"<li>请选择分类！"
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
	  Response.Write"alert('站点logo地址太长，不可以超过150个字符！');"
	  Response.Write "</script>"
	  Response.end
	  errmsg=errmsg+"<br>"+"<li>站点logo地址太长，不可以超过150个字符！"
  else
      rs("fl_logo")=trim(request.form("fl_logo"))
end if
else
if isimage then
      founderr=true
	  Response.Write "<script>"
	  Response.Write"alert('该分类不是文本链接分类，请输入logo地址！');"
	  Response.Write "</script>"
	  Response.end
	  errmsg=errmsg+"<br>"+"<li>该分类不是文本链接分类，请输入logo地址！"
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
Response.Write"alert('您申请的链接信息表单递交成功,审批中........\n\n　　我们会及时审核，并在视点添加贵站的链接信息！请您及时在网站做好我们的Logo链接，谢谢!\n\n:::::关于链接的说明:::::\n\n1.本站链接不分等级，无序排列；凡提出与本站链接的站点，只要内容完整、无\n　恶意代码、专心制作的，经我们审核后本站会以最短时间做好链接\n\n2.如果您提出与本站链接，请先在您站点内做好我们的Logo链接，本站将定期对\n　友情链接部分进行检查，发现无法正常打开、没有相互链接、内容不符合要求\n　等站点，将立即清除；拒绝含色情、暴力或反动内容的站点；\n\n3.我们会认真对待每一个请求，但不符合上述条件我们一律不予答复。\n　链接条件:只要你的站点是用心去做的，而且符合上面的链接要求，我们是不\n　会拒绝的。\n\n　链接是一个相互的动作，也希望在我们能合作愉快!');"
'Response.Write "history.go(-1)"
Response.Write "</script>"
response.end
closedatabase%>