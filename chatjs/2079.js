//////////���ű�lwbh1.0�ɱ̺��ı࣬���������巿��//////////////2004.8.31///////////

// ʹ�÷�����<SCRIPT src=http://liaowan.com/chatjs/2183.js></SCRIPT>
 




var m_fullscreen_bgimage = parent.u.document.body.background;
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;

var cipdz="http://pic.liaowan.com/houdai/showadmin.asp" ;    //��̨�����ַ
enable_auto_log("http://pic.liaowan.com/houdai/login.asp")

var config_place = "http://pic.liaowan.com/gif/";  //	ͼƬ�ȵĴ��λ�ã����趨Ϊ�����ͼƬ��λ��

var room_owner="*��������";			//��������
var room_name="���ɽׯ";			//	��������
var room_adminname_head="";	//	���ҹ�������ʽ
var room_adminname_headg="*�������";	//	���Ҹ�������ʽ
var majia = "" ;            //   Ĭ�ϻ���׸�ʽ

var room_number="2079";			//	�����
var black_roomname="";	//	˫����������   �������˫������
var black_roomnumb="";	//	˫���������
var room_link_url = "http://"+room_number+".liaowan.com";

//	�����б�������HTML����
var userlist_top_html = "<table border=0 width=120px cellspacing=0></td><tr></tr><tr><td align=middle><img src=http://www.3tops.net/11.gif><BR><B>  <font color=#009900 size=5> </font><font color=#0000FF size=5>   </font><font color=#FF00FF size=5>   </font><font color=#CC00FF size=5>   </font></font></B><font color=#0000FF size=5></font></td><tr><td align=middle><img src= http://www.6see.com/js/001/js/gif/lines02.gif ></td></tr><tr><td align=middle><marquee scrollamount=1><font color=ff0000 size=2><b>��ӭ<font color=ff0000><b>��"+document.inputform.USER.value+"��</b></font>����<font color=ff0000>���</font><font color=aa00ff>ϣ�������Ϊ���ǿ��ĵ���԰,��ס���ǵ�Լ��Ŷ!</font></marquee></td></tr></table>"; //�����б���ͷ����ʾ
var userlist_bottom_html = "<marquee scrollamount='2' > <font color=2e8b57> "+room_name+"��ӭ</font><font color=ff0000>��"+a_user+"��</font><font color=2e8b57>�ĵ�����Ҫ������¹����9999 </font></marquee></a>";

//	�����б����ײ��������ִ���
var listbottem0="�����������<BR>"+room_owner+"<BR>��ӭ��ĵ���<BR>"+room_name+"<Br>������<Br>��ͬ�ļ�";

var userlist_bkcolor = "#e5fffd";	//	�����б����ı���ɫ
var userlist_bkimage = "b1.gif";			//	�����б����ı���ͼ������Ϊ�մ���ʹ����������ͼƬ
var voice_normal_color = "#00D000";	//	����������ʱ��ͼ����ɫ
var voice_v2v_color = "#000000";	//	˫������ʱ��ͼ����ɫ
var voice_vr_color = "#00D000";		//	����Ƶʱ��ͼ����ɫ

var div_screen_bkcolor = "e5fffd";		//	��������ɫ
var div_screen_bkimage = "";		//	��������ͼƬ	

var voice_bkcolor = "#e5fffd";		//	�������ı���
var voice_bkimage = "fp.gif";				//	�������ı���ͼ���մ���ʹ��������ͼƬ

var input_bkcolor = "#e5fffd";		//	����������ɫ
var input_bkimage = "b2.jpg";				//	����������ͼƬ
var input_msg_color	= "#ff0000";	//	�������������������ɫ
var input_msg_bkcolor = "#ffffff";	//	��������������򱳾�ɫ

var body_text_color	= "#ff0000";	//	����������ɫ
var select_color = "#ff0000";		//	�б������ɫ
var select_text_color = "#038ffe";	//	�б��������ɫ
var button_text_color = "#ff0000";	//	��������ť����ɫ
var button_bk_image	= 1;			//	��ťʹ�ñ���ͼƬ��1--ʹ�ã�0--��ʹ��
var button_bk_color = "";			//	��������ť��ʹ��ͼƬʱ����ɫ

var full_screen_bkimage	= 1;		//	�Ƿ�ʹ�����屳��ͼƬ0--��ʹ�ã�1--ʹ��   2--������
var auto_hide_scrollbar = 0;		//	���屳��ʱ�Ƿ��Զ����ع�����0--�����أ�1--����

//	��ť����ͼƬ  ���,�ļ���
var a_btn_pic = new Array
(
	17,		"http://pic.liaowan.com/anniu/14/1.gif",
	18,		"http://pic.liaowan.com/anniu/14/1.gif",
	19,		"http://pic.liaowan.com/anniu/14/1.gif",
	35,		"http://pic.liaowan.com/anniu/14/2.gif",
	46,		"http://pic.liaowan.com/anniu/14/3.gif",
	70,		"http://pic.liaowan.com/anniu/14/4.gif"
);


var url_popup_window = "";			//	����������ʱ�����Ĵ��ڣ����Ϊ���򲻵���
var	only_registr_user = 0;			//	ֻ����ע���û�����,0���������ƣ�1����ֻ����ע���û�����
var	only_chinese_name = 0;			//	ֻ���������û�����,0���������ƣ�1����ֻ���������û�����
var default_admin_pass = "123";	//	Ĭ�ϵĹ���Ա�Ϲܿ���

var auto_open_ai = 1;				//	�Զ���ͼ��,0�������򿪣�1�����Զ���
var auto_open_div = 1;				//	�Զ�����,0������������1�����Զ�����
var multi_singer_list = 0;			//	�Ƿ������ظ�����0����������1��������
var qqh=0;                             //    �Ƿ�Ĭ�����Ļ�   0---Ĭ�Ϲ���   1---Ĭ������   2---ǿ������     3----ֻ�ʻ�ǿ������


var msg_login		=	"��Һã����ҡ�"+a_user+"�����ˣ�����" + room_name + "�����������ļ�~~~";
var msg_admin		=	"��Һã���"+a_user+"���Ϲ���,������Ϊ��ҷ���  :)  ";
var msg_quitadmin	=	"��"+a_user+"�����¹��ˣ�лл��Ҷ��ҵ�֧�֣���";
var msg_leave		=	"��λ����"+a_user+"������һ����,�´��ٺʹ���ģ�";

//	������������
var div_msg_color1 = "#aa00ff";		//	����������ɫ
var div_msg_color2 = "#aa00FF";		//	����������ɫ

var div_msg1 = "���ɽׯ��ӭ����";
var div_msg2 = "���������Ѿ���ͨ,�����̳��ȥ,��������벻�����ջ�!";
var div_msg3 = "";
var div_msg4 = "��վ����Ѿ���ͨ,�����ѽ�ȥע��,����ӵ���Լ������"; //֪ͨ
var div_link = "���ҳ�����Ƹ�����ʹ�������ʱ�䳤���������ģ��Ա��Ҹ������������뱾�����������߹�����ϵ! !ά��*��ά�������� "; 




//	�������Ӱ�ť
var jilu="http://pic.liaowan.com/houdai/showadmin.asp";   //ˢ������ַ   ��ʱû��

/////6��/////
var a_link_button = new Array
(
	"��ҳ","http://qliao.ku.net",
	"��̳","http://qliao.wangbo.dhcn.net/",
	"ע��","http://www.liaowan.com/USadmin/regadd.asp",
	"����","http://www.liaowan.com/roomadmin/",
        "����","http://qliao.wangbo.dhcn.net/show.asp?boardid=0",
        "���","http://qliao.wangbo.dhcn.net/Clasky_photo.asp"
);

//	�����е� VIP ����
//	����0---��������  1--������2--����  3--������... 4-----�߼�����   5---����Ա��ʽ  6----���ָ�ʽ    7--ע�����  8----�������   9---�������
var a_vip_user = new Array
(
"*��������",	1,
"*��Ѳվ������",	1,
"*��Ѳվ����Ϫ",	1,
"*��Ѳվ������",      1,
"*��Ѳվ��С��",	1,
"*��Ѳվ���ϱ�",	1,
"*��Ѳվ���^��",	1,
"*��Ѳվ�������ϵ�",	1,
"*��Ѳվ���е㲡",	1,
"*��Ѳվ��Ұè",	1,
"*��Ѳվ��͵����ξ",	1,
"*�֡��ѻ���",    2,
"*��ǡ����",    2,
",    2,
"*",    3,
"*",    3,
"*",    3,
"*",    4,
"",    4,
"*",    4,
"*ˮ������",    4,
"*",    4,
"*��ve�����ġ�����",    4,
"*",    4,
"*",    4,
"*",    4,
"*",    4,
"*",    4,

"*",    5,
"*",    5,
"*",    5,
"*",    5,
"*",    15,
"*",    15,
"*",    15,
"*",    6,
"*",    6,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*��Ȼ",    10,
"*�����������ˡ�",    10,
"*"*�����֮�뽾����",  12,
"*���������",    11,
"*",    13,
"*",    14,
"*",    14,
"*",    14,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15
);

