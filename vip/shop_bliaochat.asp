<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<!--#include file="shop_inc.asp"-->
<%
    ff=Request("ff")
	roomname = Request("roomname")
	userpasswd = Request("password")
	userpasswd2 = Request("password2")
	
	max = Request("max")
	loginw = Request("loginw")
	logins = Request("logins")
	rtype=Request("rtype")
	question=HTMLEncode(Request("question"))
	answer=HTMLEncode(Request("answer"))
	

	newroomid=0


Call OpenChatconn

if roomname<>"" then

	

  if roomname="" or userpasswd="" or max="" or loginw="" or rtype="" or question="" or answer="" then errstr("����д������")



chatstr=GetURL("http://"& loginw &".bliao.com")

if InStr(chatstr, "�������Ҳ�����")>0 then errstr("����д�ı��ķ�����Ų���ȷ\n�ñ��ķ��䲻���ڣ���\n�������ͨ��������ڱ���ӵ���Լ��Ĺ̶�����")

s1=InStr(chatstr, "form1.action=""")+14
if s1>100 then
s2=InStr(s1,chatstr, """")-s1
logins=mid(chatstr,s1,s2)
else
logins=""
end if 

if logins="" then errstr("����д�ı��ķ�����Ų���ȷ\n�ñ��ķ��䲻���ڣ���\n�������ͨ��������ڱ���ӵ���Լ��Ĺ̶�����")

if InStr(logins, ".cgi")>0 then
if loginw<100000 then  errstr("�������ͨ��������ڱ���ӵ���Լ��Ĺ̶�����!")
end if
  
   if userpasswd<>userpasswd2 then errstr("�����������벻��ͬ����")

   newType = Cint(Request("newType"))

  ' �õ���ID���� 5000 - 8000 ֮��
  i= 5000
  do while (i<8000)
  	i=i+1
  	set rsr=chatconn.Execute("SELECT id FROM [Web] where id=" & i)
    if  rsr.eof or err then
    newroomid=i
    i=8000
    end if
  loop
  rsr.close
  
  '����ÿ���ʺ��������3��
   SQLC = "select ID from [web] where adminid=" & uid
   rsr.Open SQLC, chatconn, 1, 1
   If Not (rsr.EOF Or Err) Then
   if rsr.RecordCount=3 then errstr("һ���û����Ӧ������3�Σ���")
   end if
   rsr.close

  
	if CheckHtml(roomname) then errstr("���������зǷ��ַ���")

  
	if newroomid=8000 then errstr("���������Ѿ�����������ϵ����Ա���������")

	sql="SELECT * from [Web] where loginw='"& loginw &"'"
	rs.open sql,chatconn,1,3
	if not(rs.eof or err) then errstr("������ı��������ң�\n�ڴ�֮ǰ�Ѿ������룡\n�����������������!\n���������������Ա��ϵ\n���ߣ���ȡ�������ң�")

       rs.addnew
       rs("cid") = newroomid
       rs("id") = newroomid
       
       rs("newday") = date()
       rs("date") = date()
       
       rs("chatxy") = "��ӭ����" & Roomname & " - ����������Ƶ�����ң����鹵ͨ�����￪ʼ��"
       rs("webbg") = "http://liaowan.com/images/newbg.jpg"
       
       rs("ff") = ff
       rs("Roomname") = Roomname
       rs("max") = max
       rs("adminid") = uid
       rs("admin") = name
       
       rs("adminpasswd") = userpasswd 

       rs("rtype") = rtype
       rs("logins") = logins
       rs("loginw") = loginw
       
       rs("newType") = newType
       
       rs("question") = question
       rs("answer") = answer

       rs.Update
       rs.close

	sql="SELECT * FROM [CW_CP]"
	rs.open sql,conn,1,3
	
       rs.addnew
       rs("uid") = uid
       rs("name") = name
       
       
       rs("djname") = "����ͨ"
       
       rs("vid") = newroomid
       rs("n") = 980
       
	   rs("zt") = 1      
       rs("ktimes") = date()
       rs("dtimes") = DateSerial(year(date), month(date)+2, day(date))
       rs.Update
       rs.close
	
	

	   wenti("����ɹ���")
	   
end if


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'������
'XML��ҳ���ʺ���

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


Function GetURL(url)
	On Error Resume Next
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

<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>���������ҹҽ� - �����������</TITLE>

<% call top %>

<% if newroomid>0 then %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="542" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="542">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>��ӭ [ <%=UN%> 
          ] ����</b>[���ķ���ҽ��ײ�ϵͳ]<b>-����������� </b>
          ��������ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="542"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="3" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="1001" valign="top">
      
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="186">
          <tr>
            <td width="592" bgcolor="#800080" height="31">
            <font color="#FFFFFF"><b>
            ����ϲ�� ����ɹ�</b></font></td>
          </tr>


			<tr>
            <td width="592" height="153" bgcolor="#FFFFFF">
            <p align="center">��ϲ������ɹ���<br>
			�������ҵ���ַ <a href="http://<%=newroomid%>.liaowan.com" target="_blank">
			<font color="#FF0000">http://<%=newroomid%>.liaowan.com</font></a><br>
			�����Һ�̨�����½<a target="_blank" href="http://liaowan.com/admin"><font color="#0000FF">http://liaowan.com/admin</font></a>&nbsp; 
			����ҳҲ�к��������<br>
			���ϵ�½��̨����ʼ���������λ��ó̰ɣ�[<font color="#008000">������Ĭ�Ϲ����û�����<b>admin </b>
			</font>�����������д�Ĺ�������]</td>
     		</tr>
        	
        </table>
        </center>
      </div>
      
      <% else %>
      ��<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="322">
      
 <br>
      
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="198">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8">
            <font color="#FFFFFF"><b>
            ������ͨϵͳ����</b></font></td>
          </tr>


        	<tr>
<td align="middle" bgColor="#D4D0C8" width="66" height="26">
							<b>�ײ�����</b></td>
							<td align="middle" bgColor="#D4D0C8" width="64" height="26">
							<b>��վ</b></td>
							<td align="middle" bgColor="#D4D0C8" width="74" height="26">
							<b>���</b></td>
							<td align="middle" bgColor="#D4D0C8" width="79" height="26">
							<b>����ϵͳ</b></td>
							<td align="middle" bgColor="#D4D0C8" width="79" height="26">
							<b>����ϵͳ</b></td>
							<td align="middle" bgColor="#D4D0C8" width="72" height="26">
							<b>��̳����</b></td>
							<td align="middle" bgColor="#D4D0C8" width="71" height="26">
							<b>�ű��ռ�</b></td>
							<td align="middle" bgColor="#D4D0C8" width="53" height="26">
							<b>�ܼ�</b></td>
						</tr>



						<tr>
							<td align="middle" width="66" height="26" bgcolor="#FFFFFF">
							�ײ�һ<font color="#FF0000">+��</font></td>
							<td align="middle" width="64" height="26" bgcolor="#FFFFFF">
							<font color="#000080">100Ԫ</font> </td>
							<td align="middle" width="74" height="26" bgcolor="#FFFFFF">
							<font color="#000080">260Ԫ</font><font color="#008000">[100P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">160Ԫ</font><font color="#008000">[300P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">80Ԫ</font><font color="#008000">[200P]</font></td>
							<td align="middle" width="72" height="26" bgcolor="#FFFFFF">
							<font color="#000080">360Ԫ</font><font color="#008000">[8BC]</font></td>
							<td align="middle" width="71" height="26" bgcolor="#FFFFFF">
							<font color="#000080">60Ԫ</font><font color="#008000">[2P]</font></td>
							<td align="middle" width="53" height="26" bgcolor="#FFFFFF">
							<font color="#FF0000">980Ԫ</font></td>
						</tr>


			<tr>
            <td width="592" height="66" colspan="8" bgcolor="#FFFFFF">
            &nbsp;&nbsp; ˵��<font color="#008000">��[����] P</font>Ϊ������ 
					��Ƭ���������ż�¼������������԰��¼�������ű��ռ�ĸ�����<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#008000">B</font>Ϊ��̳������������<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<font color="#008000">C</font>Ϊ����Ƶ���ֲ�<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#008000">1D</font>�ǰ�һ��.net ��.com�Ĺ�������һ����<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
					<font color="#008000">MF</font>��FTP����Ŀռ�����Ϊ�׵�λ��<font color="#008000">50MF</font>=50M 
					FTP�ռ�</td>
     		</tr>
        	<tr>
            <td width="592" height="24" colspan="8" bgcolor="#FFFFFF">

            <font color="#FF0000"><b>������������£�</b>����������ܵ�80�����ϵ�ƽ�������ʣ���������������ṩ���㡣</font></td>
     		</tr>

        </table>
        </center>
      </div>
      <br>

           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="198">
          <tr>
            <td width="592" bgcolor="#800080" height="24">
            <font color="#FFFFFF"><b>
            �����<a name="buzhou">����[����ͨ]���� </a></b></font></td>
          </tr>


			<tr>
            <td width="592" height="118" bgcolor="#FFFFFF" valign="top">
            <table cellSpacing="2" cellPadding="5" width="100%" align="center" border="0" id="table4">
						<tr>
							<td class="cn">
							<table cellSpacing="4" cellPadding="0" width="98%" align="right" border="0" id="table5">
								<tr>
									<td vAlign="top" width="4%" rowspan="5">
									<font color="#008000"><b>����Э��</b></font></td>
									<td class="cn" width="93%">
									1.Ϊ��֤�����û������棬��������������ӱ�Э�飡�������ǽ��ܾ�Ϊ���ṩ����</td>
								</tr>
								<tr>
									<td class="cn">
									2.��Ҫ��֤��������ҽӵ������ҵĺϷ�ӵ���ˣ��������ǽ���Ȩ�ջط����ת���Ϸ�ӵ���ˡ�</td>
								</tr>
								<tr>
									<td class="cn">3.���������Ҳ��ܴ��·���������ɫ�顢�����Υ���Ļ��</td>
								</tr>
								<tr>
									<td class="cn">
									4.���������Ҳ�����ɫ���赸��������װ��׼��©����׼��Ħ���в�λ��</td>
								</tr>
								<tr>
									<td class="cn">5.��������Э����Ϳ��Կ�ʼ�����ˡ�</td>
								</tr>
							</table>
            			</tr>
					</table>
            
            </td>
     		</tr>
        	<tr>
            <td width="592" height="88" bgcolor="#FFFFFF" valign="top" align="center">
            <div align=center>
  <FORM action="shop_bliaochat.asp" method="POST" name="roomedit">
  <TABLE border="0" width="100%" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111" height="246">

        <tr>
        <TD height="26" width="103" align="right"> ����������:&nbsp;
        </TD>
        <TD height="26" width="483"> 
            
          <INPUT type="text" name="RoomName" maxlength="7" size="20" value="<%=RoomName%>">
        	��֤ͬ���������������ͬ</TD>
      </tr>
<tr>
        <TD height="26" width="103" align="right"> ����������:</TD>
        <TD height="26" width="483"> <select size="1" name="ff">
		<option value="2" <%if ff=3 then response.write " selected"%>>����</option>
		</select></TD>
</tr>
<tr>
        <TD height="26" width="103" align="right"> ��������:</TD>
        <TD height="26" width="483"> <select size="1" name="rtype">
		<option value="0" <%if rtype=0 then response.write " selected"%>>��Ƶ</option>
		<option value="1" <%if rtype=1 then response.write " selected"%>>����</option>
		<option value="2" <%if rtype=2 then response.write " selected"%>>����</option>
		</select></TD>
</tr>
		<tr>
	    <td width="103" align=right height="26">���Է���:</td>
	    <td width="455" height="26">  
        
<select size="1" name="newType">

<option value="1">����</option>
<option value="2">���</option>
<option value="3">���</option>

</select>&nbsp;
<img border="0" src="../PIC/IMG/s01.gif" width="15" height="13">���� 
<img border="0" src="../PIC/IMG/s12.gif" width="15" height="13">��� 
<img border="0" src="../PIC/IMG/s23.gif" width="15" height="13">���</td>
	      </tr>
<tr>
        <TD height="20" width="103" align="right"> ����������ID:</TD>
        <TD height="20" width="483"> 
		<input type="text" name="loginw" maxlength="10" size="17"> 
		<b><font color="#008000">Ҳ�б��ķ������</font></b> �� 234123 �� t4018 ��Ҫд���������Ҫ��</TD>
</tr>
<tr>
        <TD height="26" width="103" align="right"> ϵͳ��������:</TD>
        <TD height="26" width="483"> 
		<INPUT type="password" name="password" maxlength="20" size="20"> 
		������ϵͳ����������롣[<font color="#FF0000">�����ڱ��ķ����������</font>]</TD>
      </tr>
		<tr>
        <TD height="26" width="103" align="right"> �ٴ���������:</TD>
        <TD height="26" width="483"> 
		<INPUT type="password" name="password2" maxlength="20" size="20"> 
		��֤����������ͬ</TD>
      	</tr>
		<tr>
        <TD height="26" width="103" align="right"> ������ʾ����:</TD>
        <TD height="26" width="483"> 
		<input name="question" size="18"> 
		�һ�����ʱʹ��</TD>
      	</tr>
		<tr>
        <TD height="26" width="103" align="right"> ������ʾ��:</TD>
        <TD height="26" width="483"> 
		<input name="answer" size="18"></TD>
      	</tr>
<TR>
        <TD height="26" width="103" align="right"> ��������:&nbsp;
        </TD>
        <TD height="26" width="483"> 
		<input type="text" name="max" maxlength="3" size="9" value="<%=max%>"> 
		�������&nbsp; Ҫ��ʵ����ͬŶ</TD>
      </TR>
 <TR><TD align="center" height="21" width="652" colspan="2">
<INPUT type="submit" value="ȷ��" name=submit1>
        </TD>
      </TR>
</TABLE>
</form>
</div>
��
            
            </td>
     		</tr>
        	<tr>
            <td width="592" height="24" bgcolor="#FFFFFF">

            				����ɹ���ɹ����������ҹ���������й��������Լ��ķ��񣡣���</td>
     		</tr>

        </table>
        </center>
      </div>
<% end if %>
     
      </td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="87%"></td>
        </tr>
    <tr>
      <td width="87%" height="18">��</td>
    </tr>
  </table>
  </center>
</div>
<%call endpage()
%>