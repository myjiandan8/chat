document.writeln("<table width=100% height=100% cellpadding=2 cellspacing=0><tr><td align=left><select onChange=\"FormatText('FormatBlock',this[this.selectedIndex].value);\"><option selected>����</option><option value=\"&lt;P&gt;\">����</option><option value=\"&lt;H1&gt;\">����һ</option><option value=\"&lt;H2&gt;\">�����</option><option value=\"&lt;H3&gt;\">������</option><option value=\"&lt;H4&gt;\">������</option><option value=\"&lt;H5&gt;\">������</option><option value=\"&lt;H6&gt;\">������</option><option value=\"&lt;PRE&gt;\">Ԥ���ʽ</option></select> <select name=\"selectFont\" onChange=\"FormatText('fontname', selectFont.options[selectFont.selectedIndex].value);\"><option selected>����<option value=\"removeFormat\">Ĭ������<option value=\"����\">����<option value=\"����\">����<option value=\"����\">����<option value=\"��Բ\">��Բ<option value=\"����_GB2312\">����<option value=\"����_GB2312\">����<option value=\"������\">������<option value=\"���Ĳ���\">���Ĳ���<option value=\"���ķ���\">���ķ���<option value=\"������κ\">������κ<option value=\"Arial\">Arial<option value=\"Arial Black\">Arial Black<option value=\"Arial Narrow\">Arial Narrow<option value=\"Century\">Century<option value=\"Courier New\">Courier New<option value=\"Georgia\">Georgia<option value=\"Impact\">Impact<option value=\"Lucida Console\">Lucida Console<option value=\"MS Sans Serif\">MS Sans Serif<option value=\"System\">System<option value=\"Symbol\">Symbol<option value=\"Tahoma\">Tahoma<option value=\"Times New Roman\">Times New Roman&nbsp; &nbsp;<option value=\"Verdana\">Verdana<option value=\"Webdings\">Webdings<option value=\"Wingdings\">Wingdings</option></select> <select onChange=\"FormatText('fontsize',this[this.selectedIndex].value);\" name=\"D2\"><option class=\"heading\" selected>�����С<option value=1>һ��<option value=2>����<option value=3>����<option value=4>�ĺ�<option value=5>���<option value=6>����<option value=7>�ߺ�</option></select>");
document.writeln("<img src=images/ybb/fbcolor.gif alt=\"ͻ����ɫ\" align=absmiddle style=cursor:hand onClick=BackColor()>");
document.writeln("<img src=images/ybb/fgcolor.gif alt=\"������ɫ\" align=absmiddle style=cursor:hand onClick=foreColor()>");
document.writeln("<img src=images/ybb/replace.gif alt=\"�滻\" align=absmiddle style=cursor:hand onClick=replace()>");
document.writeln("<img src=images/ybb/img.gif alt=\"����ͼƬ\" align=absmiddle style=cursor:hand onClick=img()>");
document.writeln("<img alt=\"����FLASH�ļ�\" src=images/ybb/swf.gif align=absmiddle style=cursor:hand onclick=flash()>");
document.writeln("<img alt=\"����Media Player�ļ�\" src=images/ybb/mp.gif align=absmiddle style=cursor:hand onclick=MediaPlayer()>");
document.writeln("<img alt=\"����RealPlayer�ļ�\" src=images/ybb/rm.gif align=absmiddle style=cursor:hand onclick=RealPlay()>");
var FormatTextlist="���볬���� createLink|ȥ�������� Unlink|<br>|���� bold|��б italic|�»��� underline|�ϱ� superscript|�±� subscript|ɾ���� strikethrough|ɾ�����ָ�ʽ RemoveFormat|����� Justifyleft|���� JustifyCenter|�Ҷ��� JustifyRight|���˶��� justifyfull|��� insertorderedlist|��Ŀ���� InsertUnorderedList|���������� Outdent|���������� indent|��ͨˮƽ�� InsertHorizontalRule|���� cut|���� copy|ճ�� paste|���� undo|�ָ� redo|ȫѡ selectAll|ȡ��ѡ�� unselect|ɾ����ǰѡ���� Delete"
var list= FormatTextlist.split ('|'); 
for(i=0;i<list.length;i++) {
if (list[i]=="<br>"){document.write("<br>");
}else{
var TextName= list[i].split (' '); 
document.write(" <img align=absmiddle src=images/ybb/"+TextName[1]+".gif alt="+TextName[0]+" style=cursor:hand onClick=FormatText('"+TextName[1]+"')> ");
}
}
document.writeln("</td></tr><tr><td height=100%><iframe ID=HtmlEditor MARGINHEIGHT=5 MARGINWIDTH=5 width=100% height=100%></iframe></td></tr><tr></tr></table>");
var IframeID=frames["HtmlEditor"];
if(navigator.appVersion.indexOf("MSIE 6.0",0)==-1){IframeID.document.designMode="On"}
IframeID.document.open();
IframeID.document.write ('<script>i=0;function ctlent(eventobject){if(event.ctrlKey && window.event.keyCode==13 && i==0){i=1;parent.document.yuziform.content.value=document.body.innerHTML;parent.document.yuziform.submit();parent.document.yuziform.submit1.disabled=true;}}<\/script><body onkeydown=ctlent()>');
IframeID.document.close();
IframeID.document.body.contentEditable = "True";
IframeID.document.body.innerHTML=document.getElementById("content").value;
IframeID.document.body.style.fontSize="10pt";


