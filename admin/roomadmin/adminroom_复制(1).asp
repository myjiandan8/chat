<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--数据库连接文件#include file="../inc/BBTOP.asp" -->
<!--数组数据库文件#include file="../INC/Chatfl.asp" -->
<!--数组数据库文件#include file="../INC/roomsc.asp" -->
<%
'定义变量
On Error Resume Next
dim port,roomname,maxnum,userpasswrd,userroompasswd,id2

	rmport=request("roomport")
	xz=Request("xz")

	'port1=Request("port1")
    'port=Request("port")
	'roomname = Request("roomname")
	'maxnum = Request("maxnum")
	userpasswd = Request("userpasswd")
	bodycolor = Request("bodycolor")
	bodyurl = Request("bodyurl")
	bottomcolor = Request("bottomcolor")
	bottomurl = Request("bottomurl")
	topcolor = Request("topcolor")
	adnote = Request("adnote")
	scripturl = Request("scripturl")
	leaveurl = Request("leaveurl")
	fullurl = Request("fullurl")
	unauthurl = Request("unauthurl")
	setadm = Request("setadm")
	setimg = Request("setimg")
	setdoor = Request("setdoor")
	setsex = Request("setsex")
	admintor = Request("admintor")
	channels = Request("channels")
	rtype = Request("rtype")
	admin = Request("admin")
	RoomType = Request("RoomType")
	liebiao = Request("liebiao")
	ID2 = Request("ID2")

	vip = Request("vip")
	muban = Request("muban")
	vms = Request("vms")
	
	
	userpasswd = Request("userpasswd")
	adminpasswd = Request("adminpasswd")
	userpasswd1 = Request("userpasswd1")
	userpasswd2 = Request("userpasswd2")
	
	
    TOTAL=""
    YESTERDAY=""
    BMONTH=""
    MONTHS=""
    TODAY=""
	renqi=""

	keyfile = keyfile
	bindhost = chathostip
	bindserial = chatserialno


	if setadm<>"1" then setadm="0"
	if setimg<>"1" then setimg="0"
	if setsex<>"1" then setsex="0"
	if setdoor<>"1" then setdoor="0"
	if topcolor="" then topcolor="#EFF5FE"			'默认在线列表区背景颜色
	if bodycolor="" then bodycolor="#FFFFFF"		'默认聊天区区背景颜色
	if bottomcolor="" then bottomcolor="#EFF5FE"	'默认输入区背景颜色
	if adnote="" then adnote="<center>欢迎光临<font color=#ff0000><big>$1</big></font>！ 请文明聊天，切勿发布有关色情、政治、黑客等的信息。"




'登陆验证
if Request("roomport")<>"" and Request("passwordo")<>""  then

	sql="select * from [Room] where port=" & trim(request("roomport")) & " and adminpasswd='" & replace(trim(request("passwordo")),"'","''") & "'"
	set rs = conn.Execute(sql)

	if not (rs.eof or err) then
		session("roomport_" & rmport)=request("roomport") & "_" & 
		xz="index"	
	else	

	m="用户名或密码错误！"
%>

<script language=Javascript>
	alert("用户名或密码错误！请重新输入");
	//window.history.go(-1);	
</script>

<%	
	end if
end if
%>

<%
'大修改
if xz="adxg" and session("roomport_" & rmport)= rmport  then


	sql="select * from [Room] where port=" &session("roomport_" & rmport)
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
       'rs("port") = port
       'rs("RoomName") = roomname


       'rs("host") = chathostip
       'rs("maxnum") = maxnum
       rs("bodycolor") =bodycolor
       rs("bodyurl") =bodyurl
       rs("bottomcolor") =bottomcolor
       rs("bottomurl") =bottomurl
       rs("topcolor") =topcolor
       rs("adnote") =adnote
       rs("scripturl") =scripturl
       rs("leaveurl") =leaveurl
       rs("fullurl") =fullurl
       rs("unauthurl") =unauthurl
       rs("setadm") =setadm
       rs("setimg") =setimg
       rs("setdoor") =setdoor
       rs("setsex") =setsex

       'rs("admintor") =admintor
       'rs("channels") =channels
       'rs("adminpasswd") =userpasswd
       rs("rtype") =rtype
       'rs("keyfile") =keyfile
       'rs("bindserial") =bindserial
       'rs("admin") =admin
       'rs("RoomType") =RoomType

       rs("muban") =muban
       rs("vms") =vms

       rs.Update
       rs.close
	   xz="form"
	   
	   call shujv()
	   
	   call edit()
	   
		
%>



<script language=Javascript>
	alert("修改成功!!");
	//window.history.go(-1);	
</script>
		
<%		
	else	

%>

<script language=Javascript>
	alert("开国际玩笑了!!");
	//window.history.go(-1);	
</script>
<%	
	end if
end if

