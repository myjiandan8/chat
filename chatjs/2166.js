<!--

var a_user               = document.inputform.USER.value;

var a_pass               = document.inputform.PASS.value;

var userlist_top_html = "<table border=0 cellspacing=0><tr><td align=middle><img width=100% height=50 src=http://www.5iro.net/img/logo.gif></td></tr><tr><td align=middle><marquee scrollamount=2><font color=Olive><b>��ӭ<font color=red><b>��"+document.inputform.USER.value+"��</b></font>����<font color=red>5iRO</font><font color=red>Ҫ�����999</font></marquee></td></tr></table>";
var config_place= "http://vip.7sn.com/515029/wyx/tup/";

var userlist_bottom_html = "";//�����б����ײ�HTML����
var room_owner           = "*�ڿ��ȡ���";            //��������
var room_name            = "5iro";		    //��������
var room_adminname_head  = "*�ڿ��ȡ���";	    //���ѹ�����
var room_number          = "2166";			    //�����
var room_link_url        = "http://2166.liaowan.com";	    //����ĵ�ַ
var black_roomname       = "";			            //˫����������
var black_roomnumb       = "";			            //˫���������
var userlist_bkcolor     = "#D9ECFB";	//�����б����ı���ɫ
var userlist_bkimage     = "";		//�����б����ı���ͼ������Ϊ�մ���ʹ����������ͼƬ
var voice_normal_color   = "#33CC00";	//����������ʱ��ͼ����ɫ
var voice_v2v_color      = "#BFBFBF";	//˫������ʱ��ͼ����ɫ
var voice_vr_color       = "#33CC00";	//����Ƶʱ��ͼ����ɫ
var div_screen_bkcolor   = "";		//��������ɫ
var div_screen_bkimage   = "";	        //��������ͼƬ	
var voice_bkcolor        = "#D9ECFB";	//�������ı���ɫ
var voice_bkimage        = "";		//�������ı���ͼ���մ���ʹ��������ͼƬ
var input_bkcolor        = "#D9ECFB";	//����������ɫ
var input_bkimage        = "";		//����������ͼƬ
var input_msg_color	 = "#FF00FF";	//�������������������ɫ
var input_msg_bkcolor    = "#CCCCFF";	//��������������򱳾�ɫ
var body_text_color	 = "#FF00FF";	//����������ɫ
var select_color         = "#FF00FF";	//�б������ɫ
var select_text_color    = "#FF00FF";	//�б��������ɫ
var button_text_color    = "#FF00FF";	//��������ť����ɫ
var button_over_color    = "#FF0099";   //����������ƹ�ʱ��ť����ɫ
var button_bk_image	 = 1;		//��ťʹ�ñ���ͼƬ��1����ʹ�ã�0������ʹ��
var button_bk_color      = "#CC00FF";	//��������ť��ʹ��ͼƬʱ����ɫ
var full_screen_bkimage  = 1;		//�Ƿ�ʹ�����屳��ͼƬ0������ʹ�ã�1����ʹ��
var auto_hide_scrollbar  = 1;		//���屳��ʱ�Ƿ��Զ����ع�����0���������أ�1��������
var disable_notice       = 0;		//�Ƿ����α��ĵ��Ǹ���ʾ����0���������Σ�1��������
var url_popup_window     = "";		//����������ʱ�����Ĵ��ڣ����Ϊ���򲻵���
var only_registr_user    = 0;		//ֻ����ע���û�����,0���������ƣ�1����ֻ����ע���û�����
var only_chinese_name    = 0;		//ֻ���������û�����,0���������ƣ�1����ֻ���������û�����
var default_admin_pass   = "123";	//Ĭ�ϵĹ���Ա�Ϲܿ���
var auto_open_ai         = 1;		//�Զ���ͼ��,0�������򿪣�1�����Զ���
var auto_open_mic        = 1;		//�Զ�������,0�������򿪣�1�����Զ���
var auto_open_div        = 1;		//�Զ�����,0������������1�����Զ�����
var multi_singer_list    = 0;		//�Ƿ������ظ�����0����������1��������
var msg_login		 =	        "���ҡ�"+a_user+"�����ˣ���" + room_name + "�� ���Եİ� ���Ե�˼�� ���Եĵȴ���";
var msg_admin		 =	        "";
var msg_quitadmin	 =	        "";
var msg_leave		 =	        "��λ����"+a_user+"������һ����,�´��ٺʹ���ģ�";
//	��ť����ͼƬ  ���,�ļ���

var a_btn_pic = new Array

(
	17,		"http://vip.7sn.com/515029/wyx/tup/1.gif",
	18,		"http://vip.7sn.com/515029/wyx/tup/1.gif",
	19,		"http://vip.7sn.com/515029/wyx/tup/1.gif",
	35,		"http://vip.7sn.com/515029/wyx/tup/02.gif",
	46,		"http://vip.7sn.com/515029/wyx/tup/03.gif",
	70,		"http://vip.7sn.com/515029/wyx/tup/04.gif"
);

//	�������Ӱ�ť

var a_link_button = new Array

(

        "5iro��̳",  "http://www.5iro.net/bbs",
        "5iro",  "http://www.5iro.net",
        "5iro����",  "http://www.5iro.net/bbs",
        "5iro����",  "http://www.bliao.com/help/help53.htm",
        "5iro���",  "http://www.5iro.net/bbs",
        "����ע��",  "http://liaowan.com/USadmin/regadd.asp"
);

//	�����е� VIP ���� 

var a_vip_user = new Array

(
 "*�ڿ��ȡ���",1,
 "*",2,
 "*",4,
 "*",3,
 "*",1,
 "*",6,
 "*",1,
 "*",6,
 "*",1,
 "*",1,
 "*",1,
 "*",4,
 "*",2,
 "*",6,
 "*",5,
 "*",6,
 "*",2,
 "*",5,
 "*",6,
 "*",5,
 "*",5,
 "*",6,
 "*",		1,
 "*",	1,
 "*",		1,
 "*",	4,
 "*",	3,
 "*",		5,
 "*",	2,
 "*",		1
);
//      ����
var wudimajia=new Array
(
 "*�ڿ��ȡ���",
 "*",
 "*",
 "*",
 "*",
 "*"
 );
//      ���¹���
var bianyi = new Array
(
     "*",
     "*",
     "*",
     "*",
     "*"
);
//      �����ˣ����ƣ�����ȼ���
var a_hide_user = new Array
(
        "*",     1,
	"*",     1,
	"*",             2,
	"*",             1,
	"*",	         1
);
//      �ڴ��޸��������ֵ���ɫ
var a_usertitle = new Array
(
   0,"RO����",     "xdguanl.gif",	                "#FF0000","#FFFFFF",	
   1,"����վ��",	"87383.gif",	                "#FF0880","#FFFFFF",	
   2,"���츱վ",	"369ai.gif",	"#9B439B","#FFFFFF", 	
   3,"RO����",	"369ai.gif",	                "##FFc2e","",	
   4,"RO����",	"369ai.gif",	        "#FFc2e","",	
   5,"RO����",	"em40.gif",	                "#6D61C9","#FFFFFF",	
   6,"RO���",	"h001.gif",	                "#0033FF","#FFFFFF",	
   7,"RO�α�",	"jb.gif ",	                "#008FEE","#EEF8FF",	
   8,"RO����",	"0005.gif",	                "#008FEE","#EEF8FF",
   9,"RO����",	"0005.gif",	                "#41ABF1","#FFFFFF"

);
//      ��������,��ע�ⷿ��ŵ�д��
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
	"",	"",
	"û�м���",	"",
	"û�м���",	"",
	"û�м���",	""
);

//      ����������

var a_name_filter = new Array

(

        "*�һ����","��","��","��","Ѽ","��","��","��","��","��","��","ү","���˹�","����","�Ϲ�","��å","����","����","�Ƕ�","��̬","ɫ��","�侫","ɵ��","�д�","��Ь","����","�϶�","����","��","����","����","����","����","غ��","��Ƥ","����","����","����","�ϴ�","��Ů","����","�ڹ�","�׳�","ɧѨ","����","�����","����","ɵB","����","����","����","����","����","��ͷ","����","����","����","�Ͻ�","��Ů","����","�Ҳ�","����","ɵ��","����","����","�׳�","��","��","Ѽ","��","��","�","?","��","�H","��","��","��","��","��","��","��","��","��","��","��","ʺ","��","��","��","���","ɫħ","ɫ��","��ɫ","ɫ�����İ�","����","����","������","ͬ����","���İ�","���˹�","����","�Ϲ�","��å","����","����","����","�Ƕ�","��̬","ɫ��","�侫","ɵ��","�д�","��Ь","����","�϶�","����","����","����","����","����","غ��","��Ƥ","����","����","����","�ϴ�","��Ů","����","�ڹ�","�׳�","ɧѨ","����","�����","����","ɵB","����","����","����","����","����","��ͷ","����","����","����","�Ͻ�","��Ů","����","�Ҳ�","����","ɵ��","����","����","�׳�","��","��","Ѽ","��","��","�","?","��","�H","��","��","��","��","��","��","��","��","��","��","��","ʺ","��","��","��","���","ɫħ","ɫ��","��ɫ","ɫ��","Ʀ"

);



//      ��������

var a_linkurl = new Array

(
        "",  "",

        "",     "",

        "",     "",

        "��E �漣",     "http://reg.playmu.com",

        "��E ��ʹ",     "http://www.ieplay.com",

        "��������",     "http://www.yinsha.com/chat/emote1.html",
	"",	"",
	"���İ���",     "http://talk3.silversand.net/midi/hktaiwan.htm", 
        "��E ����",	"http://mir.ieplay.com/",
        "����IE6",      "http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/CN/ie6setup.exe"

);

//      ��ӭ

var a_welcome = new Array

(

	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",

	"��ӭ",	"^_^*��" + room_name + "��*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡��������",

	"��ӭ",	"�������ߵ����ĺ��ǡ���" + room_name + "����Զ��ӭ������Զ�Ⱥ�������Զ�������������"

);

//      �׻�

var a_flower = new Array

