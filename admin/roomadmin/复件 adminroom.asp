<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--���ݿ������ļ�#include file="../inc/BBTOP.asp" -->
<!--�������ݿ��ļ�#include file="../INC/Chatfl.asp" -->
<%
'�������
dim port,roomname,maxnum,userpasswrd,userroompasswd,id2

	rmport=request("roomport")
	xz=Request("xz")

	'port1=Request("port1")
    'port=Request("port")
	'roomname = Request("roomname")
	'maxnum = Request("maxnum")
	userpasswd = Request("userpasswd")
	bodycolor = Request("bodycolor")
	bodyurl = Request("bodyurl")
	bottomcolor = Request("bottomcolor")
	bottomurl = Request("bottomurl")
	topcolor = Request("topcolor")
	adnote = Request("adnote")
	scripturl = Request("scripturl")
	leaveurl = Request("leaveurl")
	fullurl = Request("fullurl")
	unauthurl = Request("unauthurl")
	setadm = Request("setadm")
	setimg = Request("setimg")
	setdoor = Request("setdoor")
	setsex = Request("setsex")
	admintor = Request("admintor")
	channels = Request("channels")
	rtype = Request("rtype")
	admin = Request("admin")
	RoomType = Request("RoomType")
	liebiao = Request("liebiao")
	ID2 = Request("ID2")

	vip = Request("vip")
	muban = Request("muban")

	userpasswd = Request("userpasswd")
	adminpasswd = Request("adminpasswd")

	keyfile = keyfile
	bindhost = chathostip
	bindserial = chatserialno


	if setadm<>"1" then setadm="0"
	if setimg<>"1" then setimg="0"
	if setsex<>"1" then setsex="0"
	if setdoor<>"1" then setdoor="0"
	if topcolor="" then topcolor="#EFF5FE"			'Ĭ�������б���������ɫ
	if bodycolor="" then bodycolor="#FFFFFF"		'Ĭ����������������ɫ
	if bottomcolor="" then bottomcolor="#EFF5FE"	'Ĭ��������������ɫ
	if adnote="" then adnote="<center>��ӭ����<font color=#ff0000><big>$1</big></font>�� ���������죬���𷢲��й�ɫ�顢���Ρ��ڿ͵ȵ���Ϣ��"




'��½��֤
if Request("roomport")<>"" and Request("password")<>""  then

	sql="select * from [Room] where port=" & trim(request("roomport")) & " and adminpasswd='" & replace(trim(request("password")),"'","''") & "'"
	set rs = conn.Execute(sql)
	
	if not (rs.eof or err) then
		session("roomport_" & rmport)=request("roomport")
		xz="form"	
	else	

	m="�û������������"
%>

<script language=Javascript>
	alert("�û����������������������");
	//window.history.go(-1);	
</script>

<%	
	end if
end if
%>

<%
'���޸�
if xz="adxg" and session("roomport_" & rmport)<>""  then


	sql="select * from [Room] where port=" &session("roomport_" & rmport)
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
       'rs("port") = port
       'rs("RoomName") = roomname


       'rs("host") = chathostip
       'rs("maxnum") = maxnum
       rs("bodycolor") =bodycolor
       rs("bodyurl") =bodyurl
       rs("bottomcolor") =bottomcolor
       rs("bottomurl") =bottomurl
       rs("topcolor") =topcolor
       rs("adnote") =adnote
       rs("scripturl") =scripturl
       rs("leaveurl") =leaveurl
       rs("fullurl") =fullurl
       rs("unauthurl") =unauthurl
       rs("setadm") =setadm
       rs("setimg") =setimg
       rs("setdoor") =setdoor
       rs("setsex") =setsex
       'rs("admintor") =admintor
       'rs("channels") =channels
       'rs("adminpasswd") =userpasswd
       'rs("rtype") =rtype
       'rs("keyfile") =keyfile
       'rs("bindserial") =bindserial
       'rs("admin") =admin
       'rs("RoomType") =RoomType

       rs.Update
       rs.close
	   xz="form"
	   
	   call shujv()
	   
	   call edit()
	   
		