'小修改  个性设置   修改密码
if xz="xg" and session("roomport_" & rmport)= rmport  then


	sql="select * from [Room] where port=" &session("roomport_" & rmport)
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
	   '修改密码
	   if adminpasswd<>"" and Request("password")<>"" then
	   
	   
	   	if adminpasswd <> rs("adminpasswd")  then
			response.write "旧密码输入错误！<br><a href='Javascript:window.history.go(-1)'>返回</a>"
			response.End
		end if
	   
	   
	   	if Request("password1")<>Request("password")  then
			response.write "两次密码输入不正确！<br><a href='Javascript:window.history.go(-1)'>返回</a>"
			response.End
		end if
	   
       	rs("adminpasswd") =Request("password1")
	    rs("userpasswd1") =Request("userpasswd1")
		rs("userpasswd2") =Request("userpasswd2")
  	
       end if
       
       '个性设置
       if RoomType<>"" and id2<>"" and liebiao<>"" then
       	rs("RoomType") =RoomType
       	rs("id2") =id2
       	rs("liebiao") =liebiao
       	rs("vip") =vip
       	'rs("muban") =muban
       end if
       
       rs.Update
       rs.close
	   xz="index"
	   
%>


<script language=Javascript>
	alert("修改成功!!<%=liebiao%>");
	//window.history.go(-1);	
</script>
		
<%		
	else	

%>

<script language=Javascript>
	alert("开国际玩笑了!!");
	//window.history.go(-1);	
</script>
<%	
	end if
end if	


'设置管理员
if xz="adminxg" and session("roomport_" & rmport)= rmport  then


	sql="select * from [Room] where port=" &session("roomport_" & rmport)
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
       rs("admintor") =admintor

       rs.Update
       rs.close
	   xz="form"
	   
	   
	sql="select * from chatadmin"
	set rsm=conn.execute (sql)
	admintor = rsm("chatadmin") & vbCrLf & admintor
	rsm.close
	   
	'写adminpass_端口.txt文件
	letian=roomcfgdir & "\" &session("roomport_" & rmport) & "\adminpass_" &session("roomport_" & rmport) & ".txt"
	Dim fso
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set ts = fso.OpenTextFile(letian, ForWriting, true)
	ts.Write(admintor)
	ts.Close()
	
	
%>



<script language=Javascript>
	alert("管理员设置成功!!");
	//window.history.go(-1);	
</script>
		
<%		
	else	

%>

<script language=Javascript>
	alert("开国际玩笑了!!");
	//window.history.go(-1);	
</script>
<%	
	end if
end if

'JS脚本的修改
if xz="jsxg" and session("roomport_" & rmport)= rmport  then

	   
	   	if  Request("jstxt")="" then
			response.write "提交内容不能为空，空得还有什么用哦！<br><a href='Javascript:window.history.go(-1)'>返回</a>"
			response.End
		end if
	   
	   
	'写端口.js文件
	psths = server.mappath("/chatjs")

	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	Set ts = fso.OpenTextFile(psths & "\" & session("roomport_" & rmport) & ".js", ForWriting, true)
	ts.Write(Request("jstxt"))
	ts.Close()
	xz="js"
%>

<script language=Javascript>
	alert("修改成功!!");
	//window.history.go(-1);	
</script>
<%		
end if
%>

<%
'读出数据
if session("roomport_" & rmport)= rmport and rmport<>"" then

call shujv()

else

xz=""

end if

%>

<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
.result_page { font-size : 12px; font-family : Verdana;line-height: 130%;}
</STYLE>
          
          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>聊天室快速管理!</TITLE>



<% call top %>

<% if xz="form" and session("roomport_" & rmport)= rmport then
 %>


	<script langauge="javascript">
	function trim(string){
	var i=0,j=string.length-1,tmp,result;
	tmp=string.charAt(i);
	while(tmp==' '){
	i++;
	tmp=string.charAt(i);
	}
	tmp=string.charAt(j);
	while(tmp==' '){
	j--;
	tmp=string.charAt(j);
	}
	if(i<=j){
	result=string.substring(i,j+1);
	}
	else{
	result="";
	}
	return result;
	}
	function notNull(fieldname,string){
	string.value=trim(string.value);
	if(string.value==""){
	alert("请填写“"+fieldname+"”！");
	string.focus();
	return false;
	}
	else{
	return true;
	}
	}
	function check_url(urlname,urlobj) {
		val=urlobj.value
		if ((val != "")){
			if ((val.indexOf ('http://') == -1)|| (val.indexOf ('.') == -1)) {
				alert(urlname+' 不是正确的URL格式，请输入正确的URL格式。');
				urlobj.focus();
				return false;
			}
		}
		return true;
	}
	function validform(theform)
	{
	    if(check_url("输入区背景图形",theform.bottomurl)&&check_url("聊天区背景图形",theform.bodyurl)&&check_url("离开的连接",theform.leaveurl)&&check_url("非授权用户登录跳转URL",theform.unauthurl)&&check_url("满员跳转URL",theform.fullurl))
	      return true;
	      return false;
	}
	</script>
	
	
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾聊天室房间快速管理</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="myform" method="post" action="adminroom_复制(1).asp">
      <input type=hidden name=xz value="adxg"> <input type=hidden name=roomport value="<%=port%>">
      
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <font color="#FF0000"><b>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=index">首页</a></b></font><b><font color="#FF0000"> <a href="adminroom.asp?roomport=<%=rmport%>&xz=form">基本配置</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">个性设置</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">设管理员</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">自定义JS脚本</a>
          <a target="_blank" href="adminmb.asp?roomport=<%=rmport%>">自定义模板编辑</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">修改密码</a>
          <a target="_blank" href="adminweb.asp?roomport=<%=rmport%>">网站管理</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">重新启动</a>&nbsp;&nbsp; </font>
          </b>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="638">
          <tr>
            <td width="592" bgcolor="#800080" height="26" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] 基本配置</font></b></td>
          </tr>

          <tr>
          
            <td width="564" height="19" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">　</td>
            </tr>
          <tr>
	    <td width="20%" align=left height="16">端口号：</td>
	    <td width="80%" height="16"> <%=port%>　</td>
	      </tr>
          <tr>
	    <td  align=left height="19">聊天室名<font color=red>**</font>：</td>
	    <td height="19" > <%=roomname%>　</td>
	      </tr>
          <tr>
	    <td  align=left height="19">最高在线人数<font color=red>**</font>：</td>
	    <td height="19" > <%=maxnum%>　</td>
	      </tr>
          <tr>
	    <td  align=left height="12" width="127">模板选择：</td>
	    <td height="12" width="455" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>默认模板</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>自定义模板</option>

        <option value="2" <%if muban=2 then response.write "selected"%>>[反向]标准模板</option>

        </select></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt">聊天室类型<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" >文字<input type="radio" name="rtype" value="T" <% if rtype="T" then response.write "checked" %> > 语音<input type="radio" name="rtype" value="A" <% if rtype="A" then response.write "checked" %> > 视频<input type="radio" name="rtype" value="V" <% if rtype="V" then response.write "checked" %>  ><font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left height="1" width="127">语音模式选择：</td>
	    <td height="1" width="455" > 
        