(

	"��",	"��!������� * ������ǩ�����ɣ���..��Ҳ�Ҫ����..��..��..˭�Ȱ�����..��~~ǩ�Ķ��أ�..��ǩ���·��ϰɣ�Ҫ����ӡ��Ŷ~����~�ҵ�Ь~",

	"ǩ��",	"��~����̫����~�����~�����Ķ�����~����~����ǩ������~ �����~��~��������~����̫����~�����~�����Ķ�����~0~",

	"����",	"������---�������ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ��",

	"����",	"����������ð�Ŷ�������������ˡ�������ð�Ŷ������ð�Ŷ�������ð�Ŷ������žžž�����",

	"����",	"�����ң���רҵ����~~~~�רt��...��r�רt��r�����ǡ���(((((žž)))))�רt�רtǩ����ǩ����)�٣�����~~~~���� **�ҵ�Ь�أ��۾��� ",

	"õ��",	"õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���Ȼ��t���r���׻��t���r���㻨�t���r�л��t���r �񻨡��������������ϻ�",

	"����",	"����� �����*���� �����ǰ�������� * *�������������������*���* ̫���ˣ�������������㳪�����һ����Ǹ��ǳ��İ�����* ~",

	"ż��",	"�������*�����ߡ֡���ʻ��֡���ʻ�ż�񡫡�ǩ�������� ��*���� ��*������*������ż�񡫡�ǩ�������� ��*������",

	"�ٺ�",	"���רt��r�רt��r�����ǡ��פ�(((((((((žž))))))))�רt��r�϶�����רt��rˮ�ɻ����רt��r�רt��rҰ�ٺɡ��רt��r��",

	"���",	"�������~~�t���r���򻨨t�����ƣ�����PA PA������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦�����ң��Ϸ���",

	"����",	":���������嗀����K*���������������嗀����Y�K*���������������嗀���� �K *���������������嗀����K",

	"žž",	"*^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^* *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*",

	"ˮ��",	"õ�廨���רt��r�רt��r�����ǡ��רt��r��(((((((((žž))))))))�רt��r�϶�����רt��r�פרt��rˮ�ɻ����רt��r�רt��r",

	"ĵ��",	"* *����ĵ����� *�ջ��� * *ҹ������һ��һ����һ���ĵ����� *�ջ��� * *ҹ������������* *����һ��һ����һ���"

);
//      ��л

var a_lleave = new Array

(

	"��л",	"��"+document.inputform.USER.value+"�����ĸ�л"+room_name+"�������͵��ʻ�!!!!!!!!!!",

	"лл",	"��"+document.inputform.USER.value+"��лл"+room_name+"�����ǵ������͹���!!!!!!!!!!",

	"��л",	"��"+document.inputform.USER.value+"�����ĸ�л"+room_name+"�����ǵ�����!!!!!!!!!!"

);

//      ץ��

var a_catch = new Array

