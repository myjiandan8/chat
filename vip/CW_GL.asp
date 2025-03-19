<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--模版文件#include file="../inc/BBTOP.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<%
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=非法操作！"
		response.end
	end if
end if

if Request("cz")="kaihu" then
	   '开户
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_user where name='"& UN &"' "
	  rsf.open sql,conn,1,3
	  if rsf.eof or err then
	  
			rsf.AddNew    
       		rsf("uid") = session("Uid")
			rsf("name") = UN
			rsf.Update
			rsf.close

	  %>
	  
	<script language=Javascript>
		alert("开户成功");
		//window.history.go(-1);	
	</script>
	
	<% else %>
	
	 <script language=Javascript>
		alert("大哥不要开这种玩笑好不好!!");
		//window.history.go(-1);	
	</script>
	  
	  
	  <%
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
      
      
      <table cellPadding="0" width="363" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="363">
          <img border="0" src="../user/img/Main_01.gif"><font class="titletext" color="#ff0000"><b>欢迎 [ <%=UN%> 
          ] 来到财务管理中心 </b>
          您的聊湾CM:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="363"></td>
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
      
      
      
      




      <p align="center">　
      <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_user where name='"& UN &"' "
	  rsf.open sql,conn,1,1
	  if rsf.eof or err then
	  %> SORRY!你还没有在聊湾开财务帐户!<br>
	  如果要开户 <a target="_self" href="CW_GL.asp?user=<%=UN%>&cz=kaihu">请点击这里开户</a><br>
	  <%
	  else
	  %>
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="149">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="7"><b>
            <font color="#FFFFFF">　<%=UN%>　财务帐户信息　</font></b></td>
          </tr>
          <tr>
          
            <td width="77" height="29" align="center"><b>总借款</b></td>
            <td width="72" height="29" align="center"><b>还借款</b></td>
            <td width="79" height="29" align="center"><b>总汇款</b></td>
            <td width="75" height="29" align="center"><b>总退款</b></td>
            <td width="70" height="29" align="center"><b>总消费</b></td>
            <td width="75" height="29" align="center"><b>可用资金</b></td>
            <td width="71" height="29" align="center"><b>结余金额</b></td>
            
          </tr>
          <tr>
          
            <td width="77" height="29" align="center" bgcolor="#F9F9F7">　<%=rsf("jn")%>元</td>
            <td width="72" height="29" align="center" bgcolor="#F9F9F7">　<%=rsf("hn")%>元</td>
            <td width="79" height="29" align="center" bgcolor="#F9F9F7">　<%=rsf("dn")%>元</td>
            <td width="75" height="29" align="center" bgcolor="#F9F9F7">　<%=rsf("tn")%>元</td>
            <td width="70" height="29" align="center" bgcolor="#F9F9F7">　<%=rsf("xn")%>元</td>
            <td width="75" height="29" align="center" bgcolor="#F9F9F7">　<%=rsf("kn")%>元</td>
            <td width="71" height="29" align="center" bgcolor="#F9F9F7">　<font color="#FF0000"><%=rsf("yn")%></font>元</td>
            
          </tr>

          <tr>
            <td width="592" height="46" align="center" colspan="7" bgcolor="#FFFFFF">
            <p align="left"><b>相关操作</b>：<font color="#BD7200">　<b>邮政汇款&nbsp; 
            银行汇款&nbsp; 在线付款&nbsp; 手机付款&nbsp; 发票索要　结余退款&nbsp; 疑问解答</b></font></td>
            </tr>

        </table>
        </center>
      </div>
      
      <br> <br>
      
     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="84">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8"><b>
            <font color="#FFFFFF">　<%=UN%>　已购服务管理　</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>编号</b></td>
            <td width="160" height="23" align="center"><b>服务名称</b></td>
            <td width="47" height="23" align="center"><b>商品id</b></td>
            <td width="75" height="23" align="center"><b>金额</b></td>
            <td width="73" height="23" align="center"><b>开通日期</b></td>
            <td width="66" height="23" align="center"><b>到期时间</b></td>
            <td width="40" height="23" align="center"><b>状态</b></td>
            <td width="50" height="23" align="center"><b>操作</b></td>
            
          </tr>