<select size="1" name="vms">

        <option value="0" <%if vms=0 then response.write "selected"%>>通用编码 1.3Kbps 高速编码 强烈推荐 为了保证你房间不卡请选择这个</option>
        <option value="1" <%if vms=1 then response.write "selected"%>>极低话音编码 2.4Kbps 音乐质量太差 不推荐</option>

        <option value="2" <%if vms=2 then response.write "selected"%>>8KHz立体声编码 25Kbps 推荐 音质很好 但速度慢</option>
        <option value="3" <%if vms=3 then response.write "selected"%>>16KHz立体声编码 45Kbps 音质最好 拨号上网肯定不行</option>

        </select> 推荐使用通用编码，因为 45Kbps 立体声 很多人都不行 主要是地域网络速度的问题。</td>
	      </tr>
          <tr>
	    <td  align=left height="21">聊天区背景颜色：</td>
	    <td height="21" ><input type="text" name="bodycolor" size="10"  maxlength=7 value="<%=bodycolor%>"> （如：#FFFFFF）</td>
	      </tr>
          <tr>
	    <td  align=left height="40">聊天区背景图形URL：</td>
	    <td height="40" ><input type="text" name="bodyurl" size="50" maxlength=80 value="<%=bodyurl%>"> <br>（如 http://www.aaa.com/bbb.jpg）</td>
	      </tr>
          <tr>
	    <td  align=left height="21">输入区背景颜色：</td>
	    <td height="21" ><input type="text" name="bottomcolor" size="10" maxlength=7 value="<%=bottomcolor%>"> （如 #B4B4FE）</td>
	      </tr>
          <tr>
	    <td  align=left height="38">输入区背景图形URL：</td>
	    <td height="38" ><input type="text" name="bottomurl" size="50" maxlength=80 value="<%=bottomurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=left height="21">在线列表背景颜色：</td>
	    <td height="21" >
        <input type="text" name="topcolor" size="13"  maxlength=7 value="<%=topcolor%>"> （如 #B4B4FE）</td>
	      </tr>
          <tr>
	    <td  align=left height="21">欢迎词：</td>
	    <td height="21" >
        <textarea rows="3" name="adnote" cols="49"><%=adnote%></textarea> </td>
	      </tr>
          <tr>
	    <td  align=left height="40">聊天室脚本URL：</td>
	    <td height="40" >
        <br>
        <textarea rows="3" name="scripturl" cols="49"><%=scripturl%></textarea><br>
            <font color="#800000">范例:</font><font color="#FF0000">&lt;SCRIPT src=http://xxx.xxx/xxx.js&gt;&lt;/SCRIPT&gt;</font>&nbsp;
        <br>
        不要出现&quot;号 ！！！&lt; &gt; 要成对使用 要不就会页面出错！！</td>
	      </tr>
          <tr>
	    <td  align=left height="21">离开的URL：</td>
	    <td height="21" ><input type="text" name="leaveurl" size="50" maxlength=50 value="<%=leaveurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=left height="21">满员跳转URL<font color=blue>**</font>：</td>
	    <td height="21" ><input type="text" name="fullurl" size="50" maxlength=50 value="<%=fullurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left height="38">非授权用户登录跳转URL<font color=blue>**</font>：</td>
	    <td height="38" ><input type="text" name="unauthurl" size="50" maxlength=50 value="<%=unauthurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt" height="20">是否标志管理员<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" height="20" >是<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %> > 否<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >（管理员名字后面是否加红星）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt" height="20">是否允许图音<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" height="20" >是<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > 否<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %>  >（是否在聊天室里允许发送图音）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt" height="20">是否允许关门<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" height="20" >是<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > 否<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> >（是否允许管理执行关门功能）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt" height="20">是否区分性别<font color=blue>**</font>：</td>
	    <td width="450" style="font-family: 宋体; font-size: 9pt" height="20" >是<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> > 否<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >（聊天室里是否显示男为绿色、女为红色、保密为兰色）<font color=green>**</font></td>
	      </tr>

          <tr>
	    <td  align=left width="573" style="font-family: 宋体; font-size: 9pt" colspan="2" height="57">
        1、<font color=red>**</font> 标志的项表示必须填写项。<br>
	    2、<font color=blue>**</font> 标志的项表示如果有改动，需要重启聊天室进程才能生效。<br>
	    3、<font color=green>**</font> 标志表示端口的非0ID号的配置不可以修改的项 </td>
	      </tr>

          <tr>
            <td width="592" height="37" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认修改 " name="B1">
  
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>

