document.oncontextmenu = new Function("return false;");
var RoomName		="�����";			//������
var RoomNumb		="2150";			//�����
var BlackRoomName	="˽�ķ���";			//˽�ķ���
var BlackRoomNumb	="2168";			//��˽�ķ�������Ϊ��""
var RoomNick		="����";			//���������
var HomePage		="http://"+RoomNumb+".liaowan.com/";	//�����ַ
var JsPlace		="http://127.0.0.1/533/";	//�ű���ַ 
var YinPlace		="http://127.0.0.1/533/yy/yy.htm";	//�������Ե�ַ   
var LogoPic		="http://127.0.0.1/533/pic/logo9.gif"	//����LOGOͼ
var EmotePlace		="http://127.0.0.1/533/emote/";		//����ͼ��ַ
var HeadPlace		="http://127.0.0.1/533/face/";		//ͷ��ͼ��ַ
var ButtonPlace		=JsPlace+"button/";		//��ťͼ��ַ
var InHelloPic		=HeadPlace+"hi.gif";		//���ҹ�©ͼ
var AdminPicTop		=HeadPlace+"em26.gif";		//�����־
var BgImg1		="http://127.0.0.1/533/pic/mengyu1.jpg";	//����������ͼ 
var BgImg2		="http://127.0.0.1/533/pic/mengyu3.jpg";	//�б�������ͼ 
var BgImg3		="http://127.0.0.1/533/pic/mengyu-b.jpg";	//����������ͼ
var BgImg4		="http://127.0.0.1/533/pic/mengyu1.jpg";	//����������ͼ
var PicSound1		="http://127.0.0.1/533/pic/sound01.gif";	//�̵绰ͼ
var PicSound2		="http://127.0.0.1/533/pic/sound02.gif";	//�ڵ绰ͼ
var PicVideo		="http://127.0.0.1/533/pic/video.gif";	//��Ƶͷͼ 

var AutoOpenAi		=1;		//�Զ���ͼ��ѡ��1Ϊ�Զ��򿪣�0Ϊ����
var AutoOpenDiv		=0;		//�Զ��򿪷���ѡ��1Ϊ�Զ��򿪣�0Ϊ����
var AutoOpenNotice	=0;		//�Զ�������ʾѡ��1Ϊ�Զ��򿪣�0Ϊ����
var OnlyChineseName	=0;		//ֻ���������û�����,0�����ƣ�1ֻ���������û�����
var ZengPing		=617;		//���ѽ����Ƿ�ʹ������ 0��ʹ�ã�ʹ��ʱ���뱳��ͼ�߶�����
var mLocation		=3;		//������ʽʱͼƬ��λ�� 1ͼƬ���У�2ͼƬ���ϣ�3ͼƬ���� 

var ButtonTextColor	="#035E45";	//��������ť����ɫ195976
var ButtonOverTextColor	="#FC05F3";	//��������긲�ǰ�ť����ɫ
var ButtonBkColor	="#FC05F3";	//��������ť��ͼƬʱ����ɫ
var SelectColor1	="#006898";	//ѡ����������ɫ
var SelectColor2	="#FC05F3";	//ѡ��򸱱�������ɫ

var SBar3DLightColor	="#ffffff";	//������������ߵ���ɫ
var SBarArrowColor	="#ffffff";	//���°�ť�����Ǽ�ͷ����ɫ
var SBarBaseColor	="#ffffff";	//�������Ļ�����ɫ
var SBarTrackColor	="#E2E7C7";	//�������ı�����ɫ
var SBarDarkShadowColor	="#A8BE3A";	//���������ǿ��Ӱ����ɫ
var SBarFaceColor	="#D4E2C9";	//���������͹�����ֵ���ɫ
var SBarHighLightColor	="#D4E2C9";	//�������հײ��ֵ���ɫ
var SBarShadowColor	="#D4E2C9";	//�����������Ӱ����ɫ

var Lastchoice		=new Array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
var Auser		=document.inputform.USER.value;
var Apass		=document.inputform.PASS.value;
var OnTaker		="�ˣ�"+RoomNick+"�������ǣ���Һã��ҡ�"+Auser+"����ඣ�";
var OnAdminTaker	="�ˣ���Һã�Ҫ�����������������Ҵ�999���ҡ�"+Auser+"���Ϲ�ඣ�";
var OutAdminTaker	="��"+Auser+"�����¹��ˣ�лл��Ҷ��ҹ�����֧�֣�";
var OutTaker		="����ඣ�����Ŷ���������Ѿ�����ඣ��һ�������ģ�";
if (typeof(inhi)=="undefined") inhi="����Ҳ����������ı˰�������Ҳ������ͣ���ĸ��壬��Ҳ����������������һ������Ҳ��������Ǹ������������ֻ�������ɣ����ѣ��������ˣ�";

//�������������ƣ�ͷ�񡪡�
var OwnerPic=new Array(
	"*admin","T01.gif",
	"*����2","005.gif"
	);
//�����ű�ά�������ƣ�ͷ�񡪡�
var JsPic=new Array(
        "*�����","w02.gif",
        "*ά��1","002.gif"
	);
//���������ˣ����ơ������߿��Կ����������ߵ����֡���
var Hider=new Array(
	"*����1",	"*����2"
	); 
//��������ͷ�����ƣ�ͷ���Ա��Ա�0Ů�ԣ��Ա�1���� (�����������ͷ���Ա�) ����
var HeadPic=new Array(
	'*����־�̹���ë��',	'X01.gif','0',
	'*�u_�u',		'X02.gif','0',
	'*����˭?',		'X03.gif','0'
	);

//�������������ˣ����������а����������ֲ�׼���뷿�䡪��
var NameFilter = new Array(
	"��",		"����",		"����",		"�ϴ�",		"�¾�"
	);

//������ͼ����д��ͼƬ���֣�ͼ��(ͼƬ�밴��ʽ�������)����
var Animated=new Array(
	"��ͼ", "____","",
	"��ӭ", "__","",
        "��ӭ", RoomName+"��ӭ��!", "0056.gif",
	"��ӭ", "Welcome you of come", "0043.gif",
	"�ʺ�", "__","",
        "���", "���!!", "0109.gif",
	"���", "���,ϣ������������Ŀ���!", "0113.gif", 
        "���", "���", "0021.gif",
	"���", "__","",
	"�ټ�", "�ݰ�,��ӭ�ٴι�������!", "0116.gif"
	);

//��������������˵�����б���ɫ��(��ɫ�밴��Ҫ�����޸�)����
var AUserTitle = new Array(

	0,	RoomNick+"������",	"#000000",
	1,	RoomNick+"���߹���",	"#ff0000",
	2,	RoomNick+"���߹���",	"#ff0000",
	3,	RoomNick+"����",	"#0000FF",
	4,	RoomNick+"�ű�ά��",	"#0000FF",
	5,	RoomNick+"�α�",	"#0000FF",
	6,	RoomNick+"�α�",	"#8A03D7",
	7,	RoomNick+"�α�",	"#339900",
	8,	RoomNick+"�α�",	"#339900"
	); 

//������ť���ӣ����ƣ���ַ������
var BarLink=new Array(
	RoomNick+"��̳","http://127.0.0.1/bbsxp/",
	RoomNick+"���","",
	RoomNick+"ͷ��", JsPlace+"facelist.htm",
	"��ɳ���", "http://www.yinsha.com/lyrics",
	"������ȫ", "",
	"��ʴ�ȫ", "",
	"�ø�ô�", ""   
	);

//��������ͨ����������������š���
var RoomLinks=new Array(
	"��"+RoomNick+"����ͨ����","____",
	"�����ѧ","383037"
	);
var scrlstyle="scrollbar-arrow-color:"+SBarArrowColor+";scrollbar-track-color:"+SBarTrackColor+";scrollbar-base-color:"+SBarBaseColor+";scrollbar-face-color:"+SBarFaceColor+";scrollbar-3d-light-color:"+SBar3DLightColor+";scrollbar-darkshadow-color:"+SBarDarkShadowColor+";scrollbar-highlight-color:"+SBarHighLightColor+";scrollbar-shadow-color:"+SBarShadowColor+";";
var tpmeffectevent=" onmouseout=\"this.style.color='"+ButtonTextColor+"'\" onmouseover=\"this.style.color='"+ButtonOverTextColor+"'\" ";
var buttonstyle="font-family:����,SimSun;font-size:9pt;color:"+ButtonTextColor+";POSITION:absolute;"
var buttonstyle36=";width:36px;height:20px;"+buttonstyle+"background-image:url("+ButtonPlace+"button36.gif);border:1px";
var buttonstyle44=";width:44px;height:20px;"+buttonstyle+"background-image:url("+ButtonPlace+"button44.gif);border:1px";
var buttonstyle60=";width:60px;height:20px;"+buttonstyle+"background-image:url("+ButtonPlace+"button60.gif);border:1px";
var wleft		=(screen.width-450) /2;
var wtop		=(screen.height-200)/2;
var login_succeed	=true;
var button_pic = new Array(
	12,	"button12.gif",
	19,	"button19.gif",
	28,	"button28.gif",
	36,	"button36.gif",
	40,	"button40.gif",
	44,	"button44.gif",
	47,	"button47.gif",
	57,	"button56.gif",
	60,	"button60.gif",
	70,	"button70.gif",
	114,	"button114.gif"
	);
if (mLocation==1)
	Location="center center";
else if (mLocation==2)
	Location="top left";
else if (mLocation==3)
	Location="bottom right";
else
	Location="";
UserNameFilter()
document.write("<style type=text/css>");
document.write("TD{FONT-SIZE:9pt;}");
document.write("BODY {FONT-FAMILY: ����; FONT-SIZE: 11pt; COLOR: #000000;"+scrlstyle+";background-position:top left;background-repeat:repeat;}");
document.write("INPUT {BORDER-BOTTOM-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-COLOR: #cccccc; BORDER-LEFT-WIDTH: 1px; BORDER-RIGHT-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-COLOR: #cccccc; BORDER-TOP-WIDTH: 1px; FONT-SIZE: 9pt; color:"+ButtonTextColor+"; HEIGHT: 19px; PADDING-BOTTOM: 1px;PADDING-TOP: 1px}");
document.write("SELECT {BACKGROUND-COLOR: #efefef; BORDER-BOTTOM-COLOR: #000000; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-COLOR: #000000; BORDER-LEFT-WIDTH: 1px; BORDER-RIGHT-COLOR: #000000; BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-COLOR: #000000; BORDER-TOP-WIDTH: 1px; FONT-FAMILY: ����; FONT-SIZE: 9pt; COLOR: #000000}");
document.write("</style>");
function loadclock(){
	if (document.all)setInterval("timeshow()",1000)
	}
function replacetag(){
	document.body.topMargin=19;  
	var c10="FONT-SIZE:10pt;FONT-FAMILY:����,SimSun";
	document.all.tags("TABLE")[0].cells(2).innerHTML="";
	screenForm.EAR.style.visibility = "hidden";
	screenForm.SHOW.style.visibility = "hidden";
	inputform.WHOTO.style.cssText=c10+";WIDTH:100px";
	screenForm.object.style.cssText=c10+";WIDTH:65px";
	inputform.msg.style.width=337; 
	}
//document.write('<body onload="replacetag()">');
setTimeout("replacetag()",100);
function killErrors() {return true;}
window.onerror = killErrors;

var AutoChat1=new Array(//�׻�
	"�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~�ʻ�~~~~",
	"�����㡤��㡤žž~~����.o�ৰ��.o�ৰ�𡤣�����㡤��㡤žž~~����.o�ৰ��.o�ৰ�𡤣�����㡤��",
	"�ࡢ�ࡢ�ࡢ���ǣࡢ�ࡢ�ࡢ��������һ���£ࡢ�ࡢ�ࡢ�����˼��������ࡢ�ࡢ�ࡢ������Һ�����ࡢ�ࡢ�ࡢ��) ��Ը���� �ࡢ�ࡢ�ࡢ",
	"������*�����ߡ֡���ʻ��֡���ʻ�ż�񡫡�ǩ����������*������*�����ߡ�*������*������ż�񡫡�ǩ��",
	"���_�С�t��r���_�С�t��r�èt��r�סޡ����ӡਈ?������t��r�סޡ����Ө�?��žžžžž�t��r�סޡ����ӷ��ǡ��",
	"��С����������ˣ������ˤ塣��֡֡� ���֡� ��. o�塣С�����������,�����ˤ� �֤֡֡�塣��֤֡֡�Ҷ��Ҳ�����ˣ���Զ�����ˤ�֡� . �塣�� �֤֡֡� �涯��",
	"žžž!~~!~~!~~!~~!~~! žžž!~~!~~!~~!~~!~~! ",
	"���ͼ���!���޺���!Ϊ����ͣ����޺��ޣ��������ͣ���ӣ��͸�ÿλ���˼�������ֵ���!�㳪�����Ŷ! (((((((((žž))))))))�廨����",
	"����㡤žž~~����.oO��.oO�𡤣�����㡤��㡤žž~~����.oO��.oO�𡤣�����㡤��㡤oO�𡤣�����㡤��",
	"����o����.����o�����o����.����o����.����o����.����o�����o����.����o����.����o����.����o�����o����.����o����.����o���塣",
	"�q�r�ɨq�r�ɨq�rž��ž��ž�ɨq�r�ɨq�r�ɨq�r��ž��ž��ž�q�r�ɨq�r�ɨq�rž��ž��ž�ɨq�r�ɨq�r�ɨq�r�ɨq�rž��ž��ž�ɨq�r",
	"����������������������������������������������������������������������������������������������������������������",
	"��p�q�r�ɡžž�����p�q�r�ɡžž�����p�q�r�ɡžž�����p�q�r�ɡžž�����p�q�r�ɡžž�����p�q�r�ɡ�",
	"*^_^*��ž��*^_^*��ž��*^_^*��ž��*^_^*��ž��*^_^*��ž��*^_^**^_^*��ž��*^_^*��ž��*^_^*��ž��*^_^*��ž��*^_^*",
	"�p�p�p�p�p�p�p�p�p�p(((((žž)))))�p�p�p�p�p(((((žž)))))�p�p�p�p�p(((((žž)))))�p�p�p�p�p�p�p�p�p�p",
	"��և֡�և֡�և֡�և֡�և֡�և֡�և֡�և֡�և֡�և֡�և֡�և֡�և֡�և֡�֡�և֡�և֡�և֡�և֡�և֡�և֡�",
	"�t��r���t��r~*~ž~*~���t��r~*~ž~*~���t��r~*~ž~*~���t��r~*~ž~*~���t��r~*~ž~*~���t��r~*~ž~*~���t��r~*~ž~*~���t��r",
	"�רt��r�פרt��r���רt��ržžž���ࡣ**����㣮�������ֻӦ�������˼��ĵü����š�����������t��r���רt��r����",
	"��ѽ��ѽ��ѽ��ѽŶ~~~~~~���������ߴ���������������ɣ�����ѽ�������չ�������ž�����������ɣ��ð�Ӵ��~~",
	"�͸���ġ���**õ��**�����ĵ�����*���������**��㡤**һ��һ����һ��**õ��**����ĵ�����*�������**����һ��һ����һ��",
	"�������~~����õ�廨�t���rĵ������r�r���򻨨t���Ϊ����ƣ�����PAPAPA�������t���rõ��t���r�ٺϨt���rĵ���t���r����");
