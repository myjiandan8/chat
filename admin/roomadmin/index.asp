<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--���ݿ������ļ�#include file="../inc/BBTOP.asp" -->
<%
m=Request("m")
xz=Request("xz")

if request("roomport")<>"" and request("password")<>""  then

rmport=request("roomport")

if xz=1 then
	sql="select * from [Room] where port=" & trim(request("roomport")) & " and adminpasswd='" & replace(trim(request("password")),"'","''") & "'"
	
elseif xz=2 then
	sql="select * from [Room] where port=" & trim(request("roomport")) & " and userpasswd1='" & replace(trim(request("password")),"'","''") & "'"

elseif xz=3 then
	sql="select * from [Room] where port=" & trim(request("roomport")) & " and userpasswd2='" & replace(trim(request("password")),"'","''") & "'"
else
response.redirect "Error.asp?m=�ε��������˼�����ҳ���ġ���"
response.end
end if


	set rs = conn.Execute(sql)
	
	if not (rs.eof or err) then

		if xz=1 then
		
			session("roomport_" & rmport)=request("roomport")
			response.redirect "adminroom.asp?roomport="& request("roomport") &"&xz=index"
			response.end
			
		elseif xz=2 then
		
			session("roomportpz_" & rmport)=request("roomport")
			response.redirect "peizhi.asp?roomport="& request("roomport") &"&xz=index"
			response.end
			
		elseif xz=3 then
		
			session("roomportadd_" & rmport)=request("roomport")
			response.redirect "addadmin.asp?roomport="& request("roomport") &"&xz=admin"
			response.end
			
		end if
		
		
		response.end
		rs.close
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
          

<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
          
          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�û��������ĵ�½</TITLE>

<% call top %>


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
          <img border="0" src="../USadmin/img/Main_01.gif"><b><font class="titletext" color="#ff0000">���������ҷ�����ٹ���</font></b></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="23" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="282" id="AutoNumber2" height="91">
        <tr>
          <td width="278" height="26" colspan="3">
          
          <b><font color="#FF0000"><%=m%></font></b>
          </td>
        </tr>
        <tr>
          <td width="225" height="29" align="center" colspan="2">��</td>
          <td width="61" height="65" rowspan="7"><img border="0" src="../USadmin/img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="221" height="15" colspan="2" align="center">��д��½��</td>
          </tr>
           <form name="form1" method="post" action="index.asp">
        <tr>
          <td width="68" height="42" rowspan="3">
          <img border="0" src="../USadmin/img/Hopelove.gif"></td>
          <td width="153" height="10">&nbsp;
          <select size="1" name="xz">
          <option value="1">��������</option>
          <option value="2">�޸�����</option>
          <option value="3">���ù���Ա</option>
          </select></td>
          </tr>
        <tr>
          <td width="153" height="23">&nbsp;�˺�:<input maxLength="15" size="12" name="roomport" class=put></td>
          </tr>
        <tr>
          <td width="153" height="22">&nbsp;����:<input type="password" maxLength="16" size="12" value name="password" class=put ></td>
          </tr>
        <tr>
          <td width="225" height="30" colspan="2" align="center">
     <input type="image" maxLength="10" size="12" name="passwd" class=put src="../images/fuwu.gif" >
     <a href="../USadmin/usermima.asp">�һ�����</a></td>
          </tr>
        <tr>
          <td width="225" height="70" valign="top" colspan="2">
          <font color="#000080">����������ԭ�����ģ�<br>
          ���ù�������ù���Ա���� �����������������Լ��趨��Ϊ���ǲ����øù��ܣ�</font></td>
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

    
    <p>
          </p>


<% 
call di 
%>