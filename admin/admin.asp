<%
'超级管理员权限
if session("quanxian")<>0 then %>
<script language=vbs>
<!--
 MsgBox "你的权限不够进入本页面！如果有紧要事情！请和超级管理员联系"
 window.location.href="Javascript:window.history.go(-1)"

-->
</script>
<% end if %>