var AutoChat2=new Array(//����
	);
var AutoChat3=new Array(//����
	"��������������������һ������ʫ����ȫ���������Ů�Ĵ�����ഺ�ķ�ɡ�������ӡ�������������˫��ˮ���峺�����ӣ��Լ������ġ�һ��һ���Ľ�ë������̽ѯ�����ǹ��У������ʺ�",
	"����һƬ�������������ǰƮ��Ʈȥ�����������ŵ����ϵ����Ŵ����������Ц�ݡ�������˫�ִ��������۾�������ܲ�׽�����������������ң���Ĵ�ӱ��������С�",
	"��ʵ����������ʶ��������Ƭ�ϡ���Ƭ�ϵ�������������������˼���Ƿ����ᡢ�Ƿ����С��Ƿ����ģ�ʹ�Ҿþ�����������",
	"�ٲ�һ��ĳ��������ŵ�����ȹ����׼�Ĺ������������������ۣ������ض�ׯ�����ʣ��ٵ�Ƥ���˼����㶼��С������",
	"ԶԶ�أ���Ŀ����ı�Ӱ��������һ�����ɫ��������Ժ�ĺڷ��������ľ�����ҹ���ɽ������к������һ���ٲ���",
	"��ı��������߽�����һ��������£��������������Ե���ô��ӯ����ô�ý�����ֱ�������Ʈ��һ����ơ�",
	"��Ц������������Ϊ���ˣ���Ƭ�������촽��Ц���������۾���Ц�����������ݵúܾٶ��ľ���Ҳ��Ц��",
	"ƽ�Ķ��ۣ�����͡���Цٻ�⣬��Ŀ���⡱�������о��룬�����ɫ��𪣬�����������ٶ������Ե����������С���ˮ��ܽ�ء�֮�С�����ոսӴ���һ˲�䣬�Ҿ�ǿ�ҵظе�������ɢ����һ������Ե�������Ϣ��",
	"�������У���һ�۾ͷ������㡣�Ҳ���˵������������Ư����һ���������Ҹ�˵���������������ɫ��һ������������������ģ��������˵ķ�ȣ���������һͷ�������㷢����һ��˵������������",
	"�Ҳ�֪�������������������������ǿ�����ӡ�����������������ģ�����Ƥ�����ں�������۾���С�ɺ�����촽��������һ��˵������׽�����ķ�����ɿ�����ҵ��ġ�",
	"����������������������ɫ�Ĵ��������Ű׻��ߵķ�����ī��ɫ�Ŀ��ӣ�������˿�Ƶ���һ�������ɫ�ĸ߸�Ь��������������һ�����������ı������",
	"���ǹ����ε�������ô�׾��������һ˫üë����ô�޳���ˮ������һ���۾�����ô������");
var AutoChat4=new Array(//˼��
	"ɽ����������ʹ�����˻��������ȴ�޷���������������������ߵ����ĺ��ǡ��ҵ�����Զ������㡣",
	"��������Ե�ݣ�ָ��������ʶ���������ļ����ǣ�������ҵ���˿˿�����ɵĺ��ߡ�",
	"�����㣬�ҵ���˼�������������һ�����ڴ��յ���¶�зɳ������㣬�����������ǿó�������",
	"����������һ����۵����ӣ��ҵ������������������ǳ����������������ǰ����¹���������������ǣ�Ҳ�ͣ��",
	"˼������һǧ��һ��ε��ʺ����������ʴ��磬Ը���㽫�ҵľ����Ӹ��㣻Ը���½��ҵ��ʺ�����㣻Ը���罫�ҵĹ����͸��㣡",
	"���Ծ������ڴ��ļ尾���������ڰ���˼��������һ����һ�εس������ҵ���ǰ��������ô���С���������ȴ�޷��׽����������ϵ����ǡ�",
	"�޿��κ��У����ط������������飬�����������꣡�����̲�ס����һ��ߺޣ����������ճ���ֽ�ң��������¡�������һ��ֽ���ܸ�ȼ����������������Ű���֮������ĳ�Ҳȼ�ճɻҰɣ�",
	"���������ﻹ��һ��΢С���ң��������һ���ţ����ĵ��ң���������Ļ��ţ�ֻ�������ţ����ܰ���Ԯ�ȡ�",
	"��ҹ����̾Ϣ�����ú�˯����ϥ¤����ɫ�����������������ҵ����ܣ��������ݡ�С���Ӱ��������ɣ�������˯һ�£�Ҳ���һ����Σ��μ���������ֱ������ҡ�",
	"��Ȼֻ�ֱ����������ڣ����Ƕ�����˵�������Ǽ��������ˣ�������������������Ů���ͻ��鲻�Խ��������㣬����͵͵�غ���Ƚϣ��������ģ���û��һ���ܺ���ȵģ�",
	"ÿһ�������������Ӱ��������ǰת�����������ʲô�£�һ�����׼������ˣ�������ֻ���㣬������ʲôʱ�������");
var AutoChat5=new Array(//��Ľ
	"�Դ��Ǵμ�����֮���ҵ�����������ȥ��һ�㣬���Ӱ�ӣ�ռ������ÿһ�����䡣��������ҵĳ�����",
	"�ҽʾ���֭��д���������ʫ������ʧ���ˣ���Ϊ��ʹȫ�����������ԴǼ���������Ҳ�������������������֮һѽ��",
	"�����ӰԽ��ԽƵ���س������ҵ���ǰ�������أ��������һ�㣬һ����Ҳ���жϣ�Ū���ҳԲ��÷���˯���þ���",
	"�Ұ������ò������������飬��ʹ�Ҳ���ʹ���Ҹ�������ҲҪԸ�Ҹ�����ͬ�ڡ�ֻҪ���Ҹ������֣���Ҳ������������.",
	"��������ߵ��ƣ�Ʈ����������������׷Ѱ��������ˮ�е�Ƽ�������ķ�������������ĥ�����ܸ���������������׷�������Ӱ����������������鲻�룿",
	"�������������΢Ц�������������������ʱ���ҷ·�е�����һ�󴺷磬ů���ڵģ����ҵ��Ķ��ܻ��ˡ�",
	"��˵�����ǵ�������ͨ�ġ�ȷʵ��ÿ�ο����㣬���񿴼����Լ�������˵ʲô����ʲô�����������ȸо�������������ǲ�ı���ϣ��Ҽ�ֱ��������ǰ����һ���ˡ�",
	"��֪�����㰮�����ϵ۰��Ÿ��򣬴�ĸ����Ӥ�����������ʴȶ���������У�����ʹ������������ܰ�����ֳ���",
	"�����ҵ������������ֺ�ʹ�࣬��ȫ������������У����ܹ�������ʥ��İ���",
	"Ը���ҵ���Ƕ������ģ�ʹ�����İ���Զ���䡣",
	"����������ɰ���С����Ҫ���ҵ����ε�ʲô�ط�ȥ�أ�",
	"��֮��������������ȼ�𣬴Ӵ�������������һ�顣",
	"˭˵�����Ƕ����أ�������������ʱ���Ҹе��ٻ���ţ��񳪲�����",
	"�Ҹе������ϵ�һ�У�ȫ���������ˣ���Ϊ�㰮�����ҡ�",
	"�����Կݣ�ʯ�����ã��Ҷ���İ���������䡣",
	"��ô����������һֱ��Ѱ������İ��飬��û��һ���������������������ʱ�̴����ң�����Խ��Խ����Ĵ򶯡�");
var AutoChat6=new Array(//�黰
	"������Ե�����࣬��˼��ݣ�ĴݲС���������鲻�䣬����֮�ĵ���Զ��",
	"ƽƽ���������㣬��֪���������㣬ÿ�����������㣬һ��������㣡",
	"��������������״�����˵���������������������������΢Ц�����ʱ���ӵ��",
	"�㿪�ĵ�ʱ���������ϵ����ܣ��㱯�˵�ʱ�������޾�����ĥ����һ��ֻ��������Ψһ��������",
	"��ֻ����������㣬�����ҽ��������������������Ҳ��������㣬��̰���ذ�ռ���������ġ����ҿ���",
	"��ʱ�������Լ�����ʱ�ᶪ�˼��䣬�������������ǵİ��飡",
	"�ҵĽŲ�����ǣ���ţ���������ͣ����������ҵĸ��壬��Ʈ��ʱ�������������Ե�һ��硣",
	"�����һ��õ�廨Ϊ��������ҵ���Ϊ����������ҵ�����Ϊ��������ҵ�һ�ж���Ϊ����",
	"�Ҳ���˵���������ˣ����ҿ��Ա�֤�������������",
	"�ҵ�ÿһ����������һ�Σ�ֱ��������ֹͣ���Ĳ����������Ұ��㣡",
	"������һ�ָо���������һ��˼���������һ�����Ե��",
	"����������е�����ʫ��������ʫ����������飬�������������������ʺ�!!!",
	"�鲻���ԣ��Բ����⣬�ⲻ���飬�鲻�Խ��ض���˵��--����ĺ����㣡",
	"�����ҵ��ģ������ҵĸΣ��������������ķ�֮���������ҵ�θ�������ҵķΣ����������еĺ�õ�壡",
	"�Ҷ�����ģ��������ϵĺ��ǡ���Զ���䡣��������Ψһ�ܸ����Ҹ����ˡ������һ���һ����ʱ���㡣",
	"������Ϊ��į�����㣬������Ϊ����ż�į���¶��ĸо�֮�������֮�أ�ֻ������̫�",
	"�����㴿�����⣬������һ��һ�⣬��������޻��⣬����������ʧ�⣬�õ���Ż����⡣",
	"��į��ҹΪ˼�����ʧ�ߣ���ʧȥ�����ε����飬�����ǴӴ˾�û�����ˣ�����������Ȼ����!",
	"�㣬�����������磬��һ�ų��������������ң�ȴ����������",
	"�����һ��õ�廨Ϊ��������ҵ���Ϊ����������ҵ�����Ϊ��������ҵ�һ�ж���Ϊ����");
var AutoChat7=new Array(//���
	"����������ˣ��������������������������֣�����������Ʋʡ���",
	"���ĵ������ˣ����������ĵ������һ�һ�����䣬������һƬ�Ʋʡ���",
	"��ʵ��������ʵ������������������ÿ�������ﶬ����Ҫ�������ٲ��ö�ã���Ҫ����ҽ���һ��ȹ�...",
	"���񡿸�λ���ѣ����档���ԡ����գ���ħ�����Ǩ|�}�~������Ͱݰ��˨��~�}�|ף����ĵ����|�}�~��goodbye�|ף���ÿ�춼�к����ܣ������Ǯ������",
	"�|���ݰ��˨��|һ�������ǧ��,��֪�����ٷ��.��Ҷౣ��,�к�������еĻ��������ٶ������롤����",
	"������������Ŵ�ң������᲻�ð�....�һ������ǵ�..���ǲ������ҵģ�Ҳ��һ��Ҫ���ҷ������������ֻҪ�������Σ��������Ҿ�����%��%����#��@",
	"����ף����ĵ���쨀�ݰ��˨���Ե�����´����ģ�����ף����ĵ���쨀�ݰ��˨�ף����ĵ����ݰ��ˡ�����Ե�����´����ģ�",
	"ʹ��������˵��ͬ־�ǣ��Ҳ����ˣ��Ҿ��ȳ�����������Ҫ��ֶ�����");
var AutoChat8=new Array(//Ҫ��
	"��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999",
	"��Ҫ��q�סԡ�9999�� Ҫ��q�סԡ�99999��Ҫ��99999��ԩרr",
	"��Ҫ����ѽ999999999999999999��Ҫ����ѽ9999999�������Ҫ����ѽ",
	"999999�q�ף�����Ҫ���999999�q�ף���Ӽ������ˣ���ԩרr999999",
	"999999�q�ף��������ˣ�999999�q�ף���������ѽ��999999�q�ף���");
