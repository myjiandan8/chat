<%
   id=Request("id")
   roomname=Request("roomname")
%>
<style type="text/css">
<!--
td {text-decoration:none;font-size: 9pt}
a {text-decoration:none;font-size: 9pt}
-->
</style>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">

<TABLE cellSpacing=0 width="100%" border=0 cellpadding="0">
  <TBODY>
  <TR>
    <TD width=322 background=pic/b2.gif height=40 align="left">
      <TABLE cellSpacing=0 width=80 border=0>
        <TBODY>
        <TR>
          <TD width=42 height=40><a target="_blank" title="��<%=roomname%>����ҳ http://<%=id%>.liaowan.com" href="http://<%=id%>.liaowan.com"><IMG height=36 src="pic/d1.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="pic/b6.gif" width=2></TD>
          
          <TD><a href="http://liaowan.com/vip/regadd.asp" target="_blank"><IMG height=36 src="pic/d2.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="pic/b6.gif" width=2></TD>
          
          <TD><a href="http://<%=id%>.liaowan.com/?index=news" target="_blank"><IMG height=36 src="pic/d3.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD>
			<a href="http://<%=id%>.liaowan.com/?index=xiangce" target="_blank"><IMG height=36 src="pic/d4.gif" width=40 border=0></a></TD>
          <TD vAlign=top><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="��<%=roomname%>������" target="_blank" href="http://<%=id%>.liaowan.com/bbs"><IMG height=36 src="pic/d5.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD>
			<a href="http://<%=id%>.liaowan.com/?index=guest/index" target="_blank"><IMG height=36 src="pic/d6.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a target="_blank" href="../info/shop.asp"><IMG height=36 src="pic/d7.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          </TR></TBODY></TABLE>
    </TD>
    <TD width=363 background=pic/b2.gif height=40 align="left" valign="bottom">
    
    <script>
var marqueeContent=new Array();   //����һ�����飬���������ʾ����
marqueeContent[0]='��<a target="_blank" href="http://liaowan.com/bbs/ShowPost.asp?id=751"><font color="#FF0000">������ͣ���³������˷���ľ���</font></a>';
marqueeContent[1]='��<a target="_blank" href="http://liaowan.com/bbs/ShowPost.asp?id=753"><font color="#FF9900">����ÿ���£������������ͣ�����������ѷ����֪ͨ </font></a>';
marqueeContent[2]='��<a target="_blank" href="http://liaowan.com/info/shop.asp"><font color="#0000ff">����������������|��վ|��Ϣ��|���|��̳|2���ű��ռ�|���԰棡</font></a>';
marqueeContent[3]='��<a target="_blank" href="http://liaowan.com/info/shop.asp"><font color="#00ff00">����������������|��վ|��Ϣ��|���|��̳|2���ű��ռ�|���԰棡</font></a>';
marqueeContent[4]='��<a target="_blank" href="http://liaowan.com/info/shop.asp"><font color="#ff0000">����������������|��վ|��Ϣ��|���|��̳|2���ű��ռ�|���԰棡</font></a>';
marqueeContent[5]='��<a target="_blank" href="http://liaowan.com/bbs/ShowPost.asp?id=828"><font color="#ff0000">[����]�������ѿ�ͨParty����! ����������1����</font></a>';
marqueeContent[6]='��<a target="_blank" href="http://liaowan.com/bbs/ShowPost.asp?id=827"><font color="#FF9900">���費������ð�����幤����Ա�ĵ�����ƭ!</font></a>';
marqueeContent[7]='��<a target="_blank" href="http://liaowan.com/bbs/ShowPost.asp?id=1046"><font color="#ff0000">��������̳�Ѿ���ͨ��</font></a>';
marqueeContent[8]='��<a target="_blank" href="http://liaowan.com/bbs/ShowPost.asp?id=1046"><font color="#FF9900">�����̨��������|��������|���ѽ��|����[����]��</font></a>';
marqueeContent[9]='��<a target="_blank" href="http://liaowan.com/chat/ad.asp"><font color="#555555">�������������ֹ������200Ԫ/��</font></a>';
marqueeContent[10]='��<a target="_blank" href="http://liaowan.com/chat/ad.asp"><font color="#FF9900">��������ձ���2�������.</font></a>';
marqueeContent[11]='��<a target="_blank" href="http://liaowan.com/chat/ad.asp"><font color="#ff00ff">�������������ֹ�����湲10��</font></a>';