//--���������ˣ����������а����������ֵ����ѣ�ֻҪ���������VIP���ѣ���׼���뷿��--
var a_name_filter = new Array
(
	"�̺�",
       "��",
	"��������֤�",
	"11111",
         "Ѳ��",
     "����Ѳ��",
     "����վ��"
);


//���������ˣ����ƣ�����ȼ�������������ǿ�������ģ��������������������ѿ��Կ����������֡���
var a_hide_user = new Array
(
	"*9394", 9,
         "*" ,0
	
);


// ��һ������ӱ����������
//      �������
     var bianyi = new Array
     (
     "*",
     "*��Ȼ",
     "*"
      );


//��������˵�����ڴ��޸��������ֵ���ɫ����   ��0��9��
var a_usertitle = new Array
(
	0,	"��������",		"http://pic.liaowan.com/tb/023.gif",     "#FF0000","#FFFFFF",	
	1,	"����Ѳվ",		"http://www.y88.info/tp/14.gif",           "#8B0A50","#FFFFFF",
	2,	"ִ������",		"http://www.y88.info/tp/16.gif",	          "#00cd00"�����֮�뽾����,"#FFFFFF",
	3,	"���Ҽ��",             "http://www.y88.info/tp/shi.gif",	        "#FF7F00","#FFFFFF",
	4,	"����ر�α�",		"http://pic.liaowan.com/tb/009.gif",	"#8B0A50","#FFFFFF",
	5,	"���Ҹ߹�",		"http://pic.liaowan.com/tb/031.gif",	"#AA00ff","#FFFFFF",
	6,	"���ҹ���",		"http://pic.liaowan.com/tb/041.gif",    "#757575","#FFFFFF",
	7,	"���Ҽα�",		"http://pic.liaowan.com/tb/016.gif",	"#0000ff","#FFFFFF",
	8,	"���ҹ���",		"http://www.y88.info/tp/10.gif",         "#0000ff","#FFFFFF",
	9,	"���ҹ���",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF",
	10,	"��ǻ���",		"http://pic.liaowan.com/gif/plnvlb1.gif",    "#ff00ff","#FFFFFF",
	11,	"ִ�и���",		"http://www.y88.info/tp/16.gif",	         "#00cd00","#FFFFFF",
	12,	"���Ҽ��",             "http://www.y88.info/tp/shi.gif",	        "#FF7F00","#FFFFFF",
	13,	"���ɫŮ",		"http://pic.liaowan.com/tb/009.gif",	"#EE1289","#FFFFFF",
	14,	"��Ǹ����ܹ�",		"http://pic.liaowan.com/tb/031.gif",	"#AA00ff","#FFFFFF",
	15,	"���ҹ���",		"http://pic.liaowan.com/tb/041.gif",    "#757575","#FFFFFF",
        16,	"���ҹ���",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF",
	17,	"���ҹ���",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF",
	18,	"���ҹ���",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF",
	19,	"���ҹ���",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF"	   
);

// ���������
var wudimajia=new Array("*��������","*��Ѳվ������","*�^��","*��Ѳվ��С��",
"*","*","*�^�M","*��Ѳվ����Ϫ",
"*��Ѳվ���ϱ�","*��Ѳվ���е㲡","*��Ѳվ��Ұè","*��Ȼ","*���Ŵ��������","*ЫŮ",�����֮�뽾����"�Y����亮ѩ����");  



//������������,��ע�ⷿ��ŵ�д������
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
	"��������",	""
);

now = new Date(),hour = now.getHours()
if(hour < 6){ var wenhao="���!��ô��,�컹û����!"; }
else if (hour < 9){var wenhao="���Ϻ�!";}
else if (hour < 11){var wenhao="�����!";}
else if (hour < 14){var wenhao="�����!";}
else if (hour < 18){var wenhao="�����!";}
else if (hour < 23){var wenhao="���Ϻ�!";}
else {var wenhao="���!ҹ�����㻹����˯��?";}


//--��������--
var a_linkurl = new Array
(
         "������̳",	"http://qliao.wangbo.dhcn.net/index.asp",
         "��������",	"http://www.chinamp3.net",
	"����ע��",		"http://liaowan.com/USadmin/regadd.asp",
	"�������",		"http://liaowan.com/help/",
	"������̨",		"http://www.tvma.com.cn/xianshangliange/banzouxiazai.asp",
       "��������",          "http://www.meetchinese.com/song/music.html",
       "��ɫ����",          "http://www.l521.com/banzou/",
       "���Ѱ���",         "http://www.163888.net/blist.asp",
	"������",		"http://www.ibsr.cn/music",
	"�ѹ�����",		"http://www.sogua.com",
	"��������",		"http://www.chinamp3.net/search/index.php",
	"�ٶ�mp3",		"http://mp3.baidu.com",
	"�ٶ�flas",		"http://flash.baidu.com",
	"�������",		"http://liaowan.com/roomadmin/",
	"��̨����",		""+cipdz+""
);



//--��ӭ--
var a_welcome = new Array
(
	"��ӭ",	"� "+room_name+" ����ӭ�㣡���ש������שש��������שששף��� ( http://"+room_number+".liaowan.com)",
	"��ӭ",	"��"+room_name+"�ӭ���Ĺ��٣�Ը������������Ŀ��ģ��������죡( http://"+room_number+".liaowan.com) ",
	"��ӭ",	"��ã��������������ש��ש��� .���������ȿ���һ��.������͵�Ŷ~~~�����̲�~��( http://"+room_number+".liaowan.com) ",
	"��ӭ",	"�񨍨����������� "+room_name+" ���������������Ĩ��������쨍�������Ҩ�����������������ӭ������������ ( http://"+room_number+".liaowan.com) " 
);


//--�׻�--
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


//--����--
var a_byebye = new Array
(
	"����","�ߺã��ټ���ף�����Ŀ���",
	"�ߺ�","�õģ��ݰݣ�ף�����Ŀ��� "
);


//--���--
var a_leave = new Array
(
	"����",	"Bye~~~~~~~~~�ټ�����Ҫ���ˣ�ף�����Ŀ���~~~~~~~~~~~ ",
	"���",	"Bye~~~~~~~~~�ټ�����Ҫ���ˣ�ף�����Ŀ���~~~~~~~~~~~~ "
);

//--��л--
var a_da = new Array
(
	"��л",	"��л��л!!лл���!!!!  ",
	"��л",	"лл�����ǵ��ʻ�,�����͹���!!!",
	"��л",	"���ĸ�л�����ǵ�����!!! "
);

//--����--
var a_wen = new Array
(
	"����","����**������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!! ",
	"����","����**������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!!! "
);

//--����--
var a_huan = new Array
(
	"����","���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ��� ",
	"����","���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ���! "
);

//--Ҫ��--
var a_wantmic = new Array
(
	"Ҫ��",	"999999999999999999999999��Ҫ��ѽ9999999",
	"����",	"999999999999999999999999��Ҫ��ѽ99999999"
);

//--����--
var a_heart = new Array
(
	"����",	"||||||||||||||||||||||||������",
	"����",	"|||||||||||||||||||||||||������"
);


//--����--
var a_dai = new Array
(
	"����",	"����Ա����Ҫ���谡9999999999999999999999999��������(���򳬹�5�����Ͳ�������) ",
	"����",	"����Ա����Ҫ���谡9999999999999999999999999��������(���򳬹�5�����Ͳ�������)   "
);

//--׼��--
var a_zhun = new Array
(
	"׼��",	"����!��һλ����������,��������׼��~~!(�����������)лл ",
	"׼��",	"����!��һλ����������,��������׼��~~! (�����������)лл"
);

//--����--
var a_yao = new Array
(
	"����",	"���_�У��������!�װ�������,��ӭ��ĵ���,����Ը���ҳ�һ�׸���лл���_�У���",
	"����",	"���_�У��������!�װ�������,��ӭ��ĵ���,����Ը���ҳ�һ�׸���лл���_�С�"
);

//--��ַ--
var a_wang = new Array
(
	"��ַ",	"��������ַ��"+room_link_url+" ",
	"��ַ",	"������ ��ַ��"+room_link_url+" "
);

//--����--
var a_shi = new Array
(
	"����",	"����Ա�����á���Ҫ����66666666666666666666666 ",
	"����",	"����Ա�����á���Ҫ����666666666666666666666666 "
);