<% elseif xz="gexing" and session("roomport_" & rmport)= rmport then %>




<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾聊天室房间快速管理</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form3" method="post" action="adminroom_复制(1).asp">
      <input type=hidden name=xz value="xg"> <input type=hidden name=roomport value="<%=port%>">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <font color="#FF0000"><b><a href="adminroom.asp?roomport=<%=rmport%>&xz=index">首页</a></b></font><b><font color="#FF0000"> <a href="adminroom.asp?roomport=<%=rmport%>&xz=form">基本配置</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">个性设置</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">设管理员</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">自定义JS脚本</a>
          <a target="_blank" href="adminmb.asp?roomport=<%=rmport%>">自定义模板编辑</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">修改密码</a>
          <a target="_blank" href="adminweb.asp?roomport=<%=rmport%>">网站管理</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">重新启动</a>&nbsp;&nbsp; </font>
          </b>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="191">
          <tr>
            <td width="586" bgcolor="#800080" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] 个性配置</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">　</td>
            </tr>
          <tr>
	    <td width="127" align=left height="1">端口号：</td>
	    <td width="455" height="1"> <%=port%></td>
	      </tr>
          <tr>
          
            <td width="127" height="1" align="right" bgcolor="#F9F9F7">
            <p align="left">聊天室类型：</td>
            <td width="455" height="1" bgcolor="#F9F9F7"> 
        
<select size="1" name="RoomType">
<%
i=1
do while (i<Chatfls) %>
<option value="<%=i%>" <%if RoomType=i then response.write "selected"%>><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
        </select> </td>
            </tr>
          <tr>
	    <td  align=left height="9" width="127">聊天室区域选择：</td>
	    <td height="9" width="455" >
	    
<SELECT name=ID2>
<option selected value="请选择">请选择</option>
<%
sql="select * from D_2 where id1=1 order by id2 asc"
set rsm=conn.execute (sql)
%>
<%
do while not (rsm.eof or err)
%> 
<option value="<%=rsm("id2")%>" <%if rsm("id2")=id2 then response.write "selected"%>><%=rsm("name2")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
</SELECT> 

 </td>
	      </tr>
          <tr>
	    <td  align=left height="6" width="127">是否出现在公共列表：</td>
	    <td height="6" width="455" > 
        
<select size="1" name="liebiao">

<option value="0" <%if liebiao=0 then response.write "selected"%>>是</option>
<option value="1" <%if liebiao=1 then response.write "selected"%>>否</option>
        </select></td>
	      </tr>
          <tr>
	    <td  align=left height="88" width="127">认证会员：</td>
	    <td height="88" width="455" ><textarea rows="8" name="vip" cols="50"><%=vip%></textarea></td>
	      </tr>

          <tr>
            <td width="586" height="42" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <p align="left">当认证会员不为空的时候，只有认证会员才能进入本聊天室。认证会员|分割每个名字后必须接一个|符号，例子： 
            *乐天|*飞龙|渔民|&nbsp; 
            在比如：*飞龙|&nbsp;&nbsp; 注意注册会员前面加星号*</td>
            </tr>

          <tr>
            <td width="586" height="57" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认修改 " name="B1"></td>
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>

<% elseif xz="admin" and session("roomport_" & rmport)= rmport then %>




<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾聊天室房间快速管理</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form4" method="post" action="adminroom_复制(1).asp">
      <input type=hidden name=xz value="adminxg"> <input type=hidden name=roomport value="<%=port%>">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <font color="#FF0000"><b><a href="adminroom.asp?roomport=<%=rmport%>&xz=index">首页</a></b></font><b><font color="#FF0000"> <a href="adminroom.asp?roomport=<%=rmport%>&xz=form">基本配置</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">个性设置</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">设管理员</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">自定义JS脚本</a>
          <a target="_blank" href="adminmb.asp?roomport=<%=rmport%>">自定义模板编辑</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">修改密码</a>
          <a target="_blank" href="adminweb.asp?roomport=<%=rmport%>">网站管理</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">重新启动</a>&nbsp;&nbsp; </font>
          </b>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="130">
          <tr>
            <td width="586" bgcolor="#800080" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] </font></b>
            <font color="#FFFFFF"><b>设置管理员</b></font></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">　</td>
            </tr>
          <tr>
	    <td width="103" align=left height="1">端口号：</td>
	    <td width="479" height="1"> <%=port%></td>
	      </tr>
          <tr>
	    <td  align=left height="9" width="103">设置管理管理员：</td>
	    <td height="9" width="479" ><textarea rows="8" name="admintor" cols="50"><%=admintor%></textarea> </td>
	      </tr>
          <tr>
	    <td  align=left height="53" width="103"></td>
	    <td height="53" width="479" >1.关于管理员的配置，管理名、密码和级别之间用&quot;|&quot;分隔，如: 
        admin|passwd|1 
        每个名字一行，注意后面不要留空格。如果管理员名字为注册的用户名，要在名字前面加上星号。级别0表示有踢名字权限；1表示有踢名字和IP权限；9表示有1级权限并有不被踢的权限。</td>
	      </tr>

          <tr>
            <td width="586" height="83" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认修改 " name="B1">
  
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>

