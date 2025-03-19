<!-- #include file="setup.asp" -->
<%
if Request.Cookies("username")=empty then error("<li>您还未<a href=login.asp>登录</a>社区")

id=int(Request("id"))

sql="select * from [user] where username='"&Request.Cookies("username")&"'"
Set Rs=Conn.Execute(sql)
faction=rs("faction")
experience=rs("experience")
money=rs("money")
rs.close

top


if Request("menu")="factionadd" then
if faction<>"" then error("<li>您已经加入 "&faction&" 了！<li>请先退出 "&faction&" 才能加入新俱乐部！")

factionname=Conn.Execute("Select factionname From faction where id="&id&"")(0)
xinxi=Conn.Execute("Select xinxi From faction where id="&id&"")(0)
roomids=Conn.Execute("Select roomid From faction where id="&id&"")(0)

if xinxi=2 then

message=message&"<li>加入失败！[该俱乐部拒绝用户加盟]<li><a href=faction.asp>返回视频俱乐部</a><li><a href=Default.asp>返回论坛首页</a>"

elseif xinxi=1 then

conn.execute("update [user] set faction='"&factionname&"',shenfen='未验证成员',dengji=0,roomid="&roomids&" where username='"&Request.Cookies("username")&"'")
message=message&"<li>等待验证！[该俱乐部需要用户身份验证]<li><a href=faction.asp>返回视频俱乐部</a><li><a href=Default.asp>返回论坛首页</a>"

else

conn.execute("update [user] set faction='"&factionname&"',shenfen='普通成员',dengji=1,roomid="&roomids&" where username='"&Request.Cookies("username")&"'")
message=message&"<li>加入成功！[该俱乐部允许所有用户加盟]<li><a href=faction.asp>返回视频俱乐部</a><li><a href=Default.asp>返回论坛首页</a>"

end if

succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="factionout" then
if faction=empty then error("<li>您目前没有加入任何俱乐部！")
conn.execute("update [user] set faction='' where username='"&Request.Cookies("username")&"'")
message=message&"<li>退出俱乐部成功<li><a href=faction.asp>返回视频俱乐部</a><li><a href=Default.asp>返回论坛首页</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="factiondel" then

sql="select * from faction where id="&id&""
Set Rs1=Conn.Execute(sql)
if rs1("buildman")<>""&Request.Cookies("username")&"" then error("<li>您不是该帮的帮主无法解散该帮")
conn.execute("update [user] set faction='' where faction='"&rs1("factionname")&"'")
conn.execute("delete from [faction] where id="&id&"")
message=message&"<li>解散俱乐部成功<li><a href=faction.asp>返回视频俱乐部</a><li><a href=Default.asp>返回论坛首页</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="look" then
sql="select * from faction where id="&id&""
Set Rs=Conn.Execute(sql)
%>
<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> → 
<a href="faction.asp">视频俱乐部</a></td>
</tr>
</table><br>

<title><%=rs("factionname")%> - Powered By BBSxp</title>

<table width="82%" border="0" align="center" cellspacing="1" cellpadding="2"  class=a2 height="249">
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>俱乐部简称:</b></font></div>
</td>
<td width="81%"><%=rs("factionname")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>俱乐部名称:</b></font></div>
</td>
<td width="81%"><%=rs("allname")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>俱乐部宗旨:</b></font></div>
</td>
<td width="81%"><%=rs("tenet")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>创建时间:</b></font></div>
</td>
<td width="81%"><%=rs("addtime")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>创始人名称:</b></font></div>
</td>
<td width="81%"><%=rs("buildman")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>现有会员:</b></font></div>
</td>
<td width="81%">
<%
sql="select username from [user] where faction='"&rs("factionname")&"' and dengji>0"
Set Rs1=Conn.Execute(sql)
Do While Not RS1.EOF
i=i+1
list=list&""&rs1("username")&" "
RS1.MoveNext
loop
%><%=i%>人</td>
</tr>

<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>会员名单:</b></font></div>
</td>
<td width="81%">
<%=list%>
</td>
</tr>