var AutoChat9=new Array(//����
	"111111111111111111111111111111111111111111111",
	"�������ˡ��������ˡ��������ˡ��������ˡ��������ˡ�",
	"�����ˣ���������������������ˣ����������������",
	"������������ˡ�������������ˡ�������������ˡ�");
var AutoChat10=new Array(//��ӭ
	"��ã���ӭ�����ٻ�ӭ������"+RoomName+"��",
	"��ӭ���ٻ�ӭ������"+RoomName+"�����������ļ�!!",
	"��ã��ǩ����u�ө�������������Ȳ�!! ",
	"��������365��,��������366��ʧ��,�������ȴ����������,��Ϊ,��һֱ�������!",
	"��ӭ�����١�"+RoomName+"��!��������ļ�,Ը������������Ŀ��ġ���������!",
	"��ӭ������"+RoomName+"�Ը�������￪����죬����һ�ݺ�����!");
var AutoChat11=new Array(//����
	"����!�װ�������,��ӭ��ĵ���,����Ը���ҳ�һ�׸��𣿣���лл���_��");
var AutoChat12=new Array(//׼��
	"����!��һλ����������,��������׼��~~!лл! ");
var AutoChat13=new Array(//����
	"//alert");
var AutoChat14=new Array(//�Ժ�
	"����!���Ժ����?���ǻ��ڶ�ʱ���ڰ���˽�����������,�벻Ҫ�ٴ�999�,������Ӱ�����ǵ���Ļ,Ҳ��Ӱ�����������.лл���������֧��!! ");
var AutoChat15=new Array(//����
	"����!��������,������˼,����õ���,��Ӻ�������˷�!(�����������˷�˵�����ǳ���,�������Ǿ���������������ˡ��_�У����) ");
var AutoChat16=new Array(//��˫
	"����!ʮ�ֶԲ�����Ϊ�������Ϲ����֣����ܺ�����˫���������½⡣����ʱ��������˫����ʵ�ڱ�Ǹ�ˣ�");
var AutoChat17=new Array(//�ͱ�
	"�ٱ������ҳ�ֿ��ף�����������ߵ�������˽�ʱ���������!",
	"��������ʹ��Ī���ڴˣ�*^_^*"+RoomName+"*^_^*�Ѱ��㵱Ϊ֪�������ݵķ��벻��ʲô�����������������һ·˳��",
	"��������ȥ�ı�Ӱ������ʧ�����ξ�Ө���Ứ���Ĵ����߻��䡣����������Ļ��˻��ִ���˵������һ��Ҫ�ǵ���������һ�𲻼���ɢ��������",
	"*^_^*��*^_^*ϣ�����пճ���*^_^*"+RoomName+"*^_^*�������t���r�����ͺ����ܸ���!*^_^*�������*^_^*��������*^_^*�ϼһ���*^_^**^_^*",
	"���Ŷ���ȭ������ɽ���ģ���ˮ���������Ǻ�����ڣ��������Ŵ����������ĳ��Ķ�[��]˵��������һ�����⣬����·����~��~��~��~��",
	"�ðɣ��ðɣ�ֻ�Ƿֿ���Сʱ����������ϵط�����������ǰ���������߸˲�����ɢ���������㣡��",
	"��������ʹ��Ī���ڴˣ�*^_^*"+RoomName+"*^_^*�Ѱ��㵱Ϊ֪�������ݵķ��벻��ʲô�����������������һ·˳��",
	"�õģ��ټ�����л���Ĺ��٣���ӭ����������*^_^*"+RoomName+"*^_^*��������ʱ��ӭ���ĵ���������");
var AutoChat18=new Array(//��ַ
	"��ӭ����"+RoomName+"���������ң�����������ַ:"+HomePage);
var AutoChat19=new Array(//�Ϲ�
	"//ADMIN");
var AutoChat20=new Array(
        RoomName+"��ӭ��!", 			"0056.gif",
	"Welcome you of come", 			"0043.gif",
        "���!!!", 				"0109.gif",
	"���,ϣ������"+RoomName+"��Ŀ���!", 	"0113.gif", 
        "���!!!", 				"0021.gif",
        "��ӭ����"+RoomName+"!",		"0074.gif",
	RoomName+"��ӭ��!",			"0085.gif",
	"Ը����"+RoomName+"����!",		"0015.gif");

function WriteRoomLink(ALeft, ATop, AWidth){
	WriteSelectStartH("RoomLink", ALeft, ATop, AWidth, "gotoroom(RoomLink)");
  	WriteSelectOption(RoomLinks);
	WriteSelectEnd();
	}
function WriteGoodLink(ALeft, ATop, AWidth){
	var GoodLinks=new Array(
	"��"+RoomNick+"��վ���ӡ�","____",
	"��������","http://2001.liaowan.com/",	
	"������ַ","http://www.5566.net",
	"TOM ����","http://fm974.tom.com/life/waichang/index.html",
	"������԰","http://www.kele8.com/game/login.htm",
	"�϶����","http://www.nytv.com.cn/nytvweb/geci/default.asp",
	"���޸��","http://www.chinamp3.net/search/index.php",
	"��ɳ���","http://www.yinsha.com/lyrics",
	"�ѹ�����","http://www.sogua.com",
	"��������","http://app.tom.com/music/searchsong.php",
	"��������","http://www.beihai-go.com/index.html",
	"������ѧ","http://www.rongshuxia.com/",
	"�������","http://photos.gznet.com/",
	"�زľ�Ʒ","http://www.tucoo.com/ai/photo/Style0226/index.htm",
	"ʱ��ͼ��","http://www.cj888.com/photo/photo.htm");
	WriteSelectStartH("GoodLink", ALeft, ATop, AWidth, "GoToWhere(GoodLink)");
  	WriteSelectOption(GoodLinks);
	WriteSelectEnd();
	}
function WriteBkColor(ALeft, ATop, AWidth){
	var BackColors=new Array(
	"��ɫ","____",
	"�ָ�","#ffffff",
	"ǳ��","#FFFFCC",
	"ǳ��","#CCCCFF",
	"ǳ��","#99FFCC",
	"ǳ��","#FFCC99",
	"ǳ��","#CCFFFF",
	"��ɫ","#FFCCFF",
	"����","#c0c0c0",
	"����","#00ffff",
	"����","#0088ff",
	"ǳ��","rosybrown");
	WriteSelectStart("BackColor",ALeft, ATop, AWidth, "SetbkColor(BackColor)");
	WriteSelectOptionCol(BackColors);
	WriteSelectEnd();
	}  
function WriteFlowers(ALeft, ATop, AWidth){
	var Flowers=new Array(
	"��"+RoomNick+"���ô����","____",
	"��ҡ�","�������ҵ�ַ��"+HomePage,
	"��Ҫ���","�q�סԡ񡫡����Ҫ������Ҫ������ҪΪ��ϲ���Ҹ���˳�һ�׸���!����!����!!!�������ѽ!���⡫�����ӡӡӼ�������! ��ԩרr",
	"������","�q�סԡ񡫡���Ҫ�����Ҫ����!��Ҫ����!!����!����!!!�������,��Ҫ���������ĸ�!! ",
	"����͡�","���ͼ��ͣ�Ϊ����ͣ��������ͣ���ӣ��͸�ÿλ���˼�������ֵ��ˣ��㳪�����Ŷ��(((((((((žž))))))))�廨���רt��r�����ǡ��r��",
	"�����","�������һ���������* *õ��* *�����ĵ����?�� *�������� * *������� ��?��*�������� * *��㺣�Ļ���� ��* *����һֻ������~~~",
	"��ʡ�","�ⲻ������İɣ���Ҳ�ø�������һ�ס������������澫�ʡ���������Ҳ�����������澫�ʡ������������澫�ʡ������������澫�ʡ���",
	"��Ȳʡ�","oooOOOΪ�����Ȳ�oooOOO����������oooOOOлл��ĸ�oooOOOžžžžžoooOOO���ǰ�oooOOO",
	"���;ơ�","�������~~��ę́��~~ ������Һ~~ �Ͷ���ͷ~~ ��ę́��~~ ������Һ~~ �Ͷ���ͷ~~��ę́��~~ ������Һ~~ �Ͷ���ͷ~~��ę́��~~ ������Һ~~",
	"����ѽ��","��ѽ��ѽ��ѽ��ѽŶ~~~~~~���������ߴ���������������ɣ�����ѽ�������չ�������ž�����������ɣ��ð�Ӵ��~~",
	"���࣡�","@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(�)@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(ࣣ�@_@(ࣣ���������",
	"���Ȩ��","ž~ž~ž~ž~ ��o������o����.����o��.����o����.����o����.����o��ž~ž~ž~ž~ž~ž~ž �塣��I��Ȩ���ЩIΥ�߱ؾ��I!o����! o����",
	"��ɰ���","��㡤��_�����㣮���㡤��_�����㣮���㡤��_�����㣮���㡤��_�����㣮���㡤��_�����㣮���㡤��_�����㣮��",
	"��8G8G��","���ƣ�8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G",
	"�������","������---�������ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ��",
	"�����ˡ�","~!!��~����̫����~�����~�����Ķ�����~����~����ǩ������~�����~��~��!�����~��~��!��~����̫����~�����~",
	"��������","��С����������ˣ������ˤ塣��֤֡֡��֤֡�.o�塣С����������ˣ�,�����ˤ�֤֡֡�塣��֤֡֡�Ҷ��Ҳ�����ˣ���Զ�����ˤ���涯��",
	"�������","�����������������С�֣������������������ˣ�������������̽�꣮�����������������ڣ�����������ҹ������֮�С����������",
	"��žž��","�p�p�p�p�p�p�p�p�p�p(((((žž)))))�p�p�p�p�p(((((žž)))))�p�p�p�p�p(((((žž)))))�p�p�p�p�p�p�p�p�p�p",
	"��Ů����","�����~~����˭�ҵ�Ů����~����߯������~~~~~�Ӿ�ƿ��~~~~~~~�����ܰ�~�����ᰡ~~����߯������~~����˭�ҵ�Ů����~���������~~~~~�Ӿ�ƿ��~~~~~~~�����ܰ�~�����ᰡ~~",
	"���Ů��","�����~~����˭�ҵĹ�Ů��~����߯������~~~~~�Ӿ�ƿ��~~~~~~~�����ܰ�~�����ᰡ~~զ����ѽ~~����˭�ҵĹ�Ů��~߯������~~~~~�Ӿ�ƿ��~~~~~~~�����ܰ�~�����ᰡ~~",
	"��ϱ����","�����~~����˭�ҵ�ϱ����~����߯������~~~~�Ӿ�ƿ��~~~~~~~�����ܰ�~�����ᰡ~~զ����ѽ~~����˭�ҵ�ϱ����~���������~~~~~�Ӿ�ƿ��~~~~~~~�����ܰ�~�����ᰡ~~",
	"�����á�","===========�����ѽ.��ô���Գ�����ô����ѽ��o�ৰ��.o�ৰ��񎛴���!!!��^��^����ѽ~!��������ѽ!׷�������ĺ���!!!~������������~!",
	"��ܵܡ�","===========�����ѽ.��ô���Գ�����ô����ѽ��o�ৰ��.o�ৰ���������!!!��^��^����ѽ~!�ܵ�����ѽ!�������ؾ��쳤!!!~������������~!",
	"�����ա�"," ~0~ ף�����տ��֡�����~���~�������~���������~ף~���տ���~������~�������~���������~ף~���տ���~���������",
	"��ݰݡ�","����ף����ĵ����t��r�����¨t��r����һ���t��r����᲻�����Ǩt��rԸ��ҿ��ġ����!! �ݰ��˨t��r����");

	WriteSelectStartH("Flower", ALeft, ATop, AWidth, "setmsg(Flower,true,'','')");
	WriteSelectOption(Flowers);
	if(typeof(ExtraFlowers)!='undefined') WriteSelectOption(ExtraFlowers);
	WriteSelectEnd();
	}
