<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<!--�������ݿ��ļ�#include file="../../INC/CLA.asp" -->
<html>
<head>
<title>��������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</HEAD>
<%
id=Request("id")
dim rs
dim sql
dim count
set rs=server.createobject("adodb.recordset")
set rsr=server.createobject("adodb.recordset")
sql = "select * from class where cid>0 order by classid asc"
rs.open sql,conn,1,1
%>
<SCRIPT language="JavaScript">
var onecount;
onecount=0;
subcat = new Array();
        <%
        count = 0
        do while not rs.eof 
        %>
subcat[<%=count%>] = new Array("<%= trim(rs("class"))%>","<%= trim(rs("cid"))%>","<%= trim(rs("classid"))%>");
        <%
        count = count + 1
        rs.movenext
        loop
        rs.close
        %>
onecount=<%=count%>;

function changelocation(locationid)
    {
    document.myform.Nclassid.length = 0; 

    var locationid=locationid;
    var i;
    for (i=0;i < onecount; i++)
        {
            if (subcat[i][1] == locationid)
            { 
                document.myform.Nclassid.options[document.myform.Nclassid.length] = new Option(subcat[i][0], subcat[i][2]);
            }        
        }
        
    }    
</SCRIPT>
<SCRIPT language="javascript">
<!--
function CheckForm()
{
	document.myform.txtcontent.value=document.myform.doc_html.value;
	return true
}
//-->
</SCRIPT>
<script language="javascript">
function Check(){var Name=document.myform.softname.value;
window.open("addname.asp?abc=1&name="+Name,"","width=200,height=20");
}
function Check1(){var Name=document.myform.filename.value;
window.open("addname.asp?abc=2&name="+Name,"","width=200,height=20");
}
</script>

<script language='JavaScript'>
<!--
//�ύ����֤

function check_input()
{
	newuserreg=document.myform;
	
	
	
//��֤������ҵ���ϲ���
	
	if(newuserreg.classid.value=='')
	{
		alert('������ͱ���ѡ��');
		newuserreg.classid.focus();
		return false;
	}
	
		if(newuserreg.Nclassid.value=='')
	{
		alert('������ͱ���ѡ��');
		newuserreg.Nclassid.focus();
		return false;
	}
	
		if(newuserreg.softname.value=='')
	{
		alert('������Ʋ���Ϊ��');
		newuserreg.softname.focus();
		return false;
	}	
	

		if(newuserreg.filename.value=='' && newuserreg.lk1.value=='')
	{
		alert('�ļ����������ӵ�ַ ���� ѡ����дһ�֣�');
		newuserreg.filename.focus();
		return false;
	}	

		if(newuserreg.filename.value!='' && newuserreg.lk1.value!='')
	{
		alert('�ļ����������ӵ�ַ ֻ�� ѡ����дһ�֣�');
		newuserreg.filename.focus();
		return false;
	}	
	
		if(newuserreg.size.value=='')
	{
		alert('�����С����Ϊ��');
		newuserreg.size.focus();
		return false;
	}	
	
		if(newuserreg.gj.value=='')
	{
		alert('�ؼ��ֲ���Ϊ��');
		newuserreg.gj.focus();
		return false;
	}
	
		if(newuserreg.txt.value=='')
	{
		alert('�����鲻��Ϊ��');
		newuserreg.txt.focus();
		return false;
	}

}
//-->
</script>


<BODY bgcolor="#468ea3">

<%

    sql = "select * from soft where id=" & Request("id")
    rs.open sql,conn,1,1
	if rs.eof and rs.bof then
%>

�Ƿ���������<a href='Javascript:window.history.go(-1)'>����</a>

<% else %>
<FORM method="POST" name="myform" action="editsave.asp" onsubmit='return check_input()' enctype=multipart/form-data>
  <TABLE width="692" border="0" align="center" cellspacing="1" height="670">
  <input type=hidden name=id value="<%=Request("id")%>">
             <TBODY>
             <TR align="center">
             <TD colspan="4" height="22" bgcolor="#145f74" width="630"><B><FONT color="#FFFFFF"><%=rs("softname")%> �޸Ĺ���ҳ��</FONT></B></TD></TR><TR>
             <TD align="right" width="124" nowrap bgcolor="#A5D0DC" height="27"><B><FONT color="#FF0000">�������</FONT>��</B></TD>
             <TD width="218" bgcolor="#A5D0DC" height="27"><%
    sql = "select * from class where cid=0"
    rsr.open sql,conn,1,1
	if rsr.eof and rsr.bof then
	response.write "���������Ŀ��"
	response.end
	else
