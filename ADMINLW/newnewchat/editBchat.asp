<!--�������ݿ��ļ�#include file="../../INC/Chatfl.asp" -->
<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--ģ������#include file="../../INC/sysBChat.asp" -->
<%
Set rs= Server.CreateObject("ADODB.Recordset")
Call OpenChatConn()
Call OpenBChatConn()

sql="select * from [Room] where port="& Request("port")
set rs=bchatconn.execute (sql)
if rs.eof and rs.bof then
%>

û���ҵ������� <a href='Javascript:window.history.go(-1)'>����</a>

<% else 


    port=rs("port")
	roomname = rs("roomname")
	maxnum = rs("maxnum")
	userpasswd = rs("adminpasswd")
	bodycolor = rs("bodycolor")
	bodyurl = rs("bodyurl")
	bottomcolor = rs("bottomcolor")
	bottomurl = rs("bottomurl")
	topcolor = rs("topcolor")
	
	adnote = rs("adnote")
	scripturl = rs("scripturl")
	leaveurl = rs("leaveurl")
	fullurl = rs("fullurl")
	unauthurl = rs("unauthurl")
	setadm = rs("setadm")
	setimg = rs("setimg")
	setdoor = rs("setdoor")
	setsex = rs("setsex")
	
	admintor = rs("admintor")
	channels = rs("channels")
	rtype = rs("rtype")
	'admin = rs("admin")
	muban = rs("muban")
	vms = rs("vms")
	rs.close

sql="select * from web where id="& Request("port")
set rs=chatconn.execute (sql)

	userpasswd = rs("adminpasswd")
	userpasswd1 = rs("userpasswd1")
	userpasswd2 = rs("userpasswd2")
	admin = rs("admin")
	adminid = rs("adminid")
	RoomType = rs("RoomType")
	rs.close

	

%>

<HTML>
<HEAD>
<TITLE>�༭����</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<script langauge="javascript">
	function trim(string){
	var i=0,j=string.length-1,tmp,result;
	tmp=string.charAt(i);
	while(tmp==' '){
	i++;
	tmp=string.charAt(i);
	}
	tmp=string.charAt(j);
	while(tmp==' '){
	j--;
	tmp=string.charAt(j);
	}
	if(i<=j){
	result=string.substring(i,j+1);
	}
	else{
	result="";
	}
	return result;
	}
	function notNull(fieldname,string){
	string.value=trim(string.value);
	if(string.value==""){
	alert("����д��"+fieldname+"����");
	string.focus();
	return false;
	}
	else{
	return true;
	}
	}
	function check_url(urlname,urlobj) {
		val=urlobj.value
		if ((val != "")){
			if ((val.indexOf ('http://') == -1)|| (val.indexOf ('.') == -1)) {
				alert(urlname+' ������ȷ��URL��ʽ����������ȷ��URL��ʽ��');
				urlobj.focus();
				return false;
			}
		}
		return true;
	}
	function validform(theform)
	{
	    if(notNull(" �������� ",theform.roomname)&&notNull(" ����������� ",theform.maxnum)&&check_url("����������ͼ��",theform.bottomurl)&&check_url("����������ͼ��",theform.bodyurl)&&check_url("�뿪������",theform.leaveurl)&&check_url("����Ȩ�û���¼��תURL",theform.unauthurl)&&check_url("��Ա��תURL",theform.fullurl))
	      return true;
	      return false;
	}
</script>