function WriteManagement(ALeft, ATop, AWidth){
	var Managements=new Array(
	"��"+RoomNick+"��������","____",
//	RoomNick+"����", "____", 
//	"��  ��","",
	"������ַ","��ӭ����"+RoomName+"���������ң�����������ַ:"+HomePage,
	"�������","//hello",
	"���һ�ӭ","//welcome",
	"��������","���ã���ӭ���١�"+RoomName+"����",
	"��ӭ֮һ","*^_^*��"+RoomName+"��*^_^*ȫ�����Ա���һ�ӭ���ĵ�����ף�������������졣",
	"��ӭ֮��","*^_^*��"+RoomName+"��*^_^*��ӭ�����~ףԸ�������~�~��������~�~�ϼһ��֨~�������~�~��������~�~�ϼһ��֨~",
	"��ӭ֮��","һ������һ�꣬���ǳ����˺ܶ�t���"+RoomName+"���r������ף�����е���ʿ�����������е�Ůʿ�����������е����붼��ʵ�֣�������Զ���֣���������Զ���ģ���������",
	"��ӭ֮��","��ӭ��ҹ���~~~*^_^*��"+RoomName+"��*^_^*�����ң�Ը����Ц�����������"+RoomName+"��ÿһ�죬ף���������ļ����Ҹ����֣�����������ļң���",
	"��ӭ֮��","��ӭ�����١�"+RoomName+"�����������ң������Һ��㣬������������Ը�����ܹ������������֣�Ը������������Ŀ��ģ��������죡��������ļң�",
	"�������","��ӭ���١�"+RoomName+"��������!�����Ծ����Ծ��رյ��Լ������,Ҫ������999,Ը������Ҵ������֣�",
	"�����ص�","������ּ��Χ�����ֺ͸������Ը轻�ѣ��Ը���ѡ������ص㣺�㼯���Ķ�����֣��Ը�ˮƽ���ݳ�����������ŵ��������ܡ����һƽ�ʱ�Σ���ŵ���ʮ���㣡",
	"����˵��","���������ѣ�Ϊ���ܹ����ر��˵�˵���ͳ��裬����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������",
	"����Ҫ��","�������������󣡵���һ��СС��Ҫ�󣺵�������˵���ͳ���ʱ���ɲ�Ҫ�����ޣ���Ϊ���Ƕ����ʹ�ҵ����أ�������꣡�����������Ѳ�Ҫ�ż������������Ǵ�9999�����ǻ�Ϊ������ģ�",
	"��������","��Һã���ӭ����������Ҫ�������������߹���Ա��9999������",
	"������ʾ","����!�����������Ҳ����ע����˵����������лл���ĺ�������⣬ף����ÿ�����ÿ���!",
	"��Ц��ʾ","����**���������죬ע���Լ������Ի����ƣ��Ǻ����ѿ���Ц�������Ļ������򽫱���������ң�лл������",
	"����֮һ","==��������������������ע��������ġ������У���������ٲ������ڸġ�����������������뿪���������ң�",
	"����֮��","==�����������������������Ϸ���򡣲�Ҫ�в��������֡�ˢ�������������ֺ����Թ������˵���Ϊ��лл���ĺ���������",
	"���ھ���","���������������Ͻ���ʱ��ڵ绰�����ºڵ绰�볤����˵��������ͨ������ͨ����������Ϊ��׼���ġ�˫���÷��������򽫱���������ң�лл������",
	"��ھ���","Ϊ�������ҵ��������գ��������Ͻ��ڵ绰����ڣ���ڣ���ڣ����ٳ��������򽫱����������,лл������",
	"�ܾ�˫��","����!ʮ�ֶԲ�����Ϊ�������Ϲ����֣����ܺ�����˫���������½⡣",
	"�Ѿ�����","����!����Ҫ��������Ѿ������ˣ������Ժ�Ҳ��������һ�������лл�����ٱ������ң�ף����ÿ�����ÿ���!",
	"׼������","���Ͼ����������ˣ���������׼�������ľ��ʱ��ݽ�����������̺���ʻ�����顣",
	"׼��֮һ","�����õ��ˡ�������˼���쵽���ˣ���������׼����лл��",
	"����ʧ��","���ã�ϵͳ����������δ����������˫������״̬,���������������ȫ˫���Ի������������ǵݲ���������Ŷ��лл֧�������!!",
	"�������","���ã��װ������ѣ��������������������������̫��,���ǵ������,������û�������������ٵ���һ�����,�������Ǵ�999����?",
	"��������","���ã��������������������������̫�������ǵ������������ȴ�Ƕ϶������������������ٵ���һ���ٴ�999,����?лл.",
	"л�����","���ã�лл��Ϊ������ϵĸ������Ƿǳ��Ķ����������ʱ����Ϊ�������һ���ɣ����Ǹ�л��..ͬʱҲ��ӭ������!!",
	"���볪��","���ã��װ�������,��ӭ��ĵ���������Ը���ҳ�һ�׸��𣿣���лл���_�С�",
	"�������","��������˵���ͳ���ʱ���ɲ�Ҫ�����ޣ���Ϊ���Ƕ����ʹ�ҵ����أ�������꣡�����������Ѳ�Ҫ�ż������������ǹ���Ա����9999999�����ǻ�Ϊ������ģ�",
	"����֮һ","���ã��������������󣡵���һ��СС��Ҫ�󣺵�������˵���ͳ���ʱ���ɲ�Ҫ�����ޣ����Ƕ����ʹ�ҵ����أ�������꣡������������������ֵ�����ܡ�99999999�������ܻ����������������У�",
	"�ر����","���������ѣ�Ϊ���ܹ����ر��˵�˵���ͳ��裬����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������",
	"����֮һ","[�����]���½š�ȫ˫���Ի�����ť�����������ߣ��ϱߵ��������������±ߵ�����Ͳ�������������㻰Ͳ����ͼ��(�º�������)�����к����֣���������˵��ʱ�����棬˵��˳�ֹ���",
	"����ͼ","==�������Ҹ������Ϊ�������ҵ����廷�����������Ͻ����ͳ���ͼƬ��������ͼƬ�����򽫱����������,лл����!!!!!",
	"������","==�������Ҹ������Ϊ�˱�֤����ڼ������ҵ����٣��벻Ҫ����׻���������������������ģ�лл����!!!!!",
	"�ͱ�����","���ʻ����ߡ��Ѹ����ͻ�Ц���¡�Ը����ס����ÿ��ÿ��������ʹ�ҵĻ���Ц��´�һ��Ҫ������"+RoomName+"����������Ӵ��ף����֣���������Ӵ~~~",
	"��������","�Բ������ѣ����Ҳ���ӭ���������֣������㡰�����������ٽ�������Ȼ�ҽ�������ȥ��лл������",
	"�����Ե�","�����ԵȺ���?*^_^*",
	"��Ҫ����","��Ҫ�����ˣ�ף����죬�ټ���*^_^*",
	"�п�����","�õģ���ӭ���п������棬�ټ���*^_^*",
	"лл����","лл���Ĺ�����*^_^*",
	"лл����","лл���ˣ�*^_^*",
	"лл����","лл�����������ʻ���*^_^*",
	"��л֧��","��л����֧�֣�*^_^*",
	"��������","��̫�����ˣ�*^_^*",
	"���ÿ���","���ÿ�����û��ϵ�ġ�*^_^*",
	"��������","�������ˣ�лл����*^_^*",
	"�ٱ��ټ�","��л���ĵ������ҽ�ʱ���ڴ��������ٴι��٣��ټ���",
	"һ·�ߺ�","�ټ������ѣ�һ·�ߺã�ϣ���ܹ��ٴμ�������",
	"��������","лл���Ĺ��ٺͲ��룬���᲻�����ߣ����ֲ��ò��ټ�����Ҫ��ס�������·ѽ����"+RoomName+"���ĵ�ַ�ǣ�"+HomePage,
	"��ౣ��","�ټ�����ౣ�أ�",
	"ף����","ף�������������Ρ�",
	"����","//alert",
	"��ˢ","//jg");

	WriteSelectStartH("Management", ALeft, ATop, AWidth,"setmsg(Management,true,'','')");
	WriteSelectOption(Managements);
	WriteSelectEnd();
	}
function WriteAutosend(ALeft, ATop, AWidth){
	var Autosends=new Array( 
	"״̬", "____",
	"�ر�", "",
	"����","��ã����������²��ڣ�һ����ٺ�����ϵ��",
	"����","��ã����ڹ����У�������š�",
        "����","��ã��������뿪һ��������ϻ�����",
	"�Է�","��ã���ȥ�Է��ˣ�һ�������ϵ��");

	WriteSelectStartH("Autosend", ALeft, ATop, AWidth,"setmsg(Autosend,true,'','')");
	WriteSelectOption(Autosends);
	WriteSelectEnd();
	}
function WriteEmoteCmds(ALeft, ATop, AWidth){ 
	var Emotecmds=new Array( 
	"����", "____",
	"�ʺ�", "__",
	"���", "hello   ", "�к�", "greet   ", "��ӭ", "welcome ", "����", "hand    ", "����", "visit   ", "����", "boy     ", 
	"���", ":)      ", "ЦЦ", ":)2     ", "ӵ��", "bearhug ", "һ��", "sit     ", "�Ϲ�", "bow     ", "����", "welcome2",
	"����", "happy   ", "�³�", "bless   ", "����", "birthday", "����", "clap    ", "����", "addoil  ", "���", "rose    ",
	"ţ��", "milk    ", "����", "tea     ", "��˵", "wine    ", "����", "sweat   ", "Ģ��", "gzxj    ", "���", "ha      ", 
	"����", "haha    ", "����", "?       ", "����", "cool    ", "����", "eat     ", "����", "face    ", "���", "thank   ",
	"��Ц", "giggle  ", "ɵЦ", "hehe    ", "��˵", "en      ", "����", ":p      ", "����", "ah      ", "����", "shou    ",
	"����", "__",
	"�İ�", "ai      ", "����", "@@      ", "ȥ��", "date    ", "�赹", "faint   ", "��ȥ", "fly     ", "����", "ds      ",
	"����", "flook   ", "Ů��", "girl    ", "��ڨ", "go      ", "����", "beauty  ", "���", "sing    ", "ҡ��", "sleep   ",
	"ϲ��", "ppp     ", "����", "love    ", "����", "miss    ", "����", "waiting ", "��л", "wait3   ", "����", "love2   ",
	"����", "love3   ", "��֤", "loveu   ", "����", "lovesee ", "����", "lovelook", "�ջ�", "lure    ", "˯��", "night   ",
	"���", "marry   ", "����", "mm      ", "����", "shy     ", "����", "smoke   ", "����", "dance   ", "�޹�", "inn     ",
	"��Ь", "caxie   ", "�ᱧ", "hug     ", "ӵ��", "hug2    ", "��ס", "spider  ", "����", "care    ", "����", "caress  ", 
	"����", "touch   ", "��ͷ", "pat     ", "����", "lean    ", "����", "jump    ", "����", "kiss    ", "����", "kiss2   ", 
	"����", "kiss3   ", "ӵ��", "smooch  ", "����", "ykiss   ", "����", "lly     ", "����", "xixi    ", "��ĥ", "zhemo   ",
	"����", "qsister ", "����", "qsister1", "����", "qbrother", "���", "qbrother1","���", "cold    ", "��ˮ", ":(      ",  
	"����", "cringe  ", "ſ��", "cry     ", "̾��", "sigh    ", "��ο", "comfort ",	"���", "comfort1", "�˰�", "sad     ",
	"��", "__",
	"����", "allen   ", "��ˮ", "drivel  ", "�۸�", "bad     ", "����", "bite    ", "��̬", "bt      ", "����", "bug     ",
	"��", "crazy   ", "���", "cut     ", "�һ�", "da      ", "�Ź�", "dog     ", "����", "dove    ", "��˪", "drug    ", 
	"����", "ds2     ", "����", "ds3     ", "����", "duo     ", "����", "faceless", "�߷�", "fat     ", "����", "fear    ",
	"����", "blush   ", "��Ц", "heihei  ", "��Ц", "heng    ", "ԭ��", "forgive ", "����", "grin    ", "����", "grow    ",
	"����", "hammer  ", "ƨƨ", "handpat ", "����", "hit     ", "����", "ice     ", "���", "nolove  ", "����", "nudge   ",
	"�ҽ�", "zap     ", "�ӳ�", "tu      ", "����", "slap    ", "��ͱ", "poke    ", "ͱͱ", "poke2   ", "��ҩ", "paste   ",
	"š��", "pinch   ", "����", "puke    ", "����", "punch   ", "����", "qia     ", "һǹ", "qian    ", "����", "zzz     ",
	"��Ц", "znw     ", "�Դ�", "ti      ", "����", "look3   ", "ߴ��", "jjww    ", "��ν", "joe     ", "ƨƨ", "kick    ",
	"ɱ��", "kill    ", "����", "look    ", "�ݷ�", "wait2   ", "ɵð", "beaut   ", "�˹�", "breath  ", "����", "koxia   ",
	"���", "__",
	"����", "goodbye2", "�Ǳ�", "cu2     ", "����", "wait    ", "�ټ�", "bye     ", "��Ӱ", "cu3     ", "�㰳", "stw     ",
	"����", "goodbye ", "Ҫ��", "tear    ", "����", "tea1    ", "����", "wave    ", "�ݰ�", "bye     ", 
	"����", "__",
	"ͬ��", "agree   ", "����", "so      ", "����", "wrong   ", "����", "bb      ", "����", "angry   ", "����", "bbb     ", 
	"����", "hp      ", "���", "ill     ", "����", "know    ", "����", "fool    ", "����", "wen     ", "��֪", "no      ",
	"����", "work    ", "֪��", "who     ", "����", "laugh   ", "��˵", "look2   ", "����", "lonely  ", "ģ��", "no2     ",
	"��ϵ", "noask   ", "��ͷ", "nod     ", "����", "now     ", "����", "pig     ", "˵��", "right   ", "ҡͷ", "shake   ",
	"����", "slow    ", "΢Ц", "smile   ", "��Ǹ", "sorry   ", "����", "stare   ", "�Դ�", "think   ", "����", "tired   ",
	"ʤ��", "yeah    ");
  	WriteSelectStart("Emotecmd", ALeft, ATop, AWidth,"setmsg(Emotecmd,true,'//','')");
  	WriteSelectOption(Emotecmds);
  	WriteSelectEnd();
	}
function WriteAnimated(ALeft, ATop, AWidth){
  	WriteSelectStart("Animatedpic", ALeft, ATop, AWidth,"sendpic(Animatedpic,Animated)");
  	WriteSelectOptionPic(Animated);
  	WriteSelectEnd();
  	if(typeof(DisablePicture)!='undefined')	Animatedpic.disabled = true;
	}
function WriteSelectStart(AName, ALeft, ATop, AWidth, Action){
	document.write('<DIV style=WIDTH:'+AWidth+'px;LEFT:'+ALeft+'px;TOP:'+ATop+'px;POSITION:absolute>');
	if(AWidth == 0) 
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="font-family:����,SimSun;font-size:9pt">');
	else
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style=font-family:����,SimSun;font-size:9pt;WIDTH:'+AWidth+'px;">');
	}
function WriteSelectStartH(AName, ALeft, ATop, AWidth, Action){
	document.write('<DIV style=WIDTH:'+AWidth+'px;LEFT:'+ALeft+'px;TOP:'+ATop+'px;POSITION:absolute>');
	if(AWidth == 0) 
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="visibility:hidden;font-family:����,SimSun;font-size:9pt">');
	else
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="visibility:hidden;font-family:����,SimSun;font-size:9pt;WIDTH:'+AWidth+'px;">');
	}
