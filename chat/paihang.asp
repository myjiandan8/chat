<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�������ݿ��ļ�#include file="../INC/Chatfl.asp" -->
<!--#include file="inctop.asp"-->
<!--#include file="incfooter.asp"-->
<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
<LINK href="images/Style.css" rel=stylesheet>
<TITLE>�������а�--�����������������</TITLE>

<% call top %>

<%

Call OpenchatConn()

dim page,maxPerPage

'ÿҳ��ʾ�ļ�¼��
maxPerPage=Request("maxPerPage") 'ÿҳ��ʾ�ļ�¼��
if (maxPerPage="" or isempty(maxPerPage)) then maxPerPage=100
if (maxPerPage>100) then maxPerPage=100

'�ڼ�ҳ
page=Request("page")
if (page="" or isempty(page)) then page=1



'��ѯ�����ҷ���
RoomType=Request("RoomType")

'��ѯ�����ҷ���
id2=Request("id2")


'��ѯ�����ҷ���
lx=Request("lx")
if lx="" then lx="TOTAL"

'��ѯ�����ҷ���
asc0=Request("asc")
if asc0="" then asc0="desc"
if asc0="desc" then asc1="asc"
if asc0="asc" then asc1="desc"

'����
liebiao=Request("liebiao")
if liebiao="" then liebiao=0

thisUrl="paihang.asp?&id2=" & id2 & "&RoomType=" & RoomType & "&asc=" & asc0 & "&lx=" & lx
session("adminOldUrl")=thisUrl&"&page="&page

set rs=server.createobject("adodb.recordset")
sql="select * from [web] where ff>2 and liebiao=" & liebiao


if not (RoomType="" or isempty(RoomType) )   then
	sql=sql&" and (RoomType like "& RoomType &")"
end if

if not (id2="" or isempty(id2) ) then
	sql=sql&" and (id2 like "& id2 &")"
end if

sql=sql & " order by " & lx & " " & asc0
rs.open sql,chatconn,1,1


rs.pagesize=MaxPerPage

%>


<script language=Javascript>
<!--
function jumpTo(i){
if(i==1){
	this.document.location="<%=thisUrl%>";}
if(i==2){
	this.document.location="<%=thisUrl%>&page=<%=page-1%>";}
if(i==3){
	this.document.location="<%=thisUrl%>&page=<%=page+1%>";}
if(i==4){
	this.document.location="<%=thisUrl%>&page=<%=rs.pageCount%>";}
}
//-->
</script>

    
<div align="center">
	<table border="0" width="778" id="table1" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" height="157">
		<tr>
			<td valign="top">
