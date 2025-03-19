<%
'刷新该的房间,
On Error Resume Next
urls="http://chat.mechat.com:6000/stopsystem.htm"

Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function

if GetURL(urls)="1" then
%>
重新启动成功!
<% else %>
重新启动成功!出错! 请重新尝试!
<% end if %>