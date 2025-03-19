<!--#include file="../inc/sqlconn.asp"-->
<!-- #include file="checkuser.asp"-->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>管理首页</title>
<LINK href="img/lw.css" type=text/css rel=stylesheet>
</head>
<body topmargin="0">


<div align="center">
  <center>
  <table border="0" cellspacing="0" width="650"  style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" height="108">
    <tr>
      <td width="650" height="25" bgcolor="#EFEFFF" background="img/bg.gif" colspan="3">　</td>
    </tr>
    <tr>
      <td width="167" height="67">
		<img border="0" src="img/logo2.gif" width="130" height="74"></td>
      <td width="418" height="67"></td>
      <td width="65" height="67">

      
      </td>
    </tr>
    <tr>
      <td width="650" height="16" colspan="3">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2">
        <tr>
          <td width="5%"><span lang="zh-cn">&nbsp;<img border="0" src="img/announce.gif" width="18" height="18"></span></td>
          <td width="45%"><span lang="zh-cn">&nbsp;公告</span>:</td>
          <td width="27%">　</td>
          <td width="23%">　</td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
  </center>
</div>

<br>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="286">
    <tr>
      <td width="100%" background="img/bg.gif" height="22"><img border="0" src="img/jt.gif">
      欢迎您回来聊天室后台管理中心</td>
    </tr>
    <tr>
      <td width="100%" height="262" valign="top">
		<table border="0" width="648" id="table1" cellspacing="1">
			<tr>
				<td height="622" width="13" rowspan="5">　</td>
				<td height="117" width="625" valign="top"><p><font color="#800000">
				<b><br>
				特别通知<br>
				<br>
				</b></font>&nbsp;&nbsp; 1，聊湾发展离不开各位室主和管理的支持，请大家一起努力，<br>
&nbsp;&nbsp; 2，咱们的每个房间都是精品，不能让任何一个房间空着！这是我们一起努力的目标<br>
&nbsp;&nbsp; 3，如需要帮助请及时与咱们的首页客服联系。<br>
&nbsp;&nbsp; 4，大家在使用过程中遇到任何问题，请即时同我们联系！QQ779811 13729848646</td>
			</tr>
			<tr>
				<td height="117" width="625" valign="top"><br>
				<% if ff=2 then 
		
				if renqi<5 then Response.Write "<script>alert('特别提示\n尊敬用户好你！\n您是我们〖碧聊通〗服务的用户\n请您将网页提示的JS代码添加到您碧聊聊天室后台\n基本配置 - 欢迎词里面！\n相关说明请看网页内容！');youxiu.focus();</script>"
				%>
				<b><font color="#FF0000">你好</font></b>,您是<font color="#008000">〖碧聊通〗</font>用户。请将下面代码添加到您在<b><font color="#008000">碧聊聊天室后台 
				-</font></b> <b><font color="#000080">聊天室基本培植 -</font></b> 
				 
				<b><font color="#FF0000">欢迎词</font></b>里面<br>
				<br>
            
          		<br>
				如需要你聊天室网站工具条显示：t=1&nbsp; 如果不做变动：t=0<br>
            
          <INPUT id=youxiu0 type="text" name="youxiu0" maxlength="20" size="80" value="&lt;SCRIPT src=http://liaowan.com/chatjs.asp?roomid=<%=rmport%>&amp;t=1&gt;&lt;/SCRIPT&gt;"><br>
				<br>
				可以加在你现有欢迎词的前面或者后面都可以。<br>
				<br>
				该JS脚本功能：<br>
				1，统计聊天室流量。<br>
				2，置换碧聊广告为你的聊天室网站栏目连接。<br>
				3，扩展上管记录，聊天室查IP等功能。<br>
				<b>
				<font color="#008000">请您自觉添加本代码，你的流量是我们评定永久赠送该系统的依据！</font><font color="#800000"><br>
				<br>
				<% end if %>
				升级日志<br>
				<br>
				</font></b>01月06日 4套聊天室网站模板。 [用户可以自己设计自己喜欢的首页风格！]<b><font color="#800000"><br>
				</font></b>12月28日 自定义首页功能开通。[用户可以自己设计自己喜欢的首页风格！]<b><font color="#800000"><br>
				</font></b>12月24日 碧聊通诞生。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				[碧聊聊天室挂接系统正式命名为[碧聊通]，碧聊室主享受聊湾所有服务！！]<b><font color="#800000"><br>
				</font></b>12月23日 碧聊聊天室挂接系统。[<font color="#008000">所有拥有碧聊房间的用户从今天起有福了！！</font>]<b><font color="#800000"><br>
				</font></b>12月22日 聊天室后台权限系统。[<font color="#008000">聊天室后台起用全新的权限系统，更科学更人性化！</font>]<b><font color="#800000"><br>
				</font></b>12月21日 聊天室俱乐部功能。&nbsp; [<font color="#008000">对俱乐部系统进行了完善！</font>]<br>
				12月20日 聊天室俱乐部功能。&nbsp; [<font color="#008000">今晚，每个聊天室都拥有自己的俱乐部，管理自己的俱乐部会员，一个网络团队！</font>]<br>
				12月20日 论坛功能的BUG纠正。 [<font color="#3366CC">对已知的几个论坛功能的BUG进行了修改，如果还有问题请在论坛提出！</font>]<br>
				12月19日 聊天室论坛社区功能。[<font color="#CC9900">从今天起每个聊天都拥有一个自己</font><font color="#FF0000">独立的论坛</font><font color="#CC9900">！</font>]<br>
				12月18日 Party申请功能。&nbsp;&nbsp;&nbsp;&nbsp; [<font color="#3366CC">每个月可以申请</font><font color="#008000">3次Party</font><font color="#3366CC">。Party功能让你在举办Party当天最高在线人数翻一倍。</font>]<br>
				12月17日 聊天室主页域名实现&nbsp; [<font color="#CC9900">使用</font><font color="#FF0000">模拟虚拟主机技术</font><font color="#CC9900">，域名直接连接到聊天主页</font>]<br>
				12月16日 聊天室主页自定义配置[<font color="#3366CC">添加了 自定义CSS样式表，背景色，背景图片，</font><font color="#008000">聊天室标志LOGO</font><font color="#3366CC">。</font>]<br>
				12月15日 聊天室配套服务。&nbsp;&nbsp;&nbsp; [<font color="#CC9900">真情寄语，新闻系统，留言板。</font>]<br>
				12月14日 BChat脚本空间升级。 [<font color="#3366CC">BChat</font><font color="#008000">脚本空间升级为2个</font><font color="#3366CC">，以后大家可以使用双脚本配置聊天室了！</font>]<br>
				12月13日 相册功能设计完毕。&nbsp; [<font color="#CC9900">相册拥有</font><font color="#FF0000">自动生成缩略图</font><font color="#CC9900">，并把聊天室LOGO和相片信息</font><font color="#FF0000">打印到照片</font><font color="#CC9900">！</font>]</td>
			</tr>
			<tr>
				<td height="14" width="625" valign="top"></td>
			</tr>
			<tr>
				<td height="124" width="625" valign="top"><b>
				<font color="#800000">样板房间</font></b><p>&nbsp;&nbsp; 1，音乐之声&nbsp;&nbsp;&nbsp; 
				[<a target="_blank" href="http://2000.liaowan.com/">2000.liaowan.com</a>]<br>