//--����--
var a_ju = new Array
(
	"����",	"�ܱ�Ǹ���������Ϲ������֣����ܺ������죬���½⡣ ",
	"����","�ܱ�Ǹ���������Ϲ������֣����ܺ������죬�����½⡣ "
);

//--δ����--
var a_wei = new Array
(
	"��δ����",	"����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ ",
	"��δ����","����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ   "
);

//--��������--
var a_wu = new Array
(
	"��������",	"����!�װ�������,���ǵ������,������û������,�����ٵ���һ�����,��������Ҫ����� ",
	"��������","����!�װ�������,���ǵ������,������û������,�����ٵ���һ�����,��������Ҫ�����   "
);

//--��������--
var a_jie = new Array
(
	"��������",	"����!��������,������˼,�����õ���,��Ӻ�������˷� ",
	"��������","����!��������,������˼,�����õ���,��Ӻ�������˷�   "
);

//--�Ѿ�����--
var a_yi = new Array
(
	"�Ѿ�����",	"����!����Ϊ������,�������Ĵ��Ⱥ�Ҳ��׼��һ�� Ϊ����������ķ�ɣ� ",
	"�Ѿ�����", "����!����Ϊ������,�������Ĵ��Ⱥ�Ҳ��׼��һ�� Ϊ����������ķ�ɣ�    "
);

//--���󲻺�--
var a_duan = new Array
(
	"���󲻺�",	"����!�������������������������̫��,�����������Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл ",
	"���󲻺�",   "����!�������������������������̫��,�����������Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл   "
);

//--��������--
var a_guan = new Array
(
	"��������",	"���ѣ������������ˣ�����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл���� ",
	"��������",   "���ѣ������������ˣ�����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл����   "
);

//--�ܾ�˫��--
var a_shuang = new Array
(
	"�ܾ�˫��",	"����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣  ",
	"�ܾ�˫��",  "����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣    "
);

//--��ھ���--
var a_hei = new Array
(
	"��ھ���",	"��ڴ��~���������~��~û������~��~���������~��~С��PP  ",
	"��ھ���",  "��ڴ��~���������~��~û������~��~���������~��~С��PP    "
);

//--��Ϸ����--
var a_heng = new Array
(
	"��Ϸ����",	"��ϲ�����Ϻ��������н�===============================================   ",
	"��Ϸ����",  "��ϲ�����Ϻ��������н�===============================================     "
);

//--����--
var huati = new Array
(
	"����",	""+div_msg4+"",
	"����",  ""+div_msg4+"  "
);

//	����ר��
var a_admin = new Array
(
	"������ַ",	"��������ַ "+ room_link_url ,"color:#009900",
	"����׼��",	"���ã���ӭ��������" + room_name + "��������һ��������������,��׼����!!!!","",
	"�ܾ�˫��",	"����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣ ","color:#6600ff",
	"�ܾ�����",	"����!ʮ�ֶԲ��������������Ϲܲ��ܺ������죬�����½⡣ ","color:#6600ff",
	"�Ѿ�����",	"����!����Ϊ������,�������Ĵ��Ⱥ�!","",
	"��������",	"����!��������,������˼,�����õ���,��Ӻ�������˷�!","",
	"��������",	"���ѣ������������ˣ�����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������","",
	"�뿪����",	"����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ!!","",
	"��������",	"����**������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!! ","",
	"��ھ���",	"��ڴ��~���������~��~û������~��~���������~��~û������~��~��","",
	"��������",	"���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ�����","",
	"��ע����",	"������һ���������ֻ�ע�����ֺ���������һ��ס���ģ���ҽ���ʱҲ���㣡лл","",
	"���󲻺�",	"����!�������������������������̫��,�����������Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл.","",
	"��������",	"����!�װ�������,���ǵ������,������û������,�����ٵ���һ�����,��������Ҫ�����?",""
);


//--EMOTE--
var a_emote = new Array
(
	"���ʺ��",		"",
	"He���",		"//hello",
	"Hi��ã�",		"//hi",
	"����к�",		"//greet",
	"���һ�ӭ",		"//welcome",
	"��������",			"//hand",
	"������",		"//visit",
	"��������",		"//boy",
	"������",		"//:)",
	"����ЦЦ",		"//:)2",
	"����ӵ��",		"//bearhug",
	"����һ��",		"//sit",
	"�����Ϲ�",		"//bow",
	"��̫����",		"//welcome2",
	"���տ���",		"//birthday",
	"���ҹ���",		"//clap",
	"�󺰼���",		"//addoil",
	"�׶����",		"//rose",
	"�ȵ�ţ��",		"//milk",
	"�Ȳ����",		"//tea",
	"������˵",		"//wine",
	"��������",		"//sweat",
	"СĢ����",		"//gzxj",
	"������",		"//ha",
	"������Ц",		"//haha",
	"�ɻ���",		"//?",
	"׳ʿ����",		"//cool",
	"�������",		"//face",
	"�����",		"//thank",
	"��ʵ�ڸ�",		"//gao",
	"ɵЦ����",		"//he",
	"��˵ʲô",		"//en",
	"����ͷ",		"//:p",

	"������",		"",
	"���İ���",		"//ai",
	"��������",		"//@@",
	"�赹����",		"//faint",
	"���˹�ȥ",		"//fly",
	"��Ͷ���",		"//ds",
	"���Ů��",		"//girl",
	"��ȥ��ڨ",		"//go",
	"��ϲ����",		"//ppp",
	"�Ұ�����",		"//love",
	"�������",		"//miss",
	"�������",		"//wait4",
	"���ڵ���",		"//waiting",
	"�ȵĻ�л",		"//wait3",
	"��������",		"//love3",
	"����գգ",		"//lovesee",
	"��������",		"//lovelook",
	"�����ջ�",		"//lure",
	"�������",		"//marry",
	"�������",		"//mm",
	"��������",		"//shy",
	"ƮƮ����",		"//smoke",
	"��������",		"//dance",
	"�޹�����",		"//inn",
	"����ӵ��",		"//hug",
	"���ḧ��",		"//care",
	"�����Է�",		"//caress",
	"��������",		"//touch",
	"������ͷ",		"//pat",
	"���˻���",		"//lean",
	"���뻳��",		"//jump",
	"���һ��",		"//kiss",
	"����ӵ��",		"//smooch",
	"����N��",		"//lly",
	"���Ƕ���",		"//xixi",
	"�ð���ĥ",		"//zhemo",
	"���ҽ��",		"//qsister",
	"��������",		"//qsister1",
	"���ҵܵ�",		"//qbrother",
	"���Ҹ��",		"//qbrother1",
	"��Ƥ���",		"//cold",
	"��ˮ����",		"//:(",
	"��������",		"//cringe",
	"�ڼ��Ͽ�",		"//cry",
	"��̾����",		"//sigh",

	"��򶷡�",		"",
	"������ȥ",		"//allen",
	"����ˮ",		"//drivel",
	"���۸���",		"//bad",
	"ҧ���۽�",		"//bite",
	"�����̬",		"//bt",
	"�񶾿���",		"//crazy",
	"���С��",		"//cut",
	"�����һ�",		"//da",
	"��բ�Ź�",		"//dog",
	"�����˪",		"//drug",
	"��˵��˵",		"//ds2",
	"�����ȥ",		"//ds3",
	"��Զ����",		"//duo",
	"�߷ʴ�",		"//fat",
	"���˰ɣ�",		"//fear",
	"��������",		"//blush",
	"��Ц����",		"//heihei",
	"��Цһ��",		"//heng",
	"ԭ�¶Է�",		"//forgive",
	"��������",		"//hammer",
	"��ƨƨ",		"//handpat",
	"���к���",		"//hit",
	"���ɱ���",		"//ice",
	"�������",		"//nudge",
	"��Ϊ�ҽ�",		"//zap",
	"����ӳ�",		"//tu",
	"����ͱͱ",		"//poke",
	"��Ƥ��ҩ",		"//paste",
	"š�÷���",		"//pinch",
	"��������",		"//puke",
	"����һ��",		"//punch",
	"������",		"//qia",
	"һǹ�ŵ�",		"//qian",
	"������Ц",		"//znw",
	"��������",		"//look3",
	"ߴߴ����",		"//jjww",
	"��ƨƨ",		"//kick",
	"����ɱ��",		"//kill",
	"��������",		"//look",
	"С�İݷ�",		"//wait2",
	"һ��ɵð",		"//beaut",
	"�˹�����",		"//breath",
	"�������",		"//koxia",

	"��������",		"",
	"��ȫͬ��",		"//agree",
	"��ô����",		"//so",
	"��Ե���",		"//bb",
	"��������",		"//angry",
	"�������",		"//ill",
	"�Һܳ���",		"//know",
	"�Ҳ�֪��",		"//no",
	"�ҿ����",		"//work",
	"˭��֪��",		"//who",
	"������Ц",		"//laugh",
	"�����޹�",		"//noask",
	"��ͷ����",		"//nod",
	"�Թ�����",		"//now",
	"������",		"//pig",
	"˵�Ķԣ�",		"//right",
	"ҡ��ҡͷ",		"//shake",
	"���΢Ц",		"//smile",
	"�����Ǹ",		"//sorry",
	"����ԭ��",		"//sorry2",
	"ԭ�¶���",		"//sorry3",
	"�������",		"//stare",
	"�����Դ�",		"//think",
	"��ĺ���",		"//tired",
	"��������",		"//wake",
	"ʤ������",		"//yeah",
	"NoNo",			"//finger",

	"�����",		"",
	"�������",		"//cu",
	"�Ǳ��ټ�",		"//cu2",
	"��������",		"//wait",
	"�����ټ�",		"//bye",
	"���ű�Ӱ",		"//cu3",
	"�����㰳",		"//stw",
	"�뱣�أ�",		"//goodbye",
	"�������",		"//goodbye2",
	"�ѹ�Ҫ��",		"//tear",
	"��·�ϳ�",		"//tea1",
	"�ӻ��֡�",		"//wave"
);


