<!--#include file="CONFIG.ASP" -->
<!--#include file="CONN.ASP" -->
<!--#include file="FORMAT.ASP" -->
<!--#include file="lib/delgb.asp" -->
<!--#include file="lib/gbfooter.asp" -->
<link rel="stylesheet" href="<%=themepath%>/gbstyle.css" type="text/css">
<%
dim founderr,errmsg
errmsg=""
founterr=false

if trim(replace(request.form("adminpwd"),"'",""))<>"" then
dim isadmin
isadmin=false
opengb
sqla="select * from admin"
set rsa=conn.execute(sqla)
  if trim(replace(request.form("adminpwd"),"'",""))=rsa("admin_password") then
    isadmin=true
  else
    isadmin=false
rsa.close
set rsa=nothing
errmsg=errmsg+"<br>"+"<li>你没有相应的操作权限！"
call diserror()
response.end
end if
end if

if isadmin then
if (CStr(Request("MM_delete")) <> "" And CStr(Request("MM_recordId")) <> "") Then

  MM_editConnection = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_gb)
  MM_editTable = "gb"
  MM_editColumn = "gb_id"
  MM_recordId = "" + Request.Form("MM_recordId") + ""
  MM_editRedirectUrl = "guestbook.asp"
  
End If

' *** Delete Record: construct a sql delete statement and execute it

If (CStr(Request("MM_delete")) <> "" And CStr(Request("MM_recordId")) <> "") Then

  ' create the sql delete statement
  MM_editQuery = "delete from " & MM_editTable & " where " & MM_editColumn & " = " & MM_recordId

  If (Not MM_abortEdit) Then
    ' execute the delete
    Set MM_editCmd = Server.CreateObject("ADODB.Command")
    MM_editCmd.ActiveConnection = MM_editConnection
    MM_editCmd.CommandText = MM_editQuery
    MM_editCmd.Execute
    MM_editCmd.ActiveConnection.Close

    If (MM_editRedirectUrl <> "") Then
      Response.Redirect(MM_editRedirectUrl)
    End If
  End If

End If
end if


call chkparam()
if founderr then
  call diserror()
else
  call delgb()
  call endpage()
end if

rem -------------------
rem ----检查URL参数----
rem -------------------
sub chkparam()
if request.querystring("gb_id")<>"" then
  if not isInteger(request.querystring("gb_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的留言id。"
  end if
else
    founderr=true
    errmsg=errmsg+"<br>"+"<li>请指定要删除的留言。"
end if
end sub
%>