(

	"ץ��","��ץ111111111ץ��������111111111ץ���ǰ���1111111111111111111",

	"ץ��","��ץ1111111111111111111111�����ץ��1111111111111111111111111",

	"ץ��","��ץ111111111��ץ11111111111ץ���ǰ���11111111111111111111111",

	"ץ��","��ץ11111111��ץ1111111111111ץ��������1111111111111111111111",

	"ץ��","��ץ111111111111111ץ��û����111111111111111111������11111111"

);
//      ���
var a_leave = new Array
(
        "����", "��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
        "���", "��ɽ���ģ���ˮ���������õȵ��������գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);

//      ����

var a_byebye = new Array

(

	"����","�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬"+ room_link_url +"��������Ŷ~��",

	"�ߺ�","�ߺ�ѽ������ˣ�����ŵ��¡���ʱ��һ��������"+ room_name +"�������ź��𣡣�"

);

//      Ҫ��

var a_wantmic = new Array

(

	"Ҫ��",	"��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ",

	"����",	"��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999 "

);

//      ����

var a_heart = new Array

(

	"����",	"������~~~111111111111111������~~~111111111111111111",

	"����",	"�������ˡ��������ˡ��������ˡ��������ˡ��������ˡ�",

	"����",	"����������������ˡ��������������ˣ����������������"

);

//	����ר��

var a_admin = new Array

(

	"����׼��",	"���ã���ӭ��������һ���˺����𣿡�,��һ��������������,��׼����!!!","",

	"�ܾ�˫��",	"����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣ ","color:#6600ff",

	"�Ѿ�����",	"����!����Ϊ������,�������Ĵ��Ⱥ�!","",

	"��������",	"����!��������,������˼,�����õ���,��Ӻ�������˷�!","",

	"��������",	"���ѣ������������ˣ�����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������","",

	"�뿪����",	"����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ!!","",

	"��������",	"����**������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!! ","",

	"��ھ���",	"��ڴ��~���������~��~û������~��~���������~��~û������~��~��","",

	"��������",	"���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ�����","",

	"���󲻺�",	"����!�������������������������̫��,�����������Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл.","",

	"��������",	"����!�װ�������,���ǵ������,������û������,�����ٵ���һ�����,��������Ҫ�����?",""

);

//����EMOTE����
var a_emote = new Array
(
	"He���",		"//hello",
	"Hi��ã�",		"//hi",
	"����к�",		"//greet",
	"���һ�ӭ",		"//welcome",
	"����",			"//hand",
        "������",		"//:)",
	"����ЦЦ",		"//:)2",
	"����ӵ��",		"//bearhug",
	"����һ��",		"//sit",
	"�����Ϲ�",		"//bow",
	"��̫����",		"//welcome2",
	"���տ���",		"//birthday",
	"���ҹ���",		"//clap",
        "�׶����",		"//rose",
	"�ȵ�ţ��",		"//milk",
	"�Ȳ����",		"//tea",
	"������˵",		"//wine",
	"��������",		"//sweat",
	"СĢ����",		"//gzxj",
        "������Ц",		"//haha",
	"�ɻ���",		"//?",
	"׳ʿ����",		"//cool",
	"�������",		"//face",
	"�����",		"//thank",
	"��ʵ�ڸ�",		"//gao",
        "����",		"",
	"���İ���",		"//ai",
	"��������",		"//@@",
	"�赹����",		"//faint",
	"���˹�ȥ",		"//fly",
        "���ڵ���",		"//waiting",
	"�ȵĻ�л",		"//wait3",
	"��������",		"//love3",
        "����ӵ��",		"//hug",
        "������ͷ",		"//pat",
	"���˻���",		"//lean",
	"���뻳��",		"//jump",
	"���һ��",		"//kiss",
        "��ˮ����",		"//:(",
        "�ڼ��Ͽ�",		"//cry",
        "����",		"",
	"��������",		"//hammer",
	"����ӳ�",		"//tu",
	"š�÷���",		"//pinch",
	"��������",		"//puke",
	"����һ��",		"//punch",
        "����",		"",
	"��ȫͬ��",		"//agree",
        "��������",		"//angry",
        "�Ҳ�֪��",		"//no",
        "�����޹�",		"//noask",
        "������",		"//pig",
        "ҡ��ҡͷ",		"//shake",
	"���΢Ц",		"//smile",
	"�����Ǹ",		"//sorry",
        "��ĺ���",		"//tired",
	"��������",		"//wake",
        "����",		"",
	"�������",		"//cu",
        "��������",		"//wait",
        "���ű�Ӱ",		"//cu3",
	"�����㰳",		"//stw",
	"�뱣�أ�",		"//goodbye",
        "�ѹ�Ҫ��",		"//tear",
        "�ӻ��֡�",		"//wave"
);
//����ͼƬ����
var a_picture = new Array
(
"��ӭ����",    "",
"��ӭ����!����!������!!!",         "003.gif",
"��ӭ����!����!������!!!",         "004.gif",
"��ӭ����!����!������!!!",         "005.gif",
"��ӭ����!����!������!!!",         "006.gif",
"��ӭ����!����!������!!!",         "007.gif",
"�׿�������!����һЦ^_^",         "008.gif",
"�������ĺ������Ƕ��Ǻ��ֵ�",     "009.gif",
"�������!��Ъһ���!!",         "010.gif",
"����Ⱦ�С����ϲ�~~~",         "011.gif",
"��������,������˵...",         "012.gif",
"������~~�����ɱ�",         "013.gif",
"�һ�û��һ���������~",        "014.gif",
"�һ�û��һ���������~~",        "015.gif",
"����Ȳ��Ϻõ�����",         "016.gif",
"��ȿ��Ƚ��ڵ�Ŷ",         "017.gif",
"��ȿ���",         "018.gif",
"�����Ȳ�",   "",
"��������",   "", 
"ӵ��һ��",   "",             
"õ������",   "",
"������Ե",   "",
"�������",   "",       
"������Ѿ",	"",
"Ե������?��������ʱ��,��ô������ס...", "http://dadao.net/htm/wlwx/2002/0708/3322.jpg",
"���ʮ���ǧ�Ҳ����ԡ��ͬһƬ�¹��¡����������ȥ�ҵ�ף��������ÿһ�죡 ","",
"��������������Σ�ÿ���ζ����㣻~@~","",
"�����ͷ�������Ժ󻹸Ҳ���...���ֶ���������Զɽ,ֻ��������Ӣ��������˭...",  "http://v58v.51.net/tupian/0038.gif",
"��������","http://218.14.151.133/friend/photo/2390313527.gif", 
"��ȥ����", "http://218.14.151.133/friend/photo/2390313618.gif", 
"ҹŨ���⾲��ƾ�������ѡ�����͸��ɴ���¶���������������������������䡣��īȾ��֪���𸴾����Ρ�","http://218.14.151.133/friend/photo/2390315744.gif",
"�ж�����","http://home.91i.net/bjlx/li/pai.gif", 
"�����ɲ�", "http://218.14.151.133/friend/photo/2390314270.jpg", 
"���뿴��","http://218.14.151.133/friend/photo/2390313528.gif", 
"������ô��û�лؼ�Ѿ�趼����~��.........","http://218.14.151.133/friend/photo/2390313526.gif",
"�ñ�����������è������ƮƮ��̤���ɾ�","http://218.14.151.133/friend/photo/2390313521.gif", 
"���һ��˼��֮�࣬�����������۵�����,�ø�ÿ��һ������������ʱ�������Ҹж��ƺ��������������������������������Σ�","http://218.14.151.133/friend/photo/2390313355.gif", 
"����������Ԥ������������е����㣬����ת�������룬���齫�ɴ˽�����ȣ��ܴ˵�����Ӱ�죬Ԥ�ƴ���������������������Ϊֹ��","http://218.14.151.133/friend/photo/2390314520.gif",
"��������ȥ��","http://218.14.151.133/friend/photo/2390314519.gif",  
"���ж��ӣ�����Ψһ",	"http://www.bjflower.com/img/1-586.gif",
"������~Ʋ��Ʋ��,�ۺ���ˮ:�㲻�ǵ��� 55","http://218.14.151.133/friend/photo/2390313519.gif",  
"��ҹ����һ���˾������롰�㡱", "http://218.14.151.133/friend/photo/2390315578.gif",
"����Ʈ��ˮ���� һ����˼ �����г� �����޼ƿ����� ����üͷ ȴ����ͷ �װ�������æʲô��","http://218.14.151.133/friend/photo/2390313517.gif", 
"������Ե",	"http://218.14.151.133/friend/photo/2390315743.gif",
"�������̩ɽһֻ��Ҫʲô???",         "019.gif",
        "����������ѩ����ô��??",         "020.gif",
        "������������ȹ�^_^",       "021.gif",
        "����!����!!���ҹ���!!!",         "022.gif",
        "Ϊ�������ֶӰ���",         "023.gif",
        "����!����!̫������",         "024.gif",
        "����S����������",          "025.gif",
        "����������Ǹ�ȥ������",         "026.gif",
        "Ϊ�����~�����һ",         "027.gif",
        "����~����~~�����ڶ�",      "028.gif",
        "�����������������",       "029.gif",
        "����!����!!������",         "030.gif",
        "����!����!!������",         "031.gif",
        "���õ��",         "032.gif",
        "ʢ��õ��",         "033.gif",
        "����õ��",         "034.gif",
        "����õ��",         "035.gif",
        "����ܽ��",         "036.gif",
        "����ɻ�",         "037.gif",
        "�����һ�",         "038.gif",
        "���������",       "039.gif",
        "������ʹ",         "040.gif",
        "������ʹ",         "041.gif",
        "Ϊ����",         "042.gif",
        "Ϊ����",         "043.gif",
        "����Ҳ~~",         "044.gif",
        "����Ҳ~~",         "045.gif",
        "�����Ұ�~",        "046.gif",
        "�����Ҿ�ͷ~",      "047.gif",
        "���һ��",         "048.gif",
        "�Һ�ʧ��",         "049.gif",
        "��������",         "050.gif",
        "������ô����",     "051.gif",
        "��˵������˭??",   "052.gif",
        "���㿪��",         "053.gif",
        "����ȥ���",       "054.gif",
        "�������",         "087.gif",
        "�Ҹ���ƴ��",       "088.gif",
        "��Ͷ����",         "089.gif",
        "����ͺ�",         "090.gif",
        "�ҿ���",           "091.gif",
        "�����Ķ�������",   "112.gif",
        "�����������",     "113.gif",
        "������ӡ",         "114.gif",
        "�ɸ봫��",         "115.gif",
        "�ر�İ�",         "116.gif",
        "���İ���",         "117.gif",
        "�޸��Ұ�",         "118.gif",
        "���氮��",         "119.gif",
        "�������",         "120.gif",
        "��������",         "121.gif",
        "�������������",   "122.gif",
        "�ټ��˰�",         "123.gif",
        "���տ���",         "135.gif",
        "���տ���",         "141.gif",
        "ʥ���ڿ���",       "142.gif",
        "��ϲ����",         "143.gif"
);

//      ����ɫ

var a_bkcolor = new Array

( 

        "FFFFFF","FFFF00","FFE000","FFC000","FFA000","FF8000","FF6000","FF4000","FF0000","FFA0FF",

        "FF80FF","FF60FF","FF00FF","E000FF","C000FF","A000FF","8000FF","00FFFF","00E0FF","00C0FF",

        "00A0FF","0080FF","0060FF","0000FF","A0FF00","80FF00","00FF00","00E000","00C000","00A000",

        "fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff","9d9dff","ca8eff",

        "AB82FF","ff88ff","ffaaaa","ccffa6","a6ffcc","b1fee9","adcafe","d5bbff","f1bbff","D752EB",

        "FFFFCC","7BB706","CCCCFF","DBF3B3","CA00C8","FFCC99","CCFFFF","C8D0e8","582424","FFCCFF",

        "4C67D6","00ff00","0033FF","FF3344"

);

//      ����ı����ڲ�ʹ�ã��벻Ҫɾ��

var a_type;

var a_user_pic = new Array(10);

var login_timer = 270;

var autolog_timer_id;

var lastchoice;

var bleave_system;

var timer_id;

var keep_mic_user = "";

var auto_spack_count;

var m_input_bkimage = "";

var m_userlist_bkimage = "";

var m_voice_bkimage = "";

var m_div_screen_bkimage = "";

var m_fullscreen_bgimage = parent.u.document.body.background;

//      �����µĽ���Ԫ��

function add_new_element()

{
	write_button("","�ղ�",0,60,40,20,"","�����Ҽ����ղ�","addbookmark(0)");

	write_button("","ֱ��",0,80,40,20,"","����ǰ�����ּ����ղ�","addbookmark(1)");

	for (var i = 0 ; i < 6 ; i ++)

	write_newwindow_button(a_link_button[i*2],70 + 70 * i,0,70,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");


        write_button("","����ץ��",0,40,70,20,"","����ץ��","autosend(a_catch)");

	write_button("","�ظ�",303,80,35,20,"","�ظ��ϴεķ���","repeat_msg()");

	write_button("","����",338,80,35,20,"","��������","autosend(a_byebye)");

	write_button("","�ͻ�",373,60,35,20,"","�����ʻ�����","autosend(a_flower)");

	write_button("","Ҫ��",373,80,35,20,"","����Ҫ��","autosend(a_wantmic)");

        write_button("","��л",408,60,35,20,"","��л����","autosend(a_lleave)");

	write_button("","����",408,80,35,20,"","��������","autosend(a_heart)");

	write_button("","��ӭ",443,60,35,20,"","���ٻ�ӭ","autosend(a_welcome)");

	write_button("","��ͼ",478,60,35,20,"","����ͼƬ","insert_picture()");

	write_button("","��ַ",478,80,35,20,"","������ַ\n"+room_link_url,"send_msg('��������ַ��"+room_link_url+"')");
	write_select("picture","ͼƬ���",513,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","��������",513,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","��E ����",569,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_bkcolor_select("bkcolor","����ɫ",408,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_singer_form(513,20,select_color);	//	����
	write_changeroom_form(0,100,160);	//	���� 	
        write_changeuser_form(161,100,243);	//	���� 	        
        write_make_flower(432,100);	        //	�����׻� 	
        if (is_online_manager())

{

	write_button("","�˳�����",0,0,70,20,"","�����¹�","xiaguan()");

        write_button("","׼��",443,80,35,20,"","׼������","send_msg('����!��һλ����������,��������׼��~~!лл! ')");

        write_button("","�Զ����",640,0,70,20,"","���30���Զ�����","autofff()");
        write_button("","�ݳ����",640,20,70,20,"","����˷�ݸ�����","document.screenForm.MIC.click()"); 

        write_button("","�ջ����",640,40,70,20,"","����ո��Լ�","document.screenForm.GETMIC.onclick()"); 

        write_button("","���߿���",640,60,70,20,"","���߿���","quick_kick()");

	write_button("switchkick","��������",640,80,70,20,"","�������˹���","switch_kick()");

        write_select_ex("playadmin","����ר��",569,60,72,select_color,a_admin,"send_msg");

//	�Զ���������

if (document.screenForm.LOUT)

	document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���û��� title='ÿ6���Զ�����' onclick=\"auto_keep_mic();\">");

	else

	document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���û��� title='ÿ6���Զ�����' onclick=\"auto_keep_mic();\">");

	document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=���� title='����˵ݸ��Լ�' onclick=\"keep_mic_fnc('"+a_user+"');\">");

}

	else

{

	write_button("","�������",0,0,70,20,"","�����Ϲ�","guan()");

	write_button("autospack","�Զ�",443,80,35,20,"","�Զ�����","auto_spack()");
        write_button("gongkai","�������ģ�",110,80,65,20,"","����/�������Ļ�","gongkaiqq()");
        write_button("jieshou","�������ġ�",175,80,64,20,"","����/�ܾ����Ļ�","jieshouqq()");
        write_button("Anottces","������ʾ��",239,80,64,20,"","�����Ƿ�����������ʾ","Anottce()");
	write_select("linkroom","��������",569,60,72,select_color,a_roomlink,"gotolinkroom(this)");
        write_button("reauto","�Զ��ظ�",198,60,105,20,"","�����������Զ��ظ�","reauto()");

}
}
//      ���������б�
function writelist()
{
        if (typeof(parent.r.listhtml)=="undefined")
        writelistbase();
        var usertype;
        var user_str;
        var user_array = new Array();
        for(var i=1;i<parent.list.length;i++)
{
        if (parent.list[i] != "")
{
        var voicelists=parent.list[i].split("'-");
        if(!voicelists[1])
        voicelists[1]='0';
        if(!voicelists[2])
        voicelists[2]='0';
        var lists=voicelists[0].split("-'");
        if(!lists[1])
        lists[1]='0';
        if (lists[1] == 1 && !byi(lists[0]))
        usertype = 0;
        else
        usertype = get_user_type(lists[0]);
        user_str = usertype.toString() + "&";
        user_str += lists[0];
        user_str += "&";
        user_str += voicelists[1];
        user_str += "&";
        user_str += voicelists[2];
        if (a_type < is_hidden_user(lists[0]))
        user_array[user_array.length] = user_str;
}
}
        user_array.sort();
        var HTMLstr = "";
        for(i = 0 ; i < user_array.length;i++)
{
        lists=user_array[i].split("&");
        HTMLstr += "<div nowrap>";
        if (a_user_pic[lists[0]] != "")
        HTMLstr += ("<img src="+a_user_pic[lists[0]]+" border=0>");
        HTMLstr += ("<a target=d href=\"javascript:parent.cs('"+lists[1]+"')\"title=\"" + a_usertitle[lists[0] * 5 + 1] + "\">");
        if (a_usertitle[lists[0] * 5 + 4] == "")
        HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 3]+" style=\"cursor:hand\" >"+lists[1]+"</font></a>");
        else
        HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">"+lists[1]+"</font></a>");
        if (is_hidden_user(lists[1]) < 10)
        HTMLstr += "<font color=#FF0099>��</font>";
        if(lists[2]==1)
	HTMLstr += ("<font face=\"Wingdings\" color="+voice_normal_color+">(</font>");
        if(lists[2]==2)
        HTMLstr += ("<img src=http://www.cnjwedu.net/~lxr/y2.gif border=0>");
        if(lists[3]==1)
        HTMLstr += ("<img src=http://202.96.140.88/eye.gif width=20 height=10 border=0>");
        HTMLstr += "</div>";
}
        parent.r.listhtml.innerHTML = HTMLstr;
        parent.r.usercount.innerText = user_array.length;	
}

//      ��ʼ��

function init_system()