<tr>
<td width="18%" height="97" rowspan="3" bgcolor="#FFFFFF">
<b><font color="#000066">俱乐部公告：</font></b></td>
<td width="81%" height="18" bgcolor="#FFFFFF">
<font color="#FF0000"><b>
<%=rs("ggtitle")%>
</b></font>
</td>
</tr>
<tr>
<td width="81%" height="50" bgcolor="#FFFFFF">
<%=rs("gonggao")%>
　</td>
</tr>
<tr>
<td width="81%" height="13" bgcolor="#FFFFFF">
<%=rs("ggtimes")%>
</td>
</tr>

</table>
<br><center><INPUT onclick=history.back(-1) type=button value=" << 返 回 ">
<%

htmlend

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="addok" then

factionname=HTMLEncode(Request("factionname"))
allname=HTMLEncode(Request("allname"))
tenet=HTMLEncode(Request("tenet"))

if faction<>empty then message=message&"<li>您已经加入了俱乐部！"
if experience< 5000 then message=message&"<li>您的经验值小于 5000 ！"
if money< 5000 then message=message&"<li>您的金币少于 5000 ！"
if factionname="" then message=message&"<li>俱乐部简称没有填写"
if Len(factionname)>7 then message=message&"<li>俱乐部简称最多7个字符"
if allname="" then message=message&"<li>俱乐部名称没有填写"
if tenet="" then message=message&"<li>俱乐部宗旨没有填写"
If not conn.Execute("Select id From [faction] where factionname='"&factionname&"' or buildman='"&Request.Cookies("username")&"'").eof Then  message=message&"<li>社区中已存在同名俱乐部<li>您已经建立过俱乐部"
if message<>"" then error(""&message&"")

conn.Execute("insert into faction (factionname,allname,tenet,buildman) values ('"&factionname&"','"&allname&"','"&tenet&"','"&Request.Cookies("username")&"')")

conn.execute("update [user] set faction='"&factionname&"',[money]=[money]-5000 where username='"&Request.Cookies("username")&"'")


message=message&"<li>创建俱乐部成功<li><a href=faction.asp>返回视频俱乐部</a><li><a href=Default.asp>返回论坛首页</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="xiuok" then

factionname=HTMLEncode(Request("factionname"))
allname=HTMLEncode(Request("allname"))
tenet=HTMLEncode(Request("tenet"))


if factionname="" then message=message&"<li>俱乐部简称没有填写"
if Len(factionname)>7 then message=message&"<li>俱乐部简称最多7个字符"
if allname="" then message=message&"<li>俱乐部名称没有填写"
if tenet="" then message=message&"<li>俱乐部宗旨没有填写"
if Conn.Execute("Select buildman From [faction] where id="&id&"")(0)<>Request.Cookies("username")then message=message&"<li>您不是该帮的帮主无法修改信息"
If not conn.Execute("Select id From [faction] where factionname='"&factionname&"'").eof Then  message=message&"<li>社区中已存在同名俱乐部"

if message<>"" then error(""&message&"")

sql="select * from faction where id="&id&""
rs.Open sql,Conn,1,3
oldfactionname=rs("factionname")
rs("factionname")=factionname
rs("allname")=allname
rs("tenet")=tenet
rs.update
rs.close

conn.execute("update [user] set faction='"&factionname&"' where faction='"&oldfactionname&"'")
message=message&"<li>修改俱乐部成功<li><a href=faction.asp>返回视频俱乐部</a><li><a href=Default.asp>返回论坛首页</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
end if



%>
<center>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> → 
<a href="faction.asp">视频俱乐部</a></td>
</tr>
</table><br>
<%
if Request("menu")="adds" then

%>
<form method=post name=form action=faction.asp?menu=addok>

<table cellspacing=1 cellpadding=2 width=442 border=0 align="center" class=a2>
<tr class=a1>
<td width=526 colspan="2" align="center" height="25">
创建门派</td>
</tr>
<tr class=a3>
<td width=187 align="right">
<b><font color="0033CC">俱乐部简称：</font></b></td>
<td width=339>
<input maxlength=7 name=factionname size="10"> 最多7个字符</td>
</tr>
<tr class=a3>
<td width=187>
<div align="right"><b><font color="0033CC">俱乐部名称： </font></b></div>
</td>
<td width=339>
<input size=30 name=allname>
</td>
</tr>
<tr class=a3>
<td width=187 height=15>
<div align="right"><b><font color="0033CC">俱乐部宗旨： </font></b></div>
</td>
<td width=339 height=15>
<input size=40 name=tenet>
</td>
</tr>
<tr class=a3>
<td width=526 colspan=2 height=8>
<div align=center>
<input type=submit value=" 创 建 " name=Submit23>
<input type=reset value=" 重 填 " name=Submit24>
</div>
</td>
</tr>
<tr class=a3>
<td width=526 colspan=2 height=7>
<ol>
创建门派的必要条件：
<li>您的经验值必须 5000 以上
<li>需要扣除您身上 5000 金币作为门派基金 </li>
</td>
</tr>
</table>