function FormatText(command,option){frames.HtmlEditor.focus();frames.HtmlEditor.document.execCommand(command,true,option);}

function CheckLength(){alert("����ַ�Ϊ "+50000+ " �ֽ�\n������������ "+IframeID.document.body.innerHTML.length+" �ֽ�");}

function emoticon(theSmilie){
frames.HtmlEditor.focus();
sel=frames.HtmlEditor.document.selection.createRange();
sel.pasteHTML("<img src=images/Emotions/"+theSmilie+".gif>");
}

function DoTitle(addTitle) {
var revisedTitle;var currentTitle = document.yuziform.topic.value;revisedTitle = addTitle+currentTitle;document.yuziform.topic.value=revisedTitle;document.yuziform.topic.focus();
}

function CheckForm(form){
form.content.value=frames.HtmlEditor.document.body.innerHTML;
MessageLength=document.yuziform.content.value.length;
if(MessageLength<2){alert("�������ݲ���С��2���ַ���");return false;}
if(MessageLength>50000){alert("�������ݲ��ܳ���50000���ַ���");return false;}
document.yuziform.submit1.disabled = true;
}

function Gopreview()
{
document.preview.content.value=IframeID.document.body.innerHTML; 
window.open('', 'preview_page', 'resizable,scrollbars,width=750,height=450');
document.preview.submit()
}

function BackColor()
{
  var arr = showModalDialog("inc/selcolor.htm", "", "dialogWidth:18em; dialogHeight:17.5em; status:0;help:0");
  if (arr != null) FormatText('BackColor', arr);
  else frames.HtmlEditor.focus();
}

function foreColor()
{
  var arr = showModalDialog("inc/selcolor.htm", "", "dialogWidth:18em; dialogHeight:17.5em; status:0;help:0");
  if (arr != null) FormatText('forecolor', arr);
  else frames.HtmlEditor.focus();
}

//////�滻����
function replace()
{
  var arr = showModalDialog("inc/replace.html", "", "dialogWidth:22em;dialogHeight:10em;status:0;help:0");
	if (arr != null){
		var ss;
		ss = arr.split("*")
		a = ss[0];
		b = ss[1];
		i = ss[2];
		con = IframeID.document.body.innerHTML;
		if (i == 1)
		{
			con = bbsxp_rCode(con,a,b,true);
		}else{
			con = bbsxp_rCode(con,a,b);
		}
		IframeID.document.body.innerHTML = con;
	}
	else IframeID.focus();
}
function bbsxp_rCode(s,a,b,i){
	a = a.replace("?","\\?");
	if (i==null)
	{
		var r = new RegExp(a,"gi");
	}else if (i) {
		var r = new RegExp(a,"g");
	}
	else{
		var r = new RegExp(a,"gi");
	}
	return s.replace(r,b); 
}
//////�滻���ݽ���

function img(){
url=prompt("������ͼƬ�ļ���ַ:","http://");
if(!url || url=="http://") return;
frames.HtmlEditor.focus();
sel=frames.HtmlEditor.document.selection.createRange();
sel.pasteHTML("<img border=0 src="+url+">");
}

function RealPlay(){
var arr = showModalDialog("inc/RealPlay.htm", "", "dialogWidth:22em; dialogHeight:10.5em; status:0;help:0");
if (arr != null){
frames.HtmlEditor.focus()
sel=frames.HtmlEditor.document.selection.createRange();
sel.pasteHTML(arr);
}
}

function MediaPlayer(){
var arr = showModalDialog("inc/MediaPlayer.htm", "", "dialogWidth:22em; dialogHeight:10.5em; status:0;help:0");
if (arr != null){
frames.HtmlEditor.focus()
sel=frames.HtmlEditor.document.selection.createRange();
sel.pasteHTML(arr);
}
}

function flash(){
var arr = showModalDialog("inc/flash.htm", "", "dialogWidth:22em; dialogHeight:9em; status:0;help:0");
if (arr != null){
frames.HtmlEditor.focus()
sel=frames.HtmlEditor.document.selection.createRange();
sel.pasteHTML(arr);
}
}