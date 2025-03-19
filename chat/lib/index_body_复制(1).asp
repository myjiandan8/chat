<%
sub index_body()
openadmin
set rswebcount=conn.execute("select * from vcount")
%> 
<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
  <tr> 
    <td valign="top" width="210"> <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="0">
        <tr> 
          <td height="29" align="center" class="newshead">　</td>
        </tr>
        <tr> 
          <td height="5" valign="bottom"></td>
        </tr>
        <tr> 
          <td align="center" class="chinese">总流量统计：<span class="newshead"><%=rswebcount("vtotal")%></span><br>
            站长日记:<span class="newshead"><%=diarycount%></span>篇,最新动态:<span class="newshead"><%=newscount%></span>篇<br>
            技术专题:<span class="newshead"><%=articlecount%></span>篇,程序资源:<span class="newshead"><%=softcount%></span>个<br>
            精品图库:<span class="newshead"><%=piccount%></span>条,留言数目:<span class="newshead"><%=gbcount%></span>条<br>
            酷站数目:<span class="newshead"><%=coolsitescount%></span>个,链接数目:<span class="newshead"><%=friendlinkcount%></span>个 
          </td>
        </tr>
        <!--#include file="online.asp"-->
        <tr> 
          <td align="center" class="chinese">当前在线:<span class="newshead"><%=total%></span>人</td>
        </tr>
        <tr> 
          <td align="center" class="chinese">峰值在<span class="newshead"><%=online_topdate%></span><br>
            曾经有<span class="newshead"><%=online_topnum%></span>人在线</td>
        </tr>
      </table>
      <br> 
      <%call index_vote()%>
      <br> 
</td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="7" valign="top"> <br> </td>
    <td width="556" valign="top"> 
      <%call index_diary()%>
      <%call index_news()%>
    </td>
    <td width="6" valign="top">　</td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif" colspan=5></td>
  </tr>
</table>
  </center>
</div>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr> 
    <td height="60"> 
      <div align="center"> 
	  <%call index_pic()%>
      </div></td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td valign="top" width="9">　</td>
    <td valign="top" width="190"> 
      <%call index_coolsites()%>
      <%call index_flink()%>
    </td>
    <td width="5" valign="top">　</td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="5" valign="top" background="img/xu.gif"> <br> 
    <br> </td>
    <td width="553" valign="top"> 
      <TABLE width=553 border=0 align=center cellPadding=0 cellSpacing=0>
        <TBODY>
          <TR> 
            <td align=top width=276 height="38" background="img/heike.gif"><img src="img/0.gif" width="276" height="40" usemap="#Map2Map" border="0"> 
              <map name="Map2Map">
                <area shape="rect" coords="215,3,269,20" href="article.asp" title="更多舞曲....">
            </map>            </td>
            <td width=1 background="img/xu.gif"></TD>
            <td align=top width=276 height="56" background="img/flash.gif"><img src="img/0.gif" width="276" height="40" usemap="#Map3Map" border="0"> 
              <map name="Map3Map">
                <area shape="rect" coords="218,3,267,20" href="article.asp" title="更多文章....">
              </map>
            </td>
          </tr>
          <TR> 
            <td height="200" align=top valign="top" background="img/bbgg4.gif"><%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=20 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
&nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,发表于<%=rs("art_date")%>,已经被阅读<%=rs("art_count")%>次。" target="_blank"><%=left(rs("art_title"),10)&"..."%></a> <br>
<%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;正在更新之中........"
	end if
	%></td>
            <td width=1 background="img/xu.gif"></TD>
            <td width=276 align=top valign="top" background="img/bbgg4 (1).gif"> 
              <%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=12 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
              &nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> 
              <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,发表于<%=rs("art_date")%>,已经被阅读<%=rs("art_count")%>次。" target="_blank"><%=left(rs("art_title"),36)&"..."%></a> 
              <br>
              <%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;正在更新之中........"
	end if
	%>
            </td>
          </tr>
          <TR> 
            <td align=top width=276 height="56" background="img/down.jpg"><img src="img/0.gif" width="276" height="40" usemap="#Map4Map" border="0"> 
              <map name="Map4Map">
                <area shape="rect" coords="218,5,270,20" href="download.asp" title="更多下载....">
              </map> </td>
            <td width=1 background="img/xu.gif"></TD>
            <td align=top width=276 height="56" background="img/asp.gif"><img src="img/0.gif" width="276" height="40" border="0" usemap="#Map5Map"> 
              <map name="Map5Map">
                <area shape="rect" coords="219,4,269,19" href="article.asp" title="更多特效....">
              </map>
            </td>
          </tr>
          <TR> 
            <td height="199" align=top valign="top" background="img/bbgg4 (1).gif"> 
              <%call index_soft()%>            </td>
            <td width=1 background="img/xu.gif"></TD>
            <td width=276 align=top valign="top" background="img/bbgg4 (2).gif"> 
              <%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=8 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
              &nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> 
              <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,发表于<%=rs("art_date")%>,已经被阅读<%=rs("art_count")%>次。" target="_blank"><%=left(rs("art_title"),36)&"..."%></a> 
              <br>
              <%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;正在更新之中........"
	end if
	%>
            </td>
          </tr>
      </table> </td>
    <td width="1" align="left" valign="top" background="images/dotlinev.gif">　</td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif" colspan=7></td>
  </tr>
</table>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="778" height="72" background="img/top02.gif"><div align="center">
    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="778" height="107" id="box3" align="middle">
<param name="allowScriptAccess" value="sameDomain" />
<param name="movie" value="images/banr.swf" />
<param name="quality" value="High" />
<param name="bgcolor" value="000000" />
                          <param name="_cx" value="20585">
                          <param name="_cy" value="2831">
                          <param name="FlashVars" value>
                          <param name="Src" value="images/banr.swf">
                          <param name="WMode" value="Window">
                          <param name="Play" value="0">
                          <param name="Loop" value="-1">
                          <param name="SAlign" value>
                          <param name="Menu" value="-1">
                          <param name="Base" value>
                          <param name="Scale" value="ShowAll">
                          <param name="DeviceFont" value="0">
                          <param name="EmbedMovie" value="0">
                          <param name="SWRemote" value>
                          <param name="MovieData" value>
                          <param name="SeamlessTabbing" value="1">
    <embed src="images/banr.swf" quality="high" bgcolor="#000000" width="192" height="122" name="box2" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object>
    
    </div></td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
</body>
</html>
<%
rswebcount.close
set rswebcount=nothing
end sub
%>