%>



<script language=Javascript>
	alert("�޸ĳɹ�!!");
	//window.history.go(-1);	
</script>
		
<%		
	else	

%>

<script language=Javascript>
	alert("��������Ц��!!");
	//window.history.go(-1);	
</script>
<%	
	end if
end if

'С�޸�  ��������   �޸�����
if xz="xg" and session("roomport_" & rmport)<>""  then


	sql="select * from [Room] where port=" &session("roomport_" & rmport)
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
	   '�޸�����
	   if adminpasswd<>"" and Request("password")<>"" then
	   
	   
	   	if adminpasswd <> rs("adminpasswd")  then
			response.write "�������������<br><a href='Javascript:window.history.go(-1)'>����</a>"
			response.End
		end if
	   
	   
	   	if Request("password1")<>Request("password")  then
			response.write "�����������벻��ȷ��<br><a href='Javascript:window.history.go(-1)'>����</a>"
			response.End
		end if
	   
       	rs("adminpasswd") =Request("password1")
       end if
       
       '��������
       if RoomType<>"" and id2<>"" and liebiao<>"" then
       	rs("RoomType") =RoomType
       	rs("id2") =id2
       	rs("liebiao") =liebiao
       	rs("vip") =vip
       	rs("muban") =muban
       end if
       
       rs.Update
       rs.close
	   xz="form"
	   
%>


<script language=Javascript>
	alert("�޸ĳɹ�!!<%=liebiao%>");
	//window.history.go(-1);	
</script>
		
<%		
	else	

%>

<script language=Javascript>
	alert("��������Ц��!!");
	//window.history.go(-1);	
</script>
<%	
	end if
end if	


'���ù���Ա
if xz="adminxg" and session("roomport_" & rmport)<>""  then


	sql="select * from [Room] where port=" &session("roomport_" & rmport)
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
       rs("admintor") =admintor

       rs.Update
       rs.close
	   xz="form"
	   
	   
	sql="select * from chatadmin"
	set rsm=conn.execute (sql)
	admintor = rsm("chatadmin") & vbCrLf & admintor
	rsm.close
	   
	'дadminpass_�˿�.txt�ļ�
	letian=roomcfgdir & "\" &session("roomport_" & rmport) & "\adminpass_" &session("roomport_" & rmport) & ".txt"
	Dim fso
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set ts = fso.OpenTextFile(letian, ForWriting, true)
	ts.Write(admintor)
	ts.Close()
	
	
%>



<script language=Javascript>
	alert("����Ա���óɹ�!!");
	//window.history.go(-1);	
</script>
		
<%		
	else	

%>

<script language=Javascript>
	alert("��������Ц��!!");
	//window.history.go(-1);	
</script>
<%	
	end if
end if

