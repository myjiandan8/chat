<%
Set objShell = server.CreateObject("wscript.shell")

%>
<%=objShell.exec("cmd.exe /c net stop mechat")%>
<%'=server.createobject("Wscript.shell").exec("cmd.exe /c net stop mechat",0) %>