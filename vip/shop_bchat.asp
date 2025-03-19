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
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>欢迎 [ <%=UN%> 
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
			<a href="#js" onclick="javascript:shipins(<%=i%>);" title="点击计算上限<%=i%>人加视频功能的语音聊天室价格！">加<b><font color="#FF0000"><%=i*3%></font></b>元/年</a>
			　</td>
            <td width="84" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:litis(<%=i%>);" title="点击计算上限<%=i%>人加立体声功能的语音聊天室价格！">加<b><font color="#FF0000"><%=i%></font></b>元/年</a>
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
			<a href="#js" onclick="javascript:shipins(<%=i%>);" title="点击计算上限<%=i%>人加视频功能的语音聊天室价格！">加<b><font color="#FF0000"><%=i*3%></font></b>元/年</a>
			　</td>
            <td width="84" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:litis(<%=i%>);" title="点击计算上限<%=i%>人加立体声功能的语音聊天室价格！">加<b><font color="#FF0000"><%=i%></font></b>元/年</a>
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
            <p align="left">&nbsp;<font color="#008000"><a name="jss">价格计算公式</a>： </font>[语&nbsp;&nbsp;&nbsp; 
			音]<b> </b>最高人数上限 x ￥6<br>
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
      
      <br><br>
      
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="198">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="9">
            <font color="#FFFFFF"><b>
            　<a name="tc">网站套餐</a></b></font></td>
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
							<b>论坛</b></td>
							<td align="middle" bgColor="#D4D0C8" width="71" height="26">
							<b>脚本空间</b></td>
							<td align="middle" bgColor="#D4D0C8" width="53" height="26">
							<b>总计</b></td>
						</tr>



						<tr>
							<td align="middle" width="66" height="26" bgcolor="#FFFFFF">
							套餐一</td>
							<td align="middle" width="64" height="26" bgcolor="#FFFFFF">
							<font color="#000080">100元</font> </td>
							<td align="middle" width="74" height="26" bgcolor="#FFFFFF">
							<font color="#000080">260元</font><font color="#008000">[100P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">160元</font><font color="#008000">[300P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">80元</font><font color="#008000">[200P]</font></td>
							<td align="middle" width="72" height="26" bgcolor="#FFFFFF">
							<font color="#000080">360元</font><font color="#008000">[8B]</font></td>
							<td align="middle" width="71" height="26" bgcolor="#FFFFFF">
							<font color="#000080">60元</font><font color="#008000">[2P]</font></td>
							<td align="middle" width="53" height="26" bgcolor="#FFFFFF">
							<font color="#FF0000">880元</font></td>
						</tr>


						<tr>
							<td align="middle" width="66" height="26" bgcolor="#FFFFFF">
							套餐二</td>
							<td align="middle" width="64" height="26" bgcolor="#FFFFFF">
							<font color="#000080">200元</font><font color="#008000">[1D]</font></td>
							<td align="middle" width="74" height="26" bgcolor="#FFFFFF">
							<font color="#000080">500元</font><font color="#008000">[500P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">300元</font><font color="#008000">[2000P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">160元</font><font color="#008000">[500P]</font></td>
							<td align="middle" width="72" height="26" bgcolor="#FFFFFF">
							<font color="#000080">800元</font><font color="#008000">[50B]</font></td>
							<td align="middle" width="71" height="26" bgcolor="#FFFFFF">
							<font color="#000080">100元</font><font color="#008000">[50MF]</font></td>
							<td align="middle" width="53" height="26" bgcolor="#FFFFFF">
							<font color="#FF0000">2060元</font></td>
     		</tr>
			<tr>
            <td width="592" height="66" colspan="9" bgcolor="#FFFFFF">
            <br>
&nbsp;&nbsp; 说明<font color="#008000">：[参数] P</font>为数量如 
					照片数量，新闻记录最大容量，留言板记录条数，脚本空间的个数。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#008000">B</font>为论坛分类板块数量。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#008000">1D</font>是绑定一个.net ，.com的国际域名一个。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
					<font color="#008000">MF</font>是FTP管理的空间数字为兆单位，<font color="#008000">50MF</font>=50M 
					FTP空间</td>
     		</tr>
        	<tr>
            <td width="592" height="24" colspan="9" bgcolor="#FFFFFF">

            <b><font color="#FF0000">特别优惠：</font></b><font color="#FF0000">在2005年1月20日之前购买任何一款聊天室产品，将免费获赠[套餐一]一年服务。</font></td>
     		</tr>

        </table>
        </center>
      </div>
      <br><br>
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="198">
          <tr>
            <td width="592" bgcolor="#800080" height="24">
            <font color="#FFFFFF"><b>
            　<a name="buzhou">购买步骤</a></b></font></td>
          </tr>


			<tr>
            <td width="592" height="185" bgcolor="#FFFFFF">
            <table cellSpacing="2" cellPadding="5" width="100%" align="center" border="0" id="table4">
						<tr>
							<td class="cn">
							<table cellSpacing="4" cellPadding="0" width="98%" align="right" border="0" id="table5">
								<tr>
									<td vAlign="top" width="4%">
									<img height="15" src="../info/images/1.gif" width="13"></td>
									<td class="cn" width="96%"><strong>详细阅读</strong>《声明事项》，<strong>以及</strong>《
									聊湾聊天室服务条款》。</td>
								</tr>
								<tr>
									<td vAlign="top" width="4%">
									<img height="15" src="../info/images/2.gif" width="13"></td>
									<td class="cn"><b>
									首先要在聊湾注册一个会员用户，然后记录自己的会员数字ID。</b></td>
								</tr>
								<tr>
									<td vAlign="top">
									<img height="15" src="../info/images/3.gif" width="13"></td>
									<td class="cn"><strong>按收费标准汇款：<font color="#ff0000"><a href="#ww"><font color="#FF0000">（汇款方法）</font></a></font><br>
									</strong>
									汇款单上写：聊湾会员ID：XXXXX 
									（如10023），帐户充值。并注明聊湾客服人员的数字ID：（如10000）。<font color="#008000">[这条很重要因为该客服人员要在未来一年里为你提供服务和支持！]</font></td>
								</tr>
								<tr>
									<td vAlign="top">
									<img height="15" src="../info/images/4.gif" width="13"></td>
									<td class="cn"><strong>款到后一个工作日内开通将资金注入帐号：</strong><br>
　<table class="dashtab" cellSpacing="0" cellPadding="6" width="100%" border="0" id="table6">
										<tr>
											<td>
											<ol class="cn">
												<li>如急需办理时请将汇款收据扫描Email至<a href="mailto:bill@silversand.net">779811@QQ.Com</a>；或传真到010-81430388，一个工作日内办理业务，不需打电话确认。 

												</li>
												<li>为了核对汇款资料，请来信<a href="mailto:bill@silversand.net">779811@QQ.Com</a>注明汇款用途、
												会员数字ID、汇款人个人资料（姓名、地址、电话、身份证号码）、汇款时间和汇款单号码（邮局汇款）。 
												</li>
											</ol>
											</td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td vAlign="top" height="167">
									<img height="15" src="../info/images/5.gif" width="13"></td>
									<td class="cn" height="167"><strong>
									当资金注入你帐户后就可以购买聊天室和其他相关的服务。<br>
									<font color="#008000">
									提示：假如因操作失误购买错商品，请在24小时内同聊湾工作人员联系，注销误购商品。</font><br>
									<font color="#FF0000">注意：</font>视频聊天室室主需在聊天室开通后15天内向本站提供相关资料：</strong><br>
									视频聊天室室主需将个人身份证复印件、个人近期证件彩照一张和亲笔签署的<font color="#ff0000"><u>《
									聊湾聊天室管理责任书》</u></font>一份（将该责任书下载打印后手写签名，单位用户请盖公章）邮寄到本站（以本站收到邮件之日为准）。聊天室视频功能开通后15天内如未收到以上材料，本站将暂时关闭其视频功能，直到本站收到以上材料。 
									<br>
									<font color="#ff0000">本站邮政地址：</font>北京市朝阳区华商大厦806A<br>
									邮政编码：100001<br>
									收件人：聊湾管理员</td>
								</tr>
							</table>
            			</tr>
					</table>
            
            </td>
     		</tr>
        	<tr>
            <td width="592" height="24" bgcolor="#FFFFFF">

            				<b><font color="#FF0000">注意：</font></b>未满18周岁的国内客户，请由你的监护人代为购买。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [<font color="#008000">香港、澳门、台湾、国外的客户请在国内找一位负责人代购。本站提供风险承担业务详情请点击。</font>]</td>
     		</tr>

        </table>
        </center>
      </div>
      <br>
      
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="155">
          <tr>
            <td width="592" bgcolor="#800080" height="24">
            <font color="#FFFFFF"><b>
            <a name="ww">　汇款方式</a></b></font></td>
          </tr>


			<tr>
            <td width="592" height="29" bgcolor="#FFFFFF">
            全国各大银行都可以汇款到本行</td>
     		</tr>
        	<tr>
            <td width="592" height="71" bgcolor="#FFFFFF" valign="top">
            <br>
&nbsp;&nbsp;&nbsp;&nbsp; 山西省农业银行 <br>
&nbsp;&nbsp;&nbsp;&nbsp; 卡号 95599 8090 03400 67512<br>
&nbsp;&nbsp;&nbsp;&nbsp; 户名 李志军 <br>
&nbsp;&nbsp;&nbsp; -------------------------------------<br>
&nbsp;&nbsp;&nbsp;&nbsp; <font color="#008000">提示：汇款后请妥善保存汇款回执小票，以免发生不必要的损失。<br>
　</font></td>
			<br>
　</td>
     		</tr>
        	<tr>
            <td width="592" height="37" bgcolor="#FFFFFF">

            				<b><font color="#FF0000">注意：</font></b>未满18周岁的国内客户，请由你的监护人代为购买。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [<font color="#008000">香港、澳门、台湾、国外的客户请在国内找一位负责人代购。本站提供风险承担业务详情请点击。</font>]</td>
     		</tr>

        </table>
        </center>
      </div>
      <br>
      
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