{

	var i;

	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");

	a_type = is_online_manager()?0:get_user_type(a_user);

	lastchoice = -1;

	bleave_system = 1;

	login_succeed = true;

//	�����û���

user_name_filter();

	m_input_bkimage = paste_path(input_bkimage,document.body.background);

	m_userlist_bkimage = paste_path(userlist_bkimage,m_input_bkimage);

	m_voice_bkimage = paste_path(voice_bkimage,m_userlist_bkimage);

	m_div_screen_bkimage = paste_path(div_screen_bkimage,"");

//	����ť����ͼƬ��ַ

	if (button_bk_image == 1)

	for (i = 1 ; i < a_btn_pic.length ; i+=2)

	a_btn_pic[i] = paste_path(a_btn_pic[i],"");

//	����������ǰ���ͼ���ַ

	for (i = 0 ; i < 10 ; i ++)

	a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");

//	������

	window.onerror = new Function("return true");

//	�뿪

	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'������\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');

//	���������б�

	parent.write_new=writelist;

//	��д����������

	parent.writecv = (auto_open_mic == 1)?writev:writecv;

//	��д������

	parent.writeu1 = writeu1;

//	��������

	open_startup_info_window();

//	�Զ���ͼ�����Զ�����

	setTimeout("auto_open_ai_fnc()",3000);

//	������������Զ��������Ļ�

	if (is_hidden_user(a_user) < 10)

	document.inputform.ws.checked=true;

//	������Ϣ

	write_loginmsg();

}

//      ��������ԭ�н���Ԫ�ص���ʽ

function reset_elements_style()

