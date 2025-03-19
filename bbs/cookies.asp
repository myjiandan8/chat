<%
select case Request("menu")

case "skins"
Response.Cookies("skins")=""&Request("no")&""
Response.Cookies("skins").Expires=date+3650


url=Request.ServerVariables("http_referer")
if url<>empty and instr(url,"left.asp")=0 then
response.redirect url
else
response.write "<SCRIPT>location='Default.asp';</SCRIPT>"
end if

case "eremite"
Response.Cookies("eremite")="1"
Response.Cookies("eremite").Expires=date+3650
response.redirect Request.ServerVariables("http_referer")


case "online"
Response.Cookies("eremite")="0"
Response.Cookies("eremite").Expires=date+3650
response.redirect Request.ServerVariables("http_referer")


end select
%>