%> <SELECT name="classid" onChange="changelocation(document.myform.classid.options[document.myform.classid.selectedIndex].value)" size="1">
             <OPTION selected value=<%=rs("classid")%>><%=CLA(rs("classid"),0)%></OPTION><% 
        do while not rsr.eof
%><OPTION value="<%=trim(rsr("classid"))%>"><%=trim(rsr("class"))%></OPTION><%
        rsr.movenext
        loop
	end if
        rsr.close
%></SELECT> </TD>
			<TD align="right" width="99" bgcolor="#A5D0DC" height="27"><B>ѡ����ࣺ</B></TD>
             <TD width="261" bgcolor="#A5D0DC" height="27"><SELECT name="Nclassid">
             <OPTION selected value=<%=rs("Nclassid")%>><%=CLA(rs("Nclassid"),rs("classid"))%></OPTION></SELECT> </TD></TR><TR>
             <TD width="124" align="right" height="15" nowrap bgcolor="#CCE6ED"><B><FONT color="#FF0000">�������</FONT>��</B></TD>
             <TD width="578" height="15" bgcolor="#CCE6ED" colspan="3">
             <INPUT type="text" name="softname" size="33" class="smallinput" maxlength="100" value="<%=rs("softname")%>"> 
             <INPUT onclick="javascript:Check()" type="button" value="����Ƿ����ظ�" name="cmdcancel1" class="buttonface"> 
             �޸����ֵ�ʱ���ټ��</TD></TR>
             <tr>
             <TD width="124" align="right" height="30" nowrap bgcolor="#CCE6ED">
             <b><font color="#008000">�Ƽ����</font>��</b></TD>
             <TD width="578" height="30" bgcolor="#CCE6ED" colspan="3">
               <SELECT name="tj" size="1">
             <option value="0" <%if rs("tj")=0 then response.write "selected"%>>��ͨ���</option>
             <option value="1" <%if rs("tj")=1 then response.write "selected"%>>�Ƽ����</option>
             <option value="2" <%if rs("tj")=2 then response.write "selected"%>>�ö��Ƽ����</option>
               </SELECT>&nbsp; </TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="31" nowrap bgcolor="#cce6ed">
             ��</TD>
             <TD width="472" height="31" colspan="3" bgcolor="#cce6ed">
             <b><font color="#0000FF">&nbsp; 
             ����������Ӻ�������ֻ��ѡ����дһ�֡����ʹ����</font><font color="#FF0000">������</font><font color="#0000FF">�ǾͲ�Ҫ����д</font>������<font color="#0000FF">�ˡ����ʹ��</font>������<font color="#0000FF">�Ͳ���д</font><font color="#FF0000">������</font><font color="#0000FF">��</font><font color="#FF0000">���� 
             ǧ��Ҫ�������<a target="_blank" href="edits.asp">��</a></font></b></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="1" nowrap bgcolor="#cce6ed">
             <b>
             <font color="#0000FF">[������]</font><font color="#FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br>
             </font><font color="#FF0000">����</font><font color="#FF0000">ѹ����<br>
             ���ļ���</font>��</b></TD>
             <TD width="578" height="1" colspan="3" bgcolor="#cce6ed">
             <br>
             ����Ա������ǰ������ϴ�����������С��1.5M���������ʹ��[<a href="UP.ASP?abc=1">��ҳ�ϴ����</a>]��<br>
             ����1.5M�ļ�ʹ��FTP�ϴ�������50M�ɷ������ϴ�����ϵ��������Ա��<br>
             <INPUT type="text" name="filename" size="33" class="smallinput" maxlength="100" value="<%=rs("filename")%>"> 
             <INPUT onclick="javascript:Check1()" type="button" value="����Ƿ����ظ�" name="cmdcancel2" class="buttonface"> 
             �޸��ļ�����ʱ���ټ��<br>
             <b><font color="#008000">�� lftp.rar&nbsp;&nbsp;
             QQ2003m.ZIP</font></b><br>
             <b><font color="#FF0000">�ڲ�����</font></b>��ʱ��ֱ��д�ļ����Ϳ�����������ˡ���Ҫдȫ��·���� 
             <br>
             <font color="#0000FF"><b>�ڲ����ӵ��ļ�һ��Ҫ�ϴ�����ȷ���ļ����С�<br>
