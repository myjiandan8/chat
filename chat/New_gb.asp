<!--#include file="CONFIG.ASP" -->
<!--#include file="CONN.ASP" -->
<!--#include file="FORMAT.ASP" -->
<!--#include file="error.ASP" -->
<!--#include file="lib/quickgb.ASP" -->
<!--#include file="lib/quickgbrep.ASP" -->
<!--#include file="lib/INCJS.ASP" -->
<!--#include file="lib/UBB_GB.ASP" -->
<!--#include file="inctop.asp"-->

<!--#include file="incfooter.asp"-->

<link rel="stylesheet" href="Sams.css" type="text/css">
<%
' *** Edit Operations: declare variables

MM_editAction = CStr(Request("URL"))
If (Request.QueryString <> "") Then
  MM_editAction = MM_editAction & "?" & Request.QueryString
End If

' boolean to abort record edit
MM_abortEdit = false

' query string to execute
MM_editQuery = ""
%>
<%
' *** Insert Record: set variables

If (CStr(Request("MM_insert")) <> "") Then

  MM_editConnection = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_gb)
  MM_editTable = "reply"
  MM_editRedirectUrl = "guestbook.asp"
  MM_fieldsStr  = "rep_poster|value|gb_id|value|gb_content|value"
  MM_columnsStr = "rep_poster|',none,''|gb_id|',none,''|rep_content|',none,''"

  ' create the MM_fields and MM_columns arrays
  MM_fields = Split(MM_fieldsStr, "|")
  MM_columns = Split(MM_columnsStr, "|")
  
  ' set the form values
  For i = LBound(MM_fields) To UBound(MM_fields) Step 2
    MM_fields(i+1) = CStr(Request.Form(MM_fields(i)))
  Next

End If
%>
<%
' *** Insert Record: construct a sql insert statement and execute it

If (CStr(Request("MM_insert")) <> "") Then

  ' create the sql insert statement
  MM_tableValues = ""
  MM_dbValues = ""
  For i = LBound(MM_fields) To UBound(MM_fields) Step 2
    FormVal = MM_fields(i+1)
    MM_typeArray = Split(MM_columns(i+1),",")
    Delim = MM_typeArray(0)
    If (Delim = "none") Then Delim = ""
    AltVal = MM_typeArray(1)
    If (AltVal = "none") Then AltVal = ""
    EmptyVal = MM_typeArray(2)
    If (EmptyVal = "none") Then EmptyVal = ""
    If (FormVal = "") Then
      FormVal = EmptyVal
    Else
      If (AltVal <> "") Then
        FormVal = AltVal
      ElseIf (Delim = "'") Then  ' escape quotes
        FormVal = "'" & Replace(FormVal,"'","''") & "'"
      Else
        FormVal = Delim + FormVal + Delim
      End If
    End If
    If (i <> LBound(MM_fields)) Then
      MM_tableValues = MM_tableValues & ","
      MM_dbValues = MM_dbValues & ","
    End if
    MM_tableValues = MM_tableValues & MM_columns(i)
    MM_dbValues = MM_dbValues & FormVal
  Next
  MM_editQuery = "insert into " & MM_editTable & " (" & MM_tableValues & ") values (" & MM_dbValues & ")"

  If (Not MM_abortEdit) Then
    ' execute the insert
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
%>
<%
if request("action")="gb" then
call top()
call index_nav()
call quickgb()
call endpage()
elseif request("action")="rep" then
if session("adminlogin")<>sessionvar then
response.write "<script>location=""guestbook.asp""</script>"
response.end
end if
call top()
call index_nav()
call quickrep()
call endpage()
end if
%>