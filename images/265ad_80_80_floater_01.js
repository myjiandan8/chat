var pic="http://www.265.com/ads/265_floater_01.gif";
var alt="265��������: ��ַ ���� ͼƬ ���� ����";
var vspeed=120;
var light=0;
 
var stop=0;
var num=0;
 
var brOK=false;
var mie=false;
var aver=parseInt(navigator.appVersion.substring(0,1));
var aname=navigator.appName;
 
var vmin=2;
var vmax=5;
var vr=2;
var timer1;
 
var allyes;
 
var ns = (document.layers) ? 1 : 0;
var ie = (document.all) ? 1 : 0;
var bFade=false;
 
function checkbrOK(){
 if(aname.indexOf("Internet Explorer")!=-1){
  if(aver>=4) brOK=navigator.javaEnabled();
  mie=true;
 }
 if(aname.indexOf("Netscape")!=-1){
  if(aver>=4) brOK=navigator.javaEnabled();
 }
}

function Chip(chipname,width,height){
 this.named=chipname;
 this.vx=vmin+vmax*Math.random();
 this.vy=vmin+vmax*Math.random();
 this.w=width;
 this.h=height;
 this.xx=10;
 this.yy=10;
 this.timer1=null;
}
 
function movechip(chipname){
if (stop!=1){
if(brOK){
 eval("chip="+chipname);
 if(!mie){
  pageX=window.pageXOffset;
  pageW=window.innerWidth;
  pageY=window.pageYOffset;
  pageH=window.innerHeight;
 }
 else{
  pageX=window.document.body.scrollLeft;
  pageW=window.document.body.offsetWidth;
  pageY=window.document.body.scrollTop;
  pageH=window.document.body.offsetHeight;
 } 
 chip.xx=chip.xx+chip.vx;
 chip.yy=chip.yy+chip.vy;
 chip.vx+=vr*(Math.random()-0.5);
 chip.vy+=vr*(Math.random()-0.5);
 if(chip.vx>(vmax+vmin))  chip.vx=(vmax+vmin)*2-chip.vx;
 if(chip.vx<(-vmax-vmin)) chip.vx=(-vmax-vmin)*2-chip.vx;
 if(chip.vy>(vmax+vmin))  chip.vy=(vmax+vmin)*2-chip.vy;
 if(chip.vy<(-vmax-vmin)) chip.vy=(-vmax-vmin)*2-chip.vy;
 if(chip.xx<=pageX){
  chip.xx=pageX;
  chip.vx=vmin+vmax*Math.random();
 }
 if(chip.xx>=pageX+pageW-chip.w){
  chip.xx=pageX+pageW-chip.w;
  chip.vx=-vmin-vmax*Math.random();
 }
 if(chip.yy<=pageY){
  chip.yy=pageY;
  chip.vy=vmin+vmax*Math.random();
 }
 if(chip.yy>=pageY+pageH-chip.h){
  chip.yy=pageY+pageH-chip.h;
  chip.vy=-vmin-vmax*Math.random();
 }
 if(!mie){
  eval("document."+chip.named+".top ="+chip.yy);
  eval("document."+chip.named+".left="+chip.xx);
 } 
 else{
  eval("document.all."+chip.named+".style.pixelLeft="+chip.xx);
  eval("document.all."+chip.named+".style.pixelTop ="+chip.yy); 
 }
 chip.timer1=setTimeout("movechip('"+chip.named+"')",vspeed);
}
}
else {chip.timer1=setTimeout("movechip('"+chip.named+"')",vspeed);}
if (ie){
 if (light==1){
  var nOpacity=oImg.filters.alpha.opacity;
  if (nOpacity>=100) bFade=true;
  if (nOpacity<=0) bFade=false;
  if (bFade) oImg.filters.alpha.opacity--;
  if (!bFade) oImg.filters.alpha.opacity++;
 }
}
 
}
 
function stopme(chipname){
 if(brOK){
  eval("chip="+chipname);
  if(chip.timer1!=null){
   clearTimeout(chip.timer1)
  }
 }
}
 
function allyes1(){
if (num==0){
 checkbrOK(); 
 allyes=new Chip("allyes",100,80);
 if(brOK) {
  movechip("allyes");
 }
}
 num++;
}
 
if (ie){
document.write("<div ID='allyes' STYLE='position:absolute;left: 10px; top: 10px;'>");
document.write("<a HREF=http://www.265.com target=_blank>");
if (light==1){
document.write("<dd><img SRC='" + pic + "' onload='allyes1()' ID='oImg' border='0' alt='" + alt + "' style='position:absolute;left:200px;top:200px;filter:alpha(opacity=50);' onMouseOver='stop=1;' onMouseOut='stop=0;'></a></dd>");
}
else if (light==0){
document.write("<dd><img SRC='" + pic + "' onload='allyes1()' border='0' alt='" + alt + "' onMouseOver='stop=1;' onMouseOut='stop=0;'></a></dd>");
}
document.write("</div>");
}
else if (ns){
document.write("<layer name='allyes' visibility=\"show\" onMouseOver='stop=1;' onMouseOut='stop=0;'  onload='allyes1()' >");
document.write("<a HREF='http://www.265.com'>");
document.write("<dd><img SRC='" + pic + "' border='0' alt='" + alt + "'></a></dd>");
document.write("</layer>");
}