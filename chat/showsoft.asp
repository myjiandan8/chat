<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/showsoft_body.asp"-->

<!--#include file="incfooter.asp"-->
<%
session("download")="#89*&%"
stats="查看软件"
dim founderr,errmsg
founderr=false
errmsg=""

' *** Edit Operations: declare variables

MM_editAction = CStr(Request("URL"))
If (Request.QueryString <> "") Then
  MM_editAction = MM_editAction & "?" & Request.QueryString
End If

' boolean to abort record edit
MM_abortEdit = false

' query string to execute
MM_editQuery = ""

' *** Insert Record: set variables

If (CStr(Request("MM_insert")) <> "") Then

  MM_editConnection = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB_down)
  MM_editTable = "remark"
  MM_editRedirectUrl = "showsoft.asp"
  MM_fieldsStr  = "remarker|value|remark|value|soft_id|value"
  MM_columnsStr = "remarker|',none,''|remark|',none,''|soft_id|none,none,NULL"

  ' create the MM_fields and MM_columns arrays
  MM_fields = Split(MM_fieldsStr, "|")
  MM_columns = Split(MM_columnsStr, "|")
  
  ' set the form values
  For i = LBound(MM_fields) To UBound(MM_fields) Step 2
    MM_fields(i+1) = CStr(Request.Form(MM_fields(i)))
  Next

  ' append the query string to the redirect URL
  If (MM_editRedirectUrl <> "" And Request.QueryString <> "") Then
    If (InStr(1, MM_editRedirectUrl, "?", vbTextCompare) = 0 And Request.QueryString <> "") Then
      MM_editRedirectUrl = MM_editRedirectUrl & "?" & Request.QueryString
    Else
      MM_editRedirectUrl = MM_editRedirectUrl & "&" & Request.QueryString
    End If
  End If

End If

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

if request.querystring("soft_id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
else
  if not isInteger(request.querystring("soft_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的软件id参数。"
  end if
end if
if request.querystring("page")<>"" then
  if not isInteger(request.querystring("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的分页id参数。"
  end if
end if
if founderr then
  call diserror()
  response.end
else
call top()
call download_nav()
softreadcount
call showsoft_body()
call endpage()
end if

function softreadcount()
opendown
if(request.querystring("soft_id") <> "") then
  updrcount__colname = request.querystring("soft_id")
end if 
set rs=conn.execute("select soft_id,soft_rcount from soft")
sql="UPDATE soft SET soft_rcount = soft_rcount + 1  WHERE soft_id = " + Replace(updrcount__colname, "'", "''") + ""
conn.execute (sql)
rs.close
set rs=nothing
end function
%>