</HEAD>
<STYLE type=text/css>
<!--
td {  font-family: "����"; font-size: 9pt}
body {  font-family: "����"; font-size: 11pt; line-height: 15pt}
.title {  font-family: "����"; font-size: 11pt}
A {text-decoration: none; font-family: "����"}
A:hover {text-decoration: underline; color: #FF0000; font-family: "����"} 
-->
</style>
<BODY bgcolor="#EEEEFF" LANGUAGE="JavaScript">
	<form method="post" action="../chat/editBchatsave.asp" OnSubmit="return validform(this)" name="myform">
	<input type="hidden" name="act" value="DONE">
	<input type="hidden" name="ss" value="<%=ss%>">
	<div align=center>
	<table border="0" width="583"  height="100">
	  <tr>
	    <td width="577" colspan="2" height=40  align=center valign=top> 
        <font color="#0000FF">�޸�������</font></td>
	  </tr>
	  <tr>
	    <td width="117" align=left>�˿ںţ�</td>
	    <td width="456">
	    <%=port%>
        <input type="hidden" name="port" value="<%=port%>" size="9">
        <INPUT type="hidden" name="port1" value="<%=port%>">
		 &nbsp;<input type="hidden" name="roomid" value="0">2000 -- 9000</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">��������<font color=red>**</font>��</td>
	    <td width="456" ><input type="text" name="roomname" size="50" maxlength=40 value="<%=roomname%>"> </td>
	  </tr>
	  <tr>
	    <td  align=left width="117">�����������<font color=red>**</font>��</td>
	    <td width="456" ><input type="text" name="maxnum" size="10" maxlength=4 value="<%=maxnum%>"></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">����������<font color=blue>**</font>��</td>
	    <td width="456" >����<input type="radio" name="rtype" value="T" <% if rtype="T" then response.write "checked" %> > ����<input type="radio" name="rtype" value="A" <% if rtype="A" then response.write "checked" %> > ��Ƶ<input type="radio" name="rtype" value="V" <% if rtype="V" then response.write "checked" %>  ><font color=green>**</font></td>
	  </tr>
	 <!-- <tr>
	    <td  align=left>�˿ڰ�������<font color=red>**</font>��</td>
	    <td ><input type="text" name="bindhost" size="30" maxlength=30 value="<%=bindhost%>" <%=temphidden%>> ������ȷ��д�ö˿ڰ󶨵�������IP����������ʧ�ܲ�������������⣩<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left>�����������к�<font color=red>**</font>��</td>
	    <td ><input type="text" name="bindserial" size="30" maxlength=20 value="<%=bindserial%>" <%=temphidden%>> ������ȷ��д���������󶨵����кţ���������ʧ�ܲ�������������⣩<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left>�˿���ȨKEY�ļ�<font color=red>**</font>��</td>
	    <td ><input type="text" name="keyfile" size="30" maxlength=30 value="<%=keyfile%>" <%=temphidden%>> ������ȷ��д�ö˿ڵ�KEY�ļ�����������ʧ�ܲ�������������⣩<font color=green>**</font></td>
	  </tr> -->
	  <tr>
	    <td  align=left height="12" width="117">ģ��ѡ��</td>
	    <td height="12" width="456" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>Ĭ��ģ��</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>�Զ���ģ��</option>

        <option value="2" <%if muban=2 then response.write "selected"%>>[����]��׼ģ��</option>

        </select></td>
	      </tr>
      <tr>
	    <td  align=left height="1" width="117">����ģʽѡ��</td>
	    <td height="1" width="456" > 
        
<select size="1" name="vms">

        <option value="0" <%if vms=0 then response.write "selected"%>>ͨ�ñ��� 1.3Kbps ���ٱ��� ǿ���Ƽ� Ϊ�˱�֤�㷿�䲻����ѡ�����</option>
        <option value="1" <%if vms=1 then response.write "selected"%>>���ͻ������� 2.4Kbps ��������̫�� ���Ƽ�</option>

        <option value="2" <%if vms=2 then response.write "selected"%>>8KHz���������� 25Kbps �Ƽ� ���ʺܺ� ���ٶ���</option>
        <option value="3" <%if vms=3 then response.write "selected"%>>16KHz���������� 45Kbps ������� ���������϶�����</option>

        </select> �Ƽ�ʹ��ͨ�ñ��룬��Ϊ 45Kbps ������ �ܶ��˶����� ��Ҫ�ǵ��������ٶȵ����⡣</td>
	      </tr>
	  <tr>
	    <td  align=left width="117">�����ҷ��ࣺ</td>
	    <td width="456" > 
        
<select size="1" name="RoomType">
<%
i=1
do while (i<21) %>
<option value="<%=i%>" <%if RoomType=i then response.write "selected"%>><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
        </select>
        
        </td>
	  </tr>
      <tr>
	    <td  align=left width="117">������</td>
	    <td width="456" >
        <input type="text" name="admin" size="15"  maxlength=7 value="<%=admin%>"></td>
	  </tr>
	  <tr>
	    <td  align=left width="117" height="24">����ID��</td>
	    <td width="456" height="24" >
        <input type="text" name="adminid" size="15"  maxlength=7 value="<%=adminid%>"></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">������������<font color=red>**</font>��</td>
	    <td width="456" >
        <input type="text" name="userpasswd" size="19" maxlength=20 value="<%=userpasswd%>"></td>
	  </tr>
      <tr>
	    <td  align=left width="117">���ù������룺</td>
	    <td width="456" >
        <input type="text" name="userpasswd1" size="19" maxlength=20 value="<%=userpasswd1%>"></td>
	  </tr>
      <tr>
	    <td  align=left width="117">���ù���Ա���룺</td>
	    <td width="456" >
        <input type="text" name="userpasswd2" size="19" maxlength=20 value="<%=userpasswd2%>"></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">������������ɫ��</td>
	    <td width="456" ><input type="text" name="bodycolor" size="10"  maxlength=7 value="<%=bodycolor%>"> ���磺#FFFFFF��</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">����������ͼ��URL��</td>
	    <td width="456" ><input type="text" name="bodyurl" size="50" maxlength=80 value="<%=bodyurl%>"> <br>���� http://www.aaa.com/bbb.jpg��</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">������������ɫ��</td>
	    <td width="456" ><input type="text" name="bottomcolor" size="10" maxlength=7 value="<%=bottomcolor%>"> ���� #B4B4FE��</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">����������ͼ��URL��</td>
	    <td width="456" ><input type="text" name="bottomurl" size="50" maxlength=80 value="<%=bottomurl%>"> </td>
	  </tr>
	  <tr>
	    <td  align=left width="117">�����б�����ɫ��</td>
	    <td width="456" ><input type="text" name="topcolor" size="10"  maxlength=7 value="<%=topcolor%>"> ���� #B4B4FE��</td>
	  </tr>
	  <tr>
	    <td  align=left width="117">��ӭ�ʣ�</td>
	    <td width="456" ><textarea rows="3" name="adnote" cols="49"><%=adnote%></textarea></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">�����ҽű�URL��</td>
	    <td width="456" >
        <textarea rows="3" name="scripturl" cols="49"><%=scripturl%></textarea> </td>
	  </tr>
	  <tr>
	    <td  align=left width="117">�뿪��URL��</td>
	    <td width="456" ><input type="text" name="leaveurl" size="50" maxlength=50 value="<%=leaveurl%>"> </td>
	  </tr>
	  <tr>
	    <td  align=left width="117">��Ա��תURL<font color=blue>**</font>��</td>
	    <td width="456" ><input type="text" name="fullurl" size="50" maxlength=50 value="<%=fullurl%>" <%=temphidden%>> <font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">����Ȩ�û���¼��תURL<font color=blue>**</font>��</td>
	    <td width="456" ><input type="text" name="unauthurl" size="50" maxlength=50 value="<%=unauthurl%>" <%=temphidden%>> <font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">�Ƿ��־����Ա<font color=blue>**</font>��</td>
	    <td width="456" >��<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %> > ��<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >������Ա���ֺ����Ƿ�Ӻ��ǣ�<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">�Ƿ�����ͼ��<font color=blue>**</font>��</td>
	    <td width="456" >��<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > ��<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %>  >���Ƿ�����������������ͼ����<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">�Ƿ��������<font color=blue>**</font>��</td>
	    <td width="456" >��<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > ��<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> >���Ƿ��������ִ�й��Ź��ܣ�<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left width="117">�Ƿ������Ա�<font color=blue>**</font>��</td>
	    <td width="456" >��<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> > ��<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >�����������Ƿ���ʾ��Ϊ��ɫ��ŮΪ��ɫ������Ϊ��ɫ��<font color=green>**</font></td>
	  </tr>
	  <tr>
	    <td  align=left valign=top width="117">�������Ա�ͼ���</td>
	    <td width="456" ><textarea rows="8" name="admintor" cols="50"><%=admintor%></textarea></td>
	  </tr>
	  <!--<tr>
	    <td  align=left valign=top>����ͨ�����ã�</td>
	    <td ><textarea rows="8" name="channels" cols="50"><%=channels%></textarea></td>
	  </tr>
	  -->
	  <input type="hidden" name="channels" value="">
	  <tr>
	    <td width="577" colspan="2" height=40 align=center valign=bottom><input type="submit" value="�޸�ȷ��" name="s1">  <input type="reset" value="����" name="s2"></td>
	  </tr>
	  <tr>
	    <td width="577" colspan="2" height=40  valign=bottom>
	    ˵����<br>
	    1�����ڹ���Ա�����ã�������������ͼ���֮����"|"�ָ�����: admin|passwd|1 ÿ������һ�У�ע����治Ҫ���ո��������Ա����Ϊע����û�����Ҫ������ǰ������Ǻš�����0��ʾ��������Ȩ�ޣ�1��ʾ�������ֺ�IPȨ�ޣ�9��ʾ��1��Ȩ�޲��в����ߵ�Ȩ�ޡ�<br>
	    <!--2�����ڿ���ͨ�������ã��˿ںź���������֮����"|"�ָ�����: 2000|���������� ÿ����һ�У�ע����治Ҫ���ո�<br>
	    -->
	    2��<font color=red>**</font> ��־�����ʾ������д�<br>
	    3��<font color=red>**</font> �� <font color=blue>**</font> ��־�����ʾ����иĶ�����Ҫ���������ҽ��̲�����Ч��<br>
	    4��<font color=green>**</font> ��־��ʾ�˿ڵķ�0ID�ŵ����ò������޸ĵ���
	    </td>
	  </tr>
	</table>
	</div>
	</form>


</BODY>
</HTML>
<% end if %>