<% elseif xz="pass" and session("roomport_" & rmport)= rmport then %>




<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾聊天室房间快速管理</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form5" method="post" action="adminroom_复制(1).asp">
      <input type=hidden name=xz value="xg"> <input type=hidden name=roomport value="<%=port%>">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <font color="#FF0000"><b><a href="adminroom.asp?roomport=<%=rmport%>&xz=index">首页</a></b></font><b><font color="#FF0000"> <a href="adminroom.asp?roomport=<%=rmport%>&xz=form">基本配置</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">个性设置</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">设管理员</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">自定义JS脚本</a>
          <a target="_blank" href="adminmb.asp?roomport=<%=rmport%>">自定义模板编辑</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">修改密码</a>
          <a target="_blank" href="adminweb.asp?roomport=<%=rmport%>">网站管理</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">重新启动</a>&nbsp;&nbsp; </font>
          </b>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="186">
          <tr>
            <td width="586" bgcolor="#800080" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] 修改密码</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">　</td>
            </tr>
          <tr>
	    <td width="98" align=left height="1">端口号：</td>
	    <td width="484" height="1"> <%=port%></td>
	      </tr>
          <tr>
	    <td  align=left height="9" width="98">原密码：</td>
	    <td height="9" width="484" >
        <input type="password" name="adminpasswd" size="18"  maxlength=15></td>
	      </tr>
          <tr>
	    <td  align=left height="4" width="98">新密码：</td>
	    <td height="4" width="484" >
        <input type="password" name="password" size="18"  maxlength=15></td>
	      </tr>

          <tr>
	    <td  align=left height="19" width="98">密码验证：</td>
	    <td height="19" width="484" >
        <input type="password" name="password1" size="18"  maxlength=15></td>
	      </tr>

          <tr>
	    <td  align=left height="24" width="582" colspan="2">
        <font color="#FF0000">密码要改一起改！全部的密码都要输入！！！</font><font color="#008000"><br>
        以下密码不修改就不要填写</font>。 
        如果一下密码为空，那么该管理项目将为无效，为了安全，在没有必要的情况下不要设置密码。同样为了安全当你加了副室主或者高管理后可以给他们这些密码，来做相关的管理。不要把室主管理密码提供给别人。</td>
	      </tr>
          <tr>
	    <td  align=left height="7" width="98">配置密码：</td>
	    <td height="7" width="484" >
        <input name="userpasswd1" size="18"  maxlength=15 value="<%=userpasswd1%>"></td>
	      </tr>
          <tr>
	    <td  align=left height="15" width="98">设置管理员密码：</td>
	    <td height="15" width="484" >
        <input type="text" name="userpasswd2" size="18"  maxlength=15 value="<%=userpasswd2%>"></td>
	      </tr>

          <tr>
            <td width="586" height="83" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认修改 " name="B1">
  
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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>
<%
'重新启动房间
 elseif xz="start" and session("roomport_" & rmport)= rmport then 
%>



<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾聊天室房间快速管理</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form7" method="post" action="adminroom_复制(1).asp">
      <input type=hidden name=xz value="xg"> <input type=hidden name=roomport value="<%=port%>">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <font color="#FF0000"><b><a href="adminroom.asp?roomport=<%=rmport%>&xz=index">首页</a></b></font><b><font color="#FF0000"> <a href="adminroom.asp?roomport=<%=rmport%>&xz=form">基本配置</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">个性设置</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">设管理员</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">自定义JS脚本</a>
          <a target="_blank" href="adminmb.asp?roomport=<%=rmport%>">自定义模板编辑</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">修改密码</a>
          <a target="_blank" href="adminweb.asp?roomport=<%=rmport%>">网站管理</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">重新启动</a>&nbsp;&nbsp; </font>
          </b>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="237">
          <tr>
            <td width="586" bgcolor="#800080" height="28"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] 重新启动</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="145" align="right" bgcolor="#F9F9F7">
            <p align="center">　
            房间重新启动成功！
            
    <%
    if session("roomport_" & rmport)= rmport and rmport<>"" then

    urls="http://liaowan.com/cgi-bin/roomrestartletian.pl?roomid=0&port=" & session("roomport_" & rmport) & "&userroompasswd=" & userroompasswd
	'urls="http://lwmm:5/cgi-bin/roomrestart.pl?roomid=0&port=" & session("roomport_" & rmport) & "&userroompasswd=" & userroompasswd
	if InStr(GetURL(urls),"成功启动聊天室！")=0 then 
	response.write "<script>alert('系统出错，请与聊湾客户服务0351-6179283反应！');</script>"
	response.End
	else
	response.write "<script>alert('启动成功！');</script>"
	end if
	
	
    else
    
    response.write "<script>alert('非法操作！');window.close();</script>"

    end if
    
    
    %>
            
            
            
            
            </td>
            </tr>

          <tr>
            <td width="586" height="83" align="center" bgcolor="#FFFFFF">
            

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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>
<%
'首页
 elseif xz="index" and session("roomport_" & rmport)= rmport then 


