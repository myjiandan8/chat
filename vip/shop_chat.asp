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
<SCRIPT language=javascript>
<!--
//代码开始 脚本设计：龙软科技

function tian() // 计算价格，学习JS请大家尝试自己写写看，因为作为一个程序员有些东西必须自己原创
{
	var m=login.renshu.value*6;
	if(login.shipin.value==1){m=m+login.renshu.value*3};
	if(login.liti.value==1){m=m+login.renshu.value*1};
	login.m.value=m;
}

function yuyin(sx) // 计算价格，学习JS请大家尝试自己写写看，因为作为一个程序员有些东西必须自己原创
{
	login.renshu.value=sx;
	//login.liti.value=1;
	tian();
}

function shipins(sx) // 计算价格，学习JS请大家尝试自己写写看，因为作为一个程序员有些东西必须自己原创
{
	login.renshu.value=sx;
	login.shipin.value=1;
	tian();
}

function litis(sx) // 计算价格，学习JS请大家尝试自己写写看，因为作为一个程序员有些东西必须自己原创
{
	login.renshu.value=sx;
	login.liti.value=1;
	tian();
}

//-->
</SCRIPT>
<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>聊天室产品订价 - 财务管理中心</TITLE>

<% call top %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="542" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="542">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>欢迎 
			[ <%=UN%> 
          ] 来到</b>[购买聊天室]<b>-财务管理中心 </b>
          您的聊湾ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="542"></td>
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="187">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8">
            <font color="#FFFFFF"><b>
            　<a name="cp">BChat</a>[<a name="js">蓝</a>天]视频语音聊天室 [1001]　</b>点击你想要规格系统将自动计算价格</font></td>
          </tr>
          <tr>
          
            <td width="68" height="23" align="center"><b>人数上限</b></td>
            <td width="79" height="23" align="center"><b>语音</b></td>
            <td width="88" height="23" align="center"><b>装视频</b></td>
            <td width="84" height="23" align="center"><b>装立体声</b></td>
            <td width="52" height="23" align="center"><b>多视频</b></td>
            <td width="52" height="23" align="center"><b>多语音</b></td>
            <td width="59" height="23" align="center"><b>脚本空间</b></td>
            <td width="59" height="23" align="center"><b>赠送套餐</b></td>
            
          </tr>
<%
i=30
do while (i<61) %>
          <tr>
            <td width="68" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000"><b><%=i%></b></font>人</td>
            <td width="79" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:yuyin(<%=i%>);" title="点击计算上限<%=i%>人的语音聊天室价格！"><b><font color="#FF0000"><%=i*6%></font></b>元/年</a> 
			　</td>
            <td width="88" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:shipins(<%=i%>);" title="点击计算上限<%=i%>人加视频功能的语音聊天室价格！">
			加<b><font color="#FF0000"><%=i*3%></font></b>元/年</a>
			　</td>
            <td width="84" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:litis(<%=i%>);" title="点击计算上限<%=i%>人加立体声功能的语音聊天室价格！">
			加<b><font color="#FF0000"><%=i%></font></b>元/年</a>
			　</td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">免费</font><b><font color="#FF0000">2</font></b><font color="#008000">个</font></td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">免费</font><b><font color="#FF0000">3</font></b><font color="#008000">个</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">免费</font><b><font color="#FF0000">2</font></b><font color="#008000">个</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#tc"><font color="#006600">套餐一</font></a></td>
          </tr>
<%
 i=i+30
 loop %>
<%
i=100
do while (i<501) %>

          <tr>
            <td width="68" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000"><b><%=i%></b></font>人</td>
            <td width="79" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:yuyin(<%=i%>);" title="点击计算上限<%=i%>人的语音聊天室价格！"><b><font color="#FF0000"><%=i*6%></font></b>元/年</a> 
			　</td>
            <td width="88" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:shipins(<%=i%>);" title="点击计算上限<%=i%>人加视频功能的语音聊天室价格！">
			加<b><font color="#FF0000"><%=i*3%></font></b>元/年</a>
			　</td>
            <td width="84" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:litis(<%=i%>);" title="点击计算上限<%=i%>人加立体声功能的语音聊天室价格！">
			加<b><font color="#FF0000"><%=i%></font></b>元/年</a>
			　</td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">免费</font><b><font color="#FF0000">2</font></b><font color="#008000">个</font></td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">免费</font><b><font color="#FF0000">3</font></b><font color="#008000">个</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">免费</font><b><font color="#FF0000">2</font></b><font color="#008000">个</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#tc"><font color="#006600">套餐一</font></a></td>
          </tr>
<%
 i=i+50
 loop %>
     <tr>
            <td width="592" height="57" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left">&nbsp;<font color="#008000"><a name="jss">价格计算公式</a>： </font>
			[语&nbsp;&nbsp;&nbsp; 音]<b> </b>最高人数上限 x ￥6<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[加 视 频]<b> </b>最高人数上限 x ￥3<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[加立体声]<b> </b>最高人数上限 x ￥1&nbsp;&nbsp;&nbsp; 
			支持自定义规格购买</td>
     </tr>
        	<tr>
            <td width="592" height="13" align="center" colspan="8" bgcolor="#FFFFFF">
            <table border="0" width="100%" id="table8" cellspacing="1" height="26">
<form name="login" id="login" action="shop_bchat_add.asp" method="post">
						<tr>
							<td width="67" height="26"><font color="#008000">
							价格计算：</font></td>
							<td height="26" width="298">
							<select size="1" name="renshu" onChange="tian();">
<%
i=30
do while (i<1001) %>
							<option style="color: #0000ff" value=<%=i%>>人数上限<%=i%>人</option>
<%
 i=i+1
 loop %>					
							</select><select size="1" name="shipin" onChange="tian();">
							<option style="color: #ff0000" value="0">不加装视频</option>
							<option style="color: #008000" value="1">加装视频</option>
							</select><select size="1" name="liti" onChange="tian();">
							<option style="color: #ff0000" value="0">不加装立体声</option>
							<option style="color: #008000" value="1">加装立体声</option>
							</select></td>

							<td width="136" height="26"><input style="color: #0000ff" type="text" name="m" size="8" value="180">元/年</td>
							<td width="64" height="26">
							<p align="left">
							<input type="submit" value="立即购买" name="B1"></td>
						</tr>
</form>
					</table>

            </td>
     		</tr>
     <tr>
            <td width="592" height="26" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left"><b><font color="#FF0000">特别优惠：</font></b><font color="#FF0000">在2005年1月20日之前购买任何一款聊天室产品，将免费获赠[套餐一]一年服务。</font></td>
     </tr>        </table>
        </center>
      </div>
      
      <br>
     
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