<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="../vip/checkuser.asp" -->
<!--#include file="../vip/top.asp"-->
<!--#include file="../vip/shop_inc.asp"-->
<%
if InStr(Request.ServerVariables("HTTP_REFERER"), ".com/vip/shop_bchat.asp")=0 then Call errstr("�����ȷ����ַ����ע�ᣡ\n"&Request.ServerVariables("HTTP_REFERER"))
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=�Ƿ�������"
		response.end
	end if
end if

renshu=request("renshu")
shipin=request("shipin")
liti=request("liti")

if renshu="" or shipin="" or liti="" then Call errstr("�Ƿ���������")
if InStr(Request.ServerVariables("HTTP_REFERER"), ".com/vip/shop_bchat.asp")=0 then Call errstr("�����ȷ����ַ����ע�ᣡ\n"&Request.ServerVariables("HTTP_REFERER"))

jiage=renshu*6

if shipin=1 then jiage=jiage+renshu*3
if liti=1 then jiage=jiage+renshu*1


%>


<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
<SCRIPT language=javascript>
<!--
//���뿪ʼ �ű���ƣ�����Ƽ�

function tians() // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	login.jiage.value=login.times.value*<%=jiage%>;
}
//-->
</SCRIPT>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>��������-�����������</TITLE>

<% call top %>
<base target="_blank">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="478" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="478">
          <img border="0" src="../vip/img/Main_01.gif"><font class="titletext" color="#ff0000"><b>��ӭ [ <%=UN%> 
          ] ����</b>[��������������]<b>-����������� </b>
          ��������ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="478"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="30" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="322">

     <% call caiwu %>

 <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="338">
          <tr>
            <td width="592" bgcolor="#800080" height="30"><b>
            <font color="#FFFFFF">��<a name="cp">���׽��</a>��</font></b></td>
          </tr>

     <tr>
            <td width="592" height="285" align="center" bgcolor="#FFFFFF" valign="top">
            
                    

  <table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0">
	<tr>
		<td>��</td>
	</tr>
	<tr>
		<td>��</td>
	</tr>
	<tr>
		<td>��</td>
	</tr>
	<tr>
		<td height="23">��</td>
	</tr>
	<tr>
		<td height="66">��</td>
	</tr>
	<tr>
		<td>��</td>
	</tr>
	</table>
 
            
            
            
            
            
            </td>
     </tr>
        	<tr>
            <td width="592" height="21" align="center" bgcolor="#FFFFFF">
            ��</td>
     		</tr>
        </table>
        </center>
      </div>
          
      </td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="87%"></td>
        </tr>
    <tr>
      <td width="87%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>



<%call endpage()
%>