</form>



<%
elseif Request("menu")="xiu" then
sql="select * from faction where id="&id&""
Set Rs=Conn.Execute(SQL)
%>

<form method=post action=faction.asp?menu=xiuok&id=<%=rs("id")%>>
<table cellpadding="2" cellspacing="1" width="70%" border="0" class=a2>

<tr>
<td colspan="2" height="25" align="center" class=a1>　　门派设定</td>
</tr>


<tr class=a3>
<td>　　俱乐部简称： </td>
<td>
<input size="20" maxlength=7 name="factionname" value="<%=rs("factionname")%>"> 
最多7个字符</td>
</tr>
<tr class=a3>
<td>　　俱乐部名称： </td>
<td><input size="30" name="allname" value="<%=rs("allname")%>"> </td>
</tr>
<tr class=a3>
<td>　　俱乐部宗旨： </td>
<td><input size="60" name="tenet" value="<%=rs("tenet")%>"> </td>
</tr>
<tr class=a3>
<td colSpan="2">
<div align="center">
<input type="submit" value=" 修 改 " name="Submit">
<input type="reset" value=" 重 填 " name="Submit2">
</div>
</td>
</tr>
</table>
</form>
<%
else
%>


<p>&nbsp;<img src="images/plus/niu05.gif" width="26" height="26" border="0">
<img border="0" src="img/jlb.gif" width="142" height="29"> <img src="images/plus/niu05.gif" width="26" height="26" border="0"><br>
</p>

<SCRIPT>valigntop()</SCRIPT>
<table border="0" cellpadding="5" cellspacing="1" class=a2 width=99%>
<tr>
<td width="15%" align="center" height="25" class=a1>俱乐部名称</td>
<td width="41%" align="center" height="25" class=a1>宗 旨</td>
<td width="12%" align="center" height="25" class=a1>聊天室</td>
<td width="12%" align="center" height="25" class=a1>创始人</td>
<td width="13%" align="center" height="25" class=a1>动 作</td>
</tr>


<%
faction=Conn.Execute("Select faction From [user] where username='"&Request.Cookies("username")&"'")(0)

 
sql="select * from faction order by addtime Desc"
rs.Open sql,Conn,1


pagesetup=20 '设定每页的显示数量
rs.pagesize=pagesetup
TotalPage=rs.pagecount  '总页数
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '跳转到指定页数

i=0
Do While Not RS.EOF and i<pagesetup
i=i+1





%>

<tr>
<td width="10%" align="center" height="25" bgcolor="FFFFFF"> <a href=faction.asp?menu=look&id=<%=rs("id")%>><%=rs("factionname")%></a></td>
<td width="41%" align="center" height="25" bgcolor="FFFFFF"><%=rs("tenet")%></td>
<td width="12%" align="center" height="25" bgcolor="FFFFFF"><a href=http://<%=rs("roomid")%>.liaowan.com target=_blank><%=rs("roomname")%></a></td>
<td width="12%" align="center" height="25" bgcolor="FFFFFF"><a href=Profile.asp?username=<%=rs("buildman")%>><%=rs("buildman")%></a></td>

<td width="13%" align="center" height="25" bgcolor="FFFFFF"><%
if faction=rs("factionname") then
response.write "<a onclick=checkclick('您确定要退出该俱乐部？') href=?menu=factionout>退出此俱乐部</a>"
else
response.write "<a onclick=checkclick('您确定要加入该俱乐部？') href=?menu=factionadd&id="&rs("id")&">加入此俱乐部</a>"
end if
%>

</td>
</tr>

<%
RS.MoveNext
loop
RS.Close
%>

</table>
<SCRIPT>valignbottom()</SCRIPT>
Page：[
<script>
PageCount=<%=TotalPage%> //总页数
topage=<%=PageCount%>   //当前停留页

for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?topage="+i+">"+ i +"</a> ");
}
}
}
</script>
 ]<br>

<%
end if



%><%
htmlend
%>