'JS�ű����޸�
if xz="jsxg" and session("roomport_" & rmport)<>""  then

	   
	   	if  Request("jstxt")="" then
			response.write "�ύ���ݲ���Ϊ�գ��յû���ʲô��Ŷ��<br><a href='Javascript:window.history.go(-1)'>����</a>"
			response.End
		end if
	   
	   
	'д�˿�.js�ļ�
	psths = server.mappath("/chatjs")

	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set ts = fso.OpenTextFile(psths & "\" & session("roomport_" & rmport) & ".js", ForWriting, true)
	ts.Write(Request("jstxt"))
	ts.Close()
	xz="js"
%>

<script language=Javascript>
	alert("�޸ĳɹ�!!");
	//window.history.go(-1);	
</script>
<%		
end if
%>

<%
'��������
if session("roomport_" & rmport)<>""  then

call shujv()

else

xz=""

end if

%>

<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
          
          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�����ҿ��ٹ���!</TITLE>



<% call top %>

<% if xz="form" and session("roomport_" & rmport)<>"" then
 %>


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
	    if(check_url("����������ͼ��",theform.bottomurl)&&check_url("����������ͼ��",theform.bodyurl)&&check_url("�뿪������",theform.leaveurl)&&check_url("����Ȩ�û���¼��תURL",theform.unauthurl)&&check_url("��Ա��תURL",theform.fullurl))
	      return true;
	      return false;
	}
	</script>
	
	
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ���</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="myform" method="post" action="adminroom.asp">
      <input type=hidden name=xz value="adxg">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <font color="#FF0000"><b><a href="adminroom.asp?roomport=<%=rmport%>&xz=index">��ҳ</a></b></font><b><font color="#FF0000"> <a href="adminroom.asp?roomport=<%=rmport%>&xz=form">��������</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">��������</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">�����Ա</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">�Զ���JS�ű�</a> 
          <a href="#2">�Զ���ģ��༭</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">�޸�����</a> <a href="#1">��վ����</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">��������</a>&nbsp;&nbsp; </font>
          </b>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="638">
          <tr>
            <td width="592" bgcolor="#800080" height="26" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] ��������</font></b></td>
          </tr>

          <tr>
          
            <td width="564" height="19" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
          <tr>
	    <td width="20%" align=left height="16">�˿ںţ�</td>
	    <td width="80%" height="16"> <%=port%>��</td>
	      </tr>
          <tr>
	    <td  align=left height="19">��������<font color=red>**</font>��</td>
	    <td height="19" > <%=roomname%>��</td>
	      </tr>
          <tr>
	    <td  align=left height="19">�����������<font color=red>**</font>��</td>
	    <td height="19" > <%=maxnum%>��</td>
	      </tr>
          <tr>
	    <td  align=left height="21">������������ɫ��</td>
	    <td height="21" ><input type="text" name="bodycolor" size="10"  maxlength=7 value="<%=bodycolor%>"> ���磺#FFFFFF��</td>
	      </tr>
          <tr>
	    <td  align=left height="40">����������ͼ��URL��</td>
	    <td height="40" ><input type="text" name="bodyurl" size="50" maxlength=80 value="<%=bodyurl%>"> <br>���� http://www.aaa.com/bbb.jpg��</td>
	      </tr>
          <tr>
	    <td  align=left height="21">������������ɫ��</td>
	    <td height="21" ><input type="text" name="bottomcolor" size="10" maxlength=7 value="<%=bottomcolor%>"> ���� #B4B4FE��</td>
	      </tr>
          <tr>
	    <td  align=left height="38">����������ͼ��URL��</td>
	    <td height="38" ><input type="text" name="bottomurl" size="50" maxlength=80 value="<%=bottomurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=left height="21">�����б�����ɫ��</td>
	    <td height="21" >
        <input type="text" name="topcolor" size="13"  maxlength=7 value="<%=topcolor%>"> ���� #B4B4FE��</td>
	      </tr>
          <tr>
	    <td  align=left height="21">��ӭ�ʣ�</td>
	    <td height="21" >
        <input type="text" name="adnote" size="50" maxlength=250  value="<%=adnote%>"> </td>
	      </tr>
          <tr>
	    <td  align=left height="40">�����ҽű�URL��</td>
	    <td height="40" ><input type="text" name="scripturl" size="50" maxlength=100 value="<%=scripturl%>"><br>
            <font color="#800000">����:</font><font color="#FF0000">&lt;SCRIPT src=http://xxx.xxx/xxx.js&gt;&lt;/SCRIPT&gt;</font> </td>
	      </tr>
          <tr>
	    <td  align=left height="21">�뿪��URL��</td>
	    <td height="21" ><input type="text" name="leaveurl" size="50" maxlength=50 value="<%=leaveurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=left height="21">��Ա��תURL<font color=blue>**</font>��</td>
	    <td height="21" ><input type="text" name="fullurl" size="50" maxlength=50 value="<%=fullurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left height="38">����Ȩ�û���¼��תURL<font color=blue>**</font>��</td>
	    <td height="38" ><input type="text" name="unauthurl" size="50" maxlength=50 value="<%=unauthurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt" height="20">�Ƿ��־����Ա<font color=blue>**</font>��</td>
	    <td width="450" style="font-family: ����; font-size: 9pt" height="20" >��<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %> > ��<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >������Ա���ֺ����Ƿ�Ӻ��ǣ�<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt" height="20">�Ƿ�����ͼ��<font color=blue>**</font>��</td>
	    <td width="450" style="font-family: ����; font-size: 9pt" height="20" >��<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > ��<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %>  >���Ƿ�����������������ͼ����<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt" height="20">�Ƿ��������<font color=blue>**</font>��</td>
	    <td width="450" style="font-family: ����; font-size: 9pt" height="20" >��<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > ��<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> >���Ƿ��������ִ�й��Ź��ܣ�<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt" height="20">�Ƿ������Ա�<font color=blue>**</font>��</td>
	    <td width="450" style="font-family: ����; font-size: 9pt" height="20" >��<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> > ��<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >�����������Ƿ���ʾ��Ϊ��ɫ��ŮΪ��ɫ������Ϊ��ɫ��<font color=green>**</font></td>
	      </tr>

          <tr>
	    <td  align=left width="573" style="font-family: ����; font-size: 9pt" colspan="2" height="57">
        1��<font color=red>**</font> ��־�����ʾ������д�<br>
	    2��<font color=blue>**</font> ��־�����ʾ����иĶ�����Ҫ���������ҽ��̲�����Ч��<br>
	    3��<font color=green>**</font> ��־��ʾ�˿ڵķ�0ID�ŵ����ò������޸ĵ��� </td>
	      </tr>

          <tr>
            <td width="592" height="37" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>