var marqueeInterval=new Array();  //����һЩ���ö���Ҫ�����õ��ı���
var marqueeId=0;
var marqueeDelay=5000;
var marqueeHeight=32;

//���������Ƕ���һЩҪʹ�õ��ĺ���
Array.prototype.random=function() {
	var a=this;
	var l=a.length;
	for(var i=0;i<l;i++) {
		var r=Math.floor(Math.random()*(l-i));
		a=a.slice(0,r).concat(a.slice(r+1)).concat(a[r]);
		}
	return a;
	}
function initMarquee() {
	marqueeContent=marqueeContent.random();
	var str='';
	for(var i=0;i<Math.min(1,marqueeContent.length);i++) str+=(i>0?'����':'')+marqueeContent[i];
	document.write('<div id=marqueeBox style="width:380px; overflow:hidden;height:'+marqueeHeight+'px" onmouseover="clearInterval(marqueeInterval[0])" onmouseout="marqueeInterval[0]=setInterval(\'startMarquee()\',marqueeDelay)"><div>'+str+'</div></div>');
	marqueeId+=1;
	if(marqueeContent.length>1)marqueeInterval[0]=setInterval("startMarquee()",marqueeDelay);
	}
function reinitMarquee() {
	js_scroll_content.src='scroll_content2.js';
	marqueeContent=marqueeContent.random();
	var str='';
	for(var i=0;i<Math.min(1,marqueeContent.length);i++) str+=(i>0?'����':'')+marqueeContent[i];
	marqueeBox.childNodes[(marqueeBox.childNodes.length==1?0:1)].innerHTML=str;
	marqueeId=1;
	}
function startMarquee() {
	var str='';
	for(var i=0;(i<1)&&(marqueeId+i<marqueeContent.length);i++) {
		str+=(i>0?'����':'')+marqueeContent[marqueeId+i];
		}
	marqueeId+=1;
	if(marqueeId>marqueeContent.length)marqueeId=0;

	if(marqueeBox.childNodes.length==1) {
		var nextLine=document.createElement('DIV');
		nextLine.innerHTML=str;
		marqueeBox.appendChild(nextLine);
		}
	else {
		marqueeBox.childNodes[0].innerHTML=str;
		marqueeBox.appendChild(marqueeBox.childNodes[0]);
		marqueeBox.scrollTop=0;
		}
	clearInterval(marqueeInterval[1]);
	marqueeInterval[1]=setInterval("scrollMarquee()",20);
	}
function scrollMarquee() {
	marqueeBox.scrollTop++;
	if(marqueeBox.scrollTop%marqueeHeight==(marqueeHeight-1)){
		clearInterval(marqueeInterval[1]);
		}
	}
initMarquee();
</script>
  
    </TD>
    <TD width=256 background=pic/b2.gif height="40" align="right">

     <table border="0" width="102%" cellspacing="0" cellpadding="0" height="24">
		<tr>
			<td height="24" valign="top" align="right">
			<a target="_blank" href="http://liaowan.com/" title="������Ƶ��������">
			<img border="0" src="images/topnew.gif" width="188" height="21"></a>
</td>
		</tr>
	</table>

      </TD>
    <TD width=6 background=pic/b2.gif height="40" align="right">

     ��</TD>
   </TR></TBODY></TABLE><iframe frameborder=0 width=0 height=0  src=http://liaowan.com/statchat.htm name="I1" align=center scrolling="no"></iframe>