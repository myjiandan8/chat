<%
'ˢ�¸õķ���,
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
���������ɹ�!
<% else %>
���������ɹ�!����! �����³���!
<% end if %>