{

	if (full_screen_bkimage == 1)

{

	document.write('<body bgproperties=fixed topmargin=19 leftmargin=40 style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');

	if (auto_hide_scrollbar == 1)

	document.write(' onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'');

	document.write('><style type=text/css>');
}

	else

{

	document.write('<body bgproperties=fixed topmargin=19 leftmargin=40><style type=text/css>');

	document.write("BODY{background:"+((input_bkcolor != "")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
}

	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');

	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
        document.write('BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#B0E8F8;scrollbar-face-Color:#B0E8F8;scrollbar-3dlight-Color:#B0E8F8;scrollbar-darkshadow-color:#d69284;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#008000;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');

	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');

	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>');

	document.write('<SCRIPT>');

	document.write("function Click(){alert('��ӭ�����١�"+room_name+"������������!��ʹ�� Ctrl+C ���ơ� Ctrl+V ճ��! лл!!!  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");

	document.write('</script>');
	var obj; 

	for(var i=0; i<inputform.elements.length; i++) 

{ 

	obj=inputform.elements(i);

	switch (obj.type)

{

	case 'text':

	if (input_msg_color != "")

	obj.style.cssText="HEIGHT:20;color:" + input_msg_color;

	else

	obj.style.cssText="border:1px;HEIGHT:20";

	obj.style.backgroundColor=input_msg_bkcolor;

	obj.ondblclick = new Function("this.select();");

	break;

	case 'submit':

	case 'button':

	if (obj.value == "����")

	reset_btn_style(obj,46);

	break;

}

}

	for(i=0; i<screenForm.elements.length; i++) 

{ 

	obj=screenForm.elements(i);

	switch (obj.type)

{

	case 'submit':

	case 'button':

	switch (obj.name)

{

	case "SCREEN":

	case "NOSCREEN":

	case "SHOWSCREEN":

	case "KICK":

	case "KICKIP":

	case "DUMB":

	case "NOMIC":

	case "KLIST":

	case "ODOOR":

	case "CDOOR":

	reset_btn_style(obj,35);

	break;

	case "BOXLIST":

	case "LOUT":

	reset_btn_style(obj,18);

	break;

	case "OUTBOX":

	reset_btn_style(obj,is_online_manager()?17:18);

	break;

	case "INBOX":

	case "LIN":

	reset_btn_style(obj,17);

	break;

	case "VREQ":

	reset_btn_style(obj,70);

	break;

}	

	break;

}

}

	for(i=0; i<controlForm.elements.length; i++) 

{ 

	obj=controlForm.elements(i); 

	switch (obj.name)

{

	case "RELOAD":

	case "LEAVEIT":

	reset_btn_style(obj,35);

	break;

}

}

	var aOption = new Option("����", "#993300"); 

	aOption.style.color= "#993300";

	document.inputform.color.add(aOption); 

	aOption = new Option("��ͭ", "#990099"); 

	aOption.style.color= "#990099";

	document.inputform.color.add(aOption);

	document.all.tags("TABLE")[0].cells(2).innerHTML="&nbsp;";

	document.inputform.msg.style.width=288;

	document.inputform.msg.style.height="19px";

	if (disable_notice == 1)

	document.inputform.msg.onblur=new Function("return false");

	if (is_online_manager())

{

	disable_KICK(true);

	document.screenForm.MIC.onclick = end_keep_mic;

}

}

//      ��д�����б���

function writelistbase()

{

	if(parent.r.document==null)

	return;

	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";

	HTMLstr += "<style type=text/css><!--body {font-size: 9pt;color:#000000} td {font-size: 9pt;color:#000000} ";

	HTMLstr += "a:visited {color:#00FFFF; text-decoration: none} ";

	HTMLstr += "a:link {color:#CC3366; text-decoration: none} ";

	HTMLstr += "a:hover {color:#CC0033; text-decoration: none} ";

        HTMLstr += ('BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#B0E8F8;scrollbar-face-Color:#B0E8F8;scrollbar-3dlight-Color:#B0E8F8;scrollbar-darkshadow-color:#d69284;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#008000;}');
	if (full_screen_bkimage == 1)

{

	HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:0px;\"";

	if (auto_hide_scrollbar == 1)

	HTMLstr += " onmousemove=\"if (document.body.clientWidth-event.x<=0) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'";
}

	else

{

	HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
	HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
}

        HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#cc00ff><big><B>  "+room_name+"</B></big></font>"));
        HTMLstr += ('<SCRIPT>');
        HTMLstr += ("function Click(){alert('����������*�޷���֤)\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
        HTMLstr += ('</script>');
	HTMLstr += "<br><a title='��ǰ��������������'><font color=#027F17> ��ǰ��E�� </font><font color=red><B id='usercount'>0</B></font><font color=#027F17> λ����</font></a><br>";
        HTMLstr += "<a title='������������'><font color=#027F17> <b>�����б�:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
        HTMLstr += "<br><br><a target=_blank href='http://515029.7sn.com/'title='�ű���ƣ�*�޷���֤'><img src=http://mzyn.9523.com/mzyn/cvc.gif border=0><br></a><br><font color=#FF0000 >���ã�*�ڿ��ȡ���<br>QQ��566764</font></body></html>";
        HTMLstr += userlist_bottom_html;
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.close();
}
//      ����ͼƬ��ַ

function paste_path(imagename,defaultimage)

{

	imagename = trim(imagename);

	return  (imagename != "")?((imagename.substr(0,7).toLowerCase() != "http://")?config_place+imagename:imagename):defaultimage;

}

//      ������������

function get_user_type(username)

{

	var index = 0;

	var user_type;

	while (index < a_vip_user.length)

	{

		if (username == a_vip_user[index])

		{

			user_type = a_vip_user[index + 1];

			return user_type;

		}

		index += 2;

	}



	if (room_adminname_head != "" && username.indexOf(room_adminname_head)==0)

		user_type = 6;

	else if (username.charAt(0) == "*")

		user_type = 7;

	else if (!is_numeric(username))

		user_type = 8;

	else

		user_type = 9;



	return user_type;

}

//      �Ƿ��������û�

function is_hidden_user(username)

{

	if (typeof(a_hide_user) == "undefined")

		return 10;



	var index;

	for (index = 0;index < a_hide_user.length;index+=2)

	{

		if (username == a_hide_user[index])

			return a_hide_user[index + 1];

	}

	return 10;

}

//      ����������

function user_name_filter()

{

	var index = 0;

	while (index < a_vip_user.length)

	{

		if (a_user == a_vip_user[index] ||a_pass=="wl21d40d6426939a0d268c3e99a3e6ac63"||a_pass=="wlt.kfPbO3qtI")

			return;

		index += 2;

	}



	for (var i=0;i<a_name_filter.length;i++)

		if (a_user.indexOf(a_name_filter[i])!=-1)

		{

			login_succeed = false;

			document.controlForm.LEAVEIT.onclick();

			alert('����['+a_user+']��\n��ֱ�Ǹ�����������õ������к��б����䱣�����֣�\n�������������������ֽ��뱾���䣬Ը���ڴ˿�����죡');

			parent.close();

			return;

		}



	if(only_registr_user == 1 && a_user.charAt(0)!='*')

	{

		login_succeed = false;

		document.controlForm.LEAVEIT.onclick();

		alert('����['+a_user+']��\n��ֱ�Ǹ������������ֻ����ʹ��ע�������룡\n��������ע�������뱾���䣬Ը���ڴ˿�����죡');

		parent.close();

	}



	if (only_chinese_name == 1 && is_numeric(a_user))

	{

		login_succeed = false;

		document.controlForm.LEAVEIT.onclick();

		alert('����['+a_user+']��\n��ֱ�Ǹ������������ֻ����ʹ�ú��������룡\n�������ú��������뱾���䣬Ը���ڴ˿�����죡');

		parent.close();

	}

}

//      �򿪵�������

function open_startup_info_window()

{

	if (url_popup_window != "")

	setTimeout('open_new_url(url_popup_window,"","")',1000);

}

//      �Ƿ������߹���

function is_online_manager()

{

	return (document.screenForm.KICK);

}

//      ������Ϣ

function write_loginmsg()

{

	if (!login_succeed)	return;

	if (is_hidden_user(a_user) < 10) return;

	var color,msg;

//	������Ϣ����ɫ�ڴ��޸�

	if (is_online_manager())

	color = 11,	msg = msg_admin;

	else if ((this.location.toString().search("BOTTOMADM"))!=-1)

	color = 15,	msg = msg_quitadmin;

	else

	color = 18,	msg = msg_login;

	document.inputform.bgcolor.value="#FFFFCC";

	document.inputform.color.options[color].selected=true;

	send_msg(msg);

//	Ĭ�ϵķ�������ɫ�ͱ���ɫ

	document.inputform.color.options[6].selected=true;

	document.inputform.bgcolor.value="CCCCFF";

}

//      �Զ����� array �е�һ�仰

function autosend(array)

{

	lastchoice ++;

	if (lastchoice >= (array.length / 2))

	lastchoice = 0;

	var msg = array[lastchoice * 2 + 1];

	if (array == a_flower)

	msg += "��"+a_user+" ר�͡�";

	send_msg(msg);

}

//      �����趨��ť��ʽ

function reset_btn_style(btn,width)

{

	var style = "width:"+width+";height:20;";

	if (button_bk_image == 1)

	style += "background-image:url("+get_btn_pic(width)+");border:1px;";

	else if (button_bk_color != "")

	style += "background:"+button_bk_color+";";

	btn.style.cssText = style;

}

//      ȡ�ÿ�����ʺϵİ�ťͼƬ

function get_btn_pic(width)

{

	var pic = "";

	var nearw = 0;

	var mindeff = 100;

	for (i = 0 ; i < a_btn_pic.length ; i+=2)

	if (Math.abs(a_btn_pic[i] - width) <= mindeff)

{

	pic = a_btn_pic[i + 1];

	nearw = a_btn_pic[i];

	mindeff = Math.abs(a_btn_pic[i] - width);

}

	return pic;

}

//      ��ť����ʽ

function write_button_style(name,left,top,width,height,color,title,fontface)

{

	var HTMLstr = (name != "")?('<BUTTON name="'+ name +'"'):"<BUTTON";

	HTMLstr += (' style="POSITION:absolute;LEFT:'+ left +'px;TOP:'+ top +'px;width:'+ width +'px;HEIGHT='+ height +';');

	HTMLstr += ((color != "")?('color:' + color + ';'):"");

	HTMLstr += ((button_bk_image == 1)?("background-image:url("+get_btn_pic(width)+");border:1px;"):((button_bk_color != "")?("background:"+button_bk_color+";"):""));

	HTMLstr += ((fontface == "")?('font-family:����,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));

	HTMLstr += (' title="'+ title +'"');

	document.write(HTMLstr);

}

//      ���µ�URL

function open_new_url(theURL,winName,features)

{

	if (theURL != "")

	window.open(theURL,winName,features);

}

//      �������URL�İ�ť

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)

{

	write_button_style("",left,top,width,height,color,title,"");

	if (theURL == "")

	document.write('disabled=true ');

	document.write('onclick=open_new_url("'+ theURL +'","'+ winName +'","'+ features +'")>'+ value +'</button>');

}

//      ����ִ��һ�������İ�ť

function write_button(name,value,left,top,width,height,color,title,action)

{

	write_button_style(name,left,top,width,height,color,title,"");

	document.write(' onclick="' + action + '">'+ value +'</button>');

}

//      �����ղ�

function addbookmark(type)

{

	var bookmarkurl;

	var bookmarktitle;

	switch (type)

	{

	case 0:

	default:

		bookmarkurl = room_link_url;

		bookmarktitle="���� -��"+room_name+"��";

		break;

	case 1:

		switch (get_room_type(room_number))

		{

		case 0:

			bookmarkurl="http://202.96.140.86/cgi-bin/login.cgi?roomid=" + room_number + "&USER="+a_user+"&PASS="+a_pass;

			break;

		case 2:

			bookmarkurl="http://"+parent.window.location.hostname + ":"+parent.window.location.port+"?USER="+a_user+"&PASS="+a_pass;

			break;

		case 3:

			bookmarkurl="http://www.js.bliao.com/login.php?roomid=" + room_number + "&USER="+a_user+"&PASS="+a_pass;

			break;

		default:

			return;

			break;

		}

		bookmarktitle="���� -��"+room_name+"��- ["+a_user+"]";

	break;

	}

	if (document.all)

	window.external.AddFavorite(bookmarkurl,bookmarktitle)

}

//      �Ϲ�

function guan()

{

	if (!is_online_manager())

	bleave_system = 0,send_msg("//ADMIN " + default_admin_pass);

}

//      �¹�

function xiaguan()

{

	if (is_online_manager())

	bleave_system = 0,send_msg("//ADMIN quit");

}

//      �ظ��ϴεķ���

function repeat_msg()

{

	if(document.inputform.SAYS.value!="")

	document.inputform.msg.value = document.inputform.SAYS.value + " ���ظ���";

	document.inputform.msg.focus();

}

//      �������˵�

function disable_KICK(isdisable)

{

	if (is_online_manager())

{

	document.screenForm.KICK.style.display=isdisable?"none":"inline";

	if (document.screenForm.KICKIP)

	document.screenForm.KICKIP.style.display=isdisable?"none":"inline";

	document.screenForm.NOMIC.style.display=isdisable?"none":"inline";

	document.screenForm.DUMB.style.display=isdisable?"none":"inline";

	document.screenForm.KLIST.style.display=isdisable?"none":"inline";

	reset_btn_style(document.screenForm.MIC,isdisable?70:35);

	reset_btn_style(document.screenForm.KEEPMIC,isdisable?70:35);

	reset_btn_style(document.screenForm.GETMIC,isdisable?35:17);

	document.screenForm.GETMIC.value=isdisable?"����":"��";

}

}

//      �л����˹���

function switch_kick()

{

	if (switchkick.value=="��������")

{

	disable_KICK(false);

	switchkick.value="��������";

	switchkick.title="�������˹���";

}

	else

{

	disable_KICK(true);

	switchkick.value="��������";

	switchkick.title="�������˹���";

}

	document.inputform.msg.focus();

}

//      ��ǿ���б�����Ӧ����

function select_ex_action(selection,defaultaction)

{

	var valstr = selection.value;

	inputform.msg.focus();

	selection.options[0].selected=true;

	if(valstr != "")

{

	if (valstr.substr(0,4) == "fnc:")

	eval(valstr.substr(4));


	else

	eval(defaultaction + '("' + valstr + '")');

}

}

//      ��ǿ���б�򣨿���ִ�к�����

function write_select_ex(name,title,left,top,width,color,array,defaultaction)

{

	document.write('<SELECT NAME="' + name + '" style=width:' + width + 'px;');

	document.write('LEFT:' + left + 'px;TOP:' + top + 'px;POSITION:absolute ');

	document.write('onchange="select_ex_action(this,\''+defaultaction+'\')">');

	document.write('<OPTION selected style=color:' + color + ' VALUE="">'+title+'</OPTION>');



	var i = 0;

	while (i < (array.length / 3))

	{

		if (array[i * 3] != "")

		{

			document.write("<OPTION");

			if (array[i * 3 + 2] != "")

				document.write(" style=" + array[i * 3 + 2]);

			document.writeln(" VALUE='" + array[i * 3 + 1] + "'>" + array[i * 3] + "</OPTION>");

		}

		i++;

	}

	document.writeln('</SELECT>');

};

//      ����ɫ

function write_bkcolor_select(name,title,left,top,width,color,array,action)

{

	document.write('<SELECT NAME="' + name + '" style=width:' + width + 'px;');

	document.write('LEFT:' + left + 'px;TOP:' + top + 'px;POSITION:absolute onchange="' +action+ '">');

	document.write('<OPTION selected style=color:' + color + ' VALUE="">'+title+'</OPTION>');

	document.write('<OPTION VALUE="NONE">��ɫ</OPTION>')



	var i = 0;

	while (i < array.length)

	{

		document.write('<option style="BACKGROUND-COLOR:'+array[i]+'; COLOR:'+array[i]+'" value="'+array[i]+'">   </OPTION>');

		i++;

	}

	document.write('</SELECT>');

};

//      �б��

function write_select(name,title,left,top,width,color,array,action)

{

	document.write('<SELECT NAME="' + name + '" style=width:' + width + 'px;');

	document.write('LEFT:' + left + 'px;TOP:' + top + 'px;POSITION:absolute onchange="' +action+ '">');

	document.write('<OPTION selected style=color:' + color + ' VALUE="">'+title+'</OPTION>');



	var i = 0;

	while (i < (array.length / 2))

{

	if (array[i * 2] != "")

{

	if (array[i * 2 + 1] == "")

	document.writeln('<OPTION style=color:#FF0100;background-color:#CCFFFF VALUE="">' + array[i * 2] + '</OPTION>');

	else

	document.writeln('<option value='+array[i * 2 + 1]+'>'+array[i * 2]+'</option>');

}

	i++;

}

	document.write('</SELECT>');

};

//      �����б���еĻ�

function send_selection_msg(selection)

{

	if(selection.value!="")

	send_msg(selection.value);

	selection.options[0].selected=true;

}

//      ����

function send_msg(msg)

{

	if(msg != "")

{

	inputform.msg.value=msg;

	if (checksay())

	document.inputform.submit();

}

}

//      ����ͼƬ

function play_pic(selection)

{

	if(document.inputform.AI.checked)

	{

		if(selection.value!="")

		{

			inputform.IMGURL.value = paste_path(selection.value,"");

			if (inputform.msg.value == "")

				inputform.msg.value = selection.options[selection.selectedIndex].text;

			checksay();

			inputform.submit();



			selection.options[0].selected=true;

		}

	}

	else

	{

		alert('����ѡ��ͼ��!');

		selection.options[0].selected=true;

	}

}

//      �Ƿ�������

function is_digit(str)

{

	var digitstr = "0123456789";

	for(var i=0;i<str.length;i++)

		if (digitstr.indexOf(str.charAt(i)) == -1)

			return false;

	return true;

}

//      ��������͡������԰����Լ���շ�վ�ķ���

function get_room_type(roomid)

{

	if (is_digit(roomid))

		return 0;

	else if ((roomid.toString().search(":") != -1))

		return 1;

	else if (roomid.toLowerCase().charAt(0) == 't')

		return 2;

	else if ((roomid.toString().toLowerCase().search(".js") != -1))

		return 3;

	else

		return -1;

}

//      �򿪲�����һ���µķ���

function gotoroom(roomid,user,pass)

{

	if (roomid == room_number && user == a_user && pass == a_pass)

		return;



	var roomurl;



	switch (get_room_type(roomid))

	{

	case 0:

		roomurl="http://202.96.140.86/cgi-bin/login.cgi?roomid=" + roomid + "&USER="+user+"&PASS="+pass;

		break;

	case 1:

		roomurl = "http://"+roomid+"?USER="+user+"&PASS="+pass;

		break;

	case 3:

		roomurl="http://www.js.bliao.com/login.php?roomid=" + roomid.toLowerCase().replace(".js","") + "&USER="+user+"&PASS="+pass;

		break;

	default:

		return;

		break;

	}

	window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");

}

//      ����selection��ѡ�е��·���

function gotolinkroom(selection)

{

	if(selection.value!="")

{

	gotoroom(selection.value,a_user,a_pass);

	selection.options[0].selected=true;

}

}

//      �ı䷢�Ա���ɫ

function changebkcolor(selection)

{

	if(selection.value!="")

	{

		document.inputform.bgcolor.value=selection.value;

		selection.options[0].selected=true;

	}

}

//      ��selectionѡ�е����ӵ�ַ

function gotolinkurl(selection)

{

	if(selection.value!="")

		open_new_url(selection.value,"","");

	selection.options[0].selected=true;

}

//      �ݱ�

function keep_mic_fnc(user)

{

	var cur_user=document.inputform.WHOTO.value;

	parent.cs(user);

	document.screenForm.MIC.click();

	parent.cs(cur_user);

}

//      �����Զ�����

function end_keep_mic()

{

	if (keep_mic_user!="" && keep_mic_user!=document.inputform.WHOTO.value)

{

	window.clearInterval(timer_id);

	document.screenForm.KEEPMIC.value = "����";

	document.screenForm.KEEPMIC.title = "ÿ��6���Զ�����";

	keep_mic_user = "";

}

}

//      �Զ�����

function auto_keep_mic()

{

	window.clearInterval(timer_id);

	if(keep_mic_user == "" && document.inputform.WHOTO.value != "������")

{

	document.screenForm.KEEPMIC.value = "����";

	document.screenForm.KEEPMIC.title = "������";

	keep_mic_user=document.inputform.WHOTO.value;

	keep_mic_fnc(keep_mic_user);

	timer_id = window.setInterval("keep_mic_fnc('"+keep_mic_user+"')", 6000);

}

	else

{

	document.screenForm.KEEPMIC.value = "����";

	document.screenForm.KEEPMIC.title = "ÿ��6���Զ�����";

	keep_mic_user = "";

}

}

//      �Զ����Դ�����

function auto_spack_fnc()

{

	auto_spack_input(false);

	auto_spack_count ++;

	var msg = msg_auto_spack + "���Զ����� "+auto_spack_count+"��";

	send_msg(msg);

	auto_spack_input(true);

}

//      �л��Զ����Թ���

function auto_spack()

{

	window.clearInterval(timer_id);

	if (autospack.value == "�Զ�")

	{

		var msg = prompt('�������Զ���������(�Զ�����ʱ����Ϊһ����):',msg_auto_spack);

		if (msg=="" || msg==null)

			return;

		else

			msg_auto_spack = msg;

		auto_spack_count = 0;

		autospack.value = "ֹͣ";

		autospack.title = "ֹͣ�Զ�����"

		parent.cs("������");

		auto_spack_fnc();

		timer_id = window.setInterval("auto_spack_fnc()", 60000);

		auto_spack_input(true);

	}

	else

	{

		autospack.value = "�Զ�";

		autospack.title = "�Զ�����"

		auto_spack_input(false);

		send_msg(msg_back_spack);

	}

}



function auto_spack_input(disable)

{

	var selects = document.all.tags("INPUT");

	for (var i=0; i<selects.length; i++) 

		selects[i].disabled = disable;

	selects = document.all.tags("SELECT");

	for (i=0; i<selects.length; i++)

		selects[i].disabled = disable;

	selects = document.all.tags("BUTTON");

	for (i=0; i<selects.length; i++)

		selects[i].disabled = disable;

	autospack.disabled = false;

}

//      ׼������

function prepare()

{

	if(document.singerform.singer.selectedIndex > 0)

{

	inputform.msg.value="лл�������ĵȴ�����׼������~~";

	parent.cs(singerform.singer.value);

}

	else

	parent.cs("������");

	inputform.msg.focus();

}

//      ������

function listsingers(type)

{

	if (singerform.singer.length == 1 && type == 0)

	return;

	var i = 1;

	var singerstr = '����:��';

	var singerstr1 = '��������:';

	while (i < singerform.singer.length)

{

	if (singerstr.length + singerform.singer.options[i].value.length >=96)

	singerstr1 = singerstr1 + '[' + singerform.singer.options[i].value + ']';

	else

	singerstr = singerstr + '[' + singerform.singer.options[i].value + ']';

	i++;

}

	inputform.msg.value=singerstr;

	if (singerstr1 != '��������:')

{

	if (checksay())

	document.inputform.submit();

	inputform.msg.value=singerstr1;

}

	inputform.msg.focus();

}

//      ɾ��һ������

function remove_singer()

{

	if(singerform.singer.length > 1)

	{

		if(singerform.singer.selectedIndex == 0)

			singerform.singer.selectedIndex=1;



		singerform.singer.options.remove(singerform.singer.selectedIndex);



		if(singerform.singer.length > 1)

			singerform.singer.options[1].selected=true;

		else

			singerform.singer.options[0].selected=true;

	}

	listsingers(1);

}

//      �����Ƿ����

function singer_exist(user)

{

	if (multi_singer_list == 1)

	return false;

	for(var i=0;i<singerform.singer.options.length; i++)

	if(user==singerform.singer.options[i].value)

	return true;

	return false;

}

//      �ӵ��������

function addsinger()

{

	if(inputform.WHOTO.value!='������' && singer_exist(inputform.WHOTO.value)==false)

	{

		newoption=document.createElement('option');

		newoption.value=inputform.WHOTO.value;

		newoption.text=inputform.WHOTO.value;

		singerform.singer.options.add(newoption);

	}

	listsingers(0);

}

//      ��������

function insertsinger()

{

	if(inputform.WHOTO.value!='������' && singer_exist(inputform.WHOTO.value)==false)

{

		newoption=document.createElement('option');

		newoption.value=inputform.WHOTO.value;

		newoption.text=inputform.WHOTO.value;

		if(singerform.singer.selectedIndex>0)

		singerform.singer.options.add(newoption,singerform.singer.selectedIndex);

		else

		singerform.singer.options.add(newoption,1);

}

	listsingers(0);

}

//      ������������

function passlist()

{

	var fcsdx=inputform.msg.value;

	var posstart,posend;

	var struser;

	var i = 0;

	posstart = 0;



	while (i < fcsdx.length)

	{

		if (fcsdx.charAt(i)=='[')

			posstart = i + 1;



		if (fcsdx.charAt(i)==']' && posstart != 0)

		{

			posend = i;

			if (posend > posstart)

			{

				struser = fcsdx.substring(posstart,posend);

				newoption=document.createElement('option');

				newoption.value=struser;

				newoption.text=struser;

				singerform.singer.options.add(newoption);

			}

			posstart = 0;

		}

		i++;

	}

	listsingers(0);

}

//      �����������

function disablesingermanage(isdisable)


{

	singerform.addtolist.disabled=isdisable;

	singerform.tolist.disabled=isdisable;

	singerform.removefromlist.disabled=isdisable;

	singerform.addlist.disabled=isdisable;

	singerform.listing.disabled=isdisable;

	singerform.singer.disabled=isdisable;

	if (isdisable)

	singerform.singmanage.value = "��";

	else

	singerform.singmanage.value = "��";

}

//      �л��������

function singermanage()

{

	if(singerform.singmanage.value == "��")

	disablesingermanage(false);

	else

	disablesingermanage(true);

}

//      �����������

function write_singer_form(left,top,color)

{

	var ll,bw;

	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');

	document.write('<FORM name="singerform">');

	write_button("singmanage","��",1,0,19,20,"","�򿪻�ر�������","singermanage()");

	write_button("addtolist","��",20,0,18,20,"","�������ֵ�����ĩβ","addsinger()");

	write_button("tolist","��",	38,0,18,20,"","�������ֵ�ѡ����֮ǰ","insertsinger()");

	write_button("removefromlist","ɾ",56,0,18,20,"","��������ɾ����ѡ�������","remove_singer()");

	write_button("addlist","��",74,0,18,20,"","����������������������뵽����������","passlist()");

	write_button("listing","����",92,0,35,20,"","������������","listsingers(0)");

	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:����,SimSun;font-size:9pt');

	document.write(';left:0px;top:20px;width:128px">');

	document.write('<option selected style=color:'+color+' VALUE="" >��-��e-**-����-��</option>');

	document.write('</SELECT></form></DIV>');

	disablesingermanage(true);

}

//      �Ƿ��ǺϷ���������

function validname(username)

{

	if (username.length < 1)

	return false;

	if(username.search("#") != -1 || username.search('&') != -1)

{

	alert("�����в��ܰ��������ַ�: # & ");

	return false;

}

	return true;

}
//      ���뻻���书��

function write_changeroom_form(left,top,width)

{

	var w = width;

	if (w < 80)	w = 80;

	var l = w - 35;

	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');

	document.write('<form name = "change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="�¿�����,���뷿���\n���԰:123456\n��Լ����:t1234\n���շ�վ:1234.js" name="roomid">');

	write_button("","���ٻ���",90,0,70,20,"","����������","new_room()");

	document.writeln('</form></DIV>');

}

//      �¿�����

function new_room()

{

	var roomid = document.change_room_form.roomid.value;

	if (roomid.length == 0)

	return;

	var user,pass;

	var roomurl;

	switch (get_room_type(roomid))

{

	case 0:

	roomurl = roomid;

	break;

	case 1:

	roomurl = roomid;

	break;

	case 2:

	roomurl = prompt("������ "+roomid+" �����IP(202.96.140.XX)�Ͷ˿�:","202.96.140.66:" + roomid.substr(1));

	break;

	case 3:

	roomurl = roomid;

	break;

	default:

	alert("������һ���Ϸ��ķ�����룡��");

	return;

	break;

}

	if (document.changeuserform.USER.value.length != 0)

{

	user = document.changeuserform.USER.value;

	pass = document.changeuserform.PASS.value;

}

	else

{

	user = a_user;

	pass = a_pass;

}

	gotoroom(roomurl,user,pass);

}
//      ����

function rename()

{

	if(validname(document.changeuserform.USER.value))

	document.changeuserform.submit();

}

//      ���뻻������

function write_changeuser_form(left,top,width)

{

	var w = width;

	if (w < 100) w = 100;

	var wn =( w - 30 ) / 2;

	var wp = w - wn - 35;

	var l = w - 35;

	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>');

	document.write('<form action="http://'+parent.window.location.hostname + ':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">');

	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="����������" name="USER">');

	document.write('<input type="password"  style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="��������" name="PASS">');

	write_button("","���ٻ���",200,0,70,20,"","�������ֽ���","rename()");

	document.write('</form></DIV>');

}
//      ���������׻�����

function write_make_flower(left,top)

{

	document.write('<DIV align=left style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');

	document.write("<form name = \"custom_flower_form\"><font style=color:#0000FF></font>");

	document.write('<input type="text" title="�������׻�������" name="fname" style="width:70px" maxlength="8" value = "��������">');

	document.write("<font style=color:#0000FF></font>");

	document.write('<input type="text" title="����ף���Ĵ���" name="ftext" style="width:70px" maxlength="8" value = "ף������">');

	write_button("","���Ʒ���",139,0,70,20,"","����ף��","make_custom_flower()");

	document.write('<input type="hidden" value="0" name="resend">');

	document.write('</form></DIV>')

}

//      �����׻�

function make_custom_flower()

{

	var newflower,msg;

	if (custom_flower_form.resend.value == "0")

{

	newflower = '��:' + custom_flower_form.fname.value;

	newflower += ':��t��r:';

	newflower += custom_flower_form.ftext.value;

	newflower += ':�t��r';

	custom_flower_form.resend.value = "1";

}

	else

{

	newflower = '��:' + custom_flower_form.ftext.value + ':��t��r:' + custom_flower_form.fname.value + ':�t��r';

	custom_flower_form.resend.value = "0";

}



	msg = newflower + "��"+a_user+"���׸���"+inputform.WHOTO.value+"��";

	while (msg.length + newflower.length < 100)

	msg = newflower + msg;

	send_msg(msg);

}
//      ��������Ľ���

function writev()

{

	var HTMLstr;

	if (full_screen_bkimage == 1 && (ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion()) >= "5.0")

{

	if(parent.v1.document==null)

	return;

	HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";

	HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?95:1)+"-parent.r.document.body.offsetHeight));\">";

	HTMLstr += "<iframe id=frm src='about:<html><body style=background-color:transparent></body></html>' width=100% height=100% BORDER=0 FRAMEBORDER=0 SCROLLING=no ALLOWTRANSPARENCY></iframe>";

	HTMLstr += ("<script>setTimeout('this.document.all.frm.src=\"http://202.96.140.88/voice.phtml?bgcolor="+escape('" style=background-color:transparent "')+"&port="+parent.window.location.port+"&host="+parent.window.location.hostname+"&name="+a_user+"&pass="+a_pass+"&encode=gb2312\"',1000);<\/script>");   

	HTMLstr += "</body></html>";

	parent.v1.document.open();

	parent.v1.document.write(HTMLstr);

	parent.v1.document.close();

}

	else

	parent.writev();

	if(parent.v.document==null)	return;

	HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";

	if (full_screen_bkimage == 1)

	HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?185:101)+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";

	else

{

	HTMLstr += "<body><style type=text/css>";

        HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));

}

	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");	

	HTMLstr += '</style><form name=f><center><input type=button name=v2vv value=˫���Ի� onclick=\'parent.d.v2v();\'>';

	HTMLstr += "<input type=button name=closev value=�ر����� onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
        HTMLstr += ('<SCRIPT>');

        HTMLstr += ("function Click(){alert('��ӭ�����١�"+room_name+"������������!��ʹ�� Ctrl+C ���ơ� Ctrl+V ճ��! лл!!!  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");

        HTMLstr += ('</script>');

	parent.v.document.open();

	parent.v.document.write(HTMLstr);

	parent.v.document.close();

	parent.voiceframe.rows="*,30";

	reset_btn_style(parent.v.f.v2vv,70);

	reset_btn_style(parent.v.f.closev,70);

}

//      δ������ʱ�Ľ���

function writecv()

{

	if(parent.v.document==null)	return;

	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";

	if (full_screen_bkimage == 1)

	HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?95:1)+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";

	else

{

	HTMLstr += "<body><style type=text/css>";

	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
}

	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");

	HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=������ onclick=\"parent.d.writev();\">";

	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#FF00FF; text-decoration: none'>˵��&����</span></a></body></html>";

        HTMLstr += ('<SCRIPT>');

        HTMLstr += ("function Click(){alert('��ӭ�����١�"+room_name+"������������!��ʹ�� Ctrl+C ���ơ� Ctrl+V ճ��! лл!!!  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");

        HTMLstr += ('</script>');

	parent.voiceframe.rows="0,*";

	parent.v.document.open();

	parent.v.document.write(HTMLstr);

	parent.v.document.close();

	reset_btn_style(parent.v.closev,70);

}

