<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(22) %>
<%

if Request("admintor")<>"" then


if len(Request("admintor"))>2000 then Call errstr("2000�����ڲſ���Ŷ����")

	sql="select admintor from [Room] where port=" & port
	rs.open sql,bchatconn,1,3
	admintor = trim(Request("admintor"))
	if not (rs.eof or err) then
       rs("admintor") = admintor
       rs.Update
       rs.close
	end if
	   
	'дadminpass_�˿�.txt�ļ�
	sql="select * from [serverdb] where sid=" & sid
	set rsr = chatconn.Execute(sql)
	urls=rsr("websys") &"?MD5vsr=" & MD5(port & md5pass) & "&port=" & port & "&menu=2"
	'response.write urls
	newi= left(GetURL(urls),1)

	Call errstr("�޸ĳɹ�����")

end if

Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "POST", url, False
          .setRequestHeader "Content-Type", "application/x-www-form-urlencoded" 
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function
%>


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
       
<form name="form5" method="post" action="admin.asp">  
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; ����������</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="370" bgcolor="#FFFFFF" valign="top">
            

  
               <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="130">
          <tr>
	    <td width="103" align=left height="1">�˿ںţ�</td>
	    <td width="479" height="1"> <%=id%></td>
	      </tr>
          <tr>
	    <td  align=left height="9" width="103">���ù������Ա��</td>
	    <td height="9" width="479" >
		<textarea rows="27" name="admintor" cols="65"><%=admintor%></textarea> </td>
	      </tr>
          <tr>
	    <td  align=left height="53" width="103"></td>
	    <td height="53" width="479" >1.���ڹ���Ա�����ã�������������ͼ���֮����&quot;|&quot;�ָ�����: 
        admin|passwd|1 
        ÿ������һ�У�ע����治Ҫ���ո��������Ա����Ϊע����û�����Ҫ������ǰ������Ǻš�����0��ʾ��������Ȩ�ޣ�1��ʾ�������ֺ�IPȨ�ޣ�9��ʾ��1��Ȩ�޲��в����ߵ�Ȩ�ޡ�<br>
		<font color="#FF0000">ע�⣺���Ӧ��2000�֣�</font></td>
	      </tr>

          <tr>
            <td width="586" height="83" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
            </td>
            </tr>

        </table>
        </center>
      </div>
<form>
  
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