&nbsp;&nbsp; 2，样板论坛&nbsp;&nbsp;&nbsp; [<a target="_blank" href="http://2000.liaowan.com/bbs">2000.liaowan.com/bbs</a>]<br>
&nbsp;&nbsp; 3，样板相册&nbsp;&nbsp;&nbsp; [<a target="_blank" href="http://2000.liaowan.com/?index=xiangce">2000.liaowan.com/?index=xiangce</a>]<br>
&nbsp;&nbsp; 4，新闻样板&nbsp;&nbsp;&nbsp; [<a target="_blank" href="http://2000.liaowan.com/?index=news">2000.liaowan.com/?index=news</a>]<br>
&nbsp;&nbsp; 4，留言样板&nbsp;&nbsp;&nbsp; [<a target="_blank" href="http://2000.liaowan.com/?index=guest/index">2000.liaowan.com/?index=guest/index</a>]<br>
　</td>
			</tr>
			<tr>
				<td height="57" width="625" valign="top"><b>
				<font color="#800000">技术支持<br>
				<br>
				</font></b>&nbsp;&nbsp;
				<a target="_blank" href="http://liaowan.com/bbs/ShowPost.asp?id=1046">
				聊湾后台技术互动|升级报告|技术交流|乐天[软件工程师]主持</a> <br>
　</td>
			</tr>
			<tr>
				<td width="644" colspan="2">　</td>
			</tr>
		</table>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="55">
    <tr>
      <td width="648" background="img/bg.gif" height="23" colspan="2">&nbsp;<img border="0" src="img/jt.gif">
      <span lang="zh-cn">你目前的电脑系统状态</span></td>
    </tr>
    <tr>8008061800
      <td width="32" height="30">&nbsp;<img border="0" src="img/ip.gif"></td>
      <td width="612" height="30">
<%
strsplit=split(Request.Servervariables("HTTP_USER_AGENT"),";")
strsplit(1)=replace(strsplit(1),"MSIE","Internet Explorer")
strsplit(2)=replace(strsplit(2),")","")
strsplit(2)=replace(strsplit(2),"NT 5.1","XP")
strsplit(2)=replace(strsplit(2),"NT 5.0","2000")
strsplit(1)=Trim(strsplit(1))
strsplit(2)=Trim(strsplit(2))

%>
&nbsp; 您的IP:<%=Request.ServerVariables("REMOTE_ADDR")%>&nbsp;&nbsp;&nbsp;&nbsp; 端口:<%=Request.ServerVariables("REMOTE_PORT")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                操作系统:<%=strsplit(2)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                浏览器:<%=strsplit(1)%></td>
    </tr>
    </table>
  </center>
</div>

<p align="center">　聊湾视频语音聊天网 </p>

</body>

</html>