%>



<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="526">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="404" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾聊天室房间快速管理</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      
      <input type=hidden name=xz value="jsxg"> <input type=hidden name=roomport value="<%=port%>">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <font color="#FF0000"><b><a href="adminroom.asp?roomport=<%=rmport%>&xz=index">首页</a></b></font><b><font color="#FF0000"> <a href="adminroom.asp?roomport=<%=rmport%>&xz=form">基本配置</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">个性设置</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">设管理员</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">自定义JS脚本</a>
          <a target="_blank" href="adminmb.asp?roomport=<%=rmport%>">自定义模板编辑</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">修改密码</a>
          <a target="_blank" href="adminweb.asp?roomport=<%=rmport%>">网站管理</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">重新启动</a>&nbsp;&nbsp; </font>
          </b>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="599" id="AutoNumber2" height="515">
          <tr>
            <td width="593" bgcolor="#800080" height="28"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] 首页</font></b></td>
          </tr>

          <tr>
          
            <td width="593" height="21" align="right" bgcolor="#F9F9F7" valign="top">
            <p align="center">　</td>
            </tr>

          <tr>
          
            <td width="593" height="318" align="center" bgcolor="#F9F9F7" valign="top">
            
  

            <p align="left">欢迎 贵室主 来到室主管理后台。<br>
            贵聊天室地址http://<%=port%>.liaowan.com<br>
            我们为你的聊天是准备了一个配置脚本空间&nbsp; 《自定义JS脚本》<br>
            如果不会使用到<a target="_blank" href="http://liaowan.com/bbs">论坛</a>看帮助帖子<br>
            ★<font color="#FF0000">最新推荐基本配置</font>:<font color="#008000">语音编码</font>使用1.3K通用语音编码。<font color="#008000">是否使用</font>图音设置为否，防止无聊人士捣乱！<br>
　<p align="left">★推广自己的聊天室<br>
　<table border="1" cellspacing="1" width="100%" id="AutoNumber4" height="398">
              <tr>
                <td width="25%" height="19" bgcolor="#000080" align="center">
                <font color="#FFFFFF">搜索引擎</font></td>
                <td width="54%" height="19" bgcolor="#000080" align="center">
                <font color="#FFFFFF">提交网站登陆注册</font></td>
                <td width="21%" height="19" bgcolor="#000080" align="center">
                <font color="#FFFFFF">说明</font></td>
              </tr>
              <tr>
                <td width="25%" height="42" align="center">
                <img border="0" src="http://cn.yimg.com/search/yisou/yisou_90_65.gif" width="109" height="42"></td>
                
                <td width="54%" height="42" align="center"> 
                 <input type="button" value="YAHOO 和 3721 搜索引擎登陆" name="B3" onClick="window.open('http://www.yisou.com/search_submit.html')"></td>
                 
                <td width="21%" height="42" align="center">搜索引擎会在一周内自动收录您的网页。</td>
              </tr>
              <tr>
                <td width="25%" height="47" align="center">
                <img border="0" src="http://www.baidu.com/img/slogo.gif" width="119" height="47"></td>
                
                <td width="54%" height="47" align="center"> 
                 <input type="button" value="百度 最大中文搜索引擎登陆" name="B3" onClick="window.open('http://www.baidu.com/search/url_submit.html')"></td>
                 
                <td width="21%" height="47" align="center">搜索引擎会在一周内自动收录您的网页。</td>
              </tr>
              <tr>
                <td width="25%" height="51" align="center">
                <img border="0" src="http://www.google.com/images/google_sm.gif" width="115" height="51"></td>
                
                <td width="54%" height="51" align="center"> 
                 <input type="button" value="GOOGLE 全球最大的搜索引擎登陆" name="B3" onClick="window.open('http://www.google.com/intl/zh-CN/add_url.html')"></td>
                 
                <td width="21%" height="51" align="center">搜索引擎会在一周内自动收录您的网页。</td>
              </tr>


              <tr>
                <td width="25%" height="56" align="center">
                <img border="0" src="http://image.zhongsou.com/image/logo.gif" width="132" height="56"></td>
                
                <td width="54%" height="56" align="center"> 
                 <input type="button" value="中国搜索 中国搜索联盟 推荐" name="B3" onClick="window.open('http://register.zhongsou.com/NetSearch/frontEnd/free_protocol.htm')"></td>
                 
                <td width="21%" height="56" align="center">注册比较复杂</td>
              </tr>
              <tr>
                <td width="25%" height="47" align="center">
                <img border="0" src="http://www.sogou.com/image/slogo.gif" width="125" height="44"></td>
                
                <td width="54%" height="47" align="center"> 
                 <input type="button" value="搜狗  搜狐 搜索引擎 强烈推荐" name="B3" onClick="window.open('http://db.sohu.com/regurl/regform.asp?Step=REGFORM&class=')"></td>
                 
                <td width="21%" height="47" align="center">搜索引擎会在一周内自动收录您的网页。</td>
              </tr>


              <tr>
                <td width="25%" height="52" align="center">　</td>
                <td width="54%" height="52" align="center">请大家提供 
                搜索引擎 的 登陆页面和方法！</td>
                <td width="21%" height="52" align="center">　</td>
              </tr>
              </table>
            <p align="left">★该聊天流量统计<br>
