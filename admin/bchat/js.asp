<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(21) %>
<%
xz=Request("xz")
if xz="" then xz=1

if xz=1 then
files= rmport & ".js"
else
files= rmport & "f.js"
end if

if Request("jstxt")<>"" then


	'д�˿�.js�ļ�
	if len(Request("jstxt"))>200000 then
		Call errstr("�ű�������200K���ڣ�Ҫ�������Ҵ򲻿���ô��Ǻǣ���")
	end if
	
	
	psths = server.mappath("/chatjs")
	
	On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set ts = fso.OpenTextFile(psths & "\" & files, ForWriting, true)
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
       
<form name="form5" method="post" action="js.asp">
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="682">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; </font></b><font color="#FFFFFF"><b>
			�Զ���JS����</b></font></td>
          </tr>
          
          <tr>
<td width="593" height="49" bgcolor="#F9F9F7" valign="top">
            �������� �����ṩ���������û���JS���ÿռ䣬Ŀǰ��չΪ����JS�ű��ռ䣬���Է��������ű���<br>
			���ű��� 
            <a target="_blank" href="http://liaowan.com/chatjs/<%=rmport%>.js">http://liaowan.com/chatjs/<%=rmport%>.js</a>&nbsp; 
            �ű�����<a target="_blank" href="http://liaowan.com/chatjs/<%=rmport%>F.js">http://liaowan.com/chatjs/<%=prmport%>f.js</a>��<br>
            �ڻ�������-�����ҽű�URL-��д <font color="#FF0000">&lt;SCRIPT src=http://liaowan.com/chatjs/<%=rmport%>.js&gt;&lt;/SCRIPT&gt;</font><b>
            </b>�Ϳ�ʹ��<br>
			����ű����� <a href="http://liaowan.com/chatjs/8002.js"><u>�ű�һ</u></a>
			<a href="http://liaowan.com/chatjs/118122.js"><u>�ű���</u></a> 
			�������ѡ�нű��Ҽ�-&gt;�༭ �޸Ľű����ݺ�ճ���������ı����С��ύ����<br>
			<br>
			ѡ���޸� <a href="js.asp?xz=1">&nbsp; <%=rmport%>.js</a> | <a href="js.asp?xz=2">
			<%=rmport%>f.js</a><br>
��</td>
            </tr>

          <tr>
<td width="593" height="22" bgcolor="#F9F9F7" valign="top">
            ��ǰ�޸�<b><font color="#FF0000"> <%=files%></font></b></td>
            </tr>

          <tr>
          
            <td width="593" height="523" align="center" bgcolor="#F9F9F7" valign="top">
            
<%
    On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	psths = server.mappath("/chatjs")
	If fso.FileExists(psths & "\" & files) then
	Set f = fso.OpenTextFile(psths & "\" & files, ForReading)
	inilines=f.ReadAll()
	else
	inilines=""
	end if
	
	if inilines="" then inilines="��������д���ݣ�����վ����Ա����õ�JS�ű�ģ�壬�ٸ����Լ�ϲ���޸ģ����ļ����ݸ��Ƶ�����Ȼ��ȷ���޸ľͿ���ʹ���ˣ�"
	
 %>
            
<textarea rows="37" name="jstxt" cols="78"><%=inilines%></textarea><br>
            <input type=hidden name=xz value="<%=xz%>">

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