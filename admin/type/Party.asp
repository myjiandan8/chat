<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../../INC/Chatfl.asp" -->
<% Call quanxian(20) %>
<%
	if  Request("quxiao")<>"" then
		'if CDate(Request("PartyDate"))=Date then Call errstr("�Ƿ�������")
		chatconn.execute("update [Party] set ss=1 where id=" & Request("quxiao"))
		Call errstr("�޸ĳɹ�����")
	end if 

	if Request("PartyDate")<>"" and Request("title")<>"" and Request("txt")<>"" and Request("vid")<>""  then

	if CDate(Request("PartyDate"))<Date then Call errstr("Partyʱ��Ƿ��������Ǵ��ڵ��ڽ��죡")
	if InStr(Request("txt"), "</textarea>")>0 then Call errstr("Party���ݲ��ܰ���</textarea>�ı���ؼ���")
		
		if Request("vid")=0 then
		sql="select PartyM,PartyS from [web] where id=" & rmport
		rs.open sql,chatconn,1,3
		rs("PartyM") =Month(now())
		rs("PartyS") =rs("PartyS")-1
       	rs.Update
       	rs.close
       	
		end if


		sql="select * from [Party] where id=" & Request("vid")
		rs.open sql,chatconn,1,3
		
		if rs.eof then rs.addnew
		rs("roomid")=rmport
		rs("roomname")=roomname
		rs("PartyDate")=Request("PartyDate")
		rs("title")=HTMLEncode(Request("title"))
		rs("txt")=Request("txt")
		rs("ss")=0
		
       	rs.Update
       	rs.close

		if Request("vid")=0 then 
			Call errstr("Party����ɹ�����")
		else
			Call errstr("Party�����޸ĳɹ�����")
		end if

	end if

        '��ʼ������
		sql="select PartyM,PartyS from [web] where id=" & rmport
		rs.open sql,chatconn,1,3
		
		if rs("PartyM")=NULL or rs("PartyM")=0 then
			rs("PartyM") = Month(now())
			rs("PartyS") = 3
       		rs.Update
       		PartyS=3
		else
			if rs("PartyM") = Month(now()) then
				PartyS=rs("PartyS")
				if PartyS=NULL then PartyS=3
			else
				rs("PartyM") = Month(now())
				rs("PartyS") = 3
				rs.Update
				PartyS=3
			end if
		end if
       	rs.close
       
		sql="select * from [Party] where roomid="& rmport &" and ss=0 order by id DESC"
		rs.open sql,chatconn,1,1
		if rs.eof then 
		
		ss=1
		vid=0
		'PartyDate="2001-1-1"
		
		else
		
		vid=rs("id")
		ss=rs("ss")
		PartyDate=rs("PartyDate")
		title=rs("title")
		txt=rs("txt")
		
		end if
		rs.close
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>Party����</title>
</head>

<body>
<script src=../../inc/birthday.js></script>
      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="19" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="572" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="571" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="200">

<form name="form5" method="post" action="Party.asp">
		<input type="hidden" name="vid" size="18" maxlength="10" value="<%=vid%>"> 
          <tr>
            <td width="586" bgcolor="#0075F7" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp; Party����</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
       <tr>
          
            <td width="586" height="70" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left"><font color="#008000">˵����</font>1.Party�������ھٰ�Party�ĵ��죬
			��������������޽�����һ������30�˷���Party����60�ˡ�<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.ÿ��������һ������3������Party�Ļ��ᡣ<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			3.Party�����ǰһ�����롣���統������ٰ�Party����������Party���������������Ҽ�����Ч��<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.Bchat������������������ҳ����ѡ��Partyģʽ�����������䡣<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.MeChat���������ڸ�λ������ҳ��ѡ��Partyģʽ��λ�����ҡ�<br>
��</td>
            </tr>
          <tr>
	    <td width="98" align=left height="25">�˿ںţ�</td>
	    <td width="484" height="25"> <%=rmport%></td>
	      </tr>
<% if ss=0 then %>
            <tr>
            <td width="98" height="4" align="center" bgcolor="#FFFFFF">
            
			</td>
            <td width="481" height="4" bgcolor="#FFFFFF">
            <% if PartyDate=Date() then %>
			[<%=PartyDate%>]Party�Ѿ��������У������糿5��Party������<br>
            <% else %>���ڴ�ǰ�Ѿ�����[<%=PartyDate%>]Party����ȡ��Party<a href="Party.asp?quxiao=<%=vid%>">�������</a>��<br>
            [ȡ��Party������ǰһ�죬��ͬ��������һ��������ᣡ]
            <% end if %>
            </td>
            </tr>
			<tr>
            <td width="586" height="2" align="center" colspan="2" bgcolor="#FFFFFF">
             </td>
            </tr>
<% end if %>



<% if (PartyS>0 and ss=0) or ss=1 then %>
          <tr>
            <td width="98" height="25" align="right" bgcolor="#F9F9F7">
            <p align="left">������᣺</td>
            <td width="484" height="25" bgcolor="#F9F9F7"> 

�����㻹��<b><font color="#FF0000"><%=PartyS%></font></b>������Party�Ļ���</td>
            </tr>

          <tr>
	    <td  align=left height="25" width="98">Partyʱ�䣺</td>
	    <td height="25" width="484" >
	    
<input onfocus="show_cele_date(PartyDate,'','',PartyDate)" value="<%=PartyDate%>" name="PartyDate" size="17"></td>
	      </tr>
          <tr>
	    <td  align=left height="25" width="98">Party���⣺</td>
	    <td height="25" width="484" > 
        
<input type="text" name="title" size="51" maxlength="35" value="<%=title%>"></td>
	      </tr>
          <tr>
	    <td  align=left height="88" width="98">Party���ݣ�</td>
	    <td height="88" width="484" ><textarea rows="19" name="txt" cols="66"><%=txt%></textarea><br>
		֧��HTML CSS��ʽ������&lt;textarea&gt;�ı�����</td>
	      </tr>

          <tr>
            <td width="586" height="20" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <p align="left">��</td>
            </tr>

          <tr>
            <td width="586" height="7" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value="ȷ��" name="B1"></td>
            </tr>
<% elseif PartyS=0 then %>
			<tr>
            <td width="586" height="4" align="center" colspan="2" bgcolor="#FFFFFF">
            

            ���µ�Party��������Ѿ�ʹ����ϣ��������پ��С�<br>
			������뱾�¾�������ͻ���Ա��ϵ��һ��Party�������100Ԫ��</td>
            </tr>
			<tr>
            <td width="586" height="2" align="center" colspan="2" bgcolor="#FFFFFF">
            

            ��</td>
            </tr>
<% end if %>
</form>
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