　<div align="left" style="width: 593; height: 232">
              <table border="1" cellpadding="0" cellspacing="0" width="150" id="AutoNumber3">
                <tr>
                  <td width="93" bgcolor="#000080" align="center">
                  <font color="#FFFFFF">项目</font></td>
                  <td width="51" bgcolor="#000080" align="center">
                  <font color="#FFFFFF">人数</font></td>
                </tr>
                <tr>
                  <td width="93" align="center">人气指数</td>
                  <td width="51" align="center"><%=renqi%>　</td>
                </tr>
                <tr>
                  <td width="93" align="center">总 流 量</td>
                  <td width="51" align="center"><%=TOTAL%>　</td>
                </tr>
                <tr>
                  <td width="93" align="center">上月流量</td>
                  <td width="51" align="center"><%=BMONTH%>　</td>
                </tr>
                <tr>
                  <td width="93" align="center">本月流量</td>
                  <td width="51" align="center"><%=MONTHS%>　</td>
                </tr>
                <tr>
                  <td width="93" align="center">昨天流量</td>
                  <td width="51" align="center"><%=TODAY%>　</td>
                </tr>
                <tr>
                  <td width="93" align="center">今日流量</td>
                  <td width="51" align="center"><%=YESTERDAY%>　</td>
                </tr>
              </table>
              <p>★登陆代码调用<br>
              <textarea rows="18" name="admintor" cols="80"><SCRIPT language=javascript>


function OnLogin(n) // 登录聊天室
{

	if(!validstr(login.USER))return ;
	var strBox = "" ;
	strBox = "&boxfunc=off" ;
	var strSex = "&Sex=2" ;
	nRecord=n;	
	
	window.open("about:blank", "mychat", "toolbar=no,location=no,directories=no,menubar=no,resizable=yes") ;
	login.target = "mychat" ;
	login.action = "http://liaowan.com/login.asp" ;
	login.submit() ;	
	
}


function validstr(str) // 验证用户名
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("呢称不能为空！");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("名字中不能包含特殊字符: +=|'#&<>%*`^/\\\";,.空格.");
 		str.focus(); return false;
  }}}return true;
}

</SCRIPT>




<form name="login" action="/" method="post" target="2">

           
              <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber12" height="80">
                 
                 <tr>
                  <td width="100%" bgcolor="#C5C5C5" height="1" colspan="2"></td>
                </tr>
                 <tr>
                  <td width="100%" bgcolor="#ffffff" height="1" colspan="2"></td>
                </tr>
                <tr>
                  <td width="100%" height="8" colspan="2" align="right">
                  <p align="center"><font color="#999999">本聊天室 当前在线 </font>(<font color="#FF9933"><%=num%></font>人)</td>
                </tr>

                <tr>
                  <td width="26%" height="23" align="right">呢 称: 　</td>
                  <td width="74%" height="23">
                  <input maxLength="10" size="13" name="USER" class=put> </td>
                </tr>
                <tr>
                  <td width="26%" height="21" align="right">密 码: </td>
                  <td width="74%" height="21">
                  <input type="password" maxLength="10" size="13" value name="PASS" class=put><font color="#999999"> 
                  *可不填
                  
                  
      <input type="hidden" value="<%=port%>" name="port">
 
                  </font>
                  </td>
                </tr>
                 <tr>
                  <td width="100%" height="26" align="center" colspan="2">
                  <input type="button" value="开 门" name="B1" class="put1" onClick="document.location = 'javascript:OnLogin(0);'">&nbsp;
                  <input type="button" value="注 册" name="B2" class="put1" onClick="window.open('http://liaowan.com/USadmin/regadd.asp', 'mychat')">&nbsp;
                  <input type="button" value="密 码" name="B3" class="put1" onClick="window.open('http://liaowan.com/USadmin/usermima.asp', 'mychat')"></td>
                  </tr>
                  
              </table>
              


</form>




</textarea></div>
            </td>
            </tr>

          <tr>
            <td width="593" height="157" align="center" bgcolor="#FFFFFF">
            

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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="84"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>
<%
'首页
 elseif xz="js" and session("roomport_" & rmport)= rmport then 


%>



<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="70">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾聊天室房间快速管理</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="5" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <form name="form8" method="post" action="adminroom_复制(1).asp">
      <input type=hidden name=xz value="jsxg"> <input type=hidden name=roomport value="<%=port%>">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          <font color="#FF0000"><b><a href="adminroom.asp?roomport=<%=rmport%>&xz=index">首页</a></b></font><b><font color="#FF0000"> <a href="adminroom.asp?roomport=<%=rmport%>&xz=form">基本配置</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=gexing">个性设置</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=admin">设管理员</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=js">自定义JS脚本</a>
          <a target="_blank" href="adminmb.asp?roomport=<%=rmport%>">自定义模板编辑</a>
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=pass">修改密码</a>
          <a target="_blank" href="adminweb.asp?roomport=<%=rmport%>">网站管理</a> 
          <a href="adminroom.asp?roomport=<%=rmport%>&xz=start">重新启动</a>&nbsp;&nbsp; </font>
          </b>
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="599" id="AutoNumber2" height="237">
          <tr>
            <td width="593" bgcolor="#800080" height="28"><b>
            <font color="#FFFFFF">&nbsp;[<%=port%>] 修改房间自定义JS配置脚本</font></b></td>
          </tr>

          <tr>
          
            <td width="593" height="21" align="right" bgcolor="#F9F9F7" valign="top">
            <p align="center">　本配置脚本访问地址 
            <a target="_blank" href="http://liaowan.com/chatjs/<%=port%>.js">http://liaowan.com/chatjs/<%=port%>.js</a>&nbsp; 
            你可以修改和调用 也可以不使用！<br>
            在基本配置-聊天室脚本URL-填写 <font color="#FF0000">&lt;SCRIPT src=http://liaowan.com/chatjs/<%=port%>.js&gt;&lt;/SCRIPT&gt;</font><b>
            </b>就可使用<br>
