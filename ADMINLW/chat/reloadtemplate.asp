<%
'ˢ�¸õķ���,
On Error Resume Next
urls="http://chat.mechat.com:6000/reloadtemplate.htm?RoomID=0"

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
���¼��ص�ģ��ɹ�!
<% else %>
���¼���ģ�����! �����³���
<% end if %>