<% elseif xz="gexing" and session("roomport_" & rmport)<>"" then %>




<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ���</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form3" method="post" action="adminroom.asp">
      <input type=hidden name=xz value="xg">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <b>
          
          <font color="#FF0000"><a href="adminroom.asp?roomport=<%=rmport%>&xz=form">��������</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">��������</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">�����Ա</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">�Զ���JS�ű�</a> 
          <a href="#2">�Զ���ģ��༭</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">�޸�����</a>&nbsp; <a href="#1">��վ����</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">��������������</a></font></b></td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="191">
          <tr>
            <td width="586" bgcolor="#800080" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] ��������</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
          <tr>
	    <td width="127" align=left height="1">�˿ںţ�</td>
	    <td width="455" height="1"> <%=port%></td>
	      </tr>
          <tr>
          
            <td width="127" height="1" align="right" bgcolor="#F9F9F7">
            <p align="left">���������ͣ�</td>
            <td width="455" height="1" bgcolor="#F9F9F7"> 
        
<select size="1" name="RoomType">
<%
i=1
do while (i<Chatfls) %>
<option value="<%=i%>" <%if RoomType=i then response.write "selected"%>><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
        </select> </td>
            </tr>
          <tr>
	    <td  align=left height="9" width="127">����������ѡ��</td>
	    <td height="9" width="455" >
	    
<SELECT name=ID2>
<option selected value="��ѡ��">��ѡ��</option>
<%
sql="select * from D_2 where id1=1 order by id2 asc"
set rsm=conn.execute (sql)
%>
<%
do while not (rsm.eof or err)
%> 
<option value="<%=rsm("id2")%>" <%if rsm("id2")=id2 then response.write "selected"%>><%=rsm("name2")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
</SELECT> 

 </td>
	      </tr>
          <tr>
	    <td  align=left height="6" width="127">�Ƿ�����ڹ����б�</td>
	    <td height="6" width="455" > 
        
<select size="1" name="liebiao">

