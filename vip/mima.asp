<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
<!--#include file="top.asp"-->

<%

if Request("passwd")<>"" or Request("answer")<>"" then

if Request("passwd")<>"" then
		if Request("passwd1") <> Request("passwd2") then Call  errstr("�������������벻��ͬ��")
		if len(Request("passwd1"))<4 then Call  errstr("��������5λ��")
end if

	sql="select name,passwd,question,answer from [User] where name='"& UN &"'"
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
	   if rs("passwd")<>replace(trim(request("passwd")),"'","''") and replace(trim(request("passwd")),"'","''")<>""  then Call errstr("�������������")
	
       if Request("passwd")<>"" then rs("passwd") = Request("passwd2")
       rs("question") = Request("question")
       if Request("answer")<>"" then rs("answer") = Request("answer")
       rs.Update
       rs.close
    
   
if Request("passwd")<>"" then

Call OpenBChatConn()
Call OpenMeChatConn()
Bchatconn.execute("update [User] set Passwd='"& replace(trim(request("passwd")),"'","''") &"' where name='"& UN &"'")
Mechatconn.execute("update [userInfo] set Password='"& replace(trim(request("passwd")),"'","''") &"' where UserName='"& UN &"'")

Response.Cookies("userpass")=replace(trim(request("passwd")),"'","''") & asc (replace(trim(request("passwd")),"'","''"))
end if
 %>
 			<script language=Javascript>
				alert("���������޸ĳɹ�!!");
				//window.close();	
			</script>
      
<% else %>

			<script language=Javascript>
				alert("�Ƿ�����!");	
				window.history.go(-1);
			</script>
<%	
	end if
end if
%>
          
<title>���������޸� - ���� ��Ƶ���� �������� �������� LiaoWan.Com</title>
<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
          
<%
if UN<>""then
	sql="select question from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=�Ƿ�������"
		response.end
	end if
	'UID=rs("uid")
end if
%>
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�û��������ĵ�½</TITLE>

<% call top %>


<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="393" id="AutoNumber1" height="403">
    <tr>
      <td width="80%" height="19"></td>
    </tr>
    <tr>
      <td width="80%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="393" border="0" style="border-collapse: collapse" bordercolor="#111111" height="88">
        <tr>
          <td align="left" height="64" width="393">
          <img border="0" src="img/Main_01.gif"><font color="#FF0000"><b>�����޸�</b></font> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="393"></td>
        </tr>
        
        <tr>
          <td height="23" width="393">
          <p align="center"></td>
        </tr>
        
      </table>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="340" id="AutoNumber2" height="66">
        <tr>
          <td width="340" height="26" colspan="4">

          </td>
        </tr>
        <tr>
          <td width="336" height="1" align="center" colspan="3"></td>
          <td width="4" height="40" rowspan="11">��</td>
        </tr>
        <tr>
          <td width="336" height="15" colspan="3" align="center"></td>
          </tr>
           <form name="form1" method="post" action="mima.asp">
        <tr>
          <td width="68" height="168" rowspan="7">
          <img border="0" src="img/Hopelove.gif"></td>
          <td width="139" height="25" align="right">&nbsp;������:</td>
          <td width="130" height="25">
			<input maxLength="10" size="17" name="passwd" class=put type="password"></td>
          </tr>
        <tr>
          <td width="139" height="25" align="right">&nbsp;�����루4λ���ϣ�:</td>
          <td width="130" height="25">
			<input type="password" maxLength="10" size="17" value name="passwd1" class=put ></td>
          </tr>
        <tr>
          <td width="139" height="16" align="right">&nbsp;����һ��������:��</td>
          <td width="130" height="16">
			<input type="password" maxLength="10" size="17" value name="passwd2" class=put ></td>
          </tr>
        <tr>
          <td width="139" height="28" align="right"></td>
          <td width="130" height="28">
			<font color="#FF0000">*���޸������붼����</font></td>
          </tr>
        <tr>
          <td width="139" height="31" align="right">������ʾ����:</td>
          <td width="130" height="31">
			<input maxLength="10" size="17" value="<%=rs("question")%>" name="question" class=put ></td>
          </tr>
		<tr>
          <td width="139" height="25" align="right">������ʾ��:</td>
          <td width="130" height="25">
			<input maxLength="10" size="17" value name="answer" class=put ></td>
          </tr>
		<tr>
          <td width="139" height="15" align="right"></td>
          <td width="130" height="15">
			<font color="#FF0000">*���޸Ĵ�������</font></td>
          </tr>
        <tr>
          <td width="336" height="123" colspan="3" align="center">
     <input type="submit" value="���޸ġ�" name="B1"></td>
          </tr>
        <tr>
          <td width="336" height="70" valign="top" colspan="3">��</td>
          </tr>
          </form>
        </table>
      </td>
    </tr>
    <tr>
      <td width="80%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="80%"></td>
        </tr>
    <tr>
      <td width="80%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>

    
    <p>
          </p>


<%call endpage()
%>