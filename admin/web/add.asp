<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(3) %>

<%Server.ScriptTimeOut=900%>
<meta http-equiv="Content-Language" content="en-us">
<%

if Request("menu")="add" then

Set UP = Server.CreateObject("lw.up")

DIM pic

EER=0 '�����ж�


if EER=0 then

	Set fso = CreateObject(fs)
	If Not fso.FolderExists(Server.MapPath("/muban/" & rmport & "/")) then
		fso.CreateFolder(Server.MapPath("/muban/" & rmport & "/"))
	End If

	set pic = UP.file("htmlfile")
	
	if pic.FileExt<>"" then
		
		EXT=LCase(pic.FileExt)
		
		if pic.FileSize>100000 then 
			EER=1
			errstr "�ļ���С������100K���ڣ�����ִ��ʱ��ᳬʱ��"
		end if
		
		if EXT="htm" or EXT="html" then
			'������ʱ�ļ�
			pic.SaveFile Server.mappath("/muban/" & rmport & "/index.html")		
		else
			EER=1
			errstr "�ļ���ʽ���ԣ�ֻ��ʹ�� htm,html ��ʽ����ҳ�ļ���" & EXT
				
		end if
	else
		errstr "�ļ���ʽ���ԣ�ֻ��ʹ�� htm,html ��ʽ����ҳ�ļ���1"
	end if
	
end if
set UP = Nothing

errstr "�����ɹ���"


end if
%>



<html>
<head>
<title>�Զ�����ҳģ���ϴ�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</HEAD>


<BODY bgcolor="#468ea3">


 <TABLE width="626" border="0" align="center" cellspacing="1" height="351">
             <TBODY>
             <FORM method="POST" name="FrontPage_Form1" action="add.asp?menu=add" onsubmit='return FrontPage_Form1_Validator(this)' enctype=multipart/form-data language="JavaScript">
 
             <TR align="center">
             <TD colspan="2" height="22" bgcolor="#145f74" width="622">
				<font color="#FFFFFF"><b>�Զ�����ҳģ���ϴ�</b></font></TD></TR>
             <TR bgcolor="#cce6ed">
             <TD width="124" align="right" height="31" nowrap bgcolor="#cce6ed">
             <b>ѡ��ģ���ļ�<font color="#FF0000">��</font></b></TD>
             <TD width="496" height="31" bgcolor="#cce6ed">
             <input type="file" name="htmlfile" size="36">&nbsp; 
             100K ����&nbsp; 
				<INPUT type="submit" value="�ϴ�" name="cmdok0" class="buttonface"></TD></TR>
             </FORM>
             <TD width="124" align="right" valign="top" nowrap bgcolor="#cce6ed" height="173">
				<b>ģ���ļ�˵��<font color="#FF0000">��</font></b></TD>
             <TD width="496" bgcolor="#cce6ed" height="173" valign="top">
				<font color="#008000"><span lang="zh-cn">ʹ���Զ������ã����� [��վ����] - 
				[��������] �������ҳģ���޸ĳ� �Զ���ģ��</span></font><br>
				������ģ���б����ڰ�Ȩ����������������������룬����ģ�彫����Ч��<br>
				<textarea rows="2" name="S1" cols="67"><a target="_blank" href="http://liaowan.com/">������Ƶ��������</a></textarea><br>
				<br>
				ģ���б������ձ�<br>
				''''''''''''''''''''''''''''''''<br>
				'&lt;!--$roomname--&gt; ��������<br>
				'&lt;!--$roomid--&gt; ����ID<br>
				'&lt;!--$num--&gt; ��վ��ǰ��������<br>
				'&lt;!--$admin--&gt; ��������������<br>
				'&lt;!--$adminid--&gt; ����������id<br>
				'&lt;!--$index_logo--&gt; �������վ��־ͼƬ<br>
				'&lt;!--$index_css--&gt; ��ҳ�Զ���CSS�ű�<br>
				'&lt;!--$webbg--&gt; ��ҳ����ͼƬ��ַ<br>
				'����Ϊ������ͳ��������<br>
				'&lt;!--$TODAY--&gt; ��������<br>
				'&lt;!--$YESTERDAY--&gt; ��������<br>
				'&lt;!--$MONTHS--&gt; ��������<br>
				'&lt;!--$BMONTH--&gt; ��������<br>
				'&lt;!--$TOTAL--&gt; �����ܼ�<br>
				'&lt;!--$renqi--&gt; ����ָ��<br>
				'��վ��Ŀ<br>
				'&lt;!--$title--&gt; ��ҳ����<br>
				'&lt;!--$youqing--&gt; ������������<br>
				'&lt;!--$body--&gt; ��ҳ����������<br>
				'&lt;!--$indexs--&gt; �����ҳ������<br>
				''''''''''''''''''''''''''''''''<br>
				<b>
				<a target="_blank" href="http://muban.liaowan.com/muban/1/index.html">
				����������[<font color="#000000">��׼</font><span lang="zh-cn">]��ҳ</span>ģ��ο�д����</a></b>  <font color="#FF0000">�Ҽ� - Ŀ�����Ϊ<br>
				</font>
				<b>
				<a target="_blank" href="http://muban.liaowan.com/muban/2/index.html">����������[<font color="#000000">��������[����]</font>]ģ��ο�д����</a></b>  <font color="#FF0000">�Ҽ� - Ŀ�����Ϊ<br>
				</font>
				<b>
				<a target="_blank" href="http://muban.liaowan.com/muban/3/index.html">����������[<font color="#000000">�趯������[�赸]</font>]ģ��ο�д����</a></b>  <font color="#FF0000">�Ҽ� - Ŀ�����Ϊ<br>
				</font>
				<b>
				<a target="_blank" href="http://muban.liaowan.com/muban/4/index.html">����������[<font color="#000000">һ�����[���]</font>]ģ��ο�д����</a></b>  <font color="#FF0000">�Ҽ� - Ŀ�����Ϊ</font><br>
��</TD></TR></TBODY></TABLE><DIV align="center">
             <CENTER>
             <P>��</P>
             </CENTER></DIV>

</BODY></HTML>