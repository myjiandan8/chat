<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--数组数据库文件#include file="../INC/Chatfl.asp" -->
<!--#include file="inctop.asp"-->
<!--#include file="incfooter.asp"-->
<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
<LINK href="images/Style.css" rel=stylesheet>
<TITLE>人气排行榜--聊湾可视语音聊天网</TITLE>

<% call top %>

<%

Call OpenchatConn()

dim page,maxPerPage

'每页显示的记录数
maxPerPage=Request("maxPerPage") '每页显示的记录数
if (maxPerPage="" or isempty(maxPerPage)) then maxPerPage=100
if (maxPerPage>100) then maxPerPage=100

'第几页
page=Request("page")
if (page="" or isempty(page)) then page=1



'查询聊天室分类
RoomType=Request("RoomType")

'查询聊天室分类
id2=Request("id2")


'查询聊天室分类
lx=Request("lx")
if lx="" then lx="TOTAL"

'查询聊天室分类
asc0=Request("asc")
if asc0="" then asc0="desc"
if asc0="desc" then asc1="asc"
if asc0="asc" then asc1="desc"

'隐藏
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
      <p align="center">　</td>
    </tr>
               
    <tr>
      <td width="600" height="21" colspan="12">
      <p align="center">当前为：<b><font color="#800080"><%=(page-1)*maxPerPage+1%>-<%=(page-1)*maxPerPage+100%></font> </b> 排列为：
      <%
      if asc0="desc" then    
      %>
      倒序
      <% else %>
      顺序
      <% end if %>      
      </td>
    </tr>


           
    <tr>
      <td width="40" height="22" align="center" bgcolor="#0000CC"><a href="paihang.asp?asc=<%=asc1%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=<%=lx%>&page=<%=page%>">
      <font color="#FFFFFF"><b>排名</b></font></td>
      <td width="76" height="22" align="center" bgcolor="#0000CC"><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=roomname&page=<%=page%>">
      <font color="#FFFFFF"><b>房间名</b></font></a></td>
      <td width="46" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=TOTAL&page=<%=page%>">
      <font color="#FFFFFF">总人气</font></a></b></font></td>
      <td width="43" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=renqi&page=<%=page%>">
      <font color="#FFFFFF">总点击</font></a></b></font></td>
      <td width="40" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=BMONTH&page=<%=page%>">
      <font color="#FFFFFF">上月</font></a></b></font></td>
      <td width="40" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=MONTH&page=<%=page%>">
      <font color="#FFFFFF">本月</font></a></b></font></td>
      <td width="31" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=YESTERDAY&page=<%=page%>">
      <font color="#FFFFFF">昨天</font></a></b></font></td>
      <td width="31" height="22" align="center" bgcolor="#0000CC">
      <font color="#FFFFFF"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=TODAY&page=<%=page%>">
      <font color="#FFFFFF">今天</font></a></b></font></td>
      <td width="92" height="22" align="center" bgcolor="#0000CC"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=<%=RoomType%>&lx=port&page=<%=page%>">
      <font color="#FFFFFF">域名</font></a></b></td>
      <td width="84" height="22" align="center" bgcolor="#0000CC"><b><a href="#1">

      <font color="#FFFFFF">室主</font></a></b></td>
      <td width="35" height="22" align="center" bgcolor="#0000CC"><b><a href="paihang.asp?asc=<%=asc0%>&id2=<%=id2%>&RoomType=&lx=<%=lx%>&page=<%=page%>">

      <font color="#FFFFFF">分类</font></a></b></td>
      <td width="41" height="22" align="center" bgcolor="#0000CC"><b><a href="paihang.asp?asc=<%=asc0%>&id2=&RoomType=<%=RoomType%>&lx=<%=lx%>&page=<%=page%>">

      <font color="#FFFFFF">地区</font></a></b></td>
    </tr>
    
 <%
 		dim rsID
		i=1
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		do while not (rs.eof or err) 
		

 %> 
    
    <tr>
      <td width="40" height="23" valign="top" bgcolor="#DAEFFE">　<%=((page-1)*maxPerPage)+i%></td>
      <td width="76" height="23" valign="top" bgcolor="#DAEFFE">　<a target="_blank" href="http://<%=rs("id")%>.liaowan.com"><%=rs("roomname")%></a></td>
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
    合计 <FONT color=red><B><%=rs.recordCount%></B></FONT> 个房间 |　
                 <%if page>1 then%>
                <A href="Javascript:jumpTo(1)">首页</A> 
        		<A href="Javascript:jumpTo(2)">上一页</A> 
               <%else%>
                首页 上一页 
               <%end if
				if rs.recordCount>page*maxPerPage then%>
        		<A href="Javascript:jumpTo(3)">下一页</A> 
        		<A href="Javascript:jumpTo(4)">尾页</A>
       			<%else%>
        		下一页 尾页
        		<%end if%>
                  
                 　| 页次：<STRONG><FONT color=red><%=page%></FONT>/<%=rs.pageCount%></STRONG>页 <B><%=maxPerPage%></B>个/页
               
                转到:
                
<SELECT name=jdjdjd onChange=location.href=options[selectedIndex].value;>
<option  selected>第<%=page%>页</option>
<%
x=rs.pageCount
i=1
do while not (i>x)

%> 
<option value=<%=thisUrl%>&page=<%=i%>>第<%=i%>页</option>

<% 
  i=i+1
  loop
  
  rs.close
%>
</SELECT>
                
                </FORM>

  </center>
</div>

    
			<p>　</td>
		</tr>
	</table>
</div>


<%
call endpage()
%>