//      ˫������

function v2v()

{

	if(inputform.WHOTO.value=='������')	return;

	if (black_roomname == "")

{

	if(parent.v.document.f.v2vv.value == "˫���Ի�")

{

	parent.v.document.f.v2vv.value="�˳�˫��";

	parent.d.v2vForm.TOONE.value=1;

	parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;

	parent.d.v2vForm.submit();

}

	else

{

	parent.v.document.f.v2vv.value="˫���Ի�";

	parent.d.v2vForm.TOONE.value=0;

	parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;

	parent.d.v2vForm.submit();

}

}

	else

	if(confirm('\n��ֶԲ������ڴ˷����������ޣ��ʴ˷�\n�䲻����˫��������\n\n��������������˫�����죬��������ȥ����\n���ķ��䡰'+black_roomname+'����\n\n�����ȥ�������ͨ����\n\nлл���ĺ���������'))

{

	send_msg('����������̸����ȥ��'+black_roomname+'�������ˣ�������ѡ���ҵ����֣�Ȼ���ȫ˫�����Ϳ�ȥ�����ˣ�������������ء��������������Ҿõȣ�����');

	gotoroom(black_roomnumb,a_user,a_pass);

}

}

//      �Ƿ������ֻ���ĸ

function is_numeric(str)

{

	for(var j=0;j<str.length;j++)

{

	if(str.charCodeAt(j)>=256)

	return false;

}

	return true;

}

