<!--ģ���ļ�#include file="inc/top.asp" -->
<% call toubu 
if InStr(Request.ServerVariables("HTTP_HOST"), "liaowan.com") = 0 then
response.redirect "http://liaowan.com/"
end if

%>

<head>
<meta http-equiv="Content-Language" content="zh-cn">

<LINK href="http://liaowan.com/images/Style.css" rel=stylesheet>
<TITLE>��ҳδ�ҵ�-û�ҵ�-�����������������-BCHAT OR LWOO ����Ƽ�</TITLE>
</head>

<div align="center">
	<table border="0" cellpadding="0" cellspacing="0" width="778" id="table1" bgcolor="#FFFFFF">
		<tr>
			<td>��<p align="center">��</p>






<p align="center">��</p>



<% if Request("m")="" then %>

<p align="center">��</p>
			<p align="center">Sorry !! ������ҳ�沢û���ҵ������ܲ����ڻ����ٽ�����<% end if %>


</p>






<p align="center"><a href="http://liaowan.com">������ ���� ������ҳ Ѱ����ϲ����������</a>

<br>

</p>
<p align="center">  ���������������콡������������</p>
			<p align="center">  ��</p>
			<p align="center">  ��</p>
			<p align="center">  ��</p>
<br><br><br><br><br><br>��</td>
		</tr>
	</table>
</div>
<% call dibu %>