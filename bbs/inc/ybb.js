function ybbcode(temp) {

if (getCookie('ybbcode')!='0'){ //�Ƿ��YBB����
temp = temp.replace(/&amp;/ig,"&");
temp = temp.replace(/\[b\]/ig,"<b>");
temp = temp.replace(/\[\/b\]/ig,"<\/b>");
temp = temp.replace(/\[i\]/ig,"<i>");
temp = temp.replace(/\[\/i\]/ig,"<\/i>");
temp = temp.replace(/\[u\]/ig,"<u>");
temp = temp.replace(/\[\/u\]/ig,"<\/u>");
temp = temp.replace(/\[strike\]/ig,"<strike>");
temp = temp.replace(/\[\/strike\]/ig,"<\/strike>");
temp = temp.replace(/\[center\]/ig,"<center>");
temp = temp.replace(/\[\/center\]/ig,"<\/center>");
temp = temp.replace(/\[marquee\]/ig,"<marquee>");
temp = temp.replace(/\[\/marquee\]/ig,"<\/marquee>");
temp = temp.replace(/\[QUOTE\]/ig,"<BLOCKQUOTE><strong>����</strong>��<HR Size=1>");
temp = temp.replace(/\[\/QUOTE\]/ig,"<HR SIZE=1><\/BLOCKQUOTE>");
temp = temp.replace(/(\[font=)([^.:;`'"=\]]*)(\])/ig,"<FONT face='$2'>");
temp = temp.replace(/\[\/font\]/ig,"<\/FONT>");
temp = temp.replace(/(\[COLOR=)([^.:;`'"=\]]*)(\])/ig,"<FONT COLOR='$2'>");
temp = temp.replace(/\[\/COLOR\]/ig,"<\/FONT>");
temp = temp.replace(/(\[size=)([0-9]*)(\])/ig,"<FONT size='$2'>");
temp = temp.replace(/\[\/size\]/ig,"<\/FONT>");
temp = temp.replace(/(\[URL\])([^]]*)(\[\/URL\])/ig,"<A TARGET=_blank HREF='$2'>$2</A>");
temp = temp.replace(/(\[URL=)([^]]*)(\])/ig,"<A TARGET=_blank HREF='$2'>");
temp = temp.replace(/\[\/URL\]/ig,"<\/A>");
temp = temp.replace(/(\[EMAIL\])(\S+\@[^]]*)(\[\/EMAIL\])/ig,"<a href=mailto:$2>$2</a>");
temp = temp.replace(/(\[RM=([0-9]*)\,([0-9]*)\,([A-Z]*)\])([^]]*)(\[\/RM\])/ig,"<OBJECT classid=clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA width=$2 height=$3><PARAM NAME=SRC VALUE=$5><PARAM NAME=CONSOLE VALUE=Clip1><PARAM NAME=CONTROLS VALUE=imagewindow><PARAM NAME=AUTOSTART VALUE=$4><\/OBJECT><br><OBJECT classid=CLSID:CFCDAA03-8BE4-11CF-B84B-0020AFBBCCFA height=60 width=$2><PARAM NAME=CONTROLS VALUE=ControlPanel,StatusBar><PARAM NAME=CONSOLE VALUE=Clip1><\/OBJECT>");
temp = temp.replace(/(\[MP=([0-9]*)\,([0-9]*)\])([^]]*)(\[\/MP\])/ig,"<object classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 width=$2 height=$3><param name=ShowStatusBar value=-1><param name=Filename value=$4><\/object>");
}

if (getCookie('ybbflash')!='0'){  //�Ƿ��[FLASH]����
temp = temp.replace(/(\[FLASH=([0-9]*)\,([0-9]*)\])([^]]*)(\[\/FLASH\])/ig,"<embed width=$2 height=$3 src='$4' wmode=transparent>");
}

if (getCookie('ybbimg')!='0'){  //�Ƿ��[IMG]����
temp = temp.replace(/(\[IMG\])([^];]*)(\[\/IMG\])/ig,"<img border=0 src='$2' onmousewheel='return yuzi_img(event,this)' onload='javascript:if(this.width>body.clientHeight)this.width=body.clientHeight'>");
}

if (getCookie('ybbbrow')!='0'){  //�Ƿ�򿪱������
temp = temp.replace(/(\[em)([0-9]*)(\])/ig,"<IMG border=0 SRC=images/Emotions/$2.gif>");
}

return (temp);
}


function level(experience,membercode,username,moderated)
{
if (membercode=='0'){levelname="��δ����";levelimage="<img src=images/level/1.gif>";}
else
if (membercode=='4'){levelname="�� �� Ա";levelimage="<img src=images/level/19.gif>";}
else
if (membercode=='5'){levelname="��������";levelimage="<img src=images/level/20.gif>";}
else
if(moderated.indexOf("|"+username+"|") != -1 && moderated!=""){levelname="��̳����";levelimage="<img src=images/level/18.gif>";}
else
if (experience<= 50){levelname="СҰ��";levelimage="<img src=images/level/1.gif>";}
else
if (experience<= 150){levelname="Ұ��";levelimage="<img src=images/level/2.gif>";}
else
if (experience<= 500){levelname="����";levelimage="<img src=images/level/3.gif>";}
else
if (experience<= 1000){levelname="����";levelimage="<img src=images/level/4.gif>";}
else
if (experience<= 2000){levelname="����";levelimage="<img src=images/level/5.gif>";}
else
if (experience<= 4000){levelname="����ӳ�";levelimage="<img src=images/level/6.gif>";}
else
if (experience<= 8000){levelname="��������";levelimage="<img src=images/level/7.gif>";}
else
if (experience<= 12000){levelname="������";levelimage="<img src=images/level/8.gif>";}
else
if (experience<= 20000){levelname="�����ӳ�";levelimage="<img src=images/level/9.gif>";}
else
if (experience<= 30000){levelname="��ʿ";levelimage="<img src=images/level/10.gif>";}
else
if (experience<= 50000){levelname="��ʿ";levelimage="<img src=images/level/11.gif>";}
else
if (experience<= 70000){levelname="��ʿ��";levelimage="<img src=images/level/12.gif>";}
else
if (experience<= 100000){levelname="��ʿ";levelimage="<img src=images/level/13.gif>";}
else
if (experience<= 130000){levelname="��ͭ��ʿ";levelimage="<img src=images/level/14.gif>";}
else
if (experience<= 160000){levelname="������ʿ";levelimage="<img src=images/level/15.gif>";}
else
if (experience<= 200000){levelname="�ƽ���ʿ";levelimage="<img src=images/level/16.gif>";}
else
if (experience> 200000){levelname="ʥ��ʿ";levelimage="<img src=images/level/17.gif>";}
return('');
}

//�Ŵ���СͼƬ
function yuzi_img(e, o)
{
var zoom = parseInt(o.style.zoom, 10) || 100;
zoom += event.wheelDelta / 12;
if (zoom > 0) o.style.zoom = zoom + '%';
return false;
}