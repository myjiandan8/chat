<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(2) %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>�����޸�</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; </font></b><font color="#FFFFFF"><b>
			��������</b></font></td>
          </tr>
          
          <tr>
            <td width="586" height="370" bgcolor="#FFFFFF" align="center">
            

  	<% 
  	
  	if Request("cz")="ok" then
  			
  	urls="http://"& host &":6000/reloadroom.htm?RoomID=" & id
    if GetURL(urls)<>1 then 
	response.write "<script>alert('ϵͳ������������ͻ�����010-81430388��Ӧ��');</script>"
	response.End
	else
	response.write "<script>alert('���������ɹ���');</script>"
	end if
	
	end if 
	
'��������ģ��
Private Function bytes2BSTR(vIn)
  Dim i, ThischrCode, NextchrCode
  strReturn = ""
For i = 1 To LenB(vIn)
   ThischrCode = AscB(MidB(vIn, i, 1))
  If ThischrCode < &H80 Then
     strReturn = strReturn & Chr(ThischrCode)
  Else
    NextchrCode = AscB(MidB(vIn, i + 1, 1))
    strReturn = strReturn & Chr(CLng(ThischrCode) * &H100 + CInt(NextchrCode))
     i = i + 1
  End If
Next
    bytes2BSTR = strReturn
End Function

'ˢ�¸õķ���,
'On Error Resume Next

Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function
	
	%> 
            
  
            <a href="start.asp?cz=ok">����������������</a> [��λ] <br>
	���޸��˻������û�ģ��������︴λ�����ң�ʹ�µ�������Ч<br>
			[ע������������ʱ�򣬸������ҵ������û�������ߣ������µ�����ֻ��ˢ�º���ܿ���]
			
			</td>
            </tr>

        </table>
        </center>
      </div>
            
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>