<%
sql="select * from CW_CP where name='"& UN &"'"
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
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("id")%></td>
            <td width="161" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("djname")%></td>
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("vid")%></td>
            <td width="75" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("n")%>元/年</td>
            <td width="73" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("ktimes")%></td>
            <td width="66" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("dtimes")%></td>
            <td width="40" height="1" align="center" bgcolor="#F9F9F7">　<%
           if rs("zt")=0 then
           response.write "停止"
           elseif rs("zt")=1 then 
           response.write "正常"
           else
           response.write "异常"
           end if
            
            %></td>
            <td width="50" height="1" align="center" bgcolor="#F9F9F7">
            <a href="CW_CP.asp?user=<%=UN%>&id=<%=rs("id")%>&cz=x">续费</a></td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>
        </table>
        </center>
      </div>
      
      
      <br> <br>
      
      
 <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="137">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="5"><b>
            <font color="#FFFFFF">　<a name="cp">聊弯服务产品列表</a>　</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>编号</b></td>
            <td width="154" height="23" align="center"><b>服务名称</b></td>
            <td width="78" height="23" align="center"><b>订价</b></td>
            <td width="237" height="23" align="center"><b>服务说明</b></td>
            <td width="42" height="23" align="center"><b>操作</b></td>
            
          </tr>
<%
sql="select * from CW_DJ"
set rs=conn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="592" height="26" align="center" colspan="5" bgcolor="#FFFFFF">
            <p align="left">系统出错!请和管理员联系!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
          <tr>
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("id")%></td>
            <td width="154" height="1" align="center" bgcolor="#F9F9F7">　<b><%=rs("name")%></b></td>
            <td width="78" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("nsv")%>元/年</td>
            <td width="237" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("zb")%></td>
            <td width="42" height="1" align="center" bgcolor="#F9F9F7">
            <a href="CW_CP.asp?user=<%=UN%>&id=<%=rs("id")%>&cz=m">购买</a></td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>

     <tr>
            <td width="592" height="79" align="center" colspan="5" bgcolor="#FFFFFF">
            <p align="left"><font color="#CC6600">&gt; </font>
            <font color="#FF0000">特别优惠活动:前50个聊天室购买用户，将获赠JS脚本空间一个,相册一个.</font><font color="#CC6600"><br>
            &gt; 聊天室服务,提供个性配置功能,用户可以通过修改一个JS配置脚本来个性化配置自己的聊天室<br>
            &gt; </font><font color="#008000">
            购买10个聊天室[包括10个]以上的用户,赠送独立用户数据库,聊天大厅,俱乐部,论坛,国际域名(各一个)</font></td>
     </tr>
        </table>
        </center>
      </div>
            
      

      
      
      <br>
      <%
	  end if
      %>
      
      
      
      <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_dl where name='"& UN &"' "
	  rsf.open sql,conn,1,1
	  if not (rsf.eof or err) then
	  %>
      
      


 <br>
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="121">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="4"><b>
            <font color="#FFFFFF">　<%=UN%>　营销帐户信息　</font></b></td>
          </tr>
          <tr>
          
            <td width="67" height="24" align="center"><b>等级</b></td>
          
            <td width="163" height="24" align="center"><b>总提成</b></td>
            <td width="156" height="24" align="center"><b>总退款</b></td>
            <td width="149" height="24" align="center"><b>结余金额</b></td>
            
          </tr>
          <tr>
          
            <td width="67" height="24" align="center" bgcolor="#F9F9F7">　<%
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
          
            <td width="163" height="24" align="center" bgcolor="#F9F9F7">　<%=rsf("zn")%>元</td>
            <td width="156" height="24" align="center" bgcolor="#F9F9F7">　<%=rsf("tn")%>元</td>
            <td width="149" height="24" align="center" bgcolor="#F9F9F7">　<font color="#FF0000"><%=rsf("yn")%></font>元</td>
            
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="81">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8"><b>
            <font color="#FFFFFF">　<%=UN%>　已购服务管理　</font></b></td>
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
sql="select * from CW_CP where dl='"& UN &"'"
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
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("id")%></td>
            <td width="161" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("djname")%></td>
            <td width="46" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("vid")%></td>
            <td width="75" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("n")%>元/年</td>
            <td width="65" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("ktimes")%></td>
            <td width="64" height="1" align="center" bgcolor="#F9F9F7">　<%=rs("dtimes")%></td>
            <td width="33" height="1" align="center" bgcolor="#F9F9F7"><%
           if rs("zt")=0 then
           response.write "停止"
           elseif rs("zt")=1 then 
           response.write "正常"
           else
           response.write "异常"
           end if
            
            %></td>
            <td width="67" height="1" align="center" bgcolor="#F9F9F7"><%=rs("dldj")%>元</td>
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






<% call di %>