function WriteSelectOption(AArray){
	var linki=0;
	for(linki=0;linki<AArray.length/2;linki++){
		if(AArray[linki*2+1]=="____"){
			document.write('<OPTION STYLE=COLOR:'+SelectColor1+' VALUE="">'+AArray[linki*2]);
		}else if(AArray[linki*2+1]=="__"){
			document.write('<OPTION STYLE=COLOR:'+SelectColor2+' VALUE="">'+AArray[linki*2]);
		}else
			document.write('<option value=\"'+AArray[linki*2+1]+'\">'+AArray[linki*2]);
		}
	}
function WriteSelectOptionPic(AArray){
	var linki=0;
	for(linki=0;linki<AArray.length/3;linki++){
		if(AArray[linki*3+1]=="____"){
			document.write('<OPTION STYLE=COLOR:'+SelectColor1+' VALUE="">'+AArray[linki*3]);
		}else if(AArray[linki*3+1]=="__"){
			document.write('<OPTION STYLE=COLOR:'+SelectColor2+' VALUE="">'+AArray[linki*3]);
		}else
			document.write('<option value=\"'+AArray[linki*3+2]+'\">'+AArray[linki*3]);
		}
	}
function makeselect_begin(AName, ALeft, ATop, AWidth, Action, BGColor) {
	document.write('<DIV style=WIDTH:'+AWidth+'px;LEFT:'+ALeft+'px;TOP:'+ATop+'px;POSITION:absolute>');
	if(AWidth == 0) 
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="BACKGROUND-COLOR:'+BGColor+';font-family:����,SimSun;font-size:9pt">');
	else
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="BACKGROUND-COLOR:'+BGColor+';font-family:����,SimSun;font-size:9pt;WIDTH:'+AWidth+'px;">');
}
function WriteSelectOptionCol(AArray){
	var linki=0;
	for(linki=0;linki<AArray.length/2;linki++){
		if(AArray[linki*2+1]=="____")
			document.write('<OPTION STYLE=COLOR:'+SelectColor1+' VALUE="">'+AArray[linki*2]);
		else
			document.write('<option style=\"BACKGROUND-COLOR:'+AArray[linki*2+1]+'\" value=\"'+AArray[linki*2+1]+'\">'+AArray[linki*2]);
		}
	}
function WriteSelectEnd(){
	document.write('</SELECT></DIV>');
	}
function gotoroom(selection){
	if(selection==BlackRoomNumb){
		var roomurl="http://202.96.140.86/cgi-bin/login.cgi?roomid=" + selection+"&USER="+Auser+"&PASS="+Apass;
  		window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");
		}
	else if(selection.value!=""){  	
		var roomurl="http://202.96.140.86/cgi-bin/login.cgi?roomid=" + selection.value+"&USER="+Auser+"&PASS="+Apass;
  		window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");
		} 
	}
function GoToWhere(selection){
  	if(selection.value!=""){
    		var TheHttp='http://';
      		if(selection.value.search('http://')!=-1) TheHttp='';
      		var d=TheHttp+selection.value;
      		if(selection.value.charAt(0)=='#')
        		document.location=selection.value;
      		else
        		window.open(d);
      		selection.selectedIndex=0;    		
	  	}
	}
function SetbkColor(selection){
	inputform.elements[11].name="bgcolor";
	inputform.elements[11].value=selection.value;
	}
function setmsg(selections, autosubmit, prefix, target){
	if (selections==Autosend){Autosends()}
	if(selections.value!=""){
		inputform.msg.value=prefix+selections.value+target;
		if(autosubmit){
       			checksay();
       			inputform.submit();
      			}
    		}
	else if (selections==Management){switchadmin()}


  	inputform.msg.focus();
	}
function sendpic(selection,AArray){
  	if(!inputform.AI.checked){
    		document.inputform.AI.checked=true;
    		document.aicontrolForm.AI.value='on';
    		document.aicontrolForm.submit();
    		selection.selectedIndex=0;
  	}else if(selection.value!=""){
    		inputform.IMGURL.value = EmotePlace+selection.value;
    		if(inputform.msg.value=='')
			inputform.msg.value = AArray[selection.selectedIndex*3+1];
		checksay();
    		inputform.submit();
    		selection.selectedIndex=0;
 		}
	}
function Selectbutton(){
	if(selectdivs.value=="ѡ��"){
		intime.style.visibility="hidden";
		RoomLink.style.visibility="visible";
		selectdivs.value="ͨ��"}
	else if(selectdivs.value=="ͨ��"){
		RoomLink.style.visibility="hidden";
		if(document.screenForm.KICK){
			Management.style.visibility="visible"
			selectdivs.value="����"
		}else{
			Flower.style.visibility="visible";
			selectdivs.value="�׻�"	
			}
		}
	else if(selectdivs.value=="����"){
		Flower.style.visibility="visible";
		Management.style.visibility="hidden"
		selectdivs.value="�׻�"}
	else if(selectdivs.value=="�׻�"){
		Flower.style.visibility="hidden";
		GoodLink.style.visibility="visible";
		selectdivs.value="����"}
	else if(selectdivs.value=="����"){
		GoodLink.style.visibility="hidden";
		intime.style.visibility="visible";
		selectdivs.value="ѡ��"}
	}
function divscreenk(){ 
	if(opendivs.value=="����"){
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='50%,*';
		document.screenForm.INBOX.disabled=false;
		document.screenForm.OUTBOX.disabled=false;
		document.screenForm.BOXLIST.disabled=false;
		INBOX1.disabled=false;
		OUTBOX1.disabled=false;
		BOXLIST1.disabled=false;
		opendivs.value="����"}
	else{
		if(opendivs.value=="����"){
			document.aicontrolForm.divs.value='off';
			parent.bodyframe.rows='100%,*';
			document.screenForm.INBOX.disabled=true;
			document.screenForm.OUTBOX.disabled=true;
			document.screenForm.BOXLIST.disabled=true;
			INBOX1.disabled=true;
			OUTBOX1.disabled=true;
			BOXLIST1.disabled=true;
			opendivs.value="����"}
		}
	document.aicontrolForm.submit(); 
	}
function genghuans(){
	if (genghuan.value=="�������"){
		huan.style.visibility="visible";
		genghuan.value="ȡ������";
	}else if(genghuan.value=="ȡ������"){
		huan.style.visibility="hidden";
		genghuan.value="�������"; }
	}
function REVERT_pp(){
	document.inputform.msg.value = "" + document.inputform.SAYS.value +" ���ظ���";
	}
function enter(){
	if(validname(document.form1.elements[0])){ 	
		document.form1.action="http://202.96.140.86/cgi-bin/login.cgi";
  		launchchat(); 
  		document.form1.submit();
		window.close();
  		}
	}
function validname(str1){
	if (str1.value.length <1) {
		alert("���������Ĵ��������ֲ���Ϊ�գ�");
		str1.focus();
      		return false;
   	}
	str=str1.value.toString();
	if( ((str.search("#")!=-1)||(str.search('&')!=-1))){
		alert("�����в��ܰ��������ַ�: # & .");
 		str1.focus();
      		return false;
   		}
	return true;
	}
function launchchat() { 
	return true;} 
document.write('<DIV id=huan align=left style=visibility:hidden;width:320px;LEFT:42px;TOP:38px;POSITION:absolute>')
document.write('<form action=http://talk3.silversand.net/cgi-bin/login.cgi method=post name=form1 target="_top">')
document.write('<font style="font-family:����,SimSun;font-size:9pt">');
document.write('���֣�<input type="text"  title="�����������" name="USER"  size="14"  maxlength="15" >')
document.write('���룺<input type="password"  title="ע���û���������" name="PASS"  size="11" maxlength="15" >')   
document.write('<input name="roomid" type="hidden" value='+RoomNumb+'>')   
document.write('<input type="button" title="����" value="����" onClick=enter() name="button">')   
document.write('</form> ')
document.write('</DIV>')

//function Sadmin(){Management.style.visibility="visible";openadmin.style.visibility="hidden"};
//function switchadmin(){Management.style.visibility="hidden";openadmin.style.visibility="visible"};
function autosendss(){
	alert("���Ѿ�ѡ���Զ����ԣ�������������ѡ������Ҫ�����ϵ\n\nͳ���Զ�����ѡ������ÿ��30�뷢��һ�Ρ���Ҫֹͣ����\n\nѡ��ȡ���Զ���ѡ�");
	autobutton.style.visibility="hidden"
	Autosend.style.visibility="visible"}
tsec=0;
idt1=setTimeout("Autosends();",10);
function Autosends(){
	tsec++;
	var tn=Autosend.selectedIndex;
	var temp=Autosend.options[tn].value;
//	var tcolor=inputform.color.value;
	if((tn>0)&&(temp=="")){
		autobutton.style.visibility="visible"
		Autosend.style.visibility="hidden"
		Autosend.options[0].selected=true;}
	if ((tsec==50)&&(tn>0)&&(temp!="")){
		document.inputform.color.value="008800";
		var twho=inputform.WHOTO.value
		parent.cs("������");
		document.inputform.SAYS.value=temp;
		document.inputform.submit();
		document.inputform.color.value=tcolor;
		document.inputform.WHOTO.value=twho;
		}	
	if(tsec==100){tsec=0;}
	idt1=setTimeout("Autosends();",500);
	}
function Fgongkai(){
	if (gongkai.value=="���ģ�"){
		document.screenForm.SHOW.checked=true;
		document.aicontrolForm.SHOW.value='on';
		gongkai.value="���ġ�";
	}else if(gongkai.value=="���ġ�"){
		document.screenForm.SHOW.checked=false;
		document.aicontrolForm.SHOW.value='off';
		gongkai.value="���ģ�"; }
		document.aicontrolForm.submit();
	}
function Fjieshou(){
	if (jieshou.value=="���ġ�"){
		document.screenForm.EAR.checked=false;
		document.aicontrolForm.EAR.value='off';
		jieshou.value="���ģ�";
	}else if(jieshou.value=="���ģ�"){
		document.screenForm.EAR.checked=true;
		document.aicontrolForm.EAR.value='on';
		jieshou.value="���ġ�"; }
		document.aicontrolForm.submit();
	}
function Fshengyin(){
	if (shengyin.value=="������"){
		document.screenForm.NOTICE.checked=false;
		document.aicontrolForm.NOTICE.value='off';
		shengyin.value="������";
	}else if(shengyin.value=="������"){
		document.screenForm.NOTICE.checked=true;
		document.aicontrolForm.NOTICE.value='on';
		shengyin.value="������"; }
		document.aicontrolForm.submit();
	}
function psend(){
	checksay();
	inputform.submit();
	}
function sendpicurl(){
	document.inputform.IMGURL.value=getimgurlnew("������ͼƬ�����ֵ�URL::")
	}
function getimgurlnew(p) {
	imgurl = prompt(p,'http://');
	if(!imgurl){return '';}
	imgurl=trim(imgurl);
	if(imgurl=="http://"){
		document.inputform.msg.focus();
		return '';
		}
	imgurl=imgurl.toLowerCase();
	if( (imgurl.search("gif")==-1) &&  (imgurl.search("jpg")==-1)) {
		getimgurlnew("�������ļ���չ��Ϊ'gif'��'jpg'֮���URL:");
		}
	document.inputform.msg.focus();
	if(imgurl){return imgurl;}else{return '';}
	}
function autosendflower(AName,Finger){
  	inputform.msg.value=AName[Lastchoice[Finger]];
  	checksay();
  	document.inputform.submit();
	Lastchoice[Finger]=Lastchoice[Finger]+1;
	if (Lastchoice[Finger]==AName.length) Lastchoice[Finger]=0;
	}
Isws=true
function autosendflower1(AName,Finger){
	var IsWisper=inputform.ws.checked;
	if (Isws==false) inputform.ws.checked=true;
  	inputform.msg.value=AName[Lastchoice[Finger]];
  	checksay();
  	document.inputform.submit();
	Lastchoice[Finger]=Lastchoice[Finger]+1;
	if (Lastchoice[Finger]==AName.length) Lastchoice[Finger]=0;
	Isws=!Isws
	inputform.ws.checked=IsWisper;
	}
function autosendflower2(AName,Finger){
	var IsWisper=inputform.ws.checked;
	inputform.ws.checked=true;
  	inputform.msg.value=AName[Lastchoice[Finger]];
  	checksay();
  	document.inputform.submit();
	Lastchoice[Finger]=Lastchoice[Finger]+1;
	if (Lastchoice[Finger]==AName.length) Lastchoice[Finger]=0;
	inputform.ws.checked=IsWisper;
	}
function autosendflower3(AName,Finger){
	document.inputform.msg.value=AName[Lastchoice[Finger]];
	document.inputform.IMGURL.value = EmotePlace+AName[Lastchoice[Finger]+1];
  	checksay();
  	document.inputform.submit();
	Lastchoice[Finger]=Lastchoice[Finger]+2;
	if (Lastchoice[Finger]==AName.length) Lastchoice[Finger]=0;
	}