��</b></font></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="93" nowrap bgcolor="#cce6ed">
             <b><font color="#0000FF">[������]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br>
             </font><font color="#FF0000">���ӵ�ַ</font>��</b></TD>
             <TD width="472" height="93" colspan="3" bgcolor="#cce6ed">
             ���ṩ�������������<a onmousedown="return clk(1,this)" style="color: #00c" target="_blank" href="http://www.mandrakelinux.com/zh-CN/ftp.php3">Mandrake-linux
             </a>2G����ʱ�����ǿ���ʹ�������ӡ�<br>
             ���ʹ�õ�����������Ͳ���Ҫ��д�ˣ�[<font color="#008000"><b>ע�⣺</b>С���������ʹ��������</font>]<br>
             <br>
             ���ӵ�1��<INPUT type="text" name="lk1" size="33" class="smallinput" maxlength="100" value="<%=rs("lk1")%>"> 
             ����ֻ��һ�����ӵ�<br>
             ���ӵ�2��<INPUT type="text" name="lk2" size="33" class="smallinput" maxlength="100" value="<%=rs("lk2")%>"><br>
             ���ӵ�3��<INPUT type="text" name="lk3" size="33" class="smallinput" maxlength="100" value="<%=rs("lk3")%>"><br>
             ���ӵ�4��<INPUT type="text" name="lk4" size="33" class="smallinput" maxlength="100" value="<%=rs("lk4")%>"></TD>
             </tr>
             <TR>
             <TD width="124" align="right" height="31" nowrap bgcolor="#CEE7EF">
             <font color="#FF0000"><B>�����С��</B></font></TD>
             <TD width="578" height="31" bgcolor="#CEE7EF" colspan="3">
             <INPUT type="text" name="size" size="26" class="smallinput" maxlength="100" value="<%=rs("size")%>">
             ��λ KB ��MB ��GB ��TB�ǲ�Ӧ��ʹ�õ� ������</TD></TR><TR bgcolor="#cce6ed">
             <TD width="124" align="right" height="51" nowrap bgcolor="#cce6ed">
             <font color="#008000"><span lang="zh-cn"><b>��</b></span></font><b><font color="#008000"><span lang="zh-cn">���޸Ĳ�Ҫ��д</span></font><br>
             �������[��ѡ]<font color="#FF0000">��</font></b></TD>
             <TD width="578" height="51" bgcolor="#cce6ed" colspan="3">
             <input type="file" name="pic" size="62">&nbsp; 
             <br>
             ѡ�������ͼ����ͼ��ʽ {.GIF .JPG .JPEG .BMP
             .PNG} ϵͳ���Զ����ɴ�����LOGO�Ĵ�С����ͼƬ��</TD></TR>
             <tr>
             <TD width="124" align="right" height="50" nowrap bgcolor="#cce6ed">
             <b>FLASH��ʾ</b><b>[��ѡ]<font color="#FF0000">��</font></b></TD>
             <TD width="578" height="50" bgcolor="#cce6ed" colspan="3">
             ���FLASHԴ�����ʱ�򣬽������һ����ӳ����ʾ.SWF<br>
             ����Ѿ�ʹ���ϴ��ˡ�SWF�ļ�����������д���.swf�ļ����ļ�����
             [<a href="upflash.asp?abc=2">�ϴ�.swf�ļ�</a>]<br>
             
             <INPUT type="text" name="flash" size="26" class="smallinput" maxlength="100" value="<%=rs("flash")%>"></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="4" nowrap bgcolor="#cce6ed">
             <B>
             <font color="#008000">
             ��Ȩ��ʽ</font><font color="#FF0000">��</font></B></TD>
               <TD width="578" height="4" bgcolor="#cce6ed" colspan="3">
               <SELECT name="fangshi" size="1">
             <option selected value="<%=rs("fangshi")%>"><%=rs("fangshi")%>
             </option>
             <option value="�������">�������</option>
             <option value="������">������</option>
             <option value="��ҵ���">��ҵ���</option>
               <option value="�ƽ����">�ƽ����</option>
               </SELECT></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="19" nowrap bgcolor="#cce6ed">
             <b><font color="#008000">�������</font><font color="#FF0000">��</font></b></TD>
               <TD width="578" height="19" bgcolor="#cce6ed" colspan="3">
               <SELECT name="gb" size="1">
             <option value="<%=rs("gb")%>" selected><%=rs("gb")%></option>
             <option value="��������">��������</option>
             <option value="��������">��������</option>
             <option value="Ӣ�����">Ӣ�����</option>
             <option value="�������">�������</option>
             <option value="��������">��������</option>
               </SELECT></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="17" nowrap bgcolor="#cce6ed">
             <b>����/������ҳ<font color="#FF0000">��</font></b></TD>
               <TD width="578" height="17" bgcolor="#cce6ed" colspan="3">
               <INPUT type="text" name="web" size="33" class="smallinput" maxlength="160" value="<%=rs("web")%>"> 
               [��ѡ]</TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="15" nowrap bgcolor="#cce6ed">
             <b>������ʾ��ַ<font color="#FF0000">��</font></b></TD>
               <TD width="578" height="15" bgcolor="#cce6ed" colspan="3">
               <INPUT type="text" name="yanshi" size="33" class="smallinput" maxlength="160" value="<%=rs("yanshi")%>"> 
               [��ѡ]</TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="7" nowrap bgcolor="#cce6ed">
             <B>
             <font color="#008000">���л���</font><font color="#FF0000">��</font></B></TD>
               <TD width="578" height="7" bgcolor="#cce6ed" colspan="3">
             <SELECT name="system" size="1">
             <option value="<%=rs("system")%>" selected><%=rs("system")%>
             </option>
             <OPTION value="XP, 2000, NT, Win9X/ME" name="system">XP, 2000, NT, Win9X/ME</OPTION>
             <option value="XP, 2000, NT">XP, 2000, NT</option>
             <OPTION value="Win9x/ME" name="system">Win9x/ME</OPTION>
             <OPTION value="windows/Unix/Linux" name="system">windows/Unix/Linux</OPTION>
             <OPTION value="Unix/Linux" name="system">Unix/Linux</OPTION>
             <OPTION value="Linux" name="system">Linux</OPTION>
             <OPTION value="ASP����" name="system">ASP����</OPTION>
             <OPTION value="PHP����" name="system">PHP����</OPTION>
             <OPTION value="CGI����" name="system">CGI����</OPTION>
             <OPTION value="JSP����" name="system">JSP����</OPTION>
             <OPTION value="JSP����" name="system">WEB�����</OPTION>
             <option value="��������">��������</option>
             <option value="������">������</option>
               </SELECT></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="27" nowrap bgcolor="#cce6ed">
             <font color="#008000"><b>����</b></font><B><font color="#008000">��</font><font color="#FF0000">��</font></B></TD>
             <TD width="472" height="27" colspan="3" bgcolor="#cce6ed">1��.<INPUT type="radio" value="1" name="hot" <%if rs("hot")=1 then response.write "checked"%>>&nbsp;&nbsp;&nbsp; 2��.<INPUT type="radio" value="2" name="hot" <%if rs("hot")=2 then response.write "checked"%>>&nbsp;&nbsp;&nbsp; 3��.<INPUT type="radio" value="3" name="hot" <%if rs("hot")=3 then response.write "checked"%>>&nbsp;&nbsp;&nbsp; 4��.<INPUT type="radio" value="4" name="hot" <%if rs("hot")=4 then response.write "checked"%>>&nbsp;&nbsp;&nbsp; 5��.<INPUT type="radio" value="5" name="hot" <%if rs("hot")=5 then response.write "checked"%>>
             </TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="48" nowrap bgcolor="#cce6ed">
             <font color="#FF0000">
             <b>����ؼ��֣�</b></font></TD>
               <TD width="578" height="48" bgcolor="#cce6ed" colspan="3">
               <INPUT type="text" name="gj" size="54" class="smallinput" maxlength="160" value="<%=rs("gj")%>"> 
               �ؼ����� �ո�&quot; &quot; ����<br>
               �����ϵͳ�Ƚ���Ҫ�Ļ��ڣ��ؼ��������������������������ʱ���õġ�</TD>
             </tr>
             <TR>
             <TD width="124" align="right" valign="top" nowrap bgcolor="#cce6ed" height="94"><B><FONT color="#FF0000">�����飺</FONT></B></TD>
             <TD width="472" colspan="3" bgcolor="#cce6ed" height="94"><FONT color="#FF0000">
             <TEXTAREA rows="10" name="txt" cols="70" class="smallarea"><%=rs("txt")%></TEXTAREA> </FONT></TD></TR></TBODY></TABLE><DIV align="center">
             <CENTER>
             <P>
             <INPUT type="submit" value=" �� �� " name="cmdok" class="buttonface">&nbsp; 
             <INPUT type="button" value=" �� �� " name="cmdcancel" class="buttonface"></P>
             </CENTER></DIV>
</FORM>
</BODY>

<% end if %></HTML>