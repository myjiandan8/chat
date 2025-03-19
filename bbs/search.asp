<!-- #include file="setup.asp" -->
<%
top
if Request.Cookies("username")=empty then error("<li>您还未<a href=login.asp>登录</a>社区")


if Request("menu")="ok" then
DetectPost
search=Request("search")
forumid=Request("forumid")
TimeLimit=Request("TimeLimit")
content=HTMLEncode(Request("content"))
searchxm=HTMLEncode(Request("searchxm"))
searchxm2=HTMLEncode(Request("searchxm2"))
searchxm2=replace(searchxm2,"@","&")


if content=empty then content=Request.Cookies("username")


if isnumeric(""&forumid&"") then forumidor="forumid="&forumid&" and"

if search="author" then
if Len(searchxm)<>8 then error("<li>非法操作")
item=""&searchxm&"='"&content&"'"
elseif search="key" then
item=""&searchxm2&" like '%"&content&"%'"
end if

if TimeLimit<>"" then TimeLimitList="and lasttime>"&SqlNowString&"-"&int(TimeLimit)&""


sql="select top "&MaxSearch&" * from forum where deltopic<>1 and "&forumidor&" "&item&" "&TimeLimitList&" order by lasttime Desc"
rs.Open sql,Conn,1

count=rs.recordcount    '数据总条数
if Count=0 then error("<li>对不起，没有找到您要查询的内容")

pagesetup=20   '设定每页的显示数量
rs.pagesize=pagesetup   '每页显示条数
TotalPage=rs.pagecount  '总页数
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '跳转到指定页数


%>
<script>
var key_word="<%=content%>"
var cookieusername="<%=Request.Cookies("username")%>"
</script>
<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> → 搜索结果</td>
</tr>
</table><br><table width=99% align=center>
<tr>
<td width="100%" align="right">搜索关键字：<font color="FF0000"><%=content%></font>　　共找到了 <b><font color="FF0000"><%=Count%></font></b> 篇相关帖子</td>
</tr>
</table>

<SCRIPT>valigntop()</SCRIPT>
    <table  cellSpacing="1" cellPadding="0" width=99% align="center" border="0" class=a2>
  <tr height="25">
    <td width="3%" class=a1>
    <td width="3%" class=a1></td>
    <td align="middle" height="24" class=a1 width="45%"> 主题</td>
    <td align="middle" width="9%" height="24" class=a1> 作者</td>
    <td align="middle" width="6%" height="24" class=a1> 回复</td>
    <td align="middle" width="7%" height="24" class=a1> 点击</td>
    <td width="27%" height="24" class=a1 align="center">最后更新</td>
  </tr>

<%

i=0
Do While Not RS.EOF and i<pagesetup
i=i+1

newtopic=""
if rs("posttime")+1>now() then newtopic="<img src=images/new.gif>"
%><script>ShowForum("<%=rs("ID")%>","<%=rs("topic")%>","<%=newtopic%>","<%=rs("username")%>","<%=rs("Views")%>","<%=rs("icon")%>","<%=rs("toptopic")%>","<%=rs("locktopic")%>","<%=rs("pollresult")%>","<%=rs("goodtopic")%>","<%=rs("replies")%>","<%=rs("lastname")%>","<%=rs("lasttime")%>");</script>
<%
RS.MoveNext
loop
RS.Close
%>

</TABLE>

<SCRIPT>valignbottom()</SCRIPT>


<TABLE cellSpacing=0 cellPadding=1 width=99% align=center border=0>
  
<TR height=25>
      <TD width="100%" height=2> 
        <TABLE cellSpacing=0 cellPadding=3 width="100%" border=0>

<TR>
<TD height=2><b>&nbsp;本论坛共有
<font color="990000"><%=TotalPage%></font> 页 [
<%
searchxm2=replace(searchxm2,"&","@")
%>
<script>
PageCount=<%=TotalPage%> //总页数
topage=<%=PageCount%>   //当前停留页
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?menu=ok&topage="+i+"&forumid=<%=forumid%>&search=<%=search%>&searchxm=<%=searchxm%>&searchxm2=<%=searchxm2%>&content=<%=content%>&TimeLimit=<%=TimeLimit%>>"+ i +"</a> ");
}
}
}
</script>
]</b></TD>

              <form name="form" action="search.asp?menu=ok&forumid=<%=forumid%>&search=key&searchxm2=topic" method="post">
                <td height="2" align="right">
                快速搜索：<input name="content" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px" size="20">&nbsp;<input type="submit" value="搜索" name="submit" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px"> </td>
              </form>