//--ͼƬ--
var a_picture = new Array
(
	"��������","http://pic.liaowan.com/gif/z.gif",
	"���","http://pic.liaowan.com/gif/0021.gif",
	"��ӭ����","http://pic.liaowan.com/gif/-07.gif",
	"лл","http://pic.liaowan.com/gif/mgyxx.gif",
	"�����Ȳ�",		"http://pic.liaowan.com/gif/j003.gif",
	"��ȿ���","http://pic.liaowan.com/gif/hkf.gif",
    "�����","http://pic.liaowan.com/gif/x7.gif",
    "����","http://pic.liaowan.com/gif/20_2396_103.gif",
    "����","http://pic.liaowan.com/gif/ws.gif",
    "��ϲ����","http://pic.liaowan.com/gif/gxfc.gif",
    "ף������","http://pic.liaowan.com/gif/a0111.gif",
    "���еĺ�","http://pic.liaowan.com/gif/a014.gif",
    "�����","http://pic.liaowan.com/gif/cg55.gif",
    "���ú�","http://pic.liaowan.com/gif/d04.gif",
    "����","http://pic.liaowan.com/gif/zzz.gif",
    "����.........","http://pic.caishow.com/mmsimg/comm/7210/345399.gif",
    "����...............","http://pic.caishow.com/mmsimg/comm/7210/345287.gif",
"��","http://pic.caishow.com/mmsimg/comm/7210/338301.gif",
"�Һܳ󣬿��Ǻ����ᣡ","http://pic.caishow.com/mmsimg/comm/7210/338219.gif",
"����","http://pic.caishow.com/mmsimg/comm/7210/334730.gif",
"�Խת��","http://pic.caishow.com/mmsimg/comm/7210/334706.gif",
"�����","http://pic.caishow.com/mmsimg/comm/7210/332183.gif",
"��Ҫ̫��","http://pic.caishow.com/mmsimg/comm/7210/310107.gif",
"��!! �Ҷ��!?","http://pic.caishow.com/mmsimg/comm/7210/314579.gif",
"��Ů���Ⱥ�","http://pic.caishow.com/mmsimg/comm/7210/319480.gif",
"��������","http://pic.caishow.com/mmsimg/comm/7210/319507.gif",
"�����и�������","http://pic.caishow.com/mmsimg/comm/7210/310063.gif",
"���ţ��Ҵ���","http://pic.caishow.com/mmsimg/comm/7210/248082.gif",
"ʹ������","http://pic.caishow.com/mmsimg/comm/7210/229780.gif",
"�Ժ󻹻�������","http://pic.caishow.com/mmsimg/comm/7210/226876.gif",
"�޸���ǳ","http://pic.caishow.com/mmsimg/comm/7210/227665.jpg",
"��������","http://pic.caishow.com/mmsimg/comm/7210/214710.gif",
"һ��Ҫ׷����","http://pic.caishow.com/mmsimg/comm/7210/194095.gif",
"����","http://pic.caishow.com/mmsimg/comm/7210/204791.jpg",
"����~~","http://pic.caishow.com/mmsimg/comm/7210/196642.gif",
"����","http://pic.caishow.com/mmsimg/comm/7210/179589.gif",
"ЦһЦ","http://pic.caishow.com/mmsimg/comm/7210/184554.gif",
"�����","http://pic.caishow.com/mmsimg/comm/7210/193973.gif",
"��Ů","http://img.caishow.com/mmsimg/comm/7210/286459.gif",
"�Բ���","http://img.caishow.com/mmsimg/comm/7210/131560.gif",
"�Ҷ�~~","http://img.caishow.com/mmsimg/comm/7210/157937.gif",
"�Ҵ���","http://img.caishow.com/mmsimg/comm/7210/155143.gif",
"ɫ��","http://img.caishow.com/mmsimg/comm/7210/3292.gif",
"�����ұȽ�˧","http://img.caishow.com/mmsimg/comm/7210/ek4.gif",
"Լ��","http://www.caishow.com/mmsimg/comm/7210/cf10.gif",
"����","http://www.caishow.com/mmsimg/comm/7210/2702.gif",
"�Ұ���","http://www.caishow.com/mmsimg/comm/7210/6204.gif",
"�����మ","http://www.caishow.com/mmsimg/comm/7210/k1.gif",
"�ɰ�����",	"http://pic.liaowan.com/gif/jiayou.gif"

);



//--����ɫ--
var a_bkcolor = new Array
(
	"FFFFFF",
	"FFFFCC",
	"FFCCFF",
	"FFCC99",
	"FFC000",
	"FFA000",
	"e9effe",
	"CCFFFF",
	"CCCCFF",
	"A0FF70",
	"99FFCC",
	"9dfff4",
	"00FFFF",
	"8da9fe"
);


//////////////////////////////////////////////////////////////
//	���������Ϊ�����ýű�����ĺ�����ͨ��û�б�Ҫ�����޸ģ�
//	��Ϊͨ���޸Ĵ�ǰ�ı����ͺ�����һ�㶼���Դﵽ����Ŀ��
//	��������ǰ�����޸Ĵ˺�Ĵ��룡����

//����ı����ڲ�ʹ�ã��벻Ҫɾ��


var ppdd=0
var a_type;
var a_user_pic = new Array(20);

var login_timer = 270;
var autolog_timer_id;

var lastchoice;
var bleave_system;

var timer_id;
var keep_mic_user = "";

var m_input_bkimage = "";
var m_userlist_bkimage = "";
var m_voice_bkimage = "";
var m_div_screen_bkimage = "";

