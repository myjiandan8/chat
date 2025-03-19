<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="error.asp"-->
<!--#include file="format.asp"-->
<%
dim itemid,founderr,errmsg,itemname
founderr=false
errmsg=""

if request.form("item_id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("item_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的投票选项id参数。"
  else
    itemid=cint(request.form("item_id"))
  end if
end if
if request.form("itemname")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  itemname=request.form("itemname")
end if

if founderr then
  call diserror()
  response.end
else
  openadmin
  sql="update voteitem set item_count = item_count + 1 where item_id="&itemid
  conn.execute(sql)
  response.cookies("npw")("voted")="yes"
  response.cookies("npw")("itemname")=request.form("itemname")
  closedatabase
%>
<link rel="stylesheet" href="Sams.css" type="text/css">

<body>
<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="38%" background="images/tablebg.gif">&nbsp;<font color=#ff8040>::::: 
      投票成功 ::::::</font></td>
    <td width="54%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table>
<table width="60%" border="0" cellspacing="1" cellpadding="10" align="center">
  <tr> 
    <td align="center">
      投票成功！</td>
  </tr>
</table>
<table width="60%" border="0" cellspacing="1" cellpadding="10" align="center">
  <tr>
    <td bgcolor="#FFFFFF" class="chinese" align="center">[<a href="javascript:window.close()">关闭窗口</a>]</td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
<%
end if
%>