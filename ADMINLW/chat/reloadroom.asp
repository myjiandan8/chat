<%
'ˢ�¸õķ���,
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
���¼��صķ���ɹ�!
<% else %>
���¼��ط������! �����³���!
<% end if %><br><%=us%>