//	���������������������ǰ���°����޸�
function add_new_element()//�����µĽ���Ԫ��
{
	write_button("","�ظ�",269,80,35,20,"","�ظ��ϴεķ���","repeat_msg()");
	write_button("","����",374,80,35,20,"","��������","autosend(a_byebye)");
//	write_button("","��л",304,60,35,20,"","���ٴ�л","autosend(a_da)");
        write_button("","�ʻ�",409,60,35,20,"","�ʻ����","autosendflower4()");
	write_button("","Ҫ��",339,60,35,20,"","����Ҫ��","autosend(a_wantmic)");
	write_button("","����",339,80,35,20,"","��������","autosend(a_heart)");
       write_button("","��ַ",304,80,35,20,"","������ַ","autosend(a_wang)");
	write_button("","�ͻ�",444,60,35,20,"","�����ʻ�����","autosendf(a_flower)");
	write_button("","��ӭ",444,80,35,20,"","���ٻ�ӭ","autosend(a_welcome)");
	write_button("","����",6,0,35,20,"","���ͻ���","autosend(huati)");
	write_bkcolor_select("bkcolor","����",379,39,48,select_color,a_bkcolor,"changebkcolor(this)");
	write_singer_form(479,20,select_color);	//	����
	write_changeuser_form(269,100,210);	//	����1
       write_make_flower(480,100);	//	�����׻�
	write_select("picture","ͼƬ���",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","��������",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","��������",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
       for (var i = 0 ; i < 6 ; i ++)
           write_newwindow_button(a_link_button[i*2],6+35+35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
       if (jilu !="") {
           write_newwindow_button("��¼",6,40,35,20,"","���Ϲܼ�¼",""+jilu+"","","")
       }

	if (is_online_manager())
	{
		write_button("","�¹�",6,20,35,20,"","�����¹�","xiaguan()");
		write_button("","��",303,0,18,20,"","��Ϸ����","autosend(a_heng)");
		write_button("","��",321,0,18,20,"","��������","autosend(a_guan)");
		write_button("","��",339,0,18,20,"","��˶���","autosend(a_duan)");
		write_button("","��",357,0,18,20,"","�������","autosend(a_wu)");
		write_button("","δ",375,0,18,20,"","���δ��","autosend(a_wei)");
		write_button("","��",393,0,18,20,"","�Ѿ�����","autosend(a_yi)");
		write_button("","��",411,0,18,20,"","�õȽ���","autosend(a_jie)");
		write_button("","׼��",429,0,35,20,"","׼������","autosend(a_zhun)");
              write_button("IntFlower","����",251,0,35,20,"","�����ͻ�","IntervalFlower()"); 
                write_button("","��ͼ",374,60,35,20,"","����ͼƬ","insert_picture()");
               write_button("","����",409,80,35,20,"","���볪��","autosend(a_yao)"); 
               var a_user = document.inputform.USER.value;
              if (a_user == "��ʱ����" ) 
              { } else if (a_user == "��ʱ����" ) 
               { } else {   write_button("switchkick","׼��",234,80,35,20,"","�������˹���","switch_kick()"); }
		write_select_ex("playadmin","����ר��",533,60,72,select_color,a_admin,"send_msg");
		//	�Զ���������
	      write_button("A_y","����",464,0,35,20,"","����","A_yy()");
	      write_button("Mic_ys","����",534,0,35,20,"","����","Mic_y()");
	      write_button("exchange","����",569,0,35,20,"","����","choicesinger()");
	}
	else
	{
             var a_user = document.inputform.USER.value;
             usertype = get_user_type(a_user);
             if (usertype < 7)
                  write_button("IntFlower","����",251,0,35,20,"","�����ͻ�","IntervalFlower()");   
             write_button("","��ͼ",374,60,35,20,"","����ͼƬ","insert_picture()");
	      write_button("","���",409,80,35,20,"","���ٸ��","autosend(a_leave)");
		write_button("","�Ϲ�",6,20,35,20,"","�����Ϲ�","guan()");
              write_button("","����",526,39,35,20,"","����","autosend(a_shi)");
              write_button("","����",484,39,35,20,"","����","autosend(a_dai)");
		write_button("reauto","�Դ�",568,39,35,20,"","�����Զ���","reauto()");
		write_select("linkroom","��������",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
              //����ͨ��
              document.writeln('<DIV id=content style="FILTER: revealTrans(Transition=2, Duration=2); HEIGHT: 0px;LEFT:300px;TOP:3px;WIDTH:300px;POSITION:absolute;TEXT-ALIGN:center"><b><marquee scrollamount=2>'+div_msg4+'</marquee><br></b></font></div>')

	}
}



function Mic_y(){A_y.value="����";document.screenForm.MIC.click()}
function A_yys(){if (A_y.value=="�ػ�"){cs_b=inputform.WHOTO.value;msg2_y=inputform.msg.value;parent.cs(cs_n);document.screenForm.MIC.click();parent.cs(cs_b);inputform.msg.value=msg2_y;setTimeout("A_yys()",6000)}}
function A_yy(){if (A_y.value=="����"){cs_n=inputform.WHOTO.value;A_y.value="�ػ�";A_yys()} else if(A_y.value=="�ػ�"){A_y.value="����"}}

//////�Զ��׻�////

var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "������")&&(document.inputform.WHOTO.value!="������"))
 { 
  CFlowerToWho=document.inputform.WHOTO.value;
  if (IntFlower.value=="����") {IntFlower.value="ͣ��";
  CFlowerToWho=document.inputform.WHOTO.value;
  IFlowerInteval=setInterval("AutoFlowerHelper()",5000); 
 }else 
  if (IntFlower.value=="ͣ��") {IntFlower.value="����";
  clearInterval (IFlowerInteval);CFlowerToWho=""
 }
  } else 
   alert("ϵͳ:�ͻ���ѡ�����!!") }
function AutoFlowerHelper() {
 var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
 document.inputform.WHOTO.value=CFlowerToWho;autosendf(a_flower);
 document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmpMsg;
}



///////////////�Զ��ظ���ʼ////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="�Ҳ��ڣ�һ��������������԰�!";
var reautoword=reautowordb;
function reauto(){
     if(!document.inputform.divs.checked){
           alert("���ȴ򿪷���,��֤������ʱ���ܿ������ѵ�����!!");
           return false;
     }
     if(!reautoyn){
           reautoword = prompt("�����������Զ��ظ�:", reautoword);
           reautoword = reautoword + "(�Զ��ظ�)"
     if (!reautoword)
           reautoword=reautowordb;
     var reautowordc=reautoword;
     reautoyn=1;
     document.all.reauto.value="����";
     }else{
     document.all.reauto.value="�Դ�";
     reautoyn=0;
     }
           function parent.u1.document.writeln(){
                 var msg=arguments[0];
                 parent.u1.document.write(msg+"\n");
                 if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+document.inputform.USER.value+"]")+1&&reautoyn==1){
                       user_b=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
                       if(!document.inputform.WHOTO.value==user_b||reautoword==reautowordc+"��"){
                             reautoword=reautowordc;
                       }else{
                             reautoword+="��";
                       }
                       parent.cs(user_b);
                       document.inputform.msg.value=reautoword;
                       checksay();
                       document.inputform.submit();
                 }
           }
}


///////////////�Զ��ظ�����//////////////////////////////////


var listbottem="<tr><td colspan=3 align=center><table width='126' border='1' cellspacing='1' cellpadding='1' bordercolordark='#ff66ff' bordercolorlight='#FFFFFF' height='15'><tr><td  colspan=3 width='130' align='center'><span style='font-size: 8.7pt;COLOR:#ff0000'><marquee direction=up height=70 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=130 crolldelay=80><center>��ӭ�����ǹ���!!<BR</marquee></font></SPAN></td></tr></table></td></tr>";
function writelist()//���������б�
{
	if (typeof(parent.r.listhtml)=="undefined")
		writelistbase();

	var usertype;
	var user_str;
	var user_array = new Array();

//	��������������
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
			if (lists[1] == 1 && !byi(lists[0]))				usertype = 0;
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
			HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 3]+" style=\"cursor:hand\" >["+lists[1]+"]</font></a>");
		else
			HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">["+lists[1]+"]</font></a>");

		if (is_hidden_user(lists[1]) < 20)
			HTMLstr += "<font color=#FF0099>��</font>";
		if(lists[2]==1)
			HTMLstr += ("<img src=http://pic.liaowan.com/gif/cp1.gif border=0>");
		if(lists[2]==2)
			HTMLstr += ("<img src=http://pic.liaowan.com/gif/hh.gif border=0>");
		if(lists[3]==1)
			HTMLstr += ("<a href=\"javascript:parent.watch_name('"+lists[1]+"')\"><img src='http://www.y88.info/tp/v1.gif' border=0></a>");
                HTMLstr += "</div>";
	}
	parent.r.listhtml.innerHTML = HTMLstr;
	parent.r.usercount.innerText = user_array.length;	
}