<option value="0" <%if liebiao=0 then response.write "selected"%>>��</option>
<option value="1" <%if liebiao=1 then response.write "selected"%>>��</option>
        </select></td>
	      </tr>
          <tr>
	    <td  align=left height="7" width="127">ģ��ѡ��</td>
	    <td height="7" width="455" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>Ĭ��ģ��</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>�Զ���ģ��</option>

        </select></td>
	      </tr>
          <tr>
	    <td  align=left height="88" width="127">��֤��Ա��</td>
	    <td height="88" width="455" ><textarea rows="8" name="vip" cols="50"><%=vip%></textarea></td>
	      </tr>

          <tr>
            <td width="586" height="42" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <p align="left">����֤��Ա��Ϊ�յ�ʱ��ֻ����֤��Ա���ܽ��뱾�����ҡ���֤��Ա|�ָ�ÿ�����ֺ�����һ��|���ţ����ӣ� 
            *����|*����|����|&nbsp; 
            �ڱ��磺*����|&nbsp;&nbsp; ע��ע���Աǰ����Ǻ�*</td>
            </tr>

          <tr>
            <td width="586" height="57" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1"></td>
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>

<% elseif xz="admin" and session("roomport_" & rmport)<>"" then %>




<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ���</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form4" method="post" action="adminroom.asp">
      <input type=hidden name=xz value="adminxg">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <b>
          
          <font color="#FF0000"><a href="adminroom.asp?roomport=<%=rmport%>&xz=form">��������</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">��������</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">�����Ա</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">�Զ���JS�ű�</a> 
          <a href="#2">�Զ���ģ��༭</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">�޸�����</a>&nbsp; <a href="#1">��վ����</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">��������������</a></font></b></td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="130">
          <tr>
            <td width="586" bgcolor="#800080" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] </font></b>
            <font color="#FFFFFF"><b>���ù���Ա</b></font></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
          <tr>
	    <td width="103" align=left height="1">�˿ںţ�</td>
	    <td width="479" height="1"> <%=port%></td>
	      </tr>
          <tr>
	    <td  align=left height="9" width="103">���ù������Ա��</td>
	    <td height="9" width="479" ><textarea rows="8" name="admintor" cols="50"><%=admintor%></textarea> </td>
	      </tr>
          <tr>
	    <td  align=left height="53" width="103"></td>
	    <td height="53" width="479" >1.���ڹ���Ա�����ã�������������ͼ���֮����&quot;|&quot;�ָ�����: 
        admin|passwd|1 
        ÿ������һ�У�ע����治Ҫ���ո��������Ա����Ϊע����û�����Ҫ������ǰ������Ǻš�����0��ʾ��������Ȩ�ޣ�1��ʾ�������ֺ�IPȨ�ޣ�9��ʾ��1��Ȩ�޲��в����ߵ�Ȩ�ޡ�</td>
	      </tr>

          <tr>
            <td width="586" height="83" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>

<% elseif xz="pass" and session("roomport_" & rmport)<>"" then %>




