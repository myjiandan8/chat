<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="inc.asp"-->
<%
menu=Request("menu")
bbsid=clng(Request("bbsid"))

if Request("menu")="bbsadd" then
flid=bbsid
mm="�½���̳����"
else

mm="�༭��̳����"

end if

if Request("menu")="bbssave" then

		bbsname=HTMLEncode(Request("bbsname"))
		index_logo=Request("index_logo")
		followid=Request("classid")
		SortNum=Request("SortNum")
		moderated=Request("moderated")
		intro=HTMLEncode(Request("intro"))
		pass=Request("pass")
		userlist=Request("userlist")
		icon=HTMLEncode(Request("icon"))
		logo=HTMLEncode(Request("logo"))
		password=Request("password")
		hide=Request("hide")
		flid=followid
		
	if bbsname="" or followid="" then errstr("����д������")
	if CheckHtml(bbsname) then errstr("��̳�������зǷ��ַ���")
	
	

	sql="select * from [bbsconfig] where id=" & bbsid
	rs.open sql,bbsconn,1,3
	
	   if rs.eof or err then rs.addnew
	   
	    rs("roomid")=rmport
	    'rs("index_logo")=index_logo
		rs("followid")=Request("classid")
		rs("bbsname")=HTMLEncode(Request("bbsname"))
		rs("moderated")=Request("moderated")
		rs("SortNum")=Request("SortNum")
		rs("pass")=Request("pass")
		rs("password")=Request("password")
		rs("userlist")=userlist
		rs("intro")=HTMLEncode(Request("intro"))
		rs("icon")=HTMLEncode(Request("icon"))
		rs("logo")=HTMLEncode(Request("logo"))
		rs("hide")=Request("hide")
		
       rs.Update
       rs.close
	   Call errstr("�����ɹ�����")

end if
	   

if menu="bbsmanagexiu" then

	
	set rs=bbsconn.execute ("select * from bbsconfig where id="& bbsid &" order by id asc")
	if rs.eof and rs.bof then
	
		vid=0
		followid=0
		
	else
	
		bbsid=rs("id")
		bbsname=rs("bbsname")
		index_logo=rs("index_logo")
		followid=rs("followid")
		flid=followid
		SortNum=rs("SortNum")
		moderated=rs("moderated")
		intro=rs("intro")
		pass=rs("pass")
		userlist=rs("userlist")
		icon=rs("icon")
		logo=rs("logo")
		password=rs("password")
		hide=rs("hide")
		'index_css=rs("index_css")
		'=rs("")
	
	end if


end if
ii=0
i=0
sub BBSList(selec,vsid)
sql="Select id,bbsname From bbsconfig where followid="&selec&" and hide=0 order by SortNum"
Set Rs1=BBSConn.Execute(sql)
do while not rs1.eof
Response.write "<option value="&rs1("ID")
if rs1("id")=vsid then Response.write " selected"
Response.write ">"&string(ii,"��")&""&rs1("bbsname")&"</option>"
ii=ii+1
BBSList rs1("id"),ffid
ii=ii-1
rs1.movenext
loop
Set Rs1 = Nothing
end sub

%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title><%=mm%></title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       

      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="617" id="AutoNumber2" height="400">

          <tr>
            <td width="611" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; </font></b><font color="#FFFFFF"><b>
			<%=mm%></b></font></td>
          </tr>
          
          <tr>
            <td width="611" height="370" bgcolor="#FFFFFF" valign="top">
            

  
    <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#DAD8CF" width="598" id="AutoNumber2" height="465">
<form name="form5" method="post" action="bbs.asp"> 
         <tr>
	    <td width="122" align=right height="26">������ID��</td>
	    <td width="466" height="26"> <%=port%></td>
	      </tr>
			<tr>
	    <td width="122" align=right height="26">��̳����</td>
	    <td width="466" height="26"> 

<input type="hidden" name="menu" size="18" maxlength="10" value="bbssave"> 

<input size="30" name=bbsname value="<%=bbsname%>">
<% if Request("menu")="bbsadd" then %>
<input type="hidden" name="bbsid" size="18" maxlength="10" value="0"> 
<% else %>
<input type="hidden" name="bbsid" size="18" maxlength="10" value="<%=bbsid%>">
 ���� <input size="2" name="SortNum" value="<%=SortNum%>">
��С��������
<% end if %>
</td>
	      </tr>
  
			<tr>
    <td class=a3 align=right>

��̳���</td>
    <td class=a3>

<%
if followid=vid then
%>
��������<input type="hidden" name="classid" size="18" maxlength="10" value="<%=vid%>">
<% else %>
<select name="classid" size="1">
<%
Call BBSList(vid,flid)
%>
</select>
<% end if %></td>
			</tr>
			<tr>
    <td class=a3 align=right>


��̳������</td>
    <td class=a3>


<input size="30" name=moderated value="<%=moderated%>"> �����������á�|���ָ����磺yuzi|ԣԣ
</td>
			</tr>
			<tr>
    <td class=a3 align=right>


��̳���ܣ�</td>
    <td class=a3>


<textarea rows="5" name="intro" cols="50"><%=intro%></textarea></td>
			</tr>
			<tr>
    <td class=a3 align=right>

��̳״̬��</td>
    <td class=a3>

<select size="1" name="pass">
<option value=0 <%if pass=0 then%>selected<%end if%>>�ر�</option>
<option value=1 <%if pass=1 then%>selected<%end if%>>����</option>
<option value=2 <%if pass=2 then%>selected<%end if%>>�ο�ֹ��</option>
<option value=3 <%if pass=3 then%>selected<%end if%>>��Ȩ���</option>
<option value=4 <%if pass=4 then%>selected<%end if%>>��Ȩ����</option>
</select>
</td>
			</tr>
			<tr>
    <td class=a3 align=right>

��Ȩ�û�������</td>
    <td class=a3>

<textarea rows="3" name="userlist" cols="37"><%=userlist%></textarea> �������|�ָ����磺yuzi|ԣԣ
</td>
			</tr>
			<tr>
    <td class=a3 align=right>


Сͼ��URL��</td>
    <td class=a3>


<input size="30" name="icon" value="<%=icon%>"> ��ʾ��������ҳ��̳�����ұ�
</td>
			</tr>
			<tr>
    <td class=a3 align=right>


��ͼ��URL��</td>
    <td class=a3>


<input size="30" name="logo" value="<%=logo%>"> ��ʾ����̳���Ͻ�</td>
			</tr>
			<tr>
    <td class=a3 align=right>

ͨ�����룺</td>
    <td class=a3>

<input size="30" name="password" value="<%=password%>"> ����ǹ�����̳���˴�������</td>
			</tr>

          <tr>
    <td class=a3 align=right>

�Ƿ���ʾ����̳�б�����������������������
    <td class=a3>


<input type="radio" <%if hide=0 then%>CHECKED <%end if%>value="0" name="hide" value="0" id=hide1 checked><label for=hide1>��ʾ</label> 
<input type="radio" <%if hide=1 then%>CHECKED <%end if%>value="1" name="hide" value="1" id=hide2><label for=hide2>����</label> </tr>
   		</tr>

          <tr>
            <td width="592" height="31" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ�� " name="B1">
  
            </td>
            </tr>
</form>
        	
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