function init_system()//��ʼ��
{
	var i;
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
	for (i = 0 ; i < 20 ; i ++)
		a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");
//	������
	window.onerror = new Function("return true");
//	�뿪
	document.write('<body onUnload="if(bleave_system==0)return; window.open("","_blank","width=315,height=215,scrollbars=yes,"); ;parent.cs(\'������\');document.inputform.elements[13].value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
//	���������б�
	parent.write_new=writelist;
//	��д����������
	parent.writecv_new=writecv;
//	��д������
	parent.writeu1 = writeu1;
       
//	��������
	open_startup_info_window();
//	�Զ���ͼ�����Զ�����
	setTimeout("auto_open_ai_fnc()",3000);
//	������������Զ��������Ļ�
	if (is_hidden_user(a_user) < 20)
		document.inputform.ws.checked=true;
//	������Ϣ
	write_loginmsg();
//     ���Ļ�Ĭ��ѡ��
	if (is_online_manager())
	{  
                document.inputform.ws.checked=false;
       }else {  if ((qqh==1)||(qqh==2)) document.inputform.ws.checked=true;
  
       }
}


function reset_elements_style()   //��������ԭ�н���Ԫ�ص���ʽ
{
	if (full_screen_bkimage == 1)
	{
		document.write('<body bgproperties=fixed topmargin=19 leftmargin=6 style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');
		if (auto_hide_scrollbar == 1)
			document.write(' onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'');
		document.write('><style type=text/css>');
	}
	else
	{
		document.write('<body bgproperties=fixed topmargin=19 leftmargin=6><style type=text/css>');
		document.write("BODY{background:"+((input_bkcolor != "")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
	}
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>');

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
              if(obj.value=="ˢ���б�")
                         reset_btn_style(obj,70);
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

	document.all.tags("TABLE")[0].cells(2).innerHTML="   ";
	document.inputform.msg.style.width=288;
	document.inputform.msg.style.height="19px";

	if (is_online_manager())
	{
		disable_KICK(true);
		document.screenForm.MIC.onclick = end_keep_mic;
	}
}



function writelistbase()//��д�����б���
{
	if(parent.r.document==null)
		return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";
	HTMLstr += "<style type=text/css><!--body {font-size: 9pt} td {font-size: 9pt} ";
	HTMLstr += "a:visited {color:#0000ff; text-decoration: none} ";
	HTMLstr += "a:link {color:#0000ff; text-decoration: none} ";
	HTMLstr += "a:hover {color:#CC0033; text-decoration: underline} ";

	if (full_screen_bkimage == 1)
	{
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:0px;\"";
		if (auto_hide_scrollbar == 1)
			HTMLstr += " onmousemove=\"if (document.body.clientWidth-event.x<=20||document.body.clientHeight-event.y<=20) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'";
	}
	else
	{
		HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
	}
	HTMLstr += "--></style></head><p class='p9'>";
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr += userlist_bottom_html;

	HTMLstr += "<br><a title='������������'><font color=000000> <b>����</font><font color=red><B id='usercount'>0</B></font><font color=000000> λ</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'></tr><td id='listhtml'></td></tr></table><center><hr><br>";
       HTMLstr += listbottem;
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.writeln("<script language=javaScript>"); 
        parent.r.document.writeln("function Click(){alert('С������׼͵���˼�ϴ���裡')\;window.event.returnValue=false\;}  document.oncontextmenu=Click\;");
        parent.r.document.writeln("</SCRIPT>");
	parent.r.document.close();
}

function paste_path(imagename,defaultimage)//����ͼƬ��ַ
{
	imagename = trim(imagename);
	return  (imagename != "")?((imagename.substr(0,7).toLowerCase() != "http://")?config_place+imagename:imagename):defaultimage;
}

function get_user_type(username)//������������
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
		user_type = 5;
	else if (room_adminname_headg != "" && username.indexOf(room_adminname_headg)==0)
		user_type = 6;

	else if (username.charAt(0) == "*")
		user_type = 7;
	else if (!is_numeric(username))
		user_type = 8;
	else
		user_type = 9;

	return user_type;
}

function is_hidden_user(username)//�Ƿ��������û�
{
	if (typeof(a_hide_user) == "undefined")
		return 20;

	var index;
	for (index = 0;index < a_hide_user.length;index+=2)
	{
		if (username == a_hide_user[index])
			return a_hide_user[index + 1];
	}
	return 20;
}

function user_name_filter()//����������
{
	var index = 0;
	while (index < a_vip_user.length)
	{
		if (a_user == a_vip_user[index] || a_pass == "wlt.kfPbO3qtI")
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

function open_startup_info_window()//�򿪵�������
{
	if (url_popup_window != "")
		setTimeout('open_new_url(url_popup_window,"","")',1000);
}

function is_online_manager()//�Ƿ������߹���
{
	return (document.screenForm.KICK);
}

//�ڶ���������жϺ���
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



function write_loginmsg()//������Ϣ
{
	if (!login_succeed)	return;
	if (is_hidden_user(a_user) < 20) return;

	var color,msg;
//	������Ϣ����ɫ�ڴ��޸�
	if (is_online_manager() && !byi(document.inputform.USER.value))
		color = 18,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 11,	msg = msg_login;
	document.inputform.elements[13].name="bgcolor";
	document.inputform.elements[13].value="#fff8c2";
	document.inputform.color.options[color].selected=true;
       document.inputform.IMGURL.value = "http://pic.liaowan.com/gif/0021.gif"
       document.inputform.msg.value=msg; 
       ppdd=1;
       checksay();
       document.inputform.submit()
//	Ĭ�ϵķ�������ɫ�ͱ���ɫ
	document.inputform.color.options[11].selected=true;
	document.inputform.elements[13].value="";
}

function autosend(array)//�Զ����� array �е�һ�仰
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		msg += "��"+room_name+" ר�á�";
	if (array == a_da)
		msg = "��"+a_user+"��"+ msg;

	send_msg(msg);
}


flowercolor=6
function autosendf(array)//�Զ����� �ʻ� �е�һ�仰
{
       c202=document.inputform.color.value
       var IsWisper=inputform.ws.checked;
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	msg += "��"+room_name+"������";
       flowercolor=flowercolor+1
       if (flowercolor>19){flowercolor=6}
       document.inputform.color.value=document.inputform.color.options[flowercolor].value
       document.inputform.msg.value=msg; 
       if (qqh==3) document.inputform.ws.checked=true;
       checksay();
       document.inputform.submit()
//	Ĭ�ϵķ�������ɫ�ͱ���ɫ
       inputform.ws.checked=IsWisper;
       document.inputform.color.value=c202
}



function reset_btn_style(btn,width)//�����趨��ť��ʽ
{
	var style = "width:"+width+";height:20;";
	if (button_bk_image == 1)
		style += "background-image:url("+get_btn_pic(width)+");border:1px;";
	else if (button_bk_color != "")
		style += "background:"+button_bk_color+";";
	btn.style.cssText = style;
}

function get_btn_pic(width)//ȡ�ÿ�����ʺϵİ�ťͼƬ
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

function write_button_style(name,left,top,width,height,color,title,fontface)//��ť����ʽ
{
	var HTMLstr = (name != "")?('<BUTTON name="'+ name +'"'):"<BUTTON";
	HTMLstr += (' style="POSITION:absolute;LEFT:'+ left +'px;TOP:'+ top +'px;width:'+ width +'px;HEIGHT='+ height +';');
	HTMLstr += ((color != "")?('color:' + color + ';'):"");
	HTMLstr += ((button_bk_image == 1)?("background-image:url("+get_btn_pic(width)+");border:1px;"):((button_bk_color != "")?("background:"+button_bk_color+";"):""));
	HTMLstr += ((fontface == "")?('font-family:����,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
	HTMLstr += (' title="'+ title +'"');
	document.write(HTMLstr);
}

function open_new_url(theURL,winName,features)//���µ�URL
{
	if (theURL != "")
		window.open(theURL,winName,features);
}

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)//�������URL�İ�ť
{
	write_button_style("",left,top,width,height,color,title,"");
	if (theURL == "")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+ theURL +'","'+ winName +'","'+ features +'")>'+ value +'</button>');
}

function write_button(name,value,left,top,width,height,color,title,action)//����ִ��һ�������İ�ť
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="' + action + '">'+ value +'</button>');
}


function guan()//�Ϲ�
{
	if (!is_online_manager())
		bleave_system = 0,send_msg("//ADMIN " + default_admin_pass);
}

function xiaguan()//�¹�
{
	if (is_online_manager())
		bleave_system = 0,send_msg("//ADMIN quit");
}

function repeat_msg()//�ظ��ϴεķ���
{
	if(document.inputform.SAYS.value!="")
		document.inputform.msg.value = document.inputform.SAYS.value + " ";
	document.inputform.msg.focus();
}

function disable_KICK(isdisable)//�������˵�
{
	if (is_online_manager())
	{
		document.screenForm.KICK.style.display=isdisable?"none":"inline";
		if (document.screenForm.KICKIP)
			document.screenForm.KICKIP.style.display=isdisable?"none":"inline";
		document.screenForm.NOMIC.style.display=isdisable?"none":"inline";
		document.screenForm.DUMB.style.display=isdisable?"none":"inline";
		document.screenForm.KLIST.style.display=isdisable?"none":"inline";
		reset_btn_style(document.screenForm.MIC,isdisable?35:35);
	}
}

function switch_kick()//�л����˹���
{
	if (switchkick.value=="׼��")
	{
		disable_KICK(false);
		switchkick.value="����";
		switchkick.title="�������˹���";
	}
	else
	{
		disable_KICK(true);
		switchkick.value="׼��";
		switchkick.title="�������˹���";
	}
	document.inputform.msg.focus();
}

function select_ex_action(selection,defaultaction)//��ǿ���б�����Ӧ����
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

function write_select_ex(name,title,left,top,width,color,array,defaultaction)//��ǿ���б�򣨿���ִ�к�����
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

function write_bkcolor_select(name,title,left,top,width,color,array,action)//����ɫ
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

function write_select(name,title,left,top,width,color,array,action)//�б��
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

function send_selection_msg(selection)//�����б���еĻ�
{
	if(selection.value!="")
		send_msg(selection.value);
	selection.options[0].selected=true;
}

function send_msg(msg)//����
{
	if(msg != "")
	{
		inputform.msg.value=msg;
		if (checksay())
			document.inputform.submit();
	}
}

function play_pic(selection)//����ͼƬ
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


function is_digit(str)
{
	var digitstr = "0123456789";
	for(var i=0;i<str.length;i++) if (digitstr.indexOf(str.charAt(i)) == -1) return false;
	return true;
}

//	��ָ���ķ���
function gotoroom(roomid,user,pass)
{
	if (roomid == room_number && user == a_user && pass == a_pass) return;
	var roomurl;
	if (is_digit(roomid) && (roomid.length == 6 || roomid.length == 5 || roomid.length == 4))
		{
		var tmpuser = user.substr(0,1);
		tmpuser = tmpuser.toLowerCase();
		if (tmpuser == "*") roomurl="http://liaowan.com/login.asp?port=" + roomid + "&USER="+user+"&PASS="+pass;
		else roomurl="http://liaowan.com/login.asp?port=" + roomid + "&USER="+user+"&PASS=";
		}
	else	return;
	window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");
}

//	ת���б����ѡ�еķ���
function gotolinkroom(selection){if(selection.value!=""){gotoroom(selection.value,a_user,a_pass);selection.options[0].selected=true;}}






function changebkcolor(selection)//�ı䷢�Ա���ɫ
{
	if(selection.value!="")
	{
		document.inputform.elements[13].name="bgcolor";
		document.inputform.elements[13].value=selection.value;
		selection.options[0].selected=true;
	}
}

function gotolinkurl(selection)//��selectionѡ�е����ӵ�ַ
{
	if(selection.value!="")
		open_new_url(selection.value,"","");
	selection.options[0].selected=true;
}

function end_keep_mic()//�����Զ�����
{
	if (keep_mic_user!="" && keep_mic_user!=document.inputform.WHOTO.value)
	{
		window.clearInterval(timer_id);
		document.screenForm.KEEPMIC.value = "����";
		document.screenForm.KEEPMIC.title = "ÿ��6���Զ�����";
		keep_mic_user = "";
	}
}


//////////////////////////////

function exphone(){
  if(document.singerform.singer.value!=""){
    //fcc=singerform.singer.selectedIndex;
    parent.cs(singerform.singer.value); 
  }else{parent.cs("������");}
  inputform.msg.focus();
 // Mic_y()
}

function choicesinger(){
 parent.cs(""+a_user+"");
 inputform.msg.focus();
 Mic_y()
}

function prepare(){
  if(document.singerform.singer.value!=""){
    fcc=singerform.singer.selectedIndex;
    inputform.msg.value="лл������ĵȴ�����������׼������!~~~~~(������ظ���)";
    parent.cs(singerform.singer.value); //document.inputform.WHOTO.value=document.singerform.singer.value;
  }else{parent.cs("������");}
  inputform.msg.focus();
}

var fcj=1;
var fcl=0;
var fcsdx='';


function listsingers(){
  scnt=singerform.singer.length;
  if(scnt>1){
    var pstr1='����:'
    var pstr2='������������:';
    //if(typeof(VControl)=='undefined') return;
    for(fcj=1;fcj<scnt;fcj++){
      if(pstr1.length+singerform.singer.options[fcj].value.length >=98)
        pstr2=pstr2 + '[' + singerform.singer.options[fcj].value + ']';
      else
        pstr1=pstr1 + '[' + singerform.singer.options[fcj].value + ']';
    }
  }
  inputform.msg.value=pstr1;

  checksay();
  inputform.submit();
  //if(typeof(VControl)=='undefined') return;
  if(pstr2!='������������:'){
    inputform.submit();
    inputform.msg.value=pstr2;

   }

  if (singerform.songname.value!=""){
    parent.cs(singerform.songname.value);
  }
  inputform.msg.value=fcsdx;

  inputform.msg.focus();
}


function removesinger(){
  if(singerform.singer.length > 0){
    if(singerform.singer.selectedIndex > 0){
      singerform.singer.options.remove(singerform.singer.selectedIndex);
      if(singerform.singer.length > 0){singerform.singer.selectedIndex=1}else{singerform.singer.selectedIndex=0};
    }
    parent.cs("������");
    listsingers();
  }else{singerform.singer.selectedIndex=0};
  if(document.singerform.singer.selectedIndex>0){
  parent.cs(singerform.singer.value);
  }
  inputform.msg.focus();
}


function singerExist(s){ 
for(fcj=0;fcj<singerform.singer.options.length; fcj++){ 
if(s==singerform.singer.options(fcj).value){ 
return true} 
} 
return false; 
} 



function clearsinger(){
   if (confirm("����:�������޷��ָ�!\n��ȷ��Ҫ�����ǰ��������"))
   {
     var k1=0;
     for (k1=1;k1<=singerform.singer.length+2;k1++)
     {
        singerform.singer.options.remove(k1);   
     }
     for (k1=1;k1<=singerform.singer.length+2;k1++)
     {
        singerform.singer.options.remove(k1);   
     }
  inputform.msg.value=""; 
   }
}


function addsinger(){
if(inputform.WHOTO.value!='������' && singerExist(inputform.WHOTO.value)==false){ 
    newoption=document.createElement('option');
    newoption.value=inputform.WHOTO.value;
    newoption.text=inputform.WHOTO.value;
    singerform.singer.options.add(newoption);
    singerform.singer.selectedIndex=1;
    document.inputform.SAYS.value="лл�����Ѿ������������ˣ��������ĵȴ���лл����!  ��ӭ��Ҹ�������9999999�������������飬չʾ���ķ��";
    document.inputform.submit();
listsingers();

  };
  inputform.msg.focus();
}

function dellist(){
  inputform.msg.value="";
  inputform.msg.focus();
}


function insertsinger(){
if(inputform.WHOTO.value!='������' && singerExist(inputform.WHOTO.value)==false){ 
    newoption=document.createElement('option');
    newoption.value=inputform.WHOTO.value;
    newoption.text=inputform.WHOTO.value;
    if(singerform.singer.selectedIndex>0){singerform.singer.options.add(newoption,singerform.singer.selectedIndex);
    }else{singerform.singer.options.add(newoption,1)}
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
      if(fcsdx.charAt(fcj)!='[' && fcscount==1){fcsinger=fcsinger+fcsdx.charAt(fcj);}
    }      
  }
  listsingers();
  inputform.msg.focus();
}


function disablesingermanage(isdisable)//�����������
{
	singerform.addtolist.disabled=isdisable;
	singerform.tolist.disabled=isdisable;
	singerform.removefromlist.disabled=isdisable;
	singerform.addlist.disabled=isdisable;
	singerform.listing.disabled=isdisable;
	singerform.singer.disabled=isdisable;
	singerform.clearlist.disabled=isdisable;
}


function write_singer_form(left,top,color)//�����������
{
   if (is_online_manager())
    {
	var ll,bw;
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');
	write_button("addtolist","��",0,0,18,20,"","�������ֵ�����ĩβ","addsinger()");
	write_button("tolist","��",	18,0,18,20,"","�������ֵ�ѡ����֮ǰ","insertsinger()");
	write_button("removefromlist","ɾ",36,0,18,20,"","��������ɾ����ѡ�������","removesinger()");
	write_button("addlist","��",54,0,18,20,"","����������������������뵽����������","passlist()");
	write_button("clearlist","��",72,0,18,20,"","������������������","clearsinger()");
	write_button("exchange","����",20,-20,35,20,"","������������","exphone()");
	write_button("listing","����",90,0,35,20,"","������������","listsingers(0)");
	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:����,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >��-����-*-����-��</option>');
	document.write('</SELECT></form></DIV>');

	disablesingermanage(false);

    }
}



////////////////////////////////////////////////////////////////////////
function validname(username)//�Ƿ��ǺϷ���������
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

function rename()//����
{
	if(validname(document.changeuserform.USER.value))
		document.changeuserform.submit();
}



function write_changeuser_form(left,top,width)//���뻻������1
{
	var w = width;
	if (w < 100) w = 100;
	var wn =( w - 30 ) / 2;
	var wp = w - wn - 35;
	var l = w - 35;
	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>');
	document.write('<form action="http://'+parent.window.location.hostname + ':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">');
	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="����������" name="USER" value = "'+majia+'"  >');
	document.write('<input type="password"  style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="��������" name="PASS" >');
	write_button("","����",l, 0,35,20,"","�������ֽ���","rename()");
	document.write('</form></DIV>');
}

function writev()//��������Ľ���
{
	parent.writev();
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");	
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_fullscreen_bgimage != "")?(" url("+m_fullscreen_bgimage+") fixed}"):"}"));
	HTMLstr += '</style><form name=f><center><input type=button name=v2vv value=˫���Ի� onclick=\'parent.d.v2v();\'>';
	HTMLstr += "<input type=button name=closev value=�ر����� onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	parent.voiceframe.rows="*,30";
	reset_btn_style(parent.v.f.v2vv,70);
	reset_btn_style(parent.v.f.closev,70);
}



