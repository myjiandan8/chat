<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<!--#include file="shop_inc.asp"-->
<%
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=非法操作！"
		response.end
	end if
end if
%>


<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>财务管理中心</TITLE>

<% call top %>
<base target="_blank">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="478" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="478">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>欢迎 [ <%=UN%> 
          ] 来到财务管理中心 </b>
          您的聊湾ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="478"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="30" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="322">
      
 <% call caiwu %>
      
      
     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="80">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8"><b>
            <font color="#FFFFFF">　已购服务管理　</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>编号</b></td>
            <td width="99" height="23" align="center"><b>服务名称</b></td>
            <td width="45" height="23" align="center"><b>商品id</b></td>
            <td width="56" height="23" align="center"><b>金额</b></td>
            <td width="68" height="23" align="center"><b>开通日期</b></td>
            <td width="65" height="23" align="center"><b>到期时间</b></td>
            <td width="46" height="23" align="center"><b>状态</b></td>
            <td width="133" height="23" align="center"><b>操作</b></td>
            
          </tr>
<%
sql="select * from CW_CP where uid=" & uid
set rs=conn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="592" height="26" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left">抱歉你还没有购买任何一种服务产品!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
          <tr>
            <td width="46" height="21" align="center" bgcolor="#F9F9F7"><%=rs("id")%></td>
            <td width="99" height="21" align="center" bgcolor="#F9F9F7"><%=rs("djname")%></td>
            <td width="45" height="21" align="center" bgcolor="#F9F9F7"><%=rs("vid")%></td>
            <td width="56" height="21" align="center" bgcolor="#F9F9F7"><%=rs("n")%>元</td>
            <td width="68" height="21" align="center" bgcolor="#F9F9F7"><%=rs("ktimes")%></td>
            <td width="65" height="21" align="center" bgcolor="#F9F9F7"><%=rs("dtimes")%></td>
            <td width="46" height="21" align="center" bgcolor="#F9F9F7"><%
           if rs("zt")=0 then
           response.write "停止"
           elseif rs("zt")=1 then 
           response.write "正常"
           else
           response.write "异常"
           end if
            
            %></td>
            <td width="133" height="21" align="center" bgcolor="#F9F9F7">
            <a href="http://liaowan.com/admin">管理</a>
            <a href="CW_CP.asp?user=<%=UN%>&id=<%=rs("id")%>&cz=x">续费</a></td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>
        </table>
        </center>
      </div>
      
      
      <br> 

      

      

 <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="232">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="4"><b>
            <font color="#FFFFFF">　<a name="cp">聊弯服务产品</a>　</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>编号</b></td>
            <td width="187" height="23" align="center"><b>服务名称</b></td>
            <td width="272" height="23" align="center"><b>服务说明</b></td>
            <td width="65" height="23" align="center"><b>规格订价</b></td>
            
          </tr>

          <tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">1001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			BChat[蓝天]视频语音聊天室</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">国内最流行的语音视频聊天室/视频会议系统</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            <a href="shop_bchat.asp"><font color="#FF0000">查看订价</font></a></td>
          </tr>

     		<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">2001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			MeChat[和韵]视频语音聊天室</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">语音视频聊天室/视频会议系统 后起之秀</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            <a href="shop_mechat.asp">查看订价</a></td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">3001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			碧聊房间挂接套餐系统</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			[提供全套服务！]目前免费试用</td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            <a href="shop_bliaochat.asp"><font color="#FF0000">立即申请</font></a></td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">6001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			聊天室配套网站套餐</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">聊天室配套/网站/主页/公告/相册/论坛/留言版</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            查看订价</td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">7001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">国际域名 
			国内域名</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">com net 
			org cn com.cn net.cn org.cn 等域名</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            查看订价</td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">8001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">虚拟服务器空间</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">各种性能空间支持各类数据库和脚本语言</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            产品列表</td>
          </tr>
			<tr>
            <td width="46" height="26" align="center" bgcolor="#F9F9F7">9001</td>
            <td width="187" height="26" align="center" bgcolor="#F9F9F7">
			语音视频服务器软件</td>
            <td width="272" height="26" align="center" bgcolor="#F9F9F7">
			<font color="#808080">软件购买直接同 
			蓝天工作室 广州和韵 联系</font></td>
            <td width="65" height="26" align="center" bgcolor="#F9F9F7">
            产品列表</td>
          </tr>

     <tr>
            <td width="592" height="21" align="center" colspan="4" bgcolor="#FFFFFF">
            <p align="left">&nbsp;<font color="#008000">购买服务产品点击查看订价，查看分类规格分类和价格，然后就可以实时购买开通你要的服务产品！</font></td>
     </tr>
        </table>
        </center>
      </div>
          
      <br>
      
      
      <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_dl where uid=" & uid
	  rsf.open sql,conn,1,1
	  if not (rsf.eof or err) then
	  %>
      
      
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="121">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="4"><b>
            <font color="#FFFFFF">　营销帐户信息　</font></b></td>
          </tr>
          <tr>
          
            <td width="67" height="24" align="center"><b>等级</b></td>
          
            <td width="163" height="24" align="center"><b>总提成</b></td>
            <td width="156" height="24" align="center"><b>总退款</b></td>
            <td width="149" height="24" align="center"><b>结余金额</b></td>
            
          </tr>
          <tr>
          
            <td width="67" height="24" align="center" bgcolor="#F9F9F7"><%
            select case rsf("dj")
				case 0
				response.write "普通"
				case 1
				response.write "高级"
				case 2
				response.write "金牌"
				case 3
				response.write "特别"
            end select
            %>代理</td>
          
            <td width="163" height="24" align="center" bgcolor="#F9F9F7"><%=rsf("zn")%>元</td>
            <td width="156" height="24" align="center" bgcolor="#F9F9F7"><%=rsf("tn")%>元</td>
            <td width="149" height="24" align="center" bgcolor="#F9F9F7"><font color="#FF0000"><%=rsf("yn")%></font>元</td>
            
          </tr>

          <tr>
            <td width="592" height="28" align="center" colspan="4" bgcolor="#FFFFFF">
            <p align="left"><b>&nbsp; 相关操作</b>：<font color="#BD7200">　<b>结余转入财务帐号&nbsp; 　结余退款&nbsp;&nbsp; 疑问解答</b></font></td>
            </tr>

        </table>
        </center>
      </div>
      
      
