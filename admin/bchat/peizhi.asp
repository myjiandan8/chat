<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--模板生成#include file="../../INC/sysChat.asp" -->
<!--模板生成#include file="../../INC/sysBChat.asp" -->
<% Call quanxian(20) %>
<%


Set rs= Server.CreateObject("ADODB.Recordset")

if Request("setadm")<>"" and Request("muban")<>"" then

	bodycolor = trim(Request("bodycolor"))
	bodyurl = trim(Request("bodyurl"))
	bottomcolor = trim(Request("bottomcolor"))
	bottomurl = trim(Request("bottomurl"))
	topcolor = trim(Request("topcolor"))
	
	adnote = trim(Request("adnote"))
	scripturl = trim(Request("scripturl"))
	
	leaveurl = Request("leaveurl")
	fullurl = Request("fullurl")
	unauthurl = Request("unauthurl")
	setadm = Request("setadm")
	setimg = Request("setimg")
	setdoor = Request("setdoor")
	setsex = Request("setsex")

	channels = Request("channels")
	rtype = Request("rtype")

	muban = Request("muban")
	vms = Request("vms")
	
	if setadm<>"1" then setadm="0"
	if setimg<>"1" then setimg="0"
	if setsex<>"1" then setsex="0"
	if setdoor<>"1" then setdoor="0"
	if topcolor="" then topcolor="#EFF5FE"			'默认在线列表区背景颜色
	if bodycolor="" then bodycolor="#FFFFFF"		'默认聊天区区背景颜色
	if bottomcolor="" then bottomcolor="#EFF5FE"	'默认输入区背景颜色
	if adnote="" then adnote="<center>欢迎光临<font color=#ff0000><big>$1</big></font>！ 请文明聊天，切勿发布有关色情、政治、黑客等的信息。"


    sql="SELECT * from [Room] where port=" & port
	rs.open sql,Bchatconn,1,3
    
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
       rs("rtype") =rtype
       'rs("RoomType") =RoomType
       
       rs("muban") =muban
       rs("vms") =vms
       
       rs.Update
       rs.close
 
Call shujv()
 
'检测新服务器
Call callServer(sid)

'处理模板文件
Call edit()

'写WEB数据库
Call UpwebB(1)


Call errstr("修改成功！！")

end if
%>




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>基本配置管理</title>
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; 基本配置</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="370" bgcolor="#FFFFFF" valign="top">
            

  <form name="form5" method="post" action="peizhi.asp">
                    
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="599" id="AutoNumber2" height="638">
          <tr>
	    <td width="20%" align=left height="16">端口号：</td>
	    <td width="476" height="16"> <%=id%>　</td>
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
	    <td height="12" width="476" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>默认模板</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>自定义模板</option>

        <option value="2" <%if muban=2 then response.write "selected"%>>[反向]标准模板</option>

        </select></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt">聊天室类型<font color=blue>**</font>：</td>
	    <td width="476" style="font-family: 宋体; font-size: 9pt" >文字<input type="radio" name="rtype" value="T" <% if rtype="T" then response.write "checked" %> > 语音<input type="radio" name="rtype" value="A" <% if rtype="A" then response.write "checked" %> > 视频<input type="radio" name="rtype" value="V" <% if rtype="V" then response.write "checked" %> checked  ><font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left height="1" width="127">语音模式选择：</td>
	    <td height="1" width="476" > 
        
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
	    <td width="476" style="font-family: 宋体; font-size: 9pt" height="20" >是<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %> checked > 否<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >（管理员名字后加红星 
		<font color="#FF0000">这里选择是才可以显示在线管理 需重启房间</font>）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt" height="20">是否允许图音<font color=blue>**</font>：</td>
	    <td width="476" style="font-family: 宋体; font-size: 9pt" height="20" >是<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > 否<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %> checked  >（是否在聊天室里允许发送图音）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt" height="20">是否允许关门<font color=blue>**</font>：</td>
	    <td width="476" style="font-family: 宋体; font-size: 9pt" height="20" >是<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > 否<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> checked >（是否允许管理执行关门功能）<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: 宋体; font-size: 9pt" height="20">是否区分性别<font color=blue>**</font>：</td>
	    <td width="476" style="font-family: 宋体; font-size: 9pt" height="20" >是<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> checked > 否<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >（聊天室里是否显示男为绿色、女为红色、保密为兰色）<font color=green>**</font></td>
	      </tr>

          <tr>
	    <td  align=left width="593" style="font-family: 宋体; font-size: 9pt" colspan="2" height="57">
        1、<font color=red>**</font> 标志的项表示必须填写项。<br>
	    2、<font color=blue>**</font> 标志的项表示如果有改动，需要重启聊天室进程才能生效。<br>
	    3、<font color=green>**</font> 标志表示端口的非0ID号的配置不可以修改的项 </td>
	      </tr>

          <tr>
            <td width="593" height="37" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认修改 " name="B1">
  
            </td>
            </tr>

        </table>
        </center>
      </div>
            
</form> 
  
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