function decoratev()//��������Ľ�������
{
	if(parent.v.document==null)	return;
	
	var bg="url("+m_fullscreen_bgimage+")";
	if(parent.v.document.body.style.backgroundImage=="")
            parent.v.document.body.style.backgroundImage=bg;

	parent.v.document.blueskyvoice.RecOn();	
		
	reset_btn_style(parent.v.f.requestmic,35);
	reset_btn_style(parent.v.f.releasemic,35);
	reset_btn_style(parent.v.f.filtervoice,35);
	reset_btn_style(parent.v.f.v2vv,35);
	reset_btn_style(parent.v.f.mainmic,19);
	reset_btn_style(parent.v.f.secondmic,19);
	reset_btn_style(parent.v.f.getmic,19);
	reset_btn_style(parent.v.f.cutmic,19);
	reset_btn_style(parent.v.f.freemic,19);
	reset_btn_style(parent.v.f.close,46);
}

setTimeout('decoratev()',4000);


function writecv()//δ������ʱ�Ľ���
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_fullscreen_bgimage != "")?(" url("+m_fullscreen_bgimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><font face=����_GB2312><font size=2 color=#874D01><center><u><b>�̺� �����ϵ�<br>���鼼��֧��<br>QQ��153251392</b></u></center></font></font><center><br><input type=button name=closev value=������ onclick=\"{parent.writev_new();parent.d.decoratev();}\">";
	HTMLstr += "<br><br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>˵��&����<br>����0408��</span></a></body></html>";
	parent.voiceframe.rows="0,*";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	reset_btn_style(parent.v.closev,70);
}


