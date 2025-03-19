<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<!--#include file="shop_inc.asp"-->
<%
    ff=Request("ff")
	roomname = Request("roomname")
	userpasswd = Request("password")
	userpasswd2 = Request("password2")
	
	max = Request("max")
	loginw = Request("loginw")
	logins = Request("logins")
	rtype=Request("rtype")
	question=HTMLEncode(Request("question"))
	answer=HTMLEncode(Request("answer"))
	

	newroomid=0


Call OpenChatconn

if roomname<>"" then

	

  if roomname="" or userpasswd="" or max="" or loginw="" or rtype="" or question="" or answer="" then errstr("请填写完整！")



chatstr=GetURL("http://"& loginw &".bliao.com")

if InStr(chatstr, "该聊天室不存在")>0 then errstr("你填写的碧聊房间序号不正确\n该碧聊房间不存在！！\n申请碧聊通，你必须在碧聊拥有自己的固定房间")

s1=InStr(chatstr, "form1.action=""")+14
if s1>100 then
s2=InStr(s1,chatstr, """")-s1
logins=mid(chatstr,s1,s2)
else
logins=""
end if 

if logins="" then errstr("你填写的碧聊房间序号不正确\n该碧聊房间不存在！！\n申请碧聊通，你必须在碧聊拥有自己的固定房间")

if InStr(logins, ".cgi")>0 then
if loginw<100000 then  errstr("申请碧聊通，你必须在碧聊拥有自己的固定房间!")
end if
  
   if userpasswd<>userpasswd2 then errstr("两次密码输入不相同！！")

   newType = Cint(Request("newType"))

  ' 得到新ID方法 5000 - 8000 之间
  i= 5000
  do while (i<8000)
  	i=i+1
  	set rsr=chatconn.Execute("SELECT id FROM [Web] where id=" & i)
    if  rsr.eof or err then
    newroomid=i
    i=8000
    end if
  loop
  rsr.close
  
  '限制每个帐号最多申请3个
   SQLC = "select ID from [web] where adminid=" & uid
   rsr.Open SQLC, chatconn, 1, 1
   If Not (rsr.EOF Or Err) Then
   if rsr.RecordCount=3 then errstr("一个用户最多应许申请3次！！")
   end if
   rsr.close

  
	if CheckHtml(roomname) then errstr("房间名含有非法字符！")

  
	if newroomid=8000 then errstr("申请人数已经爆满！请联系管理员，扩充名额！")

	sql="SELECT * from [Web] where loginw='"& loginw &"'"
	rs.open sql,chatconn,1,3
	if not(rs.eof or err) then errstr("你申请的碧聊聊天室！\n在此之前已经被申请！\n如果该聊天室属于你!\n请你与聊湾管理人员联系\n申诉！并取回聊天室！")

       rs.addnew
       rs("cid") = newroomid
       rs("id") = newroomid
       
       rs("newday") = date()
       rs("date") = date()
       
       rs("chatxy") = "欢迎光临" & Roomname & " - 聊湾语音视频聊天室，真情沟通从这里开始！"
       rs("webbg") = "http://liaowan.com/images/newbg.jpg"
       
       rs("ff") = ff
       rs("Roomname") = Roomname
       rs("max") = max
       rs("adminid") = uid
       rs("admin") = name
       
       rs("adminpasswd") = userpasswd 

       rs("rtype") = rtype
       rs("logins") = logins
       rs("loginw") = loginw
       
       rs("newType") = newType
       
       rs("question") = question
       rs("answer") = answer

       rs.Update
       rs.close

	sql="SELECT * FROM [CW_CP]"
	rs.open sql,conn,1,3
	
       rs.addnew
       rs("uid") = uid
       rs("name") = name
       
       
       rs("djname") = "碧聊通"
       
       rs("vid") = newroomid
       rs("n") = 980
       
	   rs("zt") = 1      
       rs("ktimes") = date()
       rs("dtimes") = DateSerial(year(date), month(date)+2, day(date))
       rs.Update
       rs.close
	
	

	   wenti("申请成功！")
	   
end if


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'函数区
'XML网页访问函数

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
	On Error Resume Next
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

<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>碧聊聊天室挂接 - 财务管理中心</TITLE>

<% call top %>

<% if newroomid>0 then %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="542" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="542">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>欢迎 [ <%=UN%> 
          ] 来到</b>[碧聊房间挂接套餐系统]<b>-财务管理中心 </b>
          您的聊湾ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="542"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="3" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="1001" valign="top">
      
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="186">
          <tr>
            <td width="592" bgcolor="#800080" height="31">
            <font color="#FFFFFF"><b>
            　恭喜你 申请成功</b></font></td>
          </tr>


			<tr>
            <td width="592" height="153" bgcolor="#FFFFFF">
            <p align="center">恭喜您申请成功！<br>
			您聊天室的网址 <a href="http://<%=newroomid%>.liaowan.com" target="_blank">
			<font color="#FF0000">http://<%=newroomid%>.liaowan.com</font></a><br>
			聊天室后台管理登陆<a target="_blank" href="http://liaowan.com/admin"><font color="#0000FF">http://liaowan.com/admin</font></a>&nbsp; 
			在首页也有后管理连接<br>
			马上登陆后台，开始配置您的梦幻旅程吧！[<font color="#008000">室主的默认管理用户名是<b>admin </b>
			</font>密码就是你填写的管理密码]</td>
     		</tr>
        	
        </table>
        </center>
      </div>
      
      <% else %>
      　<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="322">
      
 <br>
      
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="198">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8">
            <font color="#FFFFFF"><b>
            　碧聊通系统报价</b></font></td>
          </tr>


        	<tr>
<td align="middle" bgColor="#D4D0C8" width="66" height="26">
							<b>套餐名称</b></td>
							<td align="middle" bgColor="#D4D0C8" width="64" height="26">
							<b>网站</b></td>
							<td align="middle" bgColor="#D4D0C8" width="74" height="26">
							<b>相册</b></td>
							<td align="middle" bgColor="#D4D0C8" width="79" height="26">
							<b>新闻系统</b></td>
							<td align="middle" bgColor="#D4D0C8" width="79" height="26">
							<b>留言系统</b></td>
							<td align="middle" bgColor="#D4D0C8" width="72" height="26">
							<b>论坛社区</b></td>
							<td align="middle" bgColor="#D4D0C8" width="71" height="26">
							<b>脚本空间</b></td>
							<td align="middle" bgColor="#D4D0C8" width="53" height="26">
							<b>总计</b></td>
						</tr>



						<tr>
							<td align="middle" width="66" height="26" bgcolor="#FFFFFF">
							套餐一<font color="#FF0000">+挂</font></td>
							<td align="middle" width="64" height="26" bgcolor="#FFFFFF">
							<font color="#000080">100元</font> </td>
							<td align="middle" width="74" height="26" bgcolor="#FFFFFF">
							<font color="#000080">260元</font><font color="#008000">[100P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">160元</font><font color="#008000">[300P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">80元</font><font color="#008000">[200P]</font></td>
							<td align="middle" width="72" height="26" bgcolor="#FFFFFF">
							<font color="#000080">360元</font><font color="#008000">[8BC]</font></td>
							<td align="middle" width="71" height="26" bgcolor="#FFFFFF">
							<font color="#000080">60元</font><font color="#008000">[2P]</font></td>
							<td align="middle" width="53" height="26" bgcolor="#FFFFFF">
							<font color="#FF0000">980元</font></td>
						</tr>


			<tr>
            <td width="592" height="66" colspan="8" bgcolor="#FFFFFF">
            &nbsp;&nbsp; 说明<font color="#008000">：[参数] P</font>为数量如 
					照片数量，新闻记录最大容量，留言板记录条数，脚本空间的个数。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#008000">B</font>为论坛分类板块数量。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<font color="#008000">C</font>为带视频俱乐部<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#008000">1D</font>是绑定一个.net ，.com的国际域名一个。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
					<font color="#008000">MF</font>是FTP管理的空间数字为兆单位，<font color="#008000">50MF</font>=50M 
					FTP空间</td>
     		</tr>
        	<tr>
            <td width="592" height="24" colspan="8" bgcolor="#FFFFFF">

            <font color="#FF0000"><b>免费试用两个月：</b>如贵聊天室能到80人以上的平均在线率，本服务将永久免费提供给你。</font></td>
     		</tr>

        </table>
        </center>
      </div>
      <br>

           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="198">
          <tr>
            <td width="592" bgcolor="#800080" height="24">
            <font color="#FFFFFF"><b>
            　免费<a name="buzhou">申请[碧聊通]服务 </a></b></font></td>
          </tr>


			<tr>
            <td width="592" height="118" bgcolor="#FFFFFF" valign="top">
            <table cellSpacing="2" cellPadding="5" width="100%" align="center" border="0" id="table4">
						<tr>
							<td class="cn">
							<table cellSpacing="4" cellPadding="0" width="98%" align="right" border="0" id="table5">
								<tr>
									<td vAlign="top" width="4%" rowspan="5">
									<font color="#008000"><b>申请协议</b></font></td>
									<td class="cn" width="93%">
									1.为保证广大的用户的利益，你必须无条件服从本协议！否则我们将拒绝为您提供服务。</td>
								</tr>
								<tr>
									<td class="cn">
									2.你要保证你是申请挂接的聊天室的合法拥有人，否则我们将有权收回服务或转交合法拥有人。</td>
								</tr>
								<tr>
									<td class="cn">3.您的聊天室不能从事反动宣传、色情、淫秽等违法的活动。</td>
								</tr>
								<tr>
									<td class="cn">
									4.秀舞聊天室不可以色情舞蹈，舞者着装不准暴漏，不准抚摩敏感部位。</td>
								</tr>
								<tr>
									<td class="cn">5.遵守以上协定你就可以开始申请了。</td>
								</tr>
							</table>
            			</tr>
					</table>
            
            </td>
     		</tr>
        	<tr>
            <td width="592" height="88" bgcolor="#FFFFFF" valign="top" align="center">
            <div align=center>
  <FORM action="shop_bliaochat.asp" method="POST" name="roomedit">
  <TABLE border="0" width="100%" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111" height="246">

        <tr>
        <TD height="26" width="103" align="right"> 聊天室名称:&nbsp;
        </TD>
        <TD height="26" width="483"> 
            
          <INPUT type="text" name="RoomName" maxlength="7" size="20" value="<%=RoomName%>">
        	保证同你的聊天室名字相同</TD>
      </tr>
<tr>
        <TD height="26" width="103" align="right"> 聊天室类型:</TD>
        <TD height="26" width="483"> <select size="1" name="ff">
		<option value="2" <%if ff=3 then response.write " selected"%>>碧聊</option>
		</select></TD>
</tr>
<tr>
        <TD height="26" width="103" align="right"> 聊天类型:</TD>
        <TD height="26" width="483"> <select size="1" name="rtype">
		<option value="0" <%if rtype=0 then response.write " selected"%>>视频</option>
		<option value="1" <%if rtype=1 then response.write " selected"%>>语音</option>
		<option value="2" <%if rtype=2 then response.write " selected"%>>文字</option>
		</select></TD>
</tr>
		<tr>
	    <td width="103" align=right height="26">属性分类:</td>
	    <td width="455" height="26">  
        
<select size="1" name="newType">

<option value="1">秀舞</option>
<option value="2">秀歌</option>
<option value="3">情感</option>

</select>&nbsp;
<img border="0" src="../PIC/IMG/s01.gif" width="15" height="13">秀舞 
<img border="0" src="../PIC/IMG/s12.gif" width="15" height="13">秀歌 
<img border="0" src="../PIC/IMG/s23.gif" width="15" height="13">情感</td>
	      </tr>
<tr>
        <TD height="20" width="103" align="right"> 碧聊聊天室ID:</TD>
        <TD height="20" width="483"> 
		<input type="text" name="loginw" maxlength="10" size="17"> 
		<b><font color="#008000">也叫碧聊房间序号</font></b> 如 234123 或 t4018 不要写错这个最重要！</TD>
</tr>
<tr>
        <TD height="26" width="103" align="right"> 系统管理密码:</TD>
        <TD height="26" width="483"> 
		<INPUT type="password" name="password" maxlength="20" size="20"> 
		在聊湾系统管理的新密码。[<font color="#FF0000">不是在碧聊房间管理密码</font>]</TD>
      </tr>
		<tr>
        <TD height="26" width="103" align="right"> 再次输入密码:</TD>
        <TD height="26" width="483"> 
		<INPUT type="password" name="password2" maxlength="20" size="20"> 
		保证两次输入相同</TD>
      	</tr>
		<tr>
        <TD height="26" width="103" align="right"> 密码提示问题:</TD>
        <TD height="26" width="483"> 
		<input name="question" size="18"> 
		找回密码时使用</TD>
      	</tr>
		<tr>
        <TD height="26" width="103" align="right"> 密码提示答案:</TD>
        <TD height="26" width="483"> 
		<input name="answer" size="18"></TD>
      	</tr>
<TR>
        <TD height="26" width="103" align="right"> 人数上限:&nbsp;
        </TD>
        <TD height="26" width="483"> 
		<input type="text" name="max" maxlength="3" size="9" value="<%=max%>"> 
		最高在线&nbsp; 要和实际相同哦</TD>
      </TR>
 <TR><TD align="center" height="21" width="652" colspan="2">
<INPUT type="submit" value="确定" name=submit1>
        </TD>
      </TR>
</TABLE>
</form>
</div>
　
            
            </td>
     		</tr>
        	<tr>
            <td width="592" height="24" bgcolor="#FFFFFF">

            				申请成功后成功后，在聊天室管理里面进行管理配置自己的服务！！！</td>
     		</tr>

        </table>
        </center>
      </div>
<% end if %>
     
      </td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="87%"></td>
        </tr>
    <tr>
      <td width="87%" height="18">　</td>
    </tr>
  </table>
  </center>
</div>
<%call endpage()
%>