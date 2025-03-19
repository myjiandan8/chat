<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="error.asp"-->
<link rel="stylesheet" href="Sams.css" type="text/css">
<%
dim founderr,errmsg
founderr=false
errmsg=""

if session("adminlogin")<>sessionvar then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你尚未登录，或者超时了！请<a href='admin_index.asp'>重新登录</a>！"
  call diserror()
else
  dim diarycount,newscount,articlecount,softcount,cscount,flcount,gbcount
  opendiary
  sql="select d_id from diary"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  diarycount=rs.recordcount
  opennews
  sql="select news_id from news"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  newscount=rs.recordcount
  openarticle
  sql="select art_id from art"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  articlecount=rs.recordcount
  opendown
  sql="select soft_id from soft"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  softcount=rs.recordcount
  
  openpic
  sql="select cs_id from pic"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  piccount=rs.recordcount

  openmodel
  sql="select cs_id from coolsites"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  modelcount=rs.recordcount
  
  opensites
  sql="select cs_id from coolsites"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  cscount=rs.recordcount
  sql="select fl_id from friendlink"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  flcount=rs.recordcount
  opengb
  sql="select gb_id from gb"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,1
  gbcount=rs.recordcount
  openadmin
  sql="select * from allcount"
  set rs=server.createobject("adodb.recordset")
  rs.open sql,conn,1,3
  rs("diarycount")=diarycount
  rs("newscount")=newscount
  rs("articlecount")=articlecount
  rs("softcount")=softcount
  rs("piccount")=piccount
  rs("modelcount")=modelcount
  rs("coolsitescount")=cscount
  rs("friendlinkcount")=flcount
  rs("gbcount")=gbcount
  rs.update
  rs.close
  set rs=nothing
  closedatabase
%>
<table width="60%" border="0" cellspacing="1" cellpadding="0"align="center" bgcolor="#293863">
  <tr>
    <td align="center" bgcolor="#FFFFFF" height="66" class="chinese">&gt;更新成功&lt;<br>
      <a href="javascript:window.close()">关闭窗口</a></td>
  </tr>
</table>
<%end if%>