<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(2) %>
<%
files=Request("files")

if files="" then files="a"


if files="a" then

	newfile="frame1.htm"

elseif files="b" then

	newfile="chatform.htm"

elseif files="c" then

	newfile="userlist.htm"

end if

'ģ��·��
medirsr = medirs & "\" & id

if Request("jstxt")<>"" then

	'д�˿�.js�ļ�
	On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set ts = fso.OpenTextFile(medirsr & "\" & newfile, ForWriting, true)
	ts.Write(Request("jstxt"))
	ts.Close()
	
	Call errstr("�޸ĳɹ�����")
	
end if
	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>�Զ���ű��޸�</title>
</head>

<body>

      
  <%
       
 	'Set fso = CreateObject(fs)
	'If Not fso.FolderExists(medirs& "\" & id & "\") then
		'fso.CreateFolder(medirs& "\" & id & "\")
	'End If
	
  %>


      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="5" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
<form name="form5" method="post" action="js.asp">
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="652">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp;</font></b><font color="#FFFFFF"><b> 
			�Զ���ģ��</b></font></td>
          </tr>
          
          <tr>
<td width="593" height="21" align="right" bgcolor="#F9F9F7" valign="top">
            <p align="left"><br>
			˵����MECHAT �������� 3�� ��Ҫģ�� :<br>
			<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			frame1.htm&nbsp;&nbsp;&nbsp;&nbsp; ����ļ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<a href="zidingyi.asp?files=a">�༭���ļ�</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			chatform.htm&nbsp;&nbsp; �����б����ļ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<a href="zidingyi.asp?files=b">�༭���ļ�</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			userlist.htm&nbsp;&nbsp; �û��б������ļ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<a href="zidingyi.asp?files=c">�༭���ļ�</a>&nbsp; <br>
			<br>
			<font color="#99CC00"><b>ע�⣺ </b></font><font color="#FF0000">1&gt;</font> 
			&lt;!--$RoomName--&gt; �� &lt;!--$�ַ�--&gt;&nbsp; ����ϵͳ�������޸�ʱ��ע���ˡ�<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">2&gt; </font>
			�����޸ĵ�ʱ��ע�ⱸ�ݣ�С�Ļָ�����<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">3&gt;</font> 
			�������ǵ��������������������Ʒ<br>
			<br>
&nbsp;��ǰ�޸�&nbsp;<b><font color="#FF0000"><%=newfile%> </font></b>�ļ�</td>
            </tr>

          <tr>
          
            <td width="593" height="440" align="center" bgcolor="#F9F9F7" valign="top">
            
<%
    On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	If fso.FileExists(medirsr & "\" & newfile) then
	Set f = fso.OpenTextFile(medirsr & "\" & newfile, ForReading)
	inilines=f.ReadAll()
	else
	inilines=""
	end if
	
	if inilines="" then inilines="��������д���ݣ�������ģ�壬�ٸ����Լ�ϲ���޸ģ����ļ����ݸ��Ƶ�����Ȼ��ȷ���޸ľͿ���ʹ���ˣ�"
	
 %>
<textarea rows="33" name="jstxt" cols="80"><%=inilines%></textarea><br>
            
<input type=hidden name=files value="<%=files%>">

            <br>
            

            <input type="submit" value=" ȷ���޸� " name="B1"></td>
            </tr>

        </table>
        </center>
      </div>
<form>
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>