　</td>
            </tr>

          <tr>
          
            <td width="593" height="114" align="center" bgcolor="#F9F9F7" valign="top">
            
<%
    On Error Resume Next
	Set fso = CreateObject(fs)
	ForReading = 1
	ForWriting = 2
	psths = server.mappath("/chatjs")
	If fso.FileExists(psths & "\" & port & ".js") then
	Set f = fso.OpenTextFile(psths & "\" & port & ".js", ForReading)
	inilines=f.ReadAll()
	else
	inilines=""
	end if
	
	if inilines="" then inilines="在这里填写内容！请与站务人员那里得到JS脚本模板，再根据自己喜好修改，把文件内容复制到这里然后确认修改就可以使用了！"
	
 %>
            
<textarea rows="25" name="jstxt" cols="75"><%=inilines%></textarea><br>
            

            <input type="submit" value=" 确认修改 " name="B1"></td>
            </tr>

          <tr>
            <td width="593" height="83" align="center" bgcolor="#FFFFFF">
            

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
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>



<% else %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <table cellSpacing="0" cellPadding="0" width="680" border="0" style="border-collapse: collapse" bordercolor="#111111" height="88">
        <tr>
          <td align="left" height="64" width="595">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾聊天室房间快速管理登陆</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
        
        <tr>
          <td height="23" width="595">
          <p align="center"></td>
        </tr>
        
      </table>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="282" id="AutoNumber2" height="89">
        <tr>
          <td width="278" height="26" colspan="3">
          
          <b><font color="#FF0000"><%=m%></font></b>
          </td>
        </tr>
        <tr>
          <td width="225" height="29" align="center" colspan="2">　</td>
          <td width="61" height="63" rowspan="6"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="221" height="15" colspan="2" align="center">填写[<font color="#FF0000">室主管理</font>]登陆表单</td>
          </tr>
           <form name="form1" method="post" action="adminroom_复制(1).asp">
        <tr>
          <td width="68" height="40" rowspan="2">
          <img border="0" src="img/Hopelove.gif"></td>
          <td width="153" height="18">&nbsp;房间账号:<input maxLength="15" size="12" name="roomport" class=put></td>
          </tr>
        <tr>
          <td width="153" height="22">&nbsp;管理密码:<input type="password" maxLength="16" size="12" value name="passwordo" class=put ></td>
          </tr>
        <tr>
          <td width="225" height="30" colspan="2" align="center">
     <input type="image" maxLength="10" size="12" name="password" class=put src="../images/b1.gif" ></td>
          </tr>
        <tr>
          <td width="225" height="70" valign="top" colspan="2">　</td>
          </tr>
          </form>
        </table>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>

    
<% end if %>


<% 
call di 
%>

<%
'模块部分
'数据定义
sub shujv()

	sql="select * from [Room] where port=" & trim(session("roomport_" & rmport))
	set rs = conn.Execute(sql)
	
		port=rs("port")
		roomname = rs("roomname")
		maxnum = rs("maxnum")
		userpasswd = rs("adminpasswd")
		bodycolor = rs("bodycolor")
		bodyurl = rs("bodyurl")
		bottomcolor = rs("bottomcolor")
		bottomurl = rs("bottomurl")
		topcolor = rs("topcolor")
		adnote = rs("adnote")
		scripturl = rs("scripturl")
		leaveurl = rs("leaveurl")
		fullurl = rs("fullurl")
		unauthurl = rs("unauthurl")
		setadm = rs("setadm")
		setimg = rs("setimg")
		setdoor = rs("setdoor")
		setsex = rs("setsex")
		admintor = rs("admintor")
		channels = rs("channels")
		rtype = rs("rtype")
		admin = rs("admin")
		RoomType = rs("RoomType")
		liebiao = rs("liebiao")
		id2 = rs("id2")
		userroompasswd=rs("adminpasswd")
		vip = rs("vip")
		muban=rs("muban")
		userpasswd1=rs("userpasswd1")
		userpasswd2=rs("userpasswd2")
		vms=rs("vms")
	TOTAL=rs("TOTAL")
    YESTERDAY=rs("YESTERDAY")
    BMONTH=rs("BMONTH")
    MONTHS=rs("MONTH")
    TODAY=rs("TODAY")
	renqi=rs("renqi")
		rs.close

end sub




'重新启动模块
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

'刷新该的房间,
'On Error Resume Next

Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function


%>
<%
Set rs = Nothing
Set conn = Nothing
%>