<div align="center">
  <center>
  <table border="0" cellpadding="2" width="740" id="table2" height="122" cellspacing="1">

    <tr>
      <td width="600" height="1" colspan="12">
      <p align="center">��</td>
    </tr>
               
    <tr>
      <td width="600" height="21" colspan="12">
      <p align="center">��ǰΪ��<b><font color="#800080"><%=(page-1)*maxPerPage+1%>-<%=(page-1)*maxPerPage+100%></font> </b> ����Ϊ��
      <%
      if asc0="desc" then    
      %>
      ����
      <% else %>
      ˳��
      <% end if %>      
      </td>
    </tr>


           
    <tr>
      <td width="40" height="22" align="center" bgcolor="#0000CC"><a href="paihang.asp?asc=<%=asc1%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=<%=lx%>&page=<%=page%>">
      <font color="#FFFFFF"><b>����</b></font></td>
      <td width="76" height="22" align="center" bgcolor="#0000CC"><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=roomname&page=<%=page%>">
      <font color="#FFFFFF"><b>������</b></font></a></td>
      <td width="46" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=TOTAL&page=<%=page%>">
      <font color="#FFFFFF">������</font></a></b></font></td>
      <td width="43" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=renqi&page=<%=page%>">
      <font color="#FFFFFF">�ܵ��</font></a></b></font></td>
      <td width="40" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=BMONTH&page=<%=page%>">
      <font color="#FFFFFF">����</font></a></b></font></td>
      <td width="40" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=MONTH&page=<%=page%>">
      <font color="#FFFFFF">����</font></a></b></font></td>
      <td width="31" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=YESTERDAY&page=<%=page%>">
      <font color="#FFFFFF">����</font></a></b></font></td>
      <td width="31" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=TODAY&page=<%=page%>">
      <font color="#FFFFFF">����</font></a></b></font></td>
      <td width="92" height="22" align="center" bgcolor="#0000CC"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=port&page=<%=page%>">
      <font color="#FFFFFF">����</font></a></b></td>
      <td width="84" height="22" align="center" bgcolor="#0000CC"><b><a href="#1">

      <font color="#FFFFFF">����</font></a></b></td>
      <td width="35" height="22" align="center" bgcolor="#0000CC"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=&lx=<%=lx%>&page=<%=page%>">

      <font color="#FFFFFF">����</font></a></b></td>
      <td width="41" height="22" align="center" bgcolor="#0000CC"><b><a href="paihang.asp?asc=<%=asc0%>&id2=&RoomType=<%=RoomType%>&lx=<%=lx%>&page=<%=page%>">

      <font color="#FFFFFF">����</font></a></b></td>
    </tr>
    
 <%
 		dim rsID
		i=1
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		do while not (rs.eof or err) 
		

 %> 
    
    <tr>
      <td width="40" height="23" valign="top" bgcolor="#DAEFFE">��<%=((page-1)*maxPerPage)+i%></td>
      <td width="76" height="23" valign="top" bgcolor="#DAEFFE">��<a target="_blank" href="http://<%=rs("id")%>.liaowan.com"><%=rs("roomname")%></a></td>
      <td width="46" height="23" valign="top" bgcolor="#DAEFFE" align="center"><%=RS("TOTAL")%></td>
      <td width="43" height="23" valign="top" bgcolor="#DAEFFE" align="center"><%=rs("renqi")%></td>
      <td width="40" height="23" valign="top" bgcolor="#DAEFFE" align="center"><%=RS("BMONTH")%></td>
      <td width="40" height="23" valign="top" bgcolor="#DAEFFE" align="center"><%=RS("MONTH")%></td>
      <td width="31" height="23" valign="top" bgcolor="#DAEFFE" align="center"><%=RS("YESTERDAY")%></td>
      <td width="31" height="23" valign="top" bgcolor="#DAEFFE" align="center"><%=RS("TODAY")%></td>
      <td width="92" height="23" valign="top" bgcolor="#DAEFFE" align="center"><a target="_blank" href="http://<%=rs("id")%>.liaowan.com"><%=rs("id")%>.liaowan.com</a></td>
      <td width="84" height="23" valign="top" bgcolor="#DAEFFE" align="center"><%=rs("admin")%></td>
      <td width="35" height="23" valign="top" bgcolor="#DAEFFE" align="center"><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=rs("RoomType")%>&lx=<%=lx%>&page=<%=page%>"><%=Chatfl(rs("RoomType"))%></a></td>
      <td width="41" height="23" valign="top" bgcolor="#DAEFFE" align="center"><a href="paihang.asp?asc=<%=asc0%>&id2=<%=rs("id2")%>&RoomType=<%=RoomType%>&lx=<%=lx%>&page=<%=page%>"><%=diyu(rs("id2"))%></a></td>
    </tr>
    
<%


		i=i+1
		if i>maxPerPage then exit do
		rs.moveNext
		loop
		

%>
    
    </table>
     <FORM action="" method=post onChange="submit()">
    �ϼ� <FONT color=red><B><%=rs.recordCount%></B></FONT> ������ |��
                 <%if page>1 then%>
                <A href="Javascript:jumpTo(1)">��ҳ</A> 
        		<A href="Javascript:jumpTo(2)">��һҳ</A> 
               <%else%>
                ��ҳ ��һҳ 
               <%end if
				if rs.recordCount>page*maxPerPage then%>
        		<A href="Javascript:jumpTo(3)">��һҳ</A> 
        		<A href="Javascript:jumpTo(4)">βҳ</A>
       			<%else%>
        		��һҳ βҳ
        		<%end if%>
                  
                 ��| ҳ�Σ�<STRONG><FONT color=red><%=page%></FONT>/<%=rs.pageCount%></STRONG>ҳ <B><%=maxPerPage%></B>��/ҳ
               
                ת��:
                
<SELECT name=jdjdjd onChange=location.href=options[selectedIndex].value;>
<option  selected>��<%=page%>ҳ</option>
<%
x=rs.pageCount
i=1
do while not (i>x)

%> 
<option value=<%=thisUrl%>&page=<%=i%>>��<%=i%>ҳ</option>

<% 
  i=i+1
  loop
  
  rs.close
%>
</SELECT>
                
                </FORM>

  </center>
</div>

    
			<p>��</td>
		</tr>
	</table>
</div>


<%
call endpage()
%>