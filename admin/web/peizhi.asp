<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(3) %>
<%
if Request("index_css")<>"" or Request("index_bgcolor")<>"" then

	if len(Request("index_css"))>1000 then Call errstr("1500�����ڲſ���Ŷ����")

	sql="select * from [web] where id=" & rmport
	rs.open sql,chatconn,1,3
	if not (rs.eof or err) then
	
	   rs("webmb") = Request("webmb")
       rs("webbg") = Request("webbg")
       rs("index_css") = Request("index_css")
       rs("index_logo") = Request("index_logo")
       rs("index_bgcolor") = Request("index_bgcolor")
       rs("index_pic") = Request("index_pic")
       rs("index_url") = Request("index_url")
       rs.Update
       rs.close
       
	end if

	Call errstr("�޸ĳɹ�����")

else

		sql="select top 1 index_css,index_bgcolor,index_pic,index_url,webbg,index_logo,webmb from [web] where id=" & rmport
		rs.open sql,chatconn,1,1

end if
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>�����޸�</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="12" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="8" align="center"></td>
          <td width="61" height="800" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="791" align="center" valign="top">
       

      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; ��վ��������</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="370" bgcolor="#FFFFFF" valign="top">
            

  
    <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="465">
          <tr>
	    <td width="123" align=right height="14">�˿ںţ�</td>
	    <td width="459" height="14"> <%=port%></td>
	      </tr>
<form name="form5" method="post" action="peizhi.asp"> 
			<tr>
	    <td width="123" align=right height="8">��ҳģ��ѡ��</td>
	    <td width="459" height="8">  
        
<select size="1" name="webmb">

        <option value="0" <%if rs("webmb")=0 then response.write "selected"%>>�Զ���ģ��</option>
        <option value="1" <%if rs("webmb")=1 then response.write "selected"%>>Ĭ��ģ��</option>

        <option value="2"  <%if rs("webmb")=2 then response.write "selected"%>>��������[��������]</option>

		<option value="3">�趯������[�赸]</option>
		<option value="4">һ�����[���]</option>

</select>

</td>
	      </tr>
 
          	<tr>
	    <td width="123" align=right height="28">��ҳģ�������</td>
	    <td width="459" height="28">  
        
<a target="_blank" href="http://5024.liaowan.com/mubandemo.asp?roomid=2005&webmb=1">
<img border="0" src="peizhi2.jpg"></a> <a target="_blank" href="http://5024.liaowan.com/mubandemo.asp?roomid=2005&webmb=2">
<img border="0" src="peizhi3.jpg"></a> <a target="_blank" href="http://5024.liaowan.com/mubandemo.asp?roomid=2005&webmb=3">
<img border="0" src="peizhi4.jpg"></a><a target="_blank" href="http://5024.liaowan.com/mubandemo.asp?roomid=2005&webmb=4"><img border="0" src="peizhi5.jpg"></a></td>
	      	</tr>
 
          <tr>
	    <td  align=right height="22" width="123">��ҳ����ɫ��</td>
	    <td height="22" width="459" >
		<input type="text" name="index_bgcolor" size="14" value="<%=rs("index_bgcolor")%>"> Ĭ����#ffffff ��ɫ</td>
	      </tr>
          <tr>
	    <td  align=right height="1" width="123">��ҳ����ͼƬ��</td>
	    <td height="1" width="459" >
		<input type="text" name="index_pic" size="52" value="<%=rs("index_pic")%>">дͼƬ��URL</td>
	      </tr>
			<tr>
	    <td  align=right height="25" width="123">��ҳLOGOͼƬ��</td>
	    <td height="25" width="459" >
		<input type="text" name="index_logo" size="52" value="<%=rs("index_logo")%>">дͼƬ��URL</td>
	      </tr>
			<tr>
	    <td  align=right height="27" width="123">���ݿ���ҳ����ͼƬ��</td>
	    <td height="27" width="459" >
		<input type="text" name="webbg" size="52" value="<%=rs("webbg")%>">дͼƬURL</td>
	      	</tr>
			<tr>
	    <td  align=right height="40" width="123">ת��������</td>
	    <td height="40" width="459" >
		<input type="text" name="index_url" size="52" value="<%=rs("index_url")%>"><br>
		�����Ҫ����վת���Լ�����վ ����дURL&nbsp; �հ�Ϊ��ת��</td>
	      </tr>
			<tr>
	    <td  align=right height="152" width="123">�Զ���CSS��ʽ��</td>
	    <td height="152" width="459" >
		<textarea rows="11" name="index_css" cols="62"><%=rs("index_css")%></textarea></td>
	      </tr>
			<tr>
	    <td  align=right height="130" width="123">��</td>
	    <td height="130" width="459" valign="top" >
		�Զ���CSS��ʽ���ʽ��<br>
		&lt;style type=&quot;text/css&quot;&gt;<br>
		&lt;!--<br>
		������д��ʽ�����ݡ�<br>
		--&gt;<br>
		&lt;/style&gt;<br>
		���������������JS�ű� ��HTML Ԫ��<br>
		����<font color="#008000">1000</font>������</td>
	      </tr>
			<tr>
	    <td  align=right height="20" width="123">��</td>
	    <td height="20" width="459" >
		��</td>
	      </tr>

          <tr>
            <td width="586" height="31" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
            </td>
            </tr>
<form>
        	
        </table>
        </center>
      </div>

  
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
        </div>

</body>

</html>