<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ���</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form5" method="post" action="adminroom.asp">
      <input type=hidden name=xz value="xg">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <b>
          
          <font color="#FF0000"><a href="adminroom.asp?roomport=<%=rmport%>&xz=form">��������</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">��������</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">�����Ա</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">�Զ���JS�ű�</a> 
          <a href="#2">�Զ���ģ��༭</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">�޸�����</a>&nbsp; <a href="#1">��վ����</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">��������������</a></font></b><font color="#FF0000"><b>&nbsp; 
          </b></font>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="186">
          <tr>
            <td width="586" bgcolor="#800080" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] �޸�����</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
          <tr>
	    <td width="98" align=left height="1">�˿ںţ�</td>
	    <td width="484" height="1"> <%=port%></td>
	      </tr>
          <tr>
	    <td  align=left height="9" width="98">ԭ���룺</td>
	    <td height="9" width="484" >
        <input type="password" name="adminpasswd" size="18"  maxlength=15 value="<%=adminpasswd%>"></td>
	      </tr>
          <tr>
	    <td  align=left height="4" width="98">�����룺</td>
	    <td height="4" width="484" >
        <input type="password" name="password" size="18"  maxlength=15></td>
	      </tr>

          <tr>
	    <td  align=left height="19" width="98">������֤��</td>
	    <td height="19" width="484" >
        <input type="password" name="password1" size="18"  maxlength=15></td>
	      </tr>

          <tr>
	    <td  align=left height="24" width="582" colspan="2">
        <font color="#008000">�������벻�޸ľͲ�Ҫ��д</font>�� 
        ���һ������Ϊ�գ���ô�ù�����Ŀ��Ϊ��Ч��Ϊ�˰�ȫ����û�б�Ҫ������²�Ҫ�������롣ͬ��Ϊ�˰�ȫ������˸��������߸߹������Ը�������Щ���룬������صĹ�����Ҫ���������������ṩ�����ˡ�</td>
	      </tr>
          <tr>
	    <td  align=left height="7" width="98">�������룺</td>
	    <td height="7" width="484" >
        <input name="userpasswd1" size="18"  maxlength=15 value="<%=userpasswd1%>"></td>
	      </tr>
          <tr>
	    <td  align=left height="15" width="98">���ù���Ա���룺</td>
	    <td height="15" width="484" >
        <input type="text" name="userpasswd2" size="18"  maxlength=15 value="<%=userpasswd2%>"></td>
	      </tr>

          <tr>
            <td width="586" height="83" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>
<%
'������������
 elseif xz="start" and session("roomport_" & rmport)<>"" then 
%>



<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ���</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form7" method="post" action="adminroom.asp">
      <input type=hidden name=xz value="xg">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <b>
          
          <font color="#FF0000"><a href="adminroom.asp?roomport=<%=rmport%>&xz=form">��������</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">��������</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">�����Ա</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">�Զ���JS�ű�</a> 
          <a href="#2">�Զ���ģ��༭</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">�޸�����</a>&nbsp; <a href="#1">��վ����</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">��������������</a></font></b></td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="237">
          <tr>
            <td width="586" bgcolor="#800080" height="28"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] ��������</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="145" align="right" bgcolor="#F9F9F7">
            <p align="center">��
            �������������ɹ���
            
    <%
    if session("roomport_" & rmport)<>"" then

    urls="http://liaowan.com/cgi-bin/roomrestart.pl?roomid=0&port=" & session("roomport_" & rmport) & "&userroompasswd=" & userroompasswd
	'urls="http://lwmm:5/cgi-bin/roomrestart.pl?roomid=0&port=" & session("roomport_" & rmport) & "&userroompasswd=" & userroompasswd
	if InStr(GetURL(urls),"�ɹ����������ң�")=0 then 
	response.write "<script>alert('ϵͳ������������ͻ�����0351-6179283��Ӧ��');</script>"
	response.End
	else
	response.write "<script>alert('�����ɹ���');</script>"
	end if
	
	
    else
    
    response.write "<script>alert('�Ƿ�������');window.close();</script>"

    end if
    
    
    %>
            
            
            
            
            </td>
            </tr>

          <tr>
            <td width="586" height="83" align="center" bgcolor="#FFFFFF">
            

            ��</td>
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>
<%
'�޸�JS�ű�
 elseif xz="js" and session("roomport_" & rmport)<>"" then 


%>