<br><br>

     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="80">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8"><b>
            <font color="#FFFFFF">　业绩记录表</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="20" align="center"><b>编号</b></td>
            <td width="160" height="20" align="center"><b>服务名称</b></td>
            <td width="47" height="20" align="center"><b>商品id</b></td>
            <td width="75" height="20" align="center"><b>金额</b></td>
            <td width="65" height="20" align="center"><b>开通日期</b></td>
            <td width="64" height="20" align="center"><b>到期时间</b></td>
            <td width="33" height="20" align="center"><b>状态</b></td>
            <td width="67" height="20" align="center"><b>提成</b></td>
            
          </tr>
<%
sql="select * from CW_CP where dl=" & uid
set rs=conn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="592" height="26" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left">抱歉你还没有购买任何一种服务产品!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
          <tr>
            <td width="46" height="24" align="center" bgcolor="#F9F9F7"><%=rs("id")%></td>
            <td width="161" height="24" align="center" bgcolor="#F9F9F7"><%=rs("djname")%></td>
            <td width="46" height="24" align="center" bgcolor="#F9F9F7"><%=rs("vid")%></td>
            <td width="75" height="24" align="center" bgcolor="#F9F9F7"><%=rs("n")%>元/年</td>
            <td width="65" height="24" align="center" bgcolor="#F9F9F7"><%=rs("ktimes")%></td>
            <td width="64" height="24" align="center" bgcolor="#F9F9F7"><%=rs("dtimes")%></td>
            <td width="33" height="24" align="center" bgcolor="#F9F9F7"><%
           if rs("zt")=0 then
           response.write "停止"
           elseif rs("zt")=1 then 
           response.write "正常"
           else
           response.write "异常"
           end if
            
            %></td>
            <td width="67" height="24" align="center" bgcolor="#F9F9F7"><%=rs("dldj")%>元</td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>
        </table>
        </center>
      </div>
      
<% end if %>







<br><br>
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