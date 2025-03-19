<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--数组数据库文件#include file="../../INC/Chatfl.asp" -->

<%

Call OpenChatConn()
Call OpenBChatConn()

	if Request("zanting")<>"" then
		chatconn.execute("update [web] set roomadd="& Request("zanting") &",stop=0,start=0,num=0 where id=" & Request("roomid"))
		Call wenti("修改成功！！\n复位该房间就可生效！")
	end if
	
	
'删除记录
if request("abc")="del" and request("queding")="" and session("quanxian")<2  then  %>

<script language="vbscript">
	if msgbox ("如果删除将无法恢复你确定删除吗？",vbYesNo+vbQuestion,"确定删除")=vbYes then
	   window.location.href="listchat.asp?port=<%=request("port")%>&queding=OK&abc=del&ff=<%=request("ff")%>"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<%
  response.end
end if

if request("abc")="del" and request("queding")<>""  then 


		set rs=server.createObject("adodb.recordset")
		port	= Request("port")
		sql="select host,adminpasswd,ff,sid,cid from [web] where id=" & port
		rs.open sql,chatconn,1,1
		id = port
 		port = rs("cid")
 		sid=rs("sid")
 		
			if request("port")>800000 then
				Chatconn.Execute("delete from [web] where id="& id )
				BChatconn.Execute("delete from [Room] where port="& port )

			else
			
			   if session("quanxian")=0 then
			
					if request("ff")=1 then			
						sql="select * from [serverdb] where sid=" & sid
						set rsr = chatconn.Execute(sql)
						urls=rsr("websys") &"?MD5vsr=" & MD5(port & md5pass) & "&port=" & port & "&menu=5"
						newi= left(GetURL(urls),1)
						Chatconn.Execute("delete from [web] where id="& id )
						BChatconn.Execute("delete from [Room] where port="& port )
					end if
				else
%>
					<script language=vbs>
					        MsgBox "SORRY固定房间只能由超级管理删除！请与乐天联系！"
					</script>
<%
			   end if

			end if
			
%>
<script language=vbs>
        MsgBox "操作成功！"
</script>
	
<% end if %>

<%
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
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function

dim rs,sql
dim page,maxPerPage
maxPerPage=30 '每页显示的记录数

myKeyword=Request("myKeyword")
Qtime=Request("Qtime")
RoomType=Request("RoomType")
ff=Request("ff")

page=Request("page")
if (page="" or isempty(page)) then page=1
thisUrl="listchat.asp?myKeyword="& myKeyword & "&ff="& ff & "&RoomType="& RoomType & "&Qtime=" & Qtime
session("adminOldUrl")=thisUrl&"&page="&page
set rs=server.createobject("adodb.recordset")
sql="select * from web where 1=1"

if not (myKeyword="" or isempty(myKeyword) ) then
	sql=sql&" and (RoomName like '%"&myKeyword&"%' or admin like '%"&myKeyword&"%') "
end if

if not (Qtime="" or isempty(Qtime) )   then
	'sql=sql&" and (addid like '"& admin &"')"
end if

if not (RoomType="" or isempty(RoomType) ) then
	sql=sql&" and (RoomType like "& RoomType &")"
end if

if not (ff="" or isempty(ff) ) then
	sql=sql&" and (ff like "& ff &")"
end if


sql=sql&" order by id desc"
rs.open sql,Chatconn,1,1
rs.pagesize=MaxPerPage
%>

<html>
<head>
<title>新闻管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
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
<script language=Javascript src="/include/opennew.js"--></script>
</head>

<body bgcolor="#9CC7EF" text="#000000" leftmargin="0" topmargin="0">
<div align="center"><br>
  聊天室管理</div>
<div align="center">
  <center>
<table width="698" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="0" bordercolor="#111111" height="131">
  <tr> 
    <form method="post" action="listchat.asp" name="form1">
      <td colspan="9" bgcolor="#1C79D7" width="688" height="25"> 
        <div align="right"><font color="#FFFFFF"><span lang="zh-cn">搜索</span>：</font> 
          <input type="text" name="myKeyword" size="22" value="<%=myKeyword%>"> 

<select size="1" name="RoomType">
<option value="">选择类型</option>
<%
i=1
do while (i<Chatfls) %>
<option value="<%=i%>"><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
        </select>
          <input type="submit" name="Submit" value="搜索">
        </div>
      </td>
    </form>
  </tr>
  <tr>    <form method="post" action="editBchat.asp" name="form3" target="_blank">
      <td colspan="9" bgcolor="#348CE4" width="688" align="center" height="17"> 
              <div align="right"><font color="#FFFFFF">直接输入聊天室ID：</font> 
          <input type="text" name="port" size="16" >
          <input type="submit" name="Submit" value="修改">
        </div>
        </td> </form>
    </tr>
  <tr>
      <td colspan="9" bgcolor="#348CE4" width="688" align="center" height="28"> 
              选择聊天网： 
              