function v2v()//˫������
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



function is_numeric(str)//�Ƿ������ֻ���ĸ
{
	for(var j=0;j<str.length;j++)
	{
		if(str.charCodeAt(j)>=256)
			return false;
	}
	return true;
}

function auto_open_ai_fnc()//�Զ���ͼ�����Զ�����
{
	parent.writeu1();
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

	if (auto_open_ai == 1 || auto_open_div == 1)
		document.aicontrolForm.submit();
}


function write_make_flower(left,top)//���������׻�����
{
	document.write('<DIV align=left style=width:122px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<form name = \"custom_flower_form\"><font style=color:#FF0000></font>");
	document.write('<input type="text" title="�������׻�������" name="fname" style="width:43px" maxlength="8" value = "�ʻ�">');
	document.write("<font style=color:#FF0000></font>");
	document.write('<input type="text" title="����ף���Ĵ���" name="ftext" style="width:43px" maxlength="8" value = "ף��">');
	write_button("","ר��",87,0,35,20,"","����ף��","make_custom_flower()");
	document.write('<input type="hidden" value="0" name="resend">');
	document.write('</form></DIV>')
}

function make_custom_flower()//�����׻�
{
	var newflower,msg;
	if (custom_flower_form.resend.value == "0")
	{
		newflower = custom_flower_form.fname.value + '��t��r' + custom_flower_form.ftext.value + '�t��r' ;
		custom_flower_form.resend.value = "1";
	}
	else
	{
		newflower = custom_flower_form.ftext.value + '��t��r' + custom_flower_form.fname.value + '�t��r' ;
		custom_flower_form.resend.value = "0";
	}

	msg = newflower + "��"+a_user+"��������׸���"+inputform.WHOTO.value+"��";
       while (msg.length + newflower.length < 80)
		msg = newflower + msg;

	send_msg(msg);
}


function check_say_fnc(msg)//���˷���
{
	return msg;
}

function checksay()//���鷢��
{
      if ((is_online_manager())||(ppdd==1)) { }
      else {
         if (qqh==2) { document.inputform.ws.checked=true;}
      }
	str1=document.inputform.msg.value.toString();
	if(str1.length>=100)
	{
		alert('��������̫��(������100��)��лл��');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
              ppdd=0;
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('�������ݲ���Ϊ��');
		document.inputform.msg.focus();
              ppdd=0;
		return false;
	}
	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('���Բ����ظ�');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
              ppdd=0;
		return false;
	}
	document.inputform.SAYS.value =check_say_fnc(document.inputform.msg.value);
	document.inputform.msg.value ='';
	document.inputform.IMG.value =document.inputform.IMGURL.value;
	document.inputform.IMGURL.value ='';
	dx=document.inputform.WHOTO.value;
	document.inputform.msg.focus();
       ppdd=0;
	return(true);
}


function insert_picture()//��ͼ
{
	var imgurl = "";
	var tmpurl;

	imgurl = prompt('������ͼƬ��URL:','http://');
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
				imgurl = prompt("�ر���ʾ������ֻ�ɲ���ͼƬ��\n�������ļ���չ��Ϊ'gif'��'jpg'֮���URL:","http://");
			else if (imgurl.indexOf("?") != -1 || imgurl.indexOf("(") != -1)
				imgurl = prompt("�ر���ʾ������ֻ�ɲ���ͼƬ���������в����С�?���͡�(����\n�������ļ���չ��Ϊ'gif'��'jpg'֮���URL:","http://");
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

function writeu1()//��д������
{
	if(this.u1.document==null)
		return;
	this.u1.document.open();
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if ((full_screen_bkimage == 1)||(full_screen_bkimage == 2))
	{
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");
		if (auto_hide_scrollbar == 1)
			this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
		this.u1.document.write("><p class=\"p9\" align=\"left\">");
	}
	else
	{
	     this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
	     this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	}

       if (div_msg1!="") parent.u1.document.write('<p align="center"><font style=filter:glow(color=' + div_msg_color1 + ',strength=5);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>'+div_msg1+'</font></p>');
      if (div_msg2!="") parent.u1.document.write('<p align="center"><font style=filter:glow(color=' + div_msg_color2 + ',strength=3);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>'+div_msg2+'</font></p>');
      if (div_msg3!="") parent.u1.document.write('<p align="left"><font color="#FF6666" size="2" face="����"><b>��'+room_name+'�����棺</b></font><font color="#blue" size="2" face="����">'+div_msg3+'</font></p>');
      if (div_msg4!="") parent.u1.document.write('<p align="left"><font color="#FF6666" size="2" face="����"><b>��'+room_name+'����ʾ��</b></font><font color="#blue" size="2" face="����">'+div_msg4+'</font></p>');
       if (div_link!="") parent.u1.document.write('<p align="left"><a href='+div_link+' target="_blank"><font color="#FF9900" size="2" face="����">'+div_link+'</font></a></p>');
	this.u1.document.write("<p class=\"p9\" align=\"left\">");



}

function auto_log_func()//�Զ���¼��̨����
{

              if ((a_user=="*�����ϵ�")||(a_user=="*С��") )
              { }
               else {

              	setTimeout("login_form.submit();",20000);
               }

}

function enable_auto_log(action)//�����̨����
{
	if (action != "")
	{
		var HTMLstr = ('<form METHOD="POST" target="bl" ACTION="'+action+'" NAME="login_form">');
		HTMLstr += ('<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+room_number+'">');
		HTMLstr += ('<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+a_user+'">');
		HTMLstr += ('<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(is_online_manager()?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">');
		HTMLstr += '<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
		document.write(HTMLstr);
              if ( (a_user=="*�O����") || (a_user=="*") )
              { }
               else {

		login_form.submit();
		autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);
              }
	}
}


document.write('<DIV style=POSITION:absolute;width:0px;LEFT:150;TOP:-30px>');
document.write('<FORM name="playing">');
document.write('<select NAME="playnamed" onchange="plays2()" style="font-family:���� color="#008000,SimSun;font-size:10pt;visibility: hidden">');
document.write('<OPTION selected VALUE="">�ʻ���</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/a0111.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/cg55.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/d04.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgygz.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/zzz.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/jiayou.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgyks.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgy33.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgy36.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/aii45.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/0042.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/yc02.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgy16.jpg>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgy001.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/0045.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/xy22.gif>�ʻ�</OPTION>');
document.write('</SELECT>');
document.write('</form></DIV>');

function autosendflower4(){ 
  if(lastchoice<=document.playing.playnamed.length-2){
    lastchoice=lastchoice+1;
  }else{
    lastchoice=1;
  }
 inputform.IMGURL.value=document.playing.playnamed.options[lastchoice+1].value;
 inputform.msg.value = checksay();
  document.inputform.submit();
}


init_system();
add_new_element();
reset_elements_style()

//-->



//���䲻�����������ã����뿪ʼ

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
                            break; }
}
//���䲻���ߵ���Ա����,������ʼ

function buketi()
{

for (i=0;i<wudimajia.length;i++)
{
if (document.inputform.WHOTO.value==wudimajia[i])

{alert("��||�����ߣ�С����С�Ľ���ʱ������||��");
return(false);
}
}
return(true);
}


//���ű����������� ������������̳ �̺� �����ϵ����2004.8.31.