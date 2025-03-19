<script language="JavaScript">
<!-- 
///liaowan.com//ÁÄÍå///
function doZoom(size){
	document.getElementById('zoom').style.fontSize=size+'px'
}
var NS4 = (document.layers);  
var IE4 = (document.all);
var win = window;   
var n   = 0;
function findIt() {
	if (searchstr.value != "")
		findInPage(searchstr.value);
}
///liaowan.com//ÁÄÍå///
// -->
</script>
<script language="JavaScript">
<!--
///liaowan.com//ÁÄÍå///
function  toup2(theobject){
logo=1
gogo(theobject)
}
function  todown2(theobject){
logo=0
down(theobject)
}
function gogo(image){
theobject=image
 if  (logo==1&&theobject.filters.alpha.opacity<100){
theobject.filters.alpha.opacity+=20;
var upalpha=setTimeout("gogo(theobject)",300)
}
}
function down(theobject){
if (logo==0&&theobject.filters.alpha.opacity>80){
theobject.filters.alpha.opacity-=20;
var downalpha=setTimeout("down(theobject)",300)
}
}
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
///liaowan.com//ÁÄÍå///
function setAuthor(str)
{
var obj=document.form2.name;
obj.value=str;
}
///liaowan.com//ÁÄÍå///
function setAuthor1(str)
{
var obj=document.form1.news_author;
obj.value=str;
}
///liaowan.com//ÁÄÍå///
function setAuthor2(str)
{
var obj=document.addart.art_poster;
obj.value=str;
}
//document.write("<div style=visibility: hidden><img src='http://1999.zj0759.com/conn/count.asp?Referer=&Width="+escape(screen.width)+"&Height="+escape(screen.height)+"' border=0 width=0 height=0 alt='WEB INFOMASTION COUNT' style='CURSOR: help'></div>");