<%
sql="select * from newweb order by webid asc"
set rsm=chatconn.execute (sql)
%>
<%
do while not (rsm.eof or err)
%> 
<a href="listchat.asp?ff=<%=rsm("webid")%>"><%=rsm("webname")%></a>&nbsp;&nbsp;

<% rsm.moveNext
  loop
  rsm.close
%>
              
              </td> 
	</tr>
  <tr bgcolor="#5EA5E6"> 
    <td width="36" nowrap height="21" align="center"> 
      <div align="center"><font color="#FFFFFF">ID</font></div>
    </td>
    <td width="49" nowrap height="21" align="center"> 
      <font color="#FFFFFF">类型</font></td>
    <td width="66" nowrap align="center" height="21"> 
      <font color="#FFFFFF">分类</font></td>
    <td width="165" nowrap align="center" height="21"> 
      <font color="#FFFFFF">室主</font></td>
      <!--
    <td width="181" nowrap align="center" height="21"> 
      <font color="#FFFFFF">登陆地址</font></td> -->
    <td width="140" nowrap height="21">
      <div align="center"><font color="#FFFFFF">房间名</font></div>
    </td>
    <td width="30" nowrap align="center" height="21">
      <span lang="zh-cn"><font color="#FFFFFF">人数</font></span></td>
    <td width="36" nowrap align="center" height="21">
      <span lang="zh-cn"><font color="#FFFFFF">视频</font></span></td>
    <td width="139" nowrap height="21"> 
      <div align="center"><font color="#FFFFFF">操作</font></div>
    </td>
  </tr>
  <%On Error Resume Next
		dim rsID
		i=1
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		do while not (rs.eof or err) 
%>
  <tr title="点击查看具体信息" > 
    <td width="36"  align="center" height="24"><%=rs("id")%> </td>
    <td width="49"  align="center" height="24"><%=webf(rs("ff"))%> </td>
    <td width="66"  align="center" height="24">『<%=chatfl(rs("fid"))%>』</td>
    <td width="165"  align="center" height="24"><%=rs("admin")%></td>
    <!--
    <td width="181"  align="center" height="24"><%=rs("logins")%></td>
    -->
    <td width="140" align="center" height="24"><%=rs("RoomName")%></td>
    <td width="30" align="center" height="24">　<%=rs("max")%></td>
    <td width="36" align="center" height="24"><%
    if rs("rtype")=0 then
    response.write "视频"
    elseif rs("rtype")=1 then
    response.write "语音"
    else
    response.write "文字"
    end if
    %></td>
    <td width="139" align="center" height="24">
    <% if rs("ff")=0 then %>
    <a target="_blank" href="start.asp?port=<%=rs("id")%>">复位</a> 
	<a href="editMechat.asp?roomid=<%=rs("id")%>">编辑</a>
	<% elseif rs("ff")=1 then %>

    <a target="_blank" href="start.asp?port=<%=rs("id")%>">复位</a>
	<a href="editBchat.asp?port=<%=rs("id")%>">编辑</a>
	<% else %>
	<a href="addchat.asp?menu=edit&roomid=<%=rs("id")%>">编辑</a>	
	<% end if %>
	<% if rs("roomadd")=0 then %>
	<a href="<%=thisUrl%>&zanting=1&roomid=<%=rs("id")%>&page=<%=page%>">暂停</a> 
	<% else %>
	<a href="<%=thisUrl%>&zanting=0&roomid=<%=rs("id")%>&page=<%=page%>"><font color="#FF0000">开放</font></a> 
	<% end if %>
    <a href="listchat.asp?abc=del&port=<%=rs("id")%>&ff=<%=rs("ff")%>">删除</a></td>
  </tr>
  <%
		i=i+1
		if i>maxPerPage then exit do
		rs.moveNext
		loop
 %>
  <tr bgcolor="#4296E7"> 
    <td colspan="9" width="688" height="23"> 
      <div align="right"><font color=#FFFFFF><%=rs.recordCount%> 个聊天室　第<%=page%>/<%=rs.pageCount%> 
        页　</font> 
        <%if page>1 then%>
        <input type="button" name="Submit3" value="首页" onClick="Javascript:jumpTo(1)">
        <input type="submit" name="Submit4" value="上页" onClick="Javascript:jumpTo(2)">
        <%else%>
        <input type="button" name="Submit3" value="首页" disabled>
        <input type="submit" name="Submit4" value="上页" disabled>
        <%end if
if rs.recordCount>page*maxPerPage then%>
        <input type="submit" name="Submit5" value="下页" onClick="Javascript:jumpTo(3)">
        <input type="submit" name="Submit6" value="末页" onClick="Javascript:jumpTo(4)">
        <%else%>
        <input type="submit" name="Submit5" value="下页" disabled>
        <input type="submit" name="Submit6" value="末页" disabled>
        <%end if%>
      </div>
    </td>
  </tr>
</table>
  </center>
</div>
</body>
</html>