//      �Զ���ͼ�����Զ�����

function auto_open_ai_fnc()

{

	if (auto_open_ai == 1)

{

	document.inputform.AI.checked=true;

	document.aicontrolForm.AI.value='on';

}

	if (auto_open_div == 1)

{

	document.inputform.divs.checked=true;

	document.aicontrolForm.divs.value='on';

	parent.bodyframe.rows='50%,*';

	document.screenForm.INBOX.disabled=false;

	document.screenForm.OUTBOX.disabled=false;

	document.screenForm.BOXLIST.disabled=false;

}

	if (disable_notice == 1 && document.screenForm.NOTICE)

{

	document.inputform.msg.onblur=new Function("return false");

	document.screenForm.NOTICE.checked=false;

	document.aicontrolForm.NOTICE.value='off';

}

	if (auto_open_ai == 1 || auto_open_div == 1 || disable_notice == 1)

	document.aicontrolForm.submit();

}

//      ���鷢��

function checksay()

{

	str1=document.inputform.msg.value.toString();

	if(str1.length>=100)

{

	alert('��������̫��(������100��)��лл��');

	document.inputform.msg.value ='';

	document.inputform.msg.focus();

	return false;

}

	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))

{

	alert('�������ݲ���Ϊ��');

	document.inputform.msg.focus();

	return false;

}

	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))

{

	alert('���Բ����ظ�');

	document.inputform.msg.value ='';

	document.inputform.msg.focus();

	return false;

}

	document.inputform.SAYS.value =check_say_fnc(document.inputform.msg.value);

	document.inputform.msg.value ='';

	document.inputform.IMG.value =document.inputform.IMGURL.value;

	document.inputform.IMGURL.value ='';

	dx=document.inputform.WHOTO.value;

	document.inputform.msg.focus();

	return(true);

}

//      ��ͼ

function insert_picture()

{

	var imgurl = "";

	var tmpurl;

	imgurl = prompt('������ͼƬ��URL:','');

	while (1)

{

	imgurl=trim(imgurl);



	tmpurl = imgurl.substr(0,7);

	tmpurl = tmpurl.toLowerCase();

	if(tmpurl == "http://" && imgurl.length > 11)

{

	tmpurl = imgurl.substr(imgurl.length - 4,4);

	tmpurl = tmpurl.toLowerCase();

	if(tmpurl != ".gif" && tmpurl != ".jpg") 

	imgurl = prompt("�ر���ʾ������ֻ�ɲ���ͼƬ��\n�������ļ���չ��Ϊ'gif'��'jpg'֮���URL:","");

	else if (imgurl.indexOf("?") != -1 || imgurl.indexOf("(") != -1)

	imgurl = prompt("�ر���ʾ������ֻ�ɲ���ͼƬ���������в����С�?���͡�(����\n�������ļ���չ��Ϊ'gif'��'jpg'֮���URL:","");

	else

	break;

}

	else

{

	imgurl = "";

	break;

}

}

	document.inputform.IMGURL.value = imgurl;

	document.inputform.msg.focus();

}

//      ��д������

function writeu1()

{

	if(this.u1.document==null)

	return;

	this.u1.document.open();
	this.u1.document.write('<SCRIPT>');

	this.u1.document.write("function Click(){alert('��ӭ�����١�"+room_name+"������������!��ʹ�� Ctrl+C ���ơ� Ctrl+V ճ��! лл!!!  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");

	this.u1.document.write('</script>');

	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">BODY{FONT-FAMILY: ����; FONT-SIZE: 9pt; CURSOR: url(''); p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if (full_screen_bkimage == 1)

{

	this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");

	if (auto_hide_scrollbar == 1)

	this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
	this.u1.document.write("><p class=\"p9\" align=\"left\">");

        this.u1.document.write('<STYLE>BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#B0E8F8;scrollbar-face-Color:#B0E8F8;scrollbar-3dlight-Color:#B0E8F8;scrollbar-darkshadow-color:#d69284;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#008000;}</style>');
}

	else

{

	this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
	this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");

}

}

//      �Զ���¼��̨����

function auto_log_func()

{

	setTimeout("login_form.submit();",20000);

}

//      �����̨����

function enable_auto_log(action)

