
<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--���ݿ������ļ�#include file="../inc/BBTOP.asp" -->
<!--�������ݿ��ļ�#include file="../INC/Chatfl.asp" -->
<%
'�������
'On Error Resume Next
dim port,roomname,maxnum,userpasswrd,userroompasswd,id2

	rmport=request("roomport")
	xz=Request("xz")

	admintor = Request("admintor")


'��½��֤
if Request("roomport")<>"" and Request("passwordo")<>""  then

	sql="select * from [Room] where port=" & trim(request("roomport")) & " and userpasswd2='" & replace(trim(request("passwordo")),"'","''") & "'"
	set rs = conn.Execute(sql)
	
	if not (rs.eof or err) then
		session("roomportpz_" & rmport)=request("roomport")
		xz="admin"	
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


'���ù���Ա
if xz="adminxg" and session("roomportpz_" & rmport)= rmport  then


	sql="select * from [Room] where port=" &session("roomportpz_" & rmport)
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
       rs("admintor") =admintor

       rs.Update
       rs.close
	   xz="admin"
	   
	   
	sql="select * from chatadmin"
	set rsm=conn.execute (sql)
	admintor = rsm("chatadmin") & vbCrLf & admintor
	rsm.close
	   
	'дadminpass_�˿�.txt�ļ�
	letian=roomcfgdir & "\" &session("roomportpz_" & rmport) & "\adminpass_" &session("roomportpz_" & rmport) & ".txt"
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

%>

<%
'��������
if session("roomportpz_" & rmport)= rmport and rmport<>"" then

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


<% if xz="admin" and session("roomportpz_" & rmport)= rmport then %>




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
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ�[���ù���Ա]</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form4" method="post" action="addadmin.asp">
      <input type=hidden name=xz value="adminxg"> <input type=hidden name=roomport value="<%=port%>">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="22">
        <tr>
          <td width="100%" height="22" colspan="2">
          
          ��</td>
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
          <td width="221" height="15" colspan="2" align="center">��д[<font color="#FF0000">���ù���Ա</font>]��½��</td>
          </tr>
           <form name="form1" method="post" action="addadmin.asp">
        <tr>
          <td width="68" height="40" rowspan="2">
          <img border="0" src="img/Hopelove.gif"></td>
          <td width="153" height="18">&nbsp;�����˺�:<input maxLength="15" size="12" name="roomport" class=put></td>
          </tr>
        <tr>
          <td width="153" height="22">&nbsp;��������:<input type="password" maxLength="16" size="12" value name="passwordo" class=put ></td>
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

	sql="select * from [Room] where port=" & trim(session("roomportpz_" & rmport))
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
		userpasswd1=rs("userpasswd1")
		userpasswd2=rs("userpasswd2")
		rs.close

end sub

%>