</TR></TABLE></TD></TR></TABLE>




<br>



<center>


<table cellSpacing="4" cellPadding="0" width="80%" border="0">
<tr>
<td noWrap width="200">
<img alt src="images/f_new.gif" border="0">&nbsp;打开主题 (有回复的主题)</td>
<td noWrap width="100">
<img alt src="images/f_hot.gif" border="0">&nbsp;热门主题 </td>
<td noWrap width="100">
<img alt src="images/f_locked.gif" border="0">&nbsp;关闭主题</td>
<td noWrap width="150">
<img src="images/topicgood.gif">
精华主题</td>
</tr>
<tr>
<td noWrap width="200">
<img alt src="images/f_norm.gif" border="0">&nbsp;打开主题 (没有回复的主题)</td>
<td noWrap width="100">
<img alt src="images/f_poll.gif" border="0">&nbsp;投票主题</td>
<td noWrap width="100">
<img alt src="images/f_top.gif" border="0">&nbsp;置顶主题</td>
<td noWrap width="150">
<img src="images/my.gif">
自己发表的主题</td>
</tr>
</table>


<%
htmlend


end if
%>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> → 搜索帖子</td>
</tr>
</table><br>


<SCRIPT>valigntop()</SCRIPT>
<table height="207" cellSpacing="1" cellPadding="3" width="99%"  class=a2 border="0" align=center>
<form method="post" action="search.asp?menu=ok" name=form>
<tr>
<td colSpan="2" height=25 class=a1 align="center">请输入要搜索的关键字</td>
</tr>
<tr>
<td vAlign="top" bgColor="#FFFFFF" colSpan="2" height="8">
<p align="center"><input size="40" name="content"></td>
</tr>
<tr>
<td class=a1 colSpan="2" height=25 align="center">搜索选项</td>
</tr>
<tr>
<td width="41%" height="24" bgcolor="FFFFFF">
<p align="right"><font style="FONT-SIZE: 9pt"><label for=search>作者搜索</label></font><input type="radio" value="author" name="search" id=search></td>
<td height=25 bgcolor="FFFFFF" width="58%">
&nbsp;<select size="1" name="searchxm">
<option selected value="username">搜索主题作者</option>
<option value="lastname">搜索最后回复作者</option>
</select></td>
</tr>
<tr>
<td width="41%" height="21" bgcolor="FFFFFF">
<p align="right"><span style="FONT-SIZE: 9pt"><label for=search_1>关键字搜索</label></span><input type="radio" value="key" name="search" checked id=search_1></td>
<td height=25 bgcolor="FFFFFF" width="58%">
&nbsp;<select size="1" name="searchxm2">
<option selected value="topic">在主题中搜索关键字</option>
<%if searchcontent=1 then%>
<option value="content">在内容中搜索关键字</option>
<%end if%>
</select></td>
</tr>
<tr>
<td width="41%" height="23" bgcolor="FFFFFF">
<p align="right"><font style="FONT-SIZE: 9pt" color="000000">日期范围</font></td>
<td height=25 bgcolor="FFFFFF" width="58%">
&nbsp;<select size="1" name="TimeLimit">
<option value="">所有日期</option>
<option value="1">昨天以来</option>
<option value="5" selected>5天以来</option>
<option value="10">10天以来</option>
<option value="30">30天以来</option>
</select></td>
</tr>
<tr>
<td width="41%" height="26" align="right" bgcolor="FFFFFF"><font style="FONT-SIZE: 9pt" color="000000">请选择要搜索的论坛</font></td>
<td height="26" bgcolor="FFFFFF" width="58%">


&nbsp;<select name="forumid">
<option value="" selected>全部论坛</option>
<%BBSList(0)%>

</select> <input type="submit" name=submit1 value="开始搜索"></td>
</tr>

</table>
<SCRIPT>valignbottom()</SCRIPT>

<%
htmlend
%>