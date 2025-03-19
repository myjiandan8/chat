<!--#include file="config.asp"-->
<%
   dim conn   
   dim connstr
   on error resume next
   connstr=server.mappath(DB_gb)
   set conn=server.createobject("ADODB.CONNECTION")
   conn.Open "driver={Microsoft Access Driver (*.mdb)};dbq="&connstr&""
if session("adminlogin")<>sessionvar then
response.write "<script>location=""guestbook.asp""</script>"
response.end
elseif session("adminlogin")=sessionvar then
   url=request.ServerVariables("HTTP_REFERER")
   opengb
   dim sql 
   dim rs
   set rs=server.createobject("adodb.recordset")
   sql="delete from gb where gb_id="&request.QueryString("id")
   sql2="delete from reply where gb_id="&request.QueryString("id")
   rs.open sql,conn,1,1
   rs.open sql2,conn,1,1
   rs.close
   set rs=nothing  
   conn.close
   set conn=nothing
   response.redirect url
end if
%>