function YY_checkform() { 
  var args = YY_checkform.arguments; var myDot=true; var myV=''; var myErr='';var addErr=false;var myReq;
  for (var i=1; i<args.length;i=i+4){
    if (args[i+1].charAt(0)=='#'){myReq=true; args[i+1]=args[i+1].substring(1);}else{myReq=false}
    var myObj = MM_findObj(args[i].replace(/\[\d+\]/ig,""));
    myV=myObj.value;
    if (myObj.type=='text'||myObj.type=='password'||myObj.type=='hidden'){
      if (myReq&&myObj.value.length==0){addErr=true}
      if ((myV.length>0)&&(args[i+2]==1)){ //fromto
        var myMa=args[i+1].split('_');if(isNaN(myV)||myV<myMa[0]/1||myV > myMa[1]/1){addErr=true}
      } else if ((myV.length>0)&&(args[i+2]==2)){
          var rx=new RegExp("^[\\w\.=-]+@[\\w\\.-]+\\.[a-z]{2,4}$");if(!rx.test(myV))addErr=true;
      } else if ((myV.length>0)&&(args[i+2]==3)){ // date
        var myMa=args[i+1].split("#"); var myAt=myV.match(myMa[0]);
        if(myAt){
          var myD=(myAt[myMa[1]])?myAt[myMa[1]]:1; var myM=myAt[myMa[2]]-1; var myY=myAt[myMa[3]];
          var myDate=new Date(myY,myM,myD);
          if(myDate.getFullYear()!=myY||myDate.getDate()!=myD||myDate.getMonth()!=myM){addErr=true};
        }else{addErr=true}
      } else if ((myV.length>0)&&(args[i+2]==4)){ // time
        var myMa=args[i+1].split("#"); var myAt=myV.match(myMa[0]);if(!myAt){addErr=true}
      } else if (myV.length>0&&args[i+2]==5){ // check this 2
            var myObj1 = MM_findObj(args[i+1].replace(/\[\d+\]/ig,""));
            if(myObj1.length)myObj1=myObj1[args[i+1].replace(/(.*\[)|(\].*)/ig,"")];
            if(!myObj1.checked){addErr=true}
      } else if (myV.length>0&&args[i+2]==6){ // the same
            var myObj1 = MM_findObj(args[i+1]);
            if(myV!=myObj1.value){addErr=true}
      }
    } else
    if (!myObj.type&&myObj.length>0&&myObj[0].type=='radio'){
          var myTest = args[i].match(/(.*)\[(\d+)\].*/i);
          var myObj1=(myObj.length>1)?myObj[myTest[2]]:myObj;
      if (args[i+2]==1&&myObj1&&myObj1.checked&&MM_findObj(args[i+1]).value.length/1==0){addErr=true}
      if (args[i+2]==2){
        var myDot=false;
        for(var j=0;j<myObj.length;j++){myDot=myDot||myObj[j].checked}
        if(!myDot){myErr+='* ' +args[i+3]+'\n'}
      }
    } else if (myObj.type=='checkbox'){
      if(args[i+2]==1&&myObj.checked==false){addErr=true}
      if(args[i+2]==2&&myObj.checked&&MM_findObj(args[i+1]).value.length/1==0){addErr=true}
    } else if (myObj.type=='select-one'||myObj.type=='select-multiple'){
      if(args[i+2]==1&&myObj.selectedIndex/1==0){addErr=true}
    }else if (myObj.type=='textarea'){
      if(myV.length<args[i+1]){addErr=true}
    }
    if (addErr){myErr+='* '+args[i+3]+'\n'; addErr=false}
  }
  if (myErr!=''){alert('´íÎó:\t\t\t\t\t\n\n'+myErr)}
  document.MM_returnValue = (myErr=='');
}
//-->
</script>
<SCRIPT language=javascript>
var currentpos,timer; 
function initialize() 
{ 
timer=setInterval("scrollwindow()",1);
} 
function sc(){
clearInterval(timer); 
}
function scrollwindow() 
{ 
currentpos=document.body.scrollTop; 
window.scroll(0,++currentpos); 
if (currentpos != document.body.scrollTop) 
sc();
} 
//document.onmousedown=sc
//document.ondblclick=initialize
</script>
<script Language="JavaScript">
///liaowan.com//ÁÄÍå///
tPopWait=50;
tPopShow=5000;
showPopStep=20;
popOpacity=99;
sPop=null;
curShow=null;
tFadeOut=null;
tFadeIn=null;
tFadeWaiting=null;
document.write("<style type='text/css'id='defaultPopStyle'>");
document.write(".cPopText {  background-color: #F8F8F5;color:#000000; border: 1px #000000 solid;font-color: font-size: 12px; padding-right: 4px; padding-left: 4px; height: 20px; padding-top: 2px; padding-bottom: 2px; filter: Alpha(Opacity=0)}");
document.write("</style>");
document.write("<div id='dypopLayer' style='position:absolute;z-index:1000;' class='cPopText'></div>");

function showPopupText(){
var o=event.srcElement;
	MouseX=event.x;
	MouseY=event.y;
	if(o.alt!=null && o.alt!=""){o.dypop=o.alt;o.alt=""};
        if(o.title!=null && o.title!=""){o.dypop=o.title;o.title=""};
	if(o.dypop!=sPop) {
			sPop=o.dypop;
			clearTimeout(curShow);
			clearTimeout(tFadeOut);
			clearTimeout(tFadeIn);
			clearTimeout(tFadeWaiting);	
			if(sPop==null || sPop=="") {
				dypopLayer.innerHTML="";
				dypopLayer.style.filter="Alpha()";
				dypopLayer.filters.Alpha.opacity=0;	
				}
			else {
				if(o.dyclass!=null) popStyle=o.dyclass 
					else popStyle="cPopText";
				curShow=setTimeout("showIt()",tPopWait);
			}
	}
}
function showIt(){
		dypopLayer.className=popStyle;
		dypopLayer.innerHTML=sPop;
		popWidth=dypopLayer.clientWidth;
		popHeight=dypopLayer.clientHeight;
		if(MouseX+12+popWidth>document.body.clientWidth) popLeftAdjust=-popWidth-24
			else popLeftAdjust=0;
		if(MouseY+12+popHeight>document.body.clientHeight) popTopAdjust=-popHeight-24
			else popTopAdjust=0;
		dypopLayer.style.left=MouseX+12+document.body.scrollLeft+popLeftAdjust;
		dypopLayer.style.top=MouseY+12+document.body.scrollTop+popTopAdjust;
		dypopLayer.style.filter="Alpha(Opacity=0)";
		fadeOut();
}