var Digital1=new Date()
var Dtime1=Digital1.getTime()
var flag=60;
var flag1=180;
loadclock()
function timeshow(){
	var Digital=new Date()
	var Dt=Digital.getTime() - Digital1.getTime()
	var hours=Math.floor(Dt/3600000)
	var minutes=Math.floor((Dt-(hours * 3600000))/60000)
	var seconds=Math.floor(((Dt - hours * 60 * 60000 - minutes * 60000)/1000))
	var secondss=Math.floor(Dt/60000)
	if (hours<=9)hours="0"+hours
	if (minutes<=9)minutes="0"+minutes
	if (seconds<=9)seconds="0"+seconds
	time =hours+":"+minutes+":"+seconds;
	if (secondss<=flag1){
		if (secondss==flag && secondss<flag1){
			tishi='���Ѿ���'+RoomName+'���ˡ�' + flag + '���ӡ��ˣ�������ʾ�㣬����ע����Ϣ�������Լ����۾�!'
			MakePUP(tishi,"��������ʾ","350","145","70","�� ��");
			flag+=60;} 
		if (secondss==flag1){
			tishi='����һ����������ļһ�Ѿ���'+RoomName+'���ˡ�' + flag1 + '���ӡ��ˣ�������������ʱ����ʾ��ϣ������Ŀ���!'
			MakePUP(tishi,"��������ʾ","350","145","70","�� ��");
			flag1-=1;} 
		}
	if (!document.all) document.form1.button.value =time;
	else document.intime.button.value =time;
	}
function MakePUP(tishiy,Ttitle,Twidth,Tleft,Ttop,Tbutton){
	PUP=window.open('','PUP','width='+Twidth+',height=10,left='+wleft+',top='+wtop+',toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=1');
	PUP.document.write('<HTML><HEAD><TITLE>'+Ttitle+'</TITLE>');
	PUP.document.write('<script language="">function iftime\(\){setTimeout\("close\(\)",10000\)}</script></HEAD>');
	PUP.document.write('<BODY BGCOLOR="#EBF5D3" background='+BgImg3+' TEXT="#000000">');
	PUP.document.write('<font style="font-family:����,SimSun;font-size:10pt">');
	PUP.document.write('&nbsp;&nbsp;&nbsp;&nbsp;'+tishiy);
	PUP.document.write('<CENTER><INPUT TYPE="button" VALUE=" '+Tbutton+' " style=height:20px;LEFT:'+Tleft+'px;top:'+Ttop+'px;'+buttonstyle60+' onClick="self.close()"></CENTER></FORM></BODY></HTML>');
	PUP.document.close();
	}
function prepare(){
	if(document.singerform.singer.value!=""){
		inputform.msg.value="лл������ĵȴ�����׼������~~";
		parent.cs(singerform.singer.value);
 	}else{
		parent.cs("������");}
 		inputform.msg.focus();
	}
var fcj=1;
var fcl=0;
var fcsdx='';
function listsingers(){
	fcl=singerform.singer.length;
 	fcsdx='';
 	if(fcl>1){
  		for(fcj=1;fcj<fcl;fcj++){
   			fcsdx=fcsdx + '[' + singerform.singer.options[fcj].value + ']'
  			}
  		fcsdx='����:'+ fcsdx;
 		}
	if(fcsdx.length>=85){
		fcsdx1=fcsdx.substring(0,85);
		for(i=85;fcsdx.charAt(fcsdx1.length-1)!="]";i--){
			fcsdx1=fcsdx.substring(0,i);}
	}else{
		fcsdx1=fcsdx}
	inputform.msg.value=fcsdx1;
	inputform.msg.focus();
	}
function clearsinger(){
   	if (confirm("����:�������޷��ָ�!\n��ȷ��Ҫ�����ǰ��������?")){
     		var k1=0;
     		for (k1=1;k1<=singerform.singer.length+2;k1++){
			singerform.singer.options.remove(k1);   
			}
		for (k1=1;k1<=singerform.singer.length+2;k1++){
			singerform.singer.options.remove(k1);   
			}
		inputform.msg.value="��������Ϊ��~~"; 
		}
	}
function removesinger(){
	if(singerform.singer.length > 0){
		if(singerform.singer.selectedIndex > 0){
			singerform.singer.options.remove(singerform.singer.selectedIndex);
			if(singerform.singer.length > 0){
				singerform.singer.selectedIndex=1
			}else{
				singerform.singer.selectedIndex=0
				}
			}
		listsingers();
		}else{
			singerform.singer.selectedIndex=0
			}
	inputform.msg.focus();
	}
function addsinger(){
	if(inputform.WHOTO.value!='������'){
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		singerform.singer.options.add(newoption);
		singerform.singer.selectedIndex=1;
		document.inputform.SAYS.value="�����ǵ���������No."+fcj+" �������ע����仯�����ĵȴ���лл����!";
		document.inputform.submit();
		listsingers();
		}
	inputform.msg.focus();
	}
function insertsinger(){
	if(inputform.WHOTO.value!='������'){
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		if(singerform.singer.selectedIndex>0){
			singerform.singer.options.add(newoption,singerform.singer.selectedIndex);
		}else{
			singerform.singer.options.add(newoption,1)
			}
		listsingers();
		};
	inputform.msg.focus();
	}
var fcsinger='';
var wend=false;
var fcscount,fcecount,fcadded=0;
function passlist(){
	fcsdx=inputform.msg.value;
	fcl=fcsdx.length;
	fcsinger='';
	fcscount=0;
	fcecount=0;
	wend=false;
	fcadded=0;
	for(fcj=0;fcj<fcl;fcj++){
		if(fcsdx.charAt(fcj)=='['){
			fcscount=fcscount+1;
			}
		if(fcsdx.charAt(fcj)==']'){
   			if(fcscount>0){
    				fcscount=fcscount-1;
    				if(fcscount==0){
     					newoption=document.createElement('option');
     					newoption.value=fcsinger;
     					newoption.text=fcsinger;
     					singerform.singer.options.add(newoption);
     					fcsinger='';
     					fcadded=fcadded+1;
    					}
   				}
			}
		if(fcscount>0){
   			if(fcsdx.charAt(fcj)!='[' && fcscount==1){
				fcsinger=fcsinger+fcsdx.charAt(fcj);
				}
  			}   
 		}
 	listsingers();
 	inputform.msg.focus();
	}
function SwitchOrder() {
	if (openlist.value=="����"){
		singerform.style.visibility="visible";
		openlist.value="����";
	} else if(openlist.value=="����"){
			singerform.style.visibility="hidden";
			openlist.value="����"; 
			}
		}
function linkonclick(linkurl){
	var llll=screen.width-326;
	window.open(linkurl , "mplist", " width=326 ,left="+llll+", height=0 , top=0 , scrollbars=auto , resizable=no , copyhistory=no , status=no");
	}
//function OpenManagement(){Management.style.visibility="visible";}
function adminquit(){
	question = confirm("������ʾ\n\nлл��Ĺ��������¹������е����򽫶�ʧ�����[ȷ��]�˹�\n\n��������������[ȡ��]����")
	if (question != "0"){
        	inputform.msg.value ="//ADMIN quit";
		checksay();document.inputform.submit();
    		}
	}
function get_button_pic(width){
	var pic = "";
	var nearw = 0;
	var mindeff = 100;
	for (i = 0 ; i < button_pic.length ; i+=2)
		if (Math.abs(button_pic[i] - width) <= mindeff){
			pic = button_pic[i + 1];
			nearw = button_pic[i];
			mindeff = Math.abs(button_pic[i] - width);
			}
	return pic;
	}
function write_button(name,value,left,top,width,height,color,title,action){
	var button_style=";WIDTH:"+width+"px;HEIGHT="+height+"px;"+buttonstyle+"background-image:url("+ButtonPlace+get_button_pic(width)+");border:1px";
	document.write('<input TYPE="button" NAME="'+name+'" VALUE="'+value+'" style="LEFT:'+left+';TOP:'+top+';'+button_style+'" onclick="'+action+'" TITLE="'+title+'"'+tpmeffectevent+'>');
	}
WriteBkColor	(377,20,50);
WriteEmoteCmds	(377,79,50);
WriteAnimated 	(377,59,50);
WriteRoomLink 	(490,0,114);
WriteGoodLink	(490,0,114);
WriteFlowers  	(490,0,114);
WriteManagement	(490,0,114);
WriteAutosend	(547,40,57);
var Lstep=59;
write_button("",BarLink[0], 11+Lstep*0/2, 0,59,20,"","","window.open(BarLink[1])" );
write_button("",BarLink[2], 11+Lstep*2/2, 0,59,20,"","","window.open(BarLink[3])" );
write_button("",BarLink[4], 11+Lstep*4/2, 0,59,20,"","","window.open(BarLink[5])" );
write_button("",BarLink[6], 11+Lstep*6/2, 0,59,20,"","","window.open(BarLink[7])" );
write_button("",BarLink[8], 11+Lstep*8/2, 0,59,20,"","","window.open(BarLink[9])" );
write_button("",BarLink[10],11+Lstep*10/2,0,59,20,"","","window.open(BarLink[11])");
write_button("",BarLink[12],11+Lstep*12/2,0,59,20,"","","linkonclick(BarLink[13])");
write_button("","����",10,60,34,20,"","���Ρ���������ָ�����˵ķ��ԡ�����������10�ˡ�","screenForm.SCREEN.click()");
write_button("","���",44,60,34,20,"","����ԡ���������ָ�����˷��Ե����Ρ�","screenForm.NOSCREEN.click()");
write_button("","�� ͼ ��",490,20,57,20,"","�����ﵯ�����봰�ڣ�Ȼ�������������ͼƬ�������ֵ���ַ(URL)��","sendpicurl()");

write_button("","���",256,60,40,20,"","","autosendflower(AutoChat7,7)");
write_button("","��ӭ",296,60,40,20,"","","autosendflower(AutoChat10,10)");
write_button("","Ҫ��",336,60,40,20,"","","autosendflower(AutoChat8,8)");
write_button("","�ͱ�",256,79,40,20,"","","autosendflower(AutoChat17,17)");
write_button("","��ַ",296,79,40,20,"","","autosendflower(AutoChat18,18)");
write_button("","����",336,79,40,20,"","","autosendflower(AutoChat9,9)");

