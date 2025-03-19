<%
'财务管理员
if session("quanxian")<>0 and session("quanxian")<>9 then %>
<script language=vbs>
<!--
 MsgBox "只有财务管理员才能进入!"
 window.location.href="Javascript:window.history.go(-1)"

-->
</script>
<% end if %>