<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ���</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form8" method="post" action="adminroom.asp">
      <input type=hidden name=xz value="jsxg">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <b>
          
          <font color="#FF0000"><a href="adminroom.asp?roomport=<%=rmport%>&xz=form">��������</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">��������</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">�����Ա</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">�Զ���JS�ű�</a> 
          <a href="#2">�Զ���ģ��༭</a>&nbsp;
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">�޸�����</a>&nbsp; <a href="#1">��վ����</a>&nbsp; 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">��������������</a></font></b></td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="599" id="AutoNumber2" height="237">
          <tr>
            <td width="593" bgcolor="#800080" height="28"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] �޸ķ����Զ���JS���ýű�</font></b></td>
          </tr>

          <tr>
          
            <td width="593" height="21" align="right" bgcolor="#F9F9F7" valign="top">
            <p align="center">�������ýű����ʵ�ַ 
            <a target="_blank" href="http://liaowan.com/chatjs/<%=port%>.js">http://liaowan.com/chatjs/<%=port%>.js</a>&nbsp; 
            ������޸ĺ͵��� Ҳ���Բ�ʹ�ã�<br>
            �ڻ�������-�����ҽű�URL-��д <font color="#FF0000">&lt;SCRIPT src=http://liaowan.com/chatjs/<%=port%>.js&gt;&lt;/SCRIPT&gt;</font><b>
            </b>�Ϳ�ʹ��<br>
��</td>
            </tr>

          <tr>
          
            <td width="593" height="114" align="center" bgcolor="#F9F9F7" valign="top">
            