write_button("selectdivs","ѡ��",434,0,47,20,"","ѡ���Լ���Ҫ�Ĺ�����","Selectbutton()");
write_button("opendivs","����",434,20,47,20,"","����/ȡ���������","divscreenk()");
write_button("","����",434,40,47,20,"","������������ݺͲ���Ķ�����ͼƬ�����֡�","psend()");
write_button("","�ظ�",434,60,47,20,"","�ظ�������һ����Ϣ","REVERT_pp()");
write_button("","�ʻ�",434,79,47,20,"","�Զ��ʻ�","autosendflower1(AutoChat1,1)");
document.write('<DIV><center><form name="intime"><input type=button value="Click!" name=button title="���ڷ���ͣ����ʱ��" style="left:490px;top:0px;width:114px;'+buttonstyle+'background-image:url('+ButtonPlace+'button114.gif);border:1px;height:20px;font-family:����,SimSun;font-size:10pt;font-weight: bold;color:#045627;POSITION:absolute;";//background-color:#F5E6D4;"></form></center></DIV>');
if(document.screenForm.KICK){
	write_button("openlist","����",490,40,29,20,"","�򿪹ر�����","SwitchOrder()");
	write_button("AutoHi","�Զ�ӭ��",547,20,57,20,"","�㿪���ϵͳ���Զ���ӭ�ս���������","AutoWel()");
	write_button("","��  ��",519,40,57,20,"","����˷罻������","screenForm.MIC.click()");
	write_button("","�¹�",576,40,29,20,"","����Ա��������˳�����״̬","adminquit()");
	write_button("","����",490,60,29,20,"","","autosendflower(AutoChat11,11)");
	write_button("AutoSendMic","����",519,60,29,20,"","ÿ30���Զ�����","AutoKeepMic()");
	write_button("","����",547,60,29,20,"","���õ��������,��˿ɰ���ݸ�����","CallBackMic()");
	write_button("","��˫",576,60,29,20,"","","autosendflower(AutoChat16,16)");
	write_button("","׼��",490,79,29,20,"","","autosendflower(AutoChat12,12)");
	write_button("","����",519,79,29,20,"","","autosendflower(AutoChat15,15)");
	write_button("","�Ժ�",547,79,29,20,"","","autosendflower(AutoChat14,14)");
	write_button("","����",576,79,29,20,"","","autosendflower(AutoChat13,13)");

	write_button("","����",112,60,34,20,"","���ˣ�����Ա������ͨ������ȷ�ϡ�����ť���Ѷ�����ָ�����߳�ȥ","screenForm.KICK.click()");
	write_button("","��IP",112,79,34,20,"","��IP������Ա������ͨ������ȷ�ϡ�����ť���Ѷ������ڵ��߳�ȥ","screenForm.KICKIP.click()");
	write_button("","����",10, 79,34,20,"","��ֹ�������","screenForm.NOMIC.click()");
	write_button("","����",44, 79,34,20,"","��ֹ������5����","screenForm.DUMB.click()");
	write_button("","����",78, 79,34,20,"","�г���ǰ���ڱ���״̬���˺�IP","screenForm.KLIST.click()");
	write_button("","����",146,60,34,20,"","����","screenForm.CDOOR.click()");
	write_button("","����",146,79,34,20,"","����","screenForm.ODOOR.click()");
	write_button("","���",180,60,34,20,"","","screenForm.LIN.click()");
	write_button("","�ܽ�",180,79,34,20,"","","screenForm.LOUT.click()");
	write_button("","ˢ��",214,60,36,20,"","ˢ��������ʾ��","{parent.u.location.reload();parent.writeu1();if(ZengPing != 0)setInterval('keepBg()', 1000);setTimeout(divscreen(),5000);}");
	write_button("","�б�",78, 60,34,20,"","�г�ȫ���������ε��ˡ�","screenForm.SHOWSCREEN.click()");
	write_button("INBOX1",  "+",214,79,12,20,"","���뵽���İ�����ʾ�б�","screenForm.INBOX.click()");
	write_button("OUTBOX1", "-",226,79,12,20,"","�����İ�����ʾ�б�ɾ��","screenForm.OUTBOX.click()");
	write_button("BOXLIST1","L",238,79,12,20,"","�г����İ�����ʾ�б��е���Ա","screenForm.BOXLIST.click()");
	write_button("","��Ƶ����", 10, 98,70,20,"","","screenForm.VREQ.click()");
	write_button("","ˢ���б�", 80, 98,70,20,"","��Ƶ����","parent.refreshclick=true;parent.writeuserlist();this.blur();document.inputform.msg.focus();");
	document.write('<DIV align=center style=width:0px;LEFT:490px;TOP:0px;POSITION:absolute;visibility:hidden>');
	document.write('<FORM name="singerform">');
	Ostep=19
	write_button("addtolist","��"		,Ostep*0,20,19,20,"","�������ֵ���������ĩβ",			"addsinger()");
	write_button("tolist","��"		,Ostep*1,20,19,20,"","�������ֵ�ѡ����֮ǰ",			"insertsinger()");
	write_button("removefromlist","ɾ"	,Ostep*2,20,19,20,"","������������ɾ����ѡ�������",		"removesinger()");
	write_button("clearlist","��"		,Ostep*3,20,19,20,"","�������������������Ŀ",			"clearsinger()");
	write_button("addlist","��"		,Ostep*4,20,19,20,"","����������������������뵽����������",	"passlist()");
	write_button("listing","��"		,Ostep*5,20,19,20,"","������������",				"listsingers()");
	document.write('<select name="singer" onchange="prepare()" style="left:0px;top:0px;width:114px;position=absolute">');
	document.write('<option selected VALUE="">'+RoomName+'������</option>');
	document.write('</SELECT></form></DIV>');
}else{
	write_button("","�����б�",547,20,57,20,"","�������г����е�EMOTE��","window.open('http://www.yinsha.com/chat/emote1.html') ");
	write_button("","�� ��",490,40,57,20,"","����Ա�������������״̬����������ȹ����ڽ������״̬�²ſ���","autosendflower(AutoChat19,19)");
	write_button("autobutton","�Զ���",547,40,57,20,"","���Զ�����������","autosendss()");
	write_button("","����",490,60,57,20,"","���ķ��ģ������ð�","autosendflower2(AutoChat3,3)");
	write_button("","˼��",547,60,57,20,"","���ķ��ģ������ð�","autosendflower2(AutoChat4,4)");
	write_button("","��Ľ",490,79,57,20,"","���ķ��ģ������ð�","autosendflower2(AutoChat5,5)");
	write_button("","�黰",547,79,57,20,"","���ķ��ģ������ð�","autosendflower2(AutoChat6,6)");
	write_button("genghuan","�������",195,60,56,20,"","�����������","genghuans()");
	write_button("","ע������",195,79,56,20,"","ע������","window.open('http://admin.bliao.com/user/login.htm')");
	write_button("","����",148,79,47,20,"","","window.open('http://garden.bliao.com')");
	write_button("","ˢ��",148,60,47,20,"","ˢ��������ʾ��","{parent.u.location.reload();parent.writeu1();if(ZengPing != 0)setInterval('keepBg()', 1000);setTimeout(divscreen(),5000);}");
	write_button("gongkai","���ģ�",10,79,46,20,"","���������������Ļ�","Fgongkai()");
	write_button("jieshou","���ġ�",56,79,46,20,"","���ܣ����������Ļ�","Fjieshou()");
	write_button("shengyin","������",102,79,46,20,"","�����Ƿ�����������ʾ","Fshengyin()");
	write_button("","�б�",78,60,34,20,"","�г�ȫ���������ε��ˡ�","screenForm.SHOWSCREEN.click()");
	write_button("INBOX1","+",112,60,12,20,"","���뵽���İ�����ʾ�б�","screenForm.INBOX.click()");
	write_button("OUTBOX1","-",124,60,12,20,"","�����İ�����ʾ�б�ɾ��","screenForm.OUTBOX.click()");
	write_button("BOXLIST1","L",136,60,12,20,"","�г����İ�����ʾ�б��е���Ա","screenForm.BOXLIST.click()");
	write_button("","��Ƶ����",101,98,70,20,"","��Ƶ����","screenForm.VREQ.click()");
	write_button("","ˢ���б�",181,98,70,20,"","��Ƶ����","parent.refreshclick=true;parent.writeuserlist();this.blur();document.inputform.msg.focus();");
	}
function writev_change(){
	if(parent.v.document==null)return;
	var Murl = parent.u.document.body.background;
	if (parent.v.document.body.style.backgroundImage=="")
        	parent.v.document.body.style.backgroundImage="url("+BgImg3+")";
	//parent.v.document.blueskyvoice.RecOn();	
	for(var i=0; i<parent.v.f.elements.length; i++){ 		           
		obj=parent.v.f.elements(i);
		switch (obj.type){
			case 'button':
				obj.style.visibility = "hidden";
			break;
			}
		}
	parent.v.f.v2vv.onclick=new Function("return parent.d.v2v()")
	parent.v.f.filtervoice.onclick=new Function("window.open('"+YinPlace+"')")
	if (BlackRoomNumb=="")
		parent.v.f.v2vv.value="˫��"
	else
		parent.v.f.v2vv.value="˽��"
		parent.v.f.v2vv.title="����ĳ��ȥ˽����" 
	parent.v.f.close.value="�ر�"
	parent.v.f.mainmic.value="����"
	parent.v.f.secondmic.value="����"
	parent.v.f.getmic.value="����"
	parent.v.f.cutmic.value="����"
	parent.v.f.freemic.value="����"
	parent.v.f.filtervoice.title="�������÷���"
 	parent.v.f.filtervoice.value="����"

	if(document.screenForm.KICK){
	parent.v.f.requestmic.style.cssText 	= "LEFT:  5px;top:70px"+buttonstyle36;
	parent.v.f.releasemic.style.cssText 	= "LEFT: 43px;top:70px"+buttonstyle36;
	parent.v.f.mainmic.style.cssText 	= "LEFT: 81px;top:70px"+buttonstyle36;
	parent.v.f.secondmic.style.cssText 	= "LEFT:119px;top:70px"+buttonstyle36;

	parent.v.f.getmic.style.cssText 	= "LEFT:  5px;top:94px"+buttonstyle36;
	parent.v.f.cutmic.style.cssText		= "LEFT: 43px;top:94px"+buttonstyle36;
	parent.v.f.freemic.style.cssText 	= "LEFT: 81px;top:94px"+buttonstyle36; 
	parent.v.f.close.style.cssText 		= "LEFT:119px;top:94px"+buttonstyle36; 

	parent.v.f.mainmic.disabled=false;
	parent.v.f.secondmic.disabled=false;
	parent.v.f.getmic.disabled=false;
	parent.v.f.cutmic.disabled=false;
	parent.v.f.freemic.disabled=false;
	}else{
	parent.v.f.close.value="�ر�����"
	parent.v.f.filtervoice.value="��������"
	parent.v.f.requestmic.style.cssText 	= "LEFT: 12px;top:70px"+buttonstyle44;
	parent.v.f.releasemic.style.cssText 	= "LEFT: 56px;top:70px"+buttonstyle44;
	parent.v.f.v2vv.style.cssText 		= "LEFT:100px;top:70px"+buttonstyle44;
	parent.v.f.close.style.cssText 		= "LEFT: 12px;top:94px"+buttonstyle60; 
	parent.v.f.filtervoice.style.cssText	= "LEFT: 84px;top:94px"+buttonstyle60;
	parent.v.f.filtervoice.disabled=false;
	}
	}  
function writecv_new(){ 
	if(parent.v.document==null)return; 
	parent.voiceframe.rows="0,*" 
	parent.v.document.open(); 
	parent.v.document.writeln("<html><head><meta http-equiv='Content-Type' content='text/html; charset=gb2312'>"); 
	parent.v.document.writeln("</head><body bgcolor="+parent.d.document.body.bgColor+" background="+BgImg3+">"); 
	parent.v.document.writeln("<p class='p9'>"); 
	parent.v.document.writeln("<form name=ov><input type=button name=ceshi value=��Ͳ���� style=height:20px;LEFT:80px;top:30px;"+buttonstyle60+" onclick=window.open('http://chat.yinsha.com/voice.htm')>"); 
	parent.v.document.writeln("<input type=button name=closev value=������ style=height:20px;LEFT:15px;top:30px;"+buttonstyle60+" onclick='parent.writev_new();parent.d.writev_change()'>");
	parent.v.document.writeln("</form><Br><Br><center></form><Br><br><table width='96' border='1' cellspacing='0' cellpadding='0' bgcolor='#B6F2F9' bordercolordark='#000000' bordercolorlight='#FFFFFF' height='15'><tr><td width='140' align='center'><p align='center'><span style='font-size: 8.7pt;COLOR:000000'>��Ȩ:"+RoomName+"<Br>����:"+RoomNumb+"</SPAN></p></td></tr></table>"); 
	parent.v.document.write("<form name=f>");
	parent.v.document.write("<input type=hidden name=mainmic value='��'>");
	parent.v.document.write("<input type=hidden name=secondmic value='��'>");
	parent.v.document.write("<input type=hidden name=getmic value='��'>");
	parent.v.document.write("<input type=hidden name=cutmic value='��'>");
	parent.v.document.write("<input type=hidden name=freemic value='F'>");
	parent.v.document.writeln("</form></body></html>"); 
	parent.v.document.close();
	}
function v2v2(){
	if(inputform.WHOTO.value=='������')return; 
	if(confirm('\n����ֶԲ���,���ڴ˷�����������,�ʴ��� \n������ڵ绰��\n\n���������������Ѻڵ绰������Ϊ��׼���ˡ���\n���徻�ķ��䡰'+BlackRoomName+'����\n\n���ȷ�����ɽ��룡')){ 
		inputform.msg.value='����������˽�ģ���ȥ��'+BlackRoomName+'�������ˣ����ȵ��ҵ������ٵ����½ǵ�˽���� ���� ֱ�ӵ����鷿�����˽���ң� �Ϳ�˽���ˣ�������Ŷ!'; 
		checksay(); 
		inputform.submit(); 
		gotoroom(BlackRoomNumb); 
		}
	}
function v2v(){
	if(inputform.WHOTO.value=='������')
		return;
	if (BlackRoomNumb == ""){
		if (parent.v.document.f.v2vv.value == "˫��"){
			parent.v.document.f.v2vv.value="��˫";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
			}
		else if (parent.v.document.f.v2vv.value == "��˫"){
			parent.v.document.f.v2vv.value="˫��";
			parent.d.v2vForm.TOONE.value=0;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
			}
		}
	else
		if(confirm('\n����ֶԲ���,���ڴ˷�����������,�ʴ��� \n������ڵ绰��\n\n���������������Ѻڵ绰������Ϊ��׼���ˡ���\n���徻�ķ��䡰'+BlackRoomName+'����\n\n���ȷ�����ɽ��룡')){ 
			inputform.msg.value='����������˽�ģ���ȥ��'+BlackRoomName+'�������ˣ����ȵ��ҵ������ٵ����½ǵ�˽���� ���� ֱ�ӵ����鷿�����˽���ң� �Ϳ�˽���ˣ�������Ŷ!'; 
			checksay(); 
			inputform.submit(); 
			gotoroom(BlackRoomNumb); 
			}
	}
function DoNotHide(AStr){
	for(i=0;i<Hider.length;i++){
  		if(AStr==Hider[i]) return false;
		}
  	return true;
	}
function IsNumeric(AStr){
  	for(var j=0;j<AStr.length;j++){
    		if(AStr.charCodeAt(j)>=256) return false;
  		}
  	return true;
	}
function FOwnerPic(AStr){
	for(i=0;i<OwnerPic.length/2;i++){
		if(AStr==OwnerPic[i*2])
			return HeadPlace+OwnerPic[i*2+1];
		}
	return "";
	}
function FJsPic(AStr){
	for(i=0;i<JsPic.length/2;i++){
		if(AStr==JsPic[i*2])
			return HeadPlace+JsPic[i*2+1];
		}
	return "";
	}
function FHeadPic(AStr){
	for(i=0;i<HeadPic.length;i+=3){
		if(AStr==HeadPic[i])
			return HeadPlace+HeadPic[i+1];
		}
	return "";
	}
function IsOnlineManager(){
	return (document.screenForm.KICK);
	}
function FOwner(AStr){
	for(i=0;i<OwnerPic.length/2;i++){
		if(AStr==OwnerPic[i*2])
			return true;
		}
	return false;
	}
function FJs(AStr){
	for(i=0;i<JsPic.length/2;i++){
		if(AStr==JsPic[i*2])
			return true;
		}
	return false;
	}
function Usertitle(AStr){
	for(i=0;i<AUserTitle.length;i+=3){
		if(AStr==AUserTitle[i])
			return AUserTitle[i+1]+"&"+AUserTitle[i+2];
		}
	return "";
	}
function UserType(AStr){
	for(i=0;i<HeadPic.length;i+=3){
		if(AStr==HeadPic[i])
			return HeadPic[i+2];
		}
	return "";
	}
function LoginMsg(){
	if (!login_succeed)
		return;
	if (!DoNotHide(Auser))
		return;
	if (FJs(Auser))
		return;
	var msg;
	if ((IsOnlineManager())&&(!FOwner(Auser))){
		msg = OnAdminTaker;}
	else if (((this.location.toString().search("BOTTOMADM"))!=-1)&&(!FOwner(Auser)))
		msg = OutAdminTaker;
	else if (FOwner(Auser))
		msg = "//xinku3";
	else if (UserType(Auser)=="0")
		msg = "//g_hi";
	else if (UserType(Auser)=="1")
		msg = "//xinku";
	else
		msg = OnTaker;
	document.inputform.msg.value=msg;
	document.inputform.IMGURL.value = InHelloPic;
	checksay();document.inputform.submit();
	}