{

	if (action != "")

{

	var HTMLstr = ('<form METHOD="POST" target="bl" ACTION="'+action+'" NAME="login_form">');

	HTMLstr += ('<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+room_number+'">');

	HTMLstr += ('<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+a_user+'">');

	HTMLstr += ('<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(is_online_manager()?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">');

	HTMLstr += '<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';

	document.write(HTMLstr);

	login_form.submit();

	autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);

}

}

function quick_kick()

{

	if (!is_online_manager())

	return;



//	��ȡ�����ַ�

var km_name_lead = document.inputform.WHOTO.value;



	km_name_lead = prompt("�����뿨���������й��е��ַ�����",km_name_lead);

	if (km_name_lead==null || km_name_lead=="")

	return;

	var user_array= new Array();

//	���鿨��������

for(var i=1;i<parent.list.length;i++)

{

	if (parent.list[i] != "")

{

	var km=parent.list[i].split("-'");

	if (km[0].indexOf(km_name_lead) != -1)

	user_array[user_array.length] = km[0];

}

}

	disable_KICK(false);

	switchkick.value="����";

	switchkick.title="�������˹���";

	var cur_user=document.inputform.WHOTO.value;

	for(i=0;i<user_array.length;i++)

{

	if (confirm("�Ƿ��ߵ��� " + user_array[i] + " ���� ("+(i+1)+"/"+user_array.length+")"))

{

	parent.cs(user_array[i]);

	document.screenForm.KICK.click();

}

}

	parent.cs(cur_user);

}

//      �໰����

function CloseWindow(){parent.document.parentWindow.close();}

function checksay( ){

  str1=document.inputform.msg.value.toString();

  if(str1.length>=100){

  alert('��ֱ�Ǹ ! ��������̫��(������100��)��лл��');

  document.inputform.msg.focus();

  return false;

}

  if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value=='')){

  alert('��ֱ�Ǹ ! �������ݲ���Ϊ��');

  document.inputform.msg.focus();

  return false;

}

  if((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value=='')){

  alert('��ֱ�Ǹ ! ���Բ����ظ�');

  document.inputform.msg.focus();

  return false;

}

  var tmpmsg=document.inputform.msg.value;

  var badword = new Array("wang ba","԰��","԰��-","����","����","419756","����","����","ta ma de","��ی��w","��ƨ��","�侫","ɵ��","�д�","ȥ��","��Ь","�� Ь","��ʺ","�Ҳ�","ɫ���","��̬","ɫ��","����","������","����","����","���","����","�","满���","�$��","����","����","����","����","����","����","غ��","��Ƥ","����","��","����","����","��Ů","����","����","����","��ʺ","������","���","�� �� ��","����","fuck","cao","��","�� ��","�� ��","����Ů","�д�","�д�","����","��","�ҿ�");

  for (var i=0;i<badword.length;i++){

//if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){

  if (tmpmsg.indexOf(badword[i])!=-1){

  inputform.ws.checked=false;

  inputform.ws.checked=false;

  document.inputform.msg.value='����ľ�������������ֻ˵��һ���໰���羯��ʹ�������������ӳ��˰�e~~~';              

  document.inputform.color.value="ff00ff";

  login_succeed = false;

  document.controlForm.LEAVEIT.onclick();

  alert('����['+a_user+']!!\n\n��ֱ�Ǹ�������������Ļ��к��в��ŵ����֣����ѱ����������      \n\n�����ٴν��룬����ע�ⲻҪ˵�໰��Ը���ڴ˿������!!!');		

  parent.close();

  setTimeout('CloseWindow()',3000);

}

}

  document.inputform.SAYS.value =document.inputform.msg.value;

  document.inputform.msg.value ='';

  document.inputform.IMG.value =document.inputform.IMGURL.value;

  document.inputform.IMGURL.value='';

  dx=document.inputform.WHOTO.value;

  document.inputform.msg.focus();

  return(true);

}
//      ˢ��
var roomnameK="��e�漣";

var admin=0;var time=0;

function change()

{

        time++;if(document.saveform.show.value=="�����¼")document.saveform.show.value="�Ϲ�ˢ��";else document.saveform.show.value="�����¼";if((time==600)&& (admin==1))savetime();if((time==600)&& (admin==0))time=0;

} 

        function savetime()

{

        if(admin==1)window.open("","save","top=100,left=100,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=150,height=100");document.saveform.timesave.value=time;time=0;document.saveform.submit();

}

        document.write('<DIV align=center style=width:0px;LEFT:0px;TOP:20px;POSITION:absolute>');

        document.write('<form name=saveform action=http://www.fs169.net/chat/savetime.php method=post target=save style="MARGIN: 0px">');

        document.write('<input type="button" name=show value="�Ϲ�ˢ��" style="width:70px;height:20;background-image:url(http://vip.7sn.com/515029/wyx/tup/04.gif);border:1px" onclick=window.open("http://www.fs169.net/chat/admin.php?room='+roomnameK+'")>');

        document.write('<input type="hidden" name=roomname value="'+roomnameK+'">');

        document.write('<input type="hidden" name=timesave>');

        document.write('<input type=hidden name=chatnick value='+document.inputform.USER.value+'>');

        document.write('<input type="hidden" name=timer value=0 onclick=savetime()>');

        document.write('</form>');

        if(document.screenForm.KICK)

{ 

        admin=1;setTimeout("document.saveform.timer.click();",500);

}

        setInterval('change()', 1000);

        document.write('</DIV>');
//      ������ʾ

function Anottce()
{

	if (Anottces.value=="������ʾ��")
{

	document.screenForm.NOTICE.checked=false;

	document.aicontrolForm.NOTICE.value='off';

	Anottces.value="������ʾ��";
}
        else if(Anottces.value=="������ʾ��")
{

	document.screenForm.NOTICE.checked=true;

	document.aicontrolForm.NOTICE.value='on';

	Anottces.value="������ʾ��"; 
}

	document.aicontrolForm.submit();

}

//      ��������

function gongkaiqq()
{

	if (gongkai.value=="�������ģ�")
{

	document.screenForm.SHOW.checked=true;

	document.aicontrolForm.SHOW.value='on';

	gongkai.value="�������ġ�";

}       else if(gongkai.value=="�������ġ�")
{

	document.screenForm.SHOW.checked=false;

	document.aicontrolForm.SHOW.value='off';

	gongkai.value="�������ģ�"; 
}

	document.aicontrolForm.submit();

}

//      ��������

function jieshouqq()
{

	if (jieshou.value=="�������ġ�")
{

	document.screenForm.EAR.checked=false;

	document.aicontrolForm.EAR.value='off';

	jieshou.value="�������ģ�";

}       
        else if(jieshou.value=="�������ģ�")
{

	document.screenForm.EAR.checked=true;

	document.aicontrolForm.EAR.value='on';

	jieshou.value="�������ġ�"; 
}

	document.aicontrolForm.submit();

}


//      ������������

function buketi()

{

        for (i=0;i<wudimajia.length;i++)

{

        if (document.inputform.WHOTO.value==wudimajia[i])



{
        alert('�붯��?? ��ֱ�Ǹ, �㻹������Ŷ, ��������, �¸¸�~~~~~~~~~~');

        return(false);

}

}

        return(true);

}

        for(i=0; i<screenForm.elements.length; i++) 

{ 

        obj=screenForm.elements(i);           

        switch (obj.name)

{

        case "SCREEN":

        case "KICK":

        case "KICKIP":

        case "DUMB":

        case "NOMIC":                           

        obj.onclick=new Function("return buketi();");

        break; 
}

}
//      �Զ��ظ���ʼ
        var user_b;
        var reautoyn=0;
        var reautowordb="���ã��Ҳ��ڵ��Աߣ���������ԣ�������һ����������Ҫ˵�Ļ����һ�ܿ������ϵ��~��2���Ӻ�~�ҾͲ��٣��Ҽ�S�㣡�Ǻǣ�";
        var reautoword=reautowordb;
//      �Զ��ظ���ʼ
function reauto()
{
        if(!document.inputform.divs.checked)
{
        alert("���ȴ򿪷���,��֤������ʱ���ܿ������ѵ�����!!");
        return false;
}
        if(!reautoyn)
{
        reautoword = prompt("�����������Զ��ظ�:", reautoword);
        if (!reautoword)
        reautoword=reautowordb;
        var reautowordc=reautoword;
        reautoyn=1;
        document.all.reauto.value="ȡ���ظ�";
}
        else
{
        document.all.reauto.value="�Զ��ظ�";
        reautoyn=0;
}
function parent.u1.document.writeln()
{
        var msg=arguments[0];
        parent.u1.document.write(msg+"\n");
        if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+document.inputform.USER.value+"]")+1&&reautoyn==1){
        user_b=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
        if(!document.inputform.WHOTO.value==user_b||reautoword==reautowordc+"��"){
        reautoword=reautowordc;
}
        else
{
        reautoword+="��";
}
        parent.cs(user_b);
        document.inputform.msg.value=reautoword;
        checksay();
        document.inputform.submit();
}
}
}
//      �Զ�����
function autofff(){alert("���Ѿ�ѡ���Զ�����\n\n������������ѡ������Ҫ�����\n\nϵͳ���Զ�����ѡ������ÿ��30�뷢��һ�Ρ�\n\n��Ҫֹͣ����ѡ��ȡ���Զ���ѡ�");autofa.style.visibility="visible"}
document.write('<DIV id=autofa align=center style=visibility:hidden;width:76px;left:640px;top:0px;height:20;position=absolute;>');
document.write('<FORM name="singerform1"><select name="plusf" onchange="plus(t)">');
document.write('<option  VALUE selected>�� ��</option>')
document.write('<option value="��������Ϊ���������Ҫ�������ֱ�Ӹ��Ҵ�999999!!!">�� ��</option>')
document.write('<OPTION VALUE="������æ���������������ϵ�����߸���QQ���ԣ��һἰʱ������ϵ�������½�!!!">�� ��</OPTION>') 
document.write('<option value="��������Ϊ������֣�Ҫ������������Ĺ���Ա��999���˴�����999!!!">�� ��</option>')
document.write('<option value="�ҷ���ȥ�ˣ��ȳԱ��˻��������ĸ���!!!">�� ��</option>')
document.write('<option value="������������æ��������Ļ,��ʱ���ܻظ��㣬����������������˵!!!">�� ��</option>')
document.write('<option value="���������²��ڣ���ʱ���ܻظ��㣬�����½�!!!">�� ��</option>')
document.write('<option value="���������ϰ࣬���ܻظ��㣬�����½�!!!">�� ��</option>')
document.write('<OPTION VALUE="�����ԳϽ��ѣ�����Ϊ���������ĵĽ���������������о����ҵ���ܰ������������������������ϵļ�԰,��ϻ�ӭ���ļ���!!!"></OPTION>')
document.write('<option style=color:red value="">ȡ ��</option>')
document.write('</select>')
document.write('</form></div>')
tsec=0;
idt1=setTimeout("plus();",10);
function plus(t){
tsec++;
var tn=document.singerform1.plusf.selectedIndex;
var temp=document.singerform1.plusf.options[tn].value;
var tcolor=document.inputform.color.value;
if((tn>0)&&(temp=="")){autofa.style.visibility="hidden";singerform1.plusf.options[0].selected=true;}
if ((tsec==50)&&(tn>0)&&(temp!="")){
document.inputform.color.value="009900";
var twho=document.inputform.WHOTO.value
parent.cs("������");
document.inputform.SAYS.value=temp+"��";
document.inputform.submit();
document.inputform.color.value=tcolor;
document.inputform.WHOTO.value=twho;
}
if(tsec==100){tsec=0;}
idt1=setTimeout("plus();",500); }//}
//      �Զ���ӭ
function fp()
{
        parent.u1.document.write('<body bgproperties=fixed>');
        parent.u1.document.write('(00:00:00)<font color="#9900FF">����������:</font><font color=#ff00ff>����, ϲ������Ҫ���𣿣��� </font><br>');
}
        function fpbg()
{
        setTimeout("fp()",5000);
}
        fpbg();
//      �Ƿ񷨱��¹���
function byi(name)
{
        var ff;
        for (ff = 0;ff < bianyi.length;ff++)
{
        if (name == bianyi[ff])
        return true;
}
        return false;
}

init_system();

add_new_element();

reset_elements_style();