<%  On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	psths = server.mappath("/chatjs")
	Set f = fso.OpenTextFile(psths & "\" & port & ".js", ForReading)
	inilines=f.ReadAll()
	
	if inilines="" then inilines="��������д���ݣ�����վ����Ա����õ�JS�ű�ģ�壬�ٸ����Լ�ϲ���޸ģ����ļ����ݸ��Ƶ�����Ȼ��ȷ���޸ľͿ���ʹ���ˣ�"
	
 %>
            
<textarea rows="25" name="jstxt" cols="75"><%=inilines%></textarea><br>
            

            <input type="submit" value=" ȷ���޸� " name="B1"></td>
            </tr>

          <tr>
            <td width="593" height="83" align="center" bgcolor="#FFFFFF">
            

            ��</td>
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>



<% else %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="88">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ����½</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="23" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="282" id="AutoNumber2" height="89">
        <tr>
          <td width="278" height="26" colspan="3">
          
          <b><font color="#FF0000"><%=m%></font></b>
          </td>
        </tr>
        <tr>
          <td width="225" height="29" align="center" colspan="2">��</td>
          <td width="61" height="63" rowspan="6"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="221" height="15" colspan="2" align="center">��д[<font color="#FF0000">��������</font>]��½��</td>
          </tr>
           <form name="form1" method="post" action="adminroom.asp">
        <tr>
          <td width="68" height="40" rowspan="2">
          <img border="0" src="img/Hopelove.gif"></td>
          <td width="153" height="18">&nbsp;�����˺�:<input maxLength="15" size="12" name="roomport" class=put></td>
          </tr>
        <tr>
          <td width="153" height="22">&nbsp;��������:<input type="password" maxLength="16" size="12" value name="password" class=put ></td>
          </tr>
        <tr>
          <td width="225" height="30" colspan="2" align="center">
     <input type="image" maxLength="10" size="12" name="password" class=put src="../images/b1.gif" ></td>
          </tr>
        <tr>
          <td width="225" height="70" valign="top" colspan="2">��</td>
          </tr>
          </form>
        </table>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>

    
<% end if %>


<% 
call di 
%>

<%
'ģ�鲿��
'���ݶ���
sub shujv()

	sql="select * from [Room] where port=" & trim(session("roomport_" & rmport))
	set rs = conn.Execute(sql)
	
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
		admin = rs("admin")
		RoomType = rs("RoomType")
		liebiao = rs("liebiao")
		id2 = rs("id2")
		userroompasswd=rs("adminpasswd")
		vip = rs("vip")
		muban=rs("muban")
		rs.close

end sub




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





'��������

sub edit()

	'����ģ���ļ�
	Dim fso
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set f = fso.OpenTextFile(moduledir & "\module_port.ini", ForReading)
	inilines=f.ReadAll()
	f.close()
	
	
	'���ɶ˿������ļ�Ŀ¼
	On Error Resume Next
	dim roomportdir
		roomportdir=roomcfgdir & "\" & port

	if Not fso.FolderExists(roomportdir) then
		if Not fso.CreateFolder(roomportdir) then
			'errstr("�Բ��𣬴����˿�Ŀ¼����!")
			'Response.End
		end if
	end if
	
	'��module_port.ini�ı����ִ��滻��д�˿�.ini�ļ�
		inilines=replace(inilines,"$$title", roomname)
		inilines=replace(inilines,"$$maxnum", maxnum)
		inilines=replace(inilines,"$$port", port)
		inilines=replace(inilines,"$$setadm", setadm)
		inilines=replace(inilines,"$$setimg", setimg)
		inilines=replace(inilines,"$$setdoor", setdoor)
		inilines=replace(inilines,"$$setsex", setsex)
		inilines=replace(inilines,"$$unauthurl", unauthurl)
		inilines=replace(inilines,"$$fullurl", fullurl)
		inilines=replace(inilines,"$$hostip", bindhost)
		inilines=replace(inilines,"$$keyfile", keyfile)
		inilines=replace(inilines,"$$serialno", bindserial)
		inilines=replace(inilines,"$$chatserver", dsnname)
	   'inilines=replace(inilines,"$$", )

	'д��
	Set ts = fso.OpenTextFile(roomportdir & "\" & port & ".ini", ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	'��top.htm��ģ���ļ� module_top.html
	Set f = fso.OpenTextFile(moduledir & "\module_top.htm", ForReading)
	inilines=f.ReadAll()
	f.Close()

	inilines=replace(inilines,"$$topcolor", topcolor)
	
	if rtype = "A" then
	inilines=replace(inilines,"$$frameset", "*,0,0,120")
	elseif rtype = "V" then
	inilines=replace(inilines,"$$frameset", "*,0,94,120")
	else
	inilines=replace(inilines,"$$frameset", "*,0,0,0")
	end if

	Set ts = fso.OpenTextFile(roomportdir & "\top.htm", ForWriting, true)
	ts.Write(inilines)
	ts.Close()


	'��body.htm��ģ���ļ� module_body.html
	Set f = fso.OpenTextFile(moduledir & "\module_body.htm", ForReading)
	inilines=f.ReadAll()
	f.Close()

	'��module_body.html�ı����ִ��滻��дbody.htm�ļ�
	inilines=replace(inilines,"$$bodycolor", bodycolor)
	inilines=replace(inilines,"$$bodyurl", bodyurl)
	inilines=replace(inilines,"$$adnote", adnote)
	
	Set ts = fso.OpenTextFile(roomportdir & "\body.htm",ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	
	'��bottom.htm��ģ���ļ� module_bottom.html
	Set f = fso.OpenTextFile(moduledir & "\module_bottom.htm", ForReading)
	inilines=f.ReadAll()
	f.Close()

	'��module_bottom.html�ı����ִ��滻��дbottom.htm�ļ�


	'inilines=replace(inilines,"$$", )
	inilines=replace(inilines,"$$bottomcolor", bottomcolor)
	inilines=replace(inilines,"$$bottomurl", bottomurl)
	inilines=replace(inilines,"$$leaveurl", leaveurl)
	inilines=replace(inilines,"$$scripturl", scripturl)
	inilines=replace(inilines,"$$channels", scripturl)
	
	
	if rtype="V" then 
		showvideobutton="<input type=SUBMIT value='��Ƶ����' name='VREQ'>"
	else
		showvideobutton=""
	end if
	inilines=replace(inilines,"$$showvideobutton", showvideobutton)


	Set ts = fso.OpenTextFile(roomportdir & "\bottom.htm",ForWriting, true)
	ts.Write(inilines)
	ts.Close()
	
	sql="select * from chatadmin"
	set rsm=conn.execute (sql)
	admintor = rsm("chatadmin") & vbCrLf & admintor
	rsm.close

	'дadminpass_�˿�.txt�ļ�
	Set ts = fso.OpenTextFile(roomportdir & "\adminpass_" & port & ".txt", ForWriting, true)
	ts.Write(admintor)
	ts.Close()

end sub

%>