Exchange0=new Array()
Exchange1=new Array()
Exchange2=new Array()
function Achang(L1, L2){
	for(var i=0;i<L2.length;i++)
	L1[i]=L2[i];
	}
function AutoWelcome() {
	var Aname="", Bname="", _Aname="", _Bname="";
	Achang(Exchange1,parent.list);
	Achang(Exchange2,parent.list);
	for(var i=1;i<Exchange1.length;i++) {
       		for(var n=1;n<Exchange0.length;n++){
			_Aname=Exchange0[n].split("-'");
			_Bname=Exchange1[i].split("-'"); 
           		if(_Aname[0] == _Bname[0]){
				Exchange0[n]="";
				Exchange1[i]="";
				}
           		}
      		}
    	Achang(Exchange0,Exchange2);
	for(var i=1;i<Exchange1.length;i++){
    		if(Exchange1[i] != ""){
    			_Bname=Exchange1[i].split("-'");
			Aname=_Bname[0];
    			Bname=inputform.WHOTO.value;
			if (DoNotHide(Auser)){
	    			parent.cs(Aname);
				autosendflower3(AutoChat20,20);
    				parent.cs(Bname);
				} 
			}
    		}
	}
function AutoWel(){
	if (AutoHi.value=="�Զ�ӭ��"){
		AutoHi.value="�ر�ӭ��"
		AutoHiTimer=window.setInterval("AutoWelcome()",15000);
	} else if(AutoHi.value=="�ر�ӭ��"){
		AutoHi.value="�Զ�ӭ��"
		window.clearInterval(AutoHiTimer);
		}
	}
function AutoKeepMic() {
	if (AutoSendMic.value=="����") { 
		AutoSendMic.value="ͣ��";
		CurrentSendMicUser=inputform.WHOTO.value;
		AutoMicTimer=window.setInterval("SendMic()",30000);
	} else {
		window.clearInterval(AutoMicTimer);
		AutoSendMic.value="����";
		CurrentSendMicUser="";
		}
	}
function SendMic() {
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(CurrentSendMicUser);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
	}
function CallBackMic(){
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(Auser);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
	}
function UserNameFilter(){
	for(i=0;i<HeadPic.length;i+=3){
		if(Auser==HeadPic[i])
			return;
		}
	for (var i=0;i<NameFilter.length;i++)
		if (Auser.indexOf(NameFilter[i])!=-1){
			login_succeed = false;
			document.controlForm.LEAVEIT.onclick();
			alert('���ã�['+Auser+']��\n\n��ֱ�Ǹ�����������õ������к��б��������Ƶ����֡�\n\n�������������������ֽ�����Ը���ڴ˿�����졣');
			parent.close();
			return;
			}
	if (OnlyChineseName==1 && IsNumeric(Auser)){
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('���ã�['+Auser+']��\n\n��ֱ�Ǹ����������ʱֻ����������ֵ��������롣\n\n�������ú�����������Ը���ڴ˿�����졣');
		parent.close();
		}
	}
var login_timer = 270;
var autolog_timer_id;
function auto_log_func(){
	setTimeout("login_form.submit();",20000);
	}
function enable_auto_log(action){
	if (action != ""){
		var HTMLstr ='<form METHOD="POST" target="bl" ACTION="'+action+'" NAME="login_form">';
		HTMLstr += '<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+RoomNumb+'">';
		HTMLstr += '<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+Auser+'">';
		HTMLstr += '<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(document.screenForm.KICK?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">';
		HTMLstr += '<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
		document.write(HTMLstr);
		autolog_timer_id = setInterval("auto_log_func()",login_timer*1000);
		}
	}
function enable_auto_face(){
	var roomurl=AdminPlace+"facelist.asp?roomid="+RoomNumb+"&name="+Auser;
  	window.open(roomurl);
	}
function writelist(){
	if(parent.r.document==null)return;
	var bkcolor=parent.r.document.body.bgColor;
	var user_type;
	var user_str;
	var user_pic;
	var user_Title
	var user_array = new Array();
	var pic="";
	for(var i=1;i<parent.list.length;i++){
		TempStr = parent.list[i];
		if(TempStr!=null){
      			voicelists=TempStr.split("'-");
      			if(!voicelists[1]) voicelists[1]='0';
			if(!voicelists[2]) voicelists[2]='0';
			lists=voicelists[0].split("-'");
      			if(!lists[1])lists[1]='0';
			AUserName = lists[0];
			if(!DoNotHide(AUserName)){
				parent.count=parent.count-1;
				user_type = 0;
				user_pic = "";
				user_Title = Usertitle(user_type);
				}
			else if(FOwnerPic(AUserName)!=""){
				user_type = 3;
				user_pic = FOwnerPic(AUserName);
				user_Title = Usertitle(user_type);
				}
			else if(FJsPic(AUserName)!=""){
				user_type = 4;
				user_pic = FJsPic(AUserName);
				user_Title = Usertitle(user_type);
				}
			else if(lists[1]==1)
				if(FHeadPic(AUserName)!=""){
					user_type = 1;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
					}
				else{
					user_type = 2;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
					}
  			else if(AUserName.charAt(0)=='*')
				if(FHeadPic(AUserName)!=""){
					user_type = 5;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
					}
				else{
					user_type = 6;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
					}
	  		else if(!IsNumeric(AUserName)){
					user_type = 7;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
  					}
				else{
					user_type = 8;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
	  				}
			user_str = user_type + "&";
			user_str += user_pic + "&";
			user_str += lists[0] + "&";
			user_str += user_Title + "&";
			user_str += voicelists[1] + "&";
			user_str += voicelists[2];
			user_array[user_array.length] = user_str;
  			}
 		}
	parent.r.document.open();
	parent.r.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">");
	parent.r.document.writeln("<style type=text/css>");
	parent.r.document.writeln("<!--");
	parent.r.document.writeln(".p9 {font-size: 9pt}");
	parent.r.document.writeln("a:visited {color: #0000FF; text-decoration: none}");
	parent.r.document.writeln("a:link {color: #0000FF; text-decoration: none}");
	parent.r.document.writeln("a:hover {color: #FF0000}");
	parent.r.document.writeln("BODY{"+scrlstyle+"background-position:top left;background-repeat:no-repeat;}");
	parent.r.document.writeln("-->");  
	parent.r.document.writeln("</style>");
	parent.r.document.writeln("</head><body topmargin=0 leftmargin=10 bottommargin=0 rightmargin=0 widthmargin=180 bgcolor="+parent.d.document.body.bgColor+" background="+BgImg2+" bgproperties=fixed>");
	if (typeof(LogoPic)=="undefined"){
		parent.r.document.writeln("<table width=100% cellpadding=1 cellspacing=1 border=0 >"); 
		parent.r.document.writeln("<tr><th height=25 >��"+RoomName+"��</th></tr>");	
		parent.r.document.writeln("</table>");}
	else
		parent.r.document.writeln("<img src="+LogoPic+"  border=0>");
	parent.r.document.writeln("<div align=center style=LEFT:12px;top:35px;POSITION:absolute><font color=000000 size=2>��ǰ��</font><font color=red size=2>"+parent.count+"</font><font color=000000 size=2>λ��������</font></div>")
	parent.r.document.writeln("<div style=LEFT:10px;top:45px;POSITION:absolute><hr color=#99CCFF width=100% size=1></div>");
	parent.r.document.writeln("<div style=LEFT:10px;top:60px;POSITION:absolute>")
	parent.r.document.writeln('<table border=0 width=200 cellpadding=11 cellspacing=10>');
	parent.r.document.writeln("<p class='p9'>");
	parent.r.document.writeln("<font color=000000><b>�����б�:</b><a target=d href=\"javascript:parent.cs('������')\">������</font></a> <a href=\"javascript:history.go(0);\">[ˢ��]</a></font><br>");
	user_array.sort();
	for(i = 0 ; i < user_array.length;i++){
		lists=user_array[i].split("&");
		if(!DoNotHide(Auser)||FOwner(Auser)){
			HTMLstr=""
			if((lists[0]==1)||(lists[0]==2))
				HTMLstr += "<a><IMG src="+AdminPicTop+">";
			if((lists[0]==1)||(lists[0]==3)||(lists[0]==4)||(lists[0]==5))
				HTMLstr +="<a><IMG src="+lists[1]+">"
			HTMLstr +="<a target=d href=\"javascript:parent.cs('"+lists[2]+"')\"title=\""+lists[3]+"\"><font color="+lists[4]+" style='Height:10pt; padding:1px;cursor:hand'>"+lists[2]+"</font></a>"
			if(lists[5]==1)
				HTMLstr +="<IMG src="+PicSound1+">"
			if(lists[5]==2)
				HTMLstr +="<IMG src="+PicSound2+">"
			if(lists[6]!=0)
				HTMLstr +="<IMG src="+PicVideo+">"
			parent.r.document.writeln(HTMLstr);
			parent.r.document.writeln("<br>");
			}
		else if(DoNotHide(lists[2])){
			HTMLstr=""
			if((lists[0]==1)||(lists[0]==2))
				HTMLstr += "<a><IMG src="+AdminPicTop+">";
			if((lists[0]==1)||(lists[0]==3)||(lists[0]==4)||(lists[0]==5))
				HTMLstr +="<a><IMG src="+lists[1]+">"
			HTMLstr +="<a target=d href=\"javascript:parent.cs('"+lists[2]+"')\"title=\""+lists[3]+"\"><font color="+lists[4]+" style='Height:10pt; padding:1px;cursor:hand'>"+lists[2]+"</font></a>"
			if(lists[5]==1)
				HTMLstr +="<IMG src="+PicSound1+">"
			if(lists[5]==2)
				HTMLstr +="<IMG src="+PicSound2+">"
			if(lists[6]!=0)
				HTMLstr +="<IMG src="+PicVideo+">"
			parent.r.document.writeln(HTMLstr);
			parent.r.document.writeln("<br>");
			}
		}
	parent.r.document.writeln('</table></div></hr></body></html>');
	parent.r.document.close();
	}
function writeu1() {
	document.aicontrolForm.submit();
	parent.u1.document.write('<html><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">.p9 { font-family:����; font-size: 9pt; line-height: 16pt};a:hover { color: #FF0000};a:link { color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}</style></head>');
	parent.u1.document.write('<p class="p9" align="left"><body bgproperties=fixed scroll=yes></body>');
	parent.u1.document.write('<style>BODY{'+scrlstyle+'background-position:'+Location+';background-repeat:no-repeat;}</style>');
	parent.u1.document.body.style.backgroundImage="url("+BgImg4+")";
	}
function keepBg(){	
	var url,ux,uy,ry;
	if(typeof(window.keepBgUX)=="undefined")window.keepBgUX=0;
	if(typeof(window.keepBgUY)=="undefined")window.keepBgUY=0;
	if(keepBgUX!=parent.u.document.body.offsetWidth || keepBgUY!=parent.u.document.body.offsetHeight){
		url="url("+parent.u.document.body.background+")";
		uy =parent.u.document.body.offsetHeight;
		u1y=parent.u1.document.body.offsetHeight;
		parent.u1.document.body.style.backgroundImage=url;
		if (mLocation==1){
			parent.u.document.body.style.backgroundAttachment="fixed";
			parent.u.document.body.style.backgroundPositionY=(uy+u1y-ZengPing)/2;
			parent.u1.document.body.style.backgroundAttachment="fixed";
			parent.u1.document.body.style.backgroundPositionY=(uy+u1y-ZengPing)/2-1-uy;}
		else if (mLocation==2){
			parent.u1.document.body.style.backgroundAttachment="fixed";
			parent.u1.document.body.style.backgroundPositionY=-uy-1;}
		else if (mLocation==3){
			parent.u.document.body.style.backgroundAttachment="fixed";
			parent.u.document.body.style.backgroundPositionY=uy+u1y-ZengPing+1;}
		keepBgUX=parent.u.document.body.offsetWidth;
		keepBgUY=parent.u.document.body.offsetHeight;
		}
	}	
function OverWriteParentWrite(){
  	parent.write_new=writelist;
	parent.writeu1=writeu1;
	parent.writecv_new= writecv_new
	setTimeout("writev_change()",500);
	}
function FAutoOpenAi(){
	if (AutoOpenAi == 1){
		document.inputform.AI.checked=true;
		document.aicontrolForm.AI.value='on';
		}
	if (AutoOpenDiv == 1){
		divscreenk()
		document.inputform.divs.checked=true;
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='50%,*';
		document.screenForm.INBOX.disabled=false;
		document.screenForm.OUTBOX.disabled=false;
		document.screenForm.BOXLIST.disabled=false;
		}
	if (AutoOpenAi == 1 || AutoOpenDiv == 1)
		document.aicontrolForm.submit();
	setTimeout("LoginMsg()",1000);
//	Ttitle=RoomName+"��ӭ��";
//	Thallo="�װ���"+Auser+"�����ã��ǳ���ӭ������"+RoomName+"��"+inhi;
//	MakePUP(Thallo,Ttitle,"450","195","70","�� ��");
	}
setTimeout("FAutoOpenAi()",4000);
if(ZengPing != 0)setInterval("keepBg()", 1000); 
OverWriteParentWrite();
if (AutoOpenNotice == 1)
	Fshengyin()
else{
	document.screenForm.NOTICE.checked=false;
	document.aicontrolForm.NOTICE.value='off';
	}
                    