function fadeOut(){
	if(dypopLayer.filters.Alpha.opacity<popOpacity) {
		dypopLayer.filters.Alpha.opacity+=showPopStep;
		tFadeOut=setTimeout("fadeOut()",1);
		}
		else {
			dypopLayer.filters.Alpha.opacity=popOpacity;
			tFadeWaiting=setTimeout("fadeIn()",tPopShow);
			}
}

function fadeIn(){
	if(dypopLayer.filters.Alpha.opacity>0) {
		dypopLayer.filters.Alpha.opacity-=1;
		tFadeIn=setTimeout("fadeIn()",1);
		}
}
document.onmouseover=showPopupText;
///liaowan.com//ÁÄÍå///
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
  }
 var h;
 var w;
 var l;
 var t;
 var topMar = 1;
 var leftMar = -2;
 var space = 1;
 var isvisible;
 var MENU_SHADOW_COLOR='#999999';
 var global = window.document
 global.fo_currentMenu = null
 global.fo_shadows = new Array
///liaowan.com//ÁÄÍå///
</script>
<script language="JavaScript1.2">
///liaowan.com//ÁÄÍå///
function newimg(imgurl) {
newwin=window.open('about:blank','','top=10');
newwin.document.write('<body leftmargin=0 topmargin=0 oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onselectstart="event.returnValue=false"><img id=img1 src='+imgurl+' onload="self.resizeTo(this.offsetWidth+10,this.offsetHeight+15);">');
}
</script>
<script language="javascript">
var rate = 20;
var obj;
var act = 0;
var elmH = 0;
var elmS = 128;
var elmV = 255;
var clrOrg;
var TimerID;
if (navigator.appName.indexOf("Microsoft",0) != -1 && parseInt(navigator.appVersion) >= 4) {
Browser = true;
} else {
Browser = false;
}
if (Browser) {
document.onmouseover = doRainbowAnchor;
document.onmouseout = stopRainbowAnchor;
}
function doRainbow()
{
if (Browser && act != 1) {
act = 1;
obj = event.srcElement;
clrOrg = obj.style.color;
TimerID = setInterval("ChangeColor()",100);
}
}
function stopRainbow()
{
if (Browser && act != 0) {
obj.style.color = clrOrg;
clearInterval(TimerID);
act = 0;
}
}
function doRainbowAnchor()
{
if (Browser && act != 1) {
obj = event.srcElement;
while (obj.tagName != 'A' && obj.tagName != 'BODY') {
obj = obj.parentElement;
if (obj.tagName == 'A' || obj.tagName == 'BODY')
break;
}
if (obj.tagName == 'A' && obj.href != '') {
act = 1;
clrOrg = obj.style.color;
TimerID = setInterval("ChangeColor()",100);
}
}
}
function stopRainbowAnchor()
{
if (Browser && act != 0) {
if (obj.tagName == 'A') {
obj.style.color = clrOrg;
clearInterval(TimerID);
act = 0;
}
}
}
function ChangeColor()
{
obj.style.color = makeColor();
}
function makeColor()
{
if (elmS == 0) {
elmR = elmV; elmG = elmV; elmB = elmV;
}
else {
t1 = elmV;
t2 = (255 - elmS) * elmV / 255;
t3 = elmH % 60;
t3 = (t1 - t2) * t3 / 60;
if (elmH < 60) {
elmR = t1; elmB = t2; elmG = t2 + t3;
}
else if (elmH < 120) {
elmG = t1; elmB = t2; elmR = t1 - t3;
}
else if (elmH < 180) {
elmG = t1; elmR = t2; elmB = t2 + t3;
}
else if (elmH < 240) {
elmB = t1; elmR = t2; elmG = t1 - t3;
}
else if (elmH < 300) {
elmB = t1; elmG = t2; elmR = t2 + t3;
}
else if (elmH < 360) {
elmR = t1; elmG = t2; elmB = t1 - t3;
}
else {
elmR = 0; elmG = 0; elmB = 0;
}
}
elmR = Math.floor(elmR);
elmG = Math.floor(elmG);
elmB = Math.floor(elmB);
clrRGB = '#' + elmR.toString(16) + elmG.toString(16) + elmB.toString(16);
elmH = elmH + rate;
if (elmH >= 360)
elmH = 0;
return clrRGB;
}
var NoImagesURL = "http://www.liaowan.com/images/error.gif";
//window.onload = checkImages;

</script>