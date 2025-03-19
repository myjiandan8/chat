<%
sub top()
%>
<HTML><HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<TITLE>聊湾 - 语音聊天 - 视频聊天 - 社区交友 - 个人服务 </TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META http-equiv=Window-target content=_top>
<META content=北京聊湾网络信息服务有限公司 name=AUTHOR>
<META content="LiaoWan.COM - 聊湾聊天的港湾！" name=DESCRIPTION>
<META content="聊湾, LiaoWan.COM, LiaoWan.NET, 我爱你, 交友, 征友, 速配, 约会, 聊天, 征婚, 婚介, 爱情, 友情, 友谊, 朋友, 伙伴, 情人, 伴侣, 同性, 异性, 男人, 女人, 男士, 女士, 男孩, 女孩, 帅哥, 美女, 单身, 独身, 性感, 浪漫, 激情, 交友服务, 交友频道, 交友中心, 交友社区, 交友网络, 交友网站, 网络交友, 网上交友, 手机交友, 短信交友, 男性交友, 女性交友, 成人交友, 同城交友, 中国交友, 亚洲交友, 国际交友, 同城约会, 在线约会, 婚姻介绍, 手机, 短信, 彩信, 铃声, 图片, 照片, 靓照, 贴图, 语音, 视频, 搜索, 文章, 邮箱, 商城, i love you, i love u, match, matches, matching, date, dating, chat, chatroom, matchmaker, matchmaking, marry, marriage, love, friendship, companionship, friend, companion, partner, people, personal, valentine, mate, homosexual, heterosexual, male, female, men, women, boy, girl, single, sexy, romance, romantic, club, adult, internet, local, china, chinese, asia, asian, international, dating service, online dating, mobile, phone, sms, mms, photos, pictures, pics, sound, voice, video, search, searching, articles, mail, email, e-mail, shopping, mall," 
name=KEYWORDS>
<META content="home page" name=CATEGORY>
<META content=all name=ROBOTS>
<LINK href="../images/style.css" type=text/css rel=stylesheet>
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY bgColor=#B4B4B4 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<TABLE id=AutoNumber2 style="BORDER-COLLAPSE: collapse" borderColor=#111111 
height=34 cellSpacing=0 cellPadding=0 width="760" 
background="../images/bg_top_01.gif" border=0 align="center">
  <TBODY>
  <TR>
    <TD>
      <DIV align=center>
      <CENTER>
      <TABLE id=AutoNumber5 style="BORDER-COLLAPSE: collapse" 
      borderColor=#111111 height=30 cellSpacing=0 cellPadding=0 width=760 
      border=0>
        <TBODY>
        <TR>
          <TD width=2 height="30">
          </TD>
          <TD width=244 height="30">　</TD>
          <TD width=136 height="30">　</TD>
          <TD width=365 height="30">
            <P align=right><A href="http://union.520.com/" target=_blank>
            <IMG 
            alt=合作加盟 src="../images/button_join.gif" 
            border=0></A></P></TD>
          <TD width=11 height="30">　</TD>
          <TD width=2 height="30">
          </TD></TR></TBODY></TABLE></CENTER></DIV></TD></TR></TBODY></TABLE>
<TABLE id=AutoNumber3 style="BORDER-COLLAPSE: collapse" borderColor=#111111 
height=143 cellSpacing=0 cellPadding=0 width="760" border=0 align="center">
  <TBODY>
  <TR>
    <TD vAlign=top background="../images/bg_520_01.gif" height="143">
      <DIV align=center>
      <CENTER>
      <TABLE id=AutoNumber10 style="BORDER-COLLAPSE: collapse" 
      borderColor=#111111 height=99 cellSpacing=0 cellPadding=0 width=760 
      border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=760 
          background="../images/bg_top_02.gif" height=61>
            <TABLE id=AutoNumber18 style="BORDER-COLLAPSE: collapse" height=105 
            cellSpacing=0 cellPadding=0 width=760 border=0>
              <TBODY>
              <TR>
                <TD width=214 height="105" rowspan="2">　</TD>
                <TD width=542 height="68">　</TD>
                <TD width=4 height="105" rowspan="2">　</TD></TR>
              <tr>
                <TD width=542 height="19">首页 聊天&nbsp; 社区&nbsp; 交友&nbsp; 文学&nbsp; 
                网址&nbsp; 服务&nbsp; 音乐&nbsp; 影视&nbsp; 艺人&nbsp; 短信&nbsp; 图库&nbsp; 
                下载&nbsp; 广告&nbsp; 关于</TD>
                </tr>
              </TBODY></TABLE></TD></TR>
        <TR>
          <TD width=760 height=24><IMG height=24 
            src="../images/space.gif" width=33 border=0></TD></TR>
        <TR>
          <TD width=760 height=14>
          <IMG 
            src="../images/pic_top_03.gif" 
          border=0></TD></TR></TBODY></TABLE></CENTER></DIV></TD></TR></TBODY></TABLE>
<DIV align=center>
<CENTER>
<TABLE id=AutoNumber8 style="BORDER-COLLAPSE: collapse" cellSpacing=0 
cellPadding=0 width=761 border=0 bgcolor=#ffffff height="491">
  <TBODY>
  <TR>
    <TD vAlign=top width=1 
      background="../images/space_01.gif" height="477">
    <IMG 
      src="../images/space_01.gif" border=0></TD>
    <TD vAlign=top width=10 height="477"><IMG height=1 
      src="../images/space.gif" width=10 border=0></TD>
    <TD vAlign=top width=738 height="477" align="center">
<%
end sub
function vcount()
OPENadmin  
set rscount=conn.execute("select * from Vcount")
sql="UPDATE vcount  SET vtotal = vtotal + 1"
conn.execute (sql)
rscount.close
set rscount=nothing
end function
vcount
%>