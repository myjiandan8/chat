<%
'刷新该的房间,
On Error Resume Next
urls="http://chat.mechat.com:6000/reloadroom.htm?RoomID=0"

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

us=GetURL(urls)
if us="1" then
%>
重新加载的房间成功!
<% else %>
重新加载房间出错! 请重新尝试!
<% end if %><br><%=us%>