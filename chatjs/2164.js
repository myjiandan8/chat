<!--
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;

var config_place = "http://asp5.6to23.com/gyyj2001/my/";

var room_owner="*���ڡ��졡�۩�*�����㡡˧�۩�";			//	��������
var room_name="ĺ��΢��";			//	��������
var room_adminname_head="*ĺ��΢��";			//	���ҹ�����
var room_number="840079";			//	�����
var room_link_url = "http://763326.bliao.com";	//	����ĵ�ַ
var black_roomname="";			//	˫���������ƣ������������˫�����뽫��������Ϊ��
var black_roomnumb="";			//	˫���������

//	�����б�������HTML����
var userlist_top_html = "<table border=0 width=120px cellspacing=0><tr><td align=middle><img src=http://asp5.6to23.com/gyyj2001/my/my.gif></td></tr></table>";
var userlist_bottom_html = "<img src=http://asp5.6to23.com/gyyj2001/yy/57.gif border=0></td></br><br><tr><td colspan=3 align=center><table width='96' border='1' cellspacing='0' cellpadding='0' bordercolordark='#000000' bordercolorlight='#880099' height='15'><tr><td  colspan=3 width='103' align='center'><span style='font-size: 8.7pt;COLOR=#880099'><marquee direction=up height=70 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=4 width=133 crolldelay=80><center>����������<BR>*���ڡ��졡�۩�<BR>*�����㡡˧�۩�<BR>��ӭ��ҹ���<BR>ףĺ��΢����������<BR>��Զ���Ŀ��֣�<BR>�����Ҹ�����飡</marquee></font></SPAN></td></tr></table></td></tr><a href=http://763326.bliao.com target=_blank>";

var userlist_bkcolor = "#E8F4E0";	//	�����б����ı���ɫ
var userlist_bkimage = "http://asp5.6to23.com/gyyj2001/my/zx.jpg";	//	�����б����ı���ͼ������Ϊ�մ���ʹ����������ͼƬ
var voice_normal_color = "##C078FF";	//	����������ʱ��ͼ����ɫ
var voice_v2v_color = "#949494";	//	˫������ʱ��ͼ����ɫ
var voice_vr_color = "#00D000";		//	����Ƶʱ��ͼ����ɫ

var div_screen_bkcolor = "";		//	��������ɫ
var div_screen_bkimage = "http://asp5.6to23.com/gyyj2001/my/fb1.jpg";		//	��������ͼƬ	

var voice_bkcolor = "#FBE0E7";		//	�������ı���ɫ
var voice_bkimage = "";				//	�������ı���ͼ���մ���ʹ��������ͼƬ

var input_bkcolor = "FBE0E7";		//	����������ɫ
var input_bkimage = "http://asp5.6to23.com/gyyj2001/my/tp1.jpg";		//	����������ͼƬ
var input_msg_color	= "#0000FF";	//	�������������������ɫ
var input_msg_bkcolor = "#FFCC99";	//	��������������򱳾�ɫ

var body_text_color	= "#880099";	//	����������ɫ
var select_color = "#9C54E3";		//	�б������ɫ
var select_text_color = "#880099";	//	�б��������ɫ
var button_text_color = "#9C54E3";	//	��������ť����ɫ
var button_bk_image	= 1;			//	��ťʹ�ñ���ͼƬ��1����ʹ�ã�0������ʹ��
var button_bk_color = "";	//	��������ť��ʹ��ͼƬʱ����ɫ

var full_screen_bkimage	= 1;		//	�Ƿ�ʹ�����屳��ͼƬ0������ʹ�ã�1����ʹ��

//	��ť����ͼƬ  ���,�ļ���
var a_btn_pic = new Array
(
	17,		"http://asp5.6to23.com/gyyj2001/my/u18.gif",
	18,		"http://asp5.6to23.com/gyyj2001/my/u18.gif",
	19,		"http://asp5.6to23.com/gyyj2001/my/u18.gif",
	35,		"http://asp5.6to23.com/gyyj2001/my/u35.gif",
	46,		"http://asp5.6to23.com/gyyj2001/my/u46.gif",
	70,		"http://asp5.6to23.com/gyyj2001/my/u70.gif"
);

var url_popup_window = "";			//	����������ʱ�����Ĵ��ڣ����Ϊ���򲻵���
var	only_registr_user = 0;			//	ֻ����ע���û�����,0���������ƣ�1����ֻ����ע���û�����
var	only_chinese_name = 0;			//	ֻ���������û�����,0���������ƣ�1����ֻ���������û�����
var default_admin_pass = "111";		//	Ĭ�ϵĹ���Ա�Ϲܿ���


var auto_open_ai = 1;				//	�Զ���ͼ��,0�������򿪣�1�����Զ���
var auto_open_mic = 1;				//	�Զ�������,0�������򿪣�1�����Զ���
var auto_open_div = 1;				//	�Զ�����,0������������1�����Զ�����
var multi_singer_list = 0;			//	�Ƿ������ظ�����0����������1��������

var msg_login		=	"���ҡ�"+a_user+"�����ˣ�����" + room_name + "�����������ļ�~~~";
var msg_admin		=	"��Һã���"+a_user+"���Ϲ���,������Ϊ��ҷ���:)";
var msg_quitadmin	=	"��"+a_user+"�����¹��ˣ�лл��Ҷ��ҵ�֧�֣���";
var msg_leave		=	"��λ����"+a_user+"������һ����,�´��ٺʹ���ģ�";
var msg_auto_spack	=	"����Щ����ʱ�뿪һ�£�һ����ͻ�������";
var msg_back_spack	=	"��Һ�ѽ���һ����ˣ�������ʲô�أ�����Ҳ��������������";

//	�������Ӱ�ť
var a_link_button = new Array
(
	"��ҳ","http://www.sz22.com/web/763326/",
        "����","http://free.activeclub.net/script/login/login.asp?community_id=217833",
	"��̳","http://li8273.68l.com/bbsxp/",
	"����","http://asp5.6to23.com/gyyj2001/guestbook/index.asp",
	"ע��","http://admin.bliao.com/user/login.htm",
	"����","http://admin.bliao.com/admin/s_admin.php",
	"���","http://photo.163.com/openalbum.php?username=cdfish",
	"����","http://gdspig.51.net/tm.htm"
);

//	�����е� VIP ����
//	����1����������2�����߼�����... 3����5 �ɹ�����,���������ڲ�ʹ��
var a_vip_user = new Array
(
	"*�o�Z����", 2,"*���ڡ��졡�۩�", 1,"*�����㡡˧�۩�", 1, "*���ꩫ����",5,
       "*���ꩫʫ��",  5,"*��ĺ������",  5, "*���ꩫ��ݯ", 5, "*��ĺ�����J", 5,"*��ĺ������", 5,
       "*��ĺ���Ǹ�",  5,"*�ν��γ��ơ�",4, "*ĺ��΢��",7,    "*���ꩫ��˪", 5,"*���ꩫ����", 5,
       "*",4,"*��ĺ������", 1, "*���ꩫ����", 5, "*��ĺ����˧", 1,"*���ꩫ����", 5,
       "*���ꩫ�w��",  5,"*��ĺ������",  5, "*��ĺ��˧˧", 5, "*���ꩫ���", 5,"*���ꩫ����", 5,
       "*���ꩫ�ꃺ",  5,"*��ĺ������",  5, "*��ĺ����Ȼ", 5, "*���ꩫ����", 5,"*��ĺ������", 5,
       "*��ĺ��ֿ��",  5,"*���ꩫ��ܰ",  5, "*��ĺ���o��", 5, "*���ꩫ���d", 5,"*��ĺ������", 5,
       "*��ĺ������",  5,"*��ĺ����",    5, "*���ꩫ����", 5, "*���ꩫ����", 5,"*���ꩫ����", 5,
       "*��ĺ���o�M",  5,"*��ĺ�������",5, "*��ĺ����ϣ", 5, "*���ꩫ�ΜI", 5,"*", 5,
       "*��ĺ����Ӱ",  5,"*��ĺ������",  5, "*��ĺ����˧", 5, "*���ꩫ����", 5,"*", 5,
       "*���ꩫ�t�t",  5,"*���ꩫƮ��",  5, "*��֧������",  4, "*���ꩫ��ѩ", 5,"*", 5,
       "*���ꩫ�w��",  5,"*���ꩫ����",  5, "*���ꩫ����", 5, "*���ꩫ����", 5,"*", 5,
       "*��ĺ������",  5, "*��ĺ������", 5, "*���ꩫ���", 5, "*��ĺ���ǿ�", 5,"*", 5,
       "*���ꩫ����",  5, "*���ꩫ����", 5, "*��ĺ���w��", 5, "*��ĺ���¶�", 5,"*", 5,
       "*���ꩫ����",  5, "*���ꩫ����", 5, "*��ĺ������", 5, "*���ꩫ��Ҷ", 5,"*��ĺ����ŵ", 5,
       "*���ꩫо��",  5, "*���ꩫ��Ҷ", 5, "*��ĺ�����", 5, "*���ꩫ��ŵ", 5,"*���ꩫ؈؈", 5,
       "*���ꩫѩ��",  5, "*��ĺ��ѩ��", 5, "*��ĺ�����", 5, "*��ĺ��˪��", 5,"*���ꩫ����", 5,
       "*���ꩫ����",  5, "*���ꩫ����", 5, "*���ꩫ����", 5, "*���ꩫ����", 5,"*��ĺ��С��", 5,
       "*��ĺ������",  5, "*���ꩫ��ʹ", 5, "*��ĺ������", 5, "*��ĺ����", 5,"*���ꩫ����", 5,
       "*��ĺ������",  5, "*��ĺ������", 5, "*���ꩫ����", 5, "*���ꩫYOYO", 5,"*��ĺ������", 5,
       "*���ꩫĺ��",  5, "*��ĺ���ȼ�", 5, "*", 5,"*��ĺ������", 5, 
        "",                          4
);

//�������������ˣ����������а����������ֵ����ѣ�ֻҪ���������VIP���ѣ���׼���뷿�䡪��
var a_name_filter = new Array
(
	"*���ꩫ����","*��ĺ������","��","��","��","*���ꩫС�M�H��","����","��ͷ"
);
// ��һ������ӱ����������
// �������
var bianyi = new Array
(
"*����D����","*ĺ��΢��",
"*������һ�𷢴�",
"*�Ȼ�D���۷�",
"*��D����S�󨩣ר�"
);
// �Ƿ񷨱��¹���
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

//���������ˣ����ƣ�����ȼ�������������ǿ�������ģ��������������������ѿ��Կ����������֡���
var a_hide_user = new Array
(
	"*��ĺ������",	0,
	"*",    0,
	"*",    0,
	"*",			2
);

//��������˵�����ڴ��޸��������ֵ���ɫ����
var a_usertitle = new Array
(
	0,	"ĺ��΢���ھQ����",	"gl1.gif",	"#FF0000",	"#FFFFFF",
	1,	"��������",	"sz.gif",	"#2C00A5",	"#FFFFFF",
	2,	"���", 	"jx.gif",	"#8800ff",	"#FFFFFF",
	3,	"���Ҹ���",	"sz.gif",	"#0016A5",	"#FFFFFF",
	4,	"�������e����",	"x2.gif",	"#006400",	"#FFFFFF",
	5,	"ĺ��΢������",	"x1.gif",	"#C30072",	"#FFFFFF",
	6,	"ĺ��΢������",	"x3.gif",	"#0033FF",	"#FFFFFF",
	7,	"ĺ��΢�����",	"ao3.gif",	"#FF50A7",	"#FFFFFF",
	8,	"ĺ��΢���α�",	"ao1.gif",	"#FF9428",	"#FFFFFF",
	9,	"ĺ��΢������",	"ao.gif",	"#0092C3",	"#FFFFFF"
);
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
	"����˫��",		"757370",
	"�ȴ�����",		"",
	"�ȴ�����",		""
);

//�����������ӡ���
var a_linkurl = new Array
(
        "��Ƶ����",		"http://2164.liaowan.com/RB/1/",
	"�û�ע��",		"http://admin.bliao.com/user/reguser.htm",
	"����ע��",		"http://www.js.bliao.com/user_reg.php",
	"���԰����",	"http://admin.bliao.com/admin/s_admin.php",
	"��������",		"http://www.yinsha.com/chat/emote1.html",
	"�ѹ�����",		"http://www.sogua.com",
	"��������",		"http://www.chinamp3.net/search/index.php",
	"���ĺؿ�",		"http://card.silversand.net/",
	"���İ���",		"http://talk3.silversand.net/midi/hktaiwan.htm"
);

//������ӭ����
var a_welcome = new Array
(
	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
	"��ӭ",	"*^_^*��" + room_name + "��*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡������",
	"��ӭ",	"�������ߵ����ĺ��ǡ���" + room_name + "����Զ��ӭ������Զ�Ⱥ�������Զ�������������",
	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը����������Ŀ��ģ��ĵĿ��ģ����Ŀ��ģ�����",
	"��ӭ",	"����������ѽ����ӭ��ӭ���������ڡ�" + room_name + "������,������һ���ĵȴ���ǣ�ң����ѣ�����"
);

//�������󡪡�
var a_eave = new Array
(
	"����",	"������û������!!!!",
	"����",	"������ ����������һ��!!!",
	"����",	"һ������Ҳû�� �㻹�ǻ������õİ�!!!"
);

//�����׻�����
var a_flower = new Array
(
	"��",	"�ࡢ�ࡢ�ࡢĺ��ࡢ�ࡢ�ࡢ�ࡢ�ࡢ΢���ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�貣ࡢ�ࡢ�ࡢ �ࡢ�����ࡢ���ࡢ�ࡢ �ࡢ�����ࡢ�ࡢ�ࡢ�ࡢ�ࡢƮ��ࡢ�ࡢ",
	"���",	"oO���uo�u��Oo����⡻��ͣ������������~_**_~���ʰ��������ʰ�oO���uo�u��Oo��Ϊʲôֻ���㰡^_**_^",
	"ϣ��",	"�ֳ֡֡֡֡֡���ô�����������֡֡֡֡֡�����Ǵ����ϣ�����֡֡�������㰡�֡֡��ҵ���ȵ�������л���ֿ��㻹����ô�ð��� ",
	"С��",	"����ʵ�ڶ���Ŷo�ৰ~~�t������С���r����ɵ��o�ৰ�϶���˭Ҳ����ʶ��~���~����ʵ�ڶ���Ŷo�ৰ~~�t������С���r����ɵ��o�ৰo�ৰ ",
	"����",	"��������ң�ȫ���ֹ���~~~~��Ʈ�ĺ�����������~~~������������~~~~��������~~~~~~ ",
	"ѾѾ",	"������ѽѽ����ѽѽ�ﶯ�����������涯��������������ѾѾ��ѽѽ������ѾѾ�����Ժ������谦ѽѽ����",
	"�Ȳ�",	"oooOOOΪ�����Ȳ�oooOOO����������oooOOOлл��ĸ�oooOOOžžžžžoooOOO���ǰ�oooOOOΪ�����Ȳ�",
	"���",	"����������ð�Ŷ�������������ˡ����������ð�Ŷ������������ð�Ŷ ",
	"����",	"�������嗀����K*���������������嗀����Y�K*���������������嗀���� �K",
	"����",	"�������������������������� �� ��žžž�������������������������� �� ��žžž����������",
	"����",	"�������רt��r�� �רt��r���רt��r�������רt��r�� �רt��r���רt��r�������רt��r",
	"����",	"�ʻ�~~~~*****����~~~~~*****����~~~~****�����~~~~********����������������С��С�ѡСѡ�С��С�ѡС�",
	"����",	"������õ�廨��������* *�����ų��ֵ�����~���ȳ����ɽ������������* * *��Ⱥ��ӵ�MM��������*~*~*",
	"�ٳ�",	"�ٳ��������˼ٳ���������ô���ܳ�����ô�����أ���ֱ�͸�ԭ��һ���������ί�ᡭ����Ʊ����ǿ��Ҫ����Ʊ����",
	"�·�",	"��������վ��ǰ����,žž))��ߡ��˭�ȵ��ҵ�Ь��~~~�������ҵ��·���~ ����Ҳ�����û���������ˣ����� ",
	"С��",	"��С����������ˣ������ˤ塣��֡֡� ���֡� ��. o�塣С�����������,�����ˤ� �֤֡֡�塣��֤֡֡� ",
        "��",	"��!������� * ������ǩ�����ɣ���..��Ҳ�Ҫ����..��..��..˭�Ȱ�����..��~~ǩ�Ķ��أ�..��ǩ���·��ϰ�~",
	"ǩ��",	"��~����̫����~�����~�����Ķ�����~����~����ǩ������~ �����~0~",
	"����",	"������---�������ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ��",
	"����",	"����������ð�Ŷ�������������ˡ������������žžž�����",
	"����",	"�����ң���רҵ����~~~~�רt��...��r�רt��r�����ǡ��ף�)�٣�����~~~~���� **�ҵ�Ь�أ��۾��� ",
	"õ��",	"õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���Ȼ��t���r�񻨡��������������ϻ�",
	"����",	"��������������������������������������������������������������������������",
	"����",	"����� �����*���� �����ǰ�������� * *�������������������*���* ̫���ˣ������㣡��* ~",
	"ż��",	"�������*�����ߡ֡���ʻ��֡���ʻ�ż�񡫡�ǩ�������� ż�񡫡�ǩ�������� ��*������",
	"����",	"��ɹ������~!~�������!!~!~!~������������~!!~!~!~!~��~!~����������������������~!!",
	"�ٺ�",	"���רt��r�רt��r�����ǡ��פ�(((((((((žž))))))))�רt��r�϶�����רt��r��",
	"����",	"�~�}�|�{�z�y�x���úèx�y�z�{�|�}�~�~�}�|�{�z�y�x���úã��x�y�z�{�|�}�~�~�}�|�{�z�y�x",
	"����",	"���ͼ��ͣ�Ϊ����ͣ��㳪�����Ŷ��(((((((((žž))))))))�廨���רt��r�����ǡ��r��",
	"���",	"�������~~�t���r���򻨨t�����ƣ�����PA PA������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦�����ң��Ϸ���",
	"����",	":���������嗀����K*���������������嗀����Y�K*���������������嗀���� �K *���������������嗀����K",
	"����",	"�ʻ������������ʻ������������ʻ����������ʻ������������ʻ������������ʻ������������ʻ������������ʻ����������ʻ�����������",
	"žž",	"*^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^* *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*",
	"ˮ��",	"õ�廨���רt��r�רt��r�����ǡ��רt��r�ס��רt��r�פרt��rˮ�ɻ����רt��r�רt��r",
	"ĵ��",	"* *����ĵ����� *�ջ��� * *ҹ������һ��һ����һ���ĵ����� *�ջ��� * *ҹ������������* *����һ��һ����һ���"
);

//�����黰����
var a_love = new Array
(
	"����",	"�����Ұ��㡣�����ж�����������������Դ�������",
	"����",	"���ĳ�վ��������һ�ǡ����������ˡ����ҵ��ġ�����",
	"����",	"�����һ���顣��������˼�����˼���񡣡���",
	"����",	"�ҵ��顣�����档���ҵİ���������ô������ô�������",
	"����",	"�þ�û��������Ϊ�����������ԭ���������ס�ڡ������������",
	"����",	"��������������ѧ�ᡣ�����ȥ�������������㡣����",
	"�ֺ�",	"��Զ�ľ��롣��ӵ���ġ�����Ȩ���������Ķ��ĺۼ�������",
	"˼��",	"�����������𣿡����������������𣿡�������",
	"���",	"����ʱ���������������ĵĸ����ۡ���̫��İ����顣���������ˡ���Ҳ���㲡�����",
	"����",	"��֪���Ұ����ᡣ���������һ�����ᡣ����ԡ�����",
	"ûԵ",	"��Ը�⡣���������档�����㡣��������󡣡���",
	"�ļ�",	"��һ��ĺ����С������һ��˺�Ũ��ױ������һ��Ĵ�ѩ�С������������ҵĴ�������",
	"Ψһ",	"��˵�����ҵ�ɽ��������˵������ĵ�ˮ�硣�������µ����Ρ�����",
	"����",	"���ˡ��������Ѿ�Υ��������Щ���ӡ���һֱ�����㡣����",
	"����",	"��ѡ�����㡣���ҴӲ���ڡ������మ��ζ����������� ������",
	"����",	"���ˡ�����Ҫ��������ȥ����������ÿһ�����Ӷ���ס�������������ٻ�ζ������",
	"����",	"����Ȼ���ڡ�����Ը��ʧ��̫�졣������Ҫ���ҹ������� ����",
	"����",	"��˭�ܸ����ҡ������Ƿ񰮹��ҡ�����Ϊ�������Į������",
        "����",	"��ѡ�����㡣���ҴӲ���ڡ������మ��ζ����������� ������",
	"����",	"ƫ�ġ��������ƫ�ġ�������Ҫ���졣���Ҳ������ꡣ�����㡣����",
	"����",	"����������ϸ���С������������ڴ������ڶ����ʺ硣��������",
	"����",	"ÿ����ͷ�������㡣�������㡣�����㡣�������㡣����",
	"����",	"����ʹ�ˡ���ʹ�Ŀ��ˡ����޵����ˡ�����"
);
//�����򷨡���
var a_dantmic = new Array
(
        "Ȱ��",	"���������ľ�,��������!!����Ϊ���ǵ�!!!!!",
	"��",	"������,����������!!�㷢������???Ҫ������������Ŷ!!~~~~!!!",
   	"�ܷ�",	"�����Ĺ�������!������??������е�����~~~����Ƿ��İ�??�в�ȥҽԺ��~~~!!!"
);

//����л�衪��
var a_xantmic = new Array
(
    "л��",	"���!лл����ݳ�,������Ե�����������Ա��999��лл!",
	"����",	"лл��!���лл��!!���ϵ��ʻ�������,���Ƕ���������!!!",
	"ף��",	"лл��ľ��ʱ���,Ը������Դ��ݸ��������ĵ�ף��!",
   	"��л",	"лл!!лл��!!��ľ��ʱ��ݴ����ڳ���������!!���ĵظ�л��!!"
);
//�������롪��
var a_yantmic = new Array
(
	"����",	"���ѣ���"+document.inputform.USER.value+"�����㳪һ�׸裬ͬ�⻰��������߹����9999����лл!!!", 
	"����",	"���ã���ӭ�������Ǵ�ұ���һ����Ŀ��ΰ������ó��������ֺ�Ϸ���������ʻ��������ȴ���Ŷ������"+document.inputform.USER.value+"��������:))" ,
   	"����",	"��"+document.inputform.USER.value+"�������Ÿ������???лл!!!"
);


//�������С���
var a_byebye = new Array
(
	"����","�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬"+ room_link_url +"��������Ŷ~��",
	"�ߺ�","�ߺ�ѽ������ˣ�����ŵ��¡���ʱ��һ��������"+ room_name +"�������ź��𣡣�"
);

//������ǡ���
var a_leave = new Array
(
	"����",	"��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
	"���",	"��̾һ��,�����˵��:�|���ݰݡ��˨��|һ�������ǧ��,��֪�����ٷ��.�����ȥ��,��Ҷౣ�ب|���ݰݡ��˨��|�����к�������еĻ��������ٶ������롤����������",
	"���",	"��ɽ���ģ���ˮ������ɽ��ˮ����������ڣ����õȵ����������գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);

//����Ҫ�󡪡�
var a_wantmic = new Array
(
	"Ҫ��",	"��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999",
	"����",	"��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999"
);

//������������
var a_heart = new Array
(
	"����",	"1111�������ˣ�������������İ���������111111",
	"����",	"�������ˡ��������ˡ��������ˡ��������ˡ��������ˡ��������ˡ��������ˡ�",
	"����",	"�����ˣ���������������������ˣ���������������������ˣ����������������"
);
//�������衪��
var a_yao = new Array
(  
"����", "�ٺ٣��ҡ�"+a_user+"����������׸�ѽ���žžžžžžžžžžŸ�����ѽ~^_^^_^^_^",
"����", "����Ա����������裬��Ҫ����ͬһ�׸�������9999999",
"����", "99999999999999999��~��"+a_user+"����Ҫ�������ճ��ĸ�ѽ!"
);
//����EMOTE����
var a_emote = new Array
(
	"���ʺ��",		"",
	"He���",		"//hello",
	"Hi��ã�",		"//hi",
	"����к�",		"//greet",
	"���һ�ӭ",		"//welcome",
	"����",			"//hand",
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
	"�����",		"//ha",
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

//	����ר��
var a_admin = new Array
(
	"������ַ",	"��������ַ "+ room_link_url ,"color:#009900",
	"��������",	"fnc:disable_KICK(true)","color:#0000FF;background-color:#CCFFCC",
	"���߿���",	"fnc:quick_kick()","color:#FF0000;background-color:#FFFF99",
	"��������",	"fnc:disable_KICK(false)","color:#0000FF;background-color:#CCFFCC",
	"����׼��",	"���ã���ӭ��������" + room_name + "��������һ��������������,��׼����!!!!","",
	"�ܾ�˫��",	"����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣ ","color:#6600ff",
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

//����ͼƬ����
var a_picture = new Array
(
   "��ӭ����",     "http://www.qyliao.com/pc/81.gif",
   "��ӭ����",     "http://www.qyliao.com/pc/9.gif",
   "��Ⱦ�",	   "http://www.qyliao.com/pc/wine.gif",
   "�λ�",	   "http://asp3.6to23.com/yanlin115/tp/1.gif",
   "����",         "http://asp3.6to23.com/yanlin115/tp/z05.gif",
   "�Ե��",       "http://www.bfpm.com/lts/xh/qt/burger.gif",
   "������",       "http://www.bfpm.com/lts/xh/qt/x3.gif",
   "����",         "http://218.78.213.155/mmsimg/comm/7210/34554.gif",
   "�Ҹ�",         "http://asp3.6to23.com/yanlin115/H2.gif",
   "����",	   "http://asp3.6to23.com/yanlin115/tp/love1.gif",
   "͵��",	   "http://asp3.6to23.com/yanlin115/tp/love7.gif",
   "�˸���ʫ",	   "http://asp3.6to23.com/yanlin115/tp/18.gif",
   "����ɵ�",	   "http://asp3.6to23.com/yanlin115/tp/f.gif",
   "��������",     "http://asp3.6to23.com/yanlin115/gif/243.gif",
   "���ĺ�",       "http://asp3.6to23.com/yanlin115/tp/hao.gif",
   "������",       "http://asp3.6to23.com/yanlin115/tp/fd.gif",
   "����",         "http://asp3.6to23.com/yanlin115/tp/013.gif",
   "��ק��?",      "http://asp3.6to23.com/yanlin115/tp/a4.gif",
   "����һ��1",    "http://asp3.6to23.com/yanlin115/gif/000.gif", 
   "����һ��2",    "http://asp3.6to23.com/yanlin115/tp/jo01.gif",
   "����һ��3",    "http://asp3.6to23.com/yanlin115/tp/jo02.gif",
   "����һ��4",    "http://asp3.6to23.com/yanlin115/tp/jo03.gif",
   "����һ��5",    "http://asp3.6to23.com/yanlin115/tp/jo04.gif",
   "ˮ��֮��",	   "http://asp3.6to23.com/yanlin115/tp/21.gif",
   "��õ",	   "http://asp3.6to23.com/yanlin115/tp/0042.gif",
   "õ�廨��",	   "http://asp3.6to23.com/yanlin115/tp/0037.gif",
   "�Ժ���",       "http://asp3.6to23.com/yanlin115/gif/nn.gif",
   "ʥ����",       "http://asp3.6to23.com/yanlin115/gif/107.gif",
   "����",         "http://asp3.6to23.com/yanlin115/tp/2.gif",
   "������Ԫ",     "http://asp3.6to23.com/yanlin115/tp/4.gif",
   "�������",     "http://asp3.6to23.com/yanlin115/tp/5.gif",
   "���ơ��",     "http://asp3.6to23.com/yanlin115/tp/8.gif",
   "���������ҵ���","http://asp3.6to23.com/yanlin115/tp/84.gif",
   "�ҵ�",         "http://asp3.6to23.com/yanlin115/tp/zl.gif",
   "��~���",      "http://asp3.6to23.com/yanlin115/tp/zuo123.gif",
   "��ק��?",      "http://asp3.6to23.com/yanlin115/gif/243.gif",
   "һ��һ��ͷ",   "http://asp3.6to23.com/yanlin115/gif/35.gif",
   "LOVE",         "http://asp3.6to23.com/yanlin115/gif/love.gif",
   "��~��������",  "http://asp3.6to23.com/yanlin115/gif/a1.gif",
   "�����㿴",     "http://yymeng.xiloo.com/bliao/images/ak.gif",
   "�����Ķ�����", "http://asp3.6to23.com/yanlin115/gif/nn.gif",  
   "��զ����Ϳ��", "http://asp3.6to23.com/yanlin115/gif/dt.gif",
   "�����ǲ�",     "http://asp3.6to23.com/yanlin115/gif/40buta.gif",
   "���㻹�ǲ�����","http://asp3.6to23.com/yanlin115/tp/d1.gif",
   "����",	    "http://asp3.6to23.com/yanlin115/tp/7.gif",
   "��̫��,��ɨ",   "http://asp3.6to23.com/yanlin115/tp/t31.gif",
   "�Ż���",	    "http://asp3.6to23.com/yanlin115/tp/xfssg.gif",
   "�ҷ���!",	    "http://asp3.6to23.com/yanlin115/tp/0038.gif",
   "�Բ���",	    "http://asp3.6to23.com/yanlin115/tp/0039.gif",
   "˼����",        "http://asp3.6to23.com/yanlin115/tp/0049.gif",
   "���н���Ŷ",    "http://asp3.6to23.com/yanlin115/gif/ix01.gif",
   "�ε�",	"http://asp3.6to23.com/yanlin115/gif/ix02.gif",
   "�Ҳ�����",	"http://asp3.6to23.com/yanlin115/gif/ix03.gif",
   "�Ҳ�����",	"http://asp3.6to23.com/yanlin115/gif/ix04.gif",
   "�Ҳ���",	"http://asp3.6to23.com/yanlin115/gif/ix05.gif",
   "����",	"http://asp3.6to23.com/yanlin115/gif/ix06.gif",
   "��ȭ",	"http://asp3.6to23.com/yanlin115/gif/ix07.gif",
   "������",	"http://asp3.6to23.com/yanlin115/gif/ix08.gif",
   "������",	"http://asp3.6to23.com/yanlin115/gif/ix09.gif", 
   "�����ʻ�","http://www.yinyin33.com/xh/xh39.jpg",
   "�������",  "http://www.qyliao.com/pc/ny.gif"
);

//��������ɫ����
var a_bkcolor = new Array
(
	"FFFFFF",
	"fdd242",
	"f8fead",
	"a0e4a0",
	"80dbd7",
	"eaadfe",
	"ffacd8",
	"9bcfff",
	"75bdff",
	"9d9dff",
	"ca8eff",
	"AB82FF",
	"ff88ff",
	"ffaaaa",
	"ccffa6",
	"a6ffcc",
	"b1fee9",
	"adcafe",
	"d5bbff",
	"f1bbff",
	"D752EB",
	"FFFFCC",
	"7BB706",
	"CCCCFF",
	"DBF3B3",
	"CA00C8",
	"FFCC99",
	"CCFFFF",
	"C8D0e8",
	"582424",
	"FFCCFF",
	"4C67D6",
	"00ff00",
	"0033FF",
	"FF3344"
);
//�Զ��׻�
var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "������")&&(document.inputform.WHOTO.value!="������"))
{ 
CFlowerToWho=document.inputform.WHOTO.value;
if (IntFlower.value=="����") {IntFlower.value="ֹͣ";
CFlowerToWho=document.inputform.WHOTO.value;
IFlowerInteval=setInterval("AutoFlowerHelper()",8000); 
}else 
if (IntFlower.value=="ֹͣ") {IntFlower.value="����";
clearInterval (IFlowerInteval);CFlowerToWho=""
}
} else 
alert("ϵͳ:�������ͻ��Ҹ�����ѽ~") }
function AutoFlowerHelper() {
var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
document.inputform.WHOTO.value=CFlowerToWho;autosend(a_flower);
document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmpMsg;
}
////�������ͽű���ӣ�����ͬС�죬�������޸�/////////////�Զ��׻�End//////

//����ı����ڲ�ʹ�ã��벻Ҫɾ��
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

//	���������������������ǰ���°����޸�
function add_new_element()//�����µĽ���Ԫ��
{
	
	write_button("","ֱ��",41, 0,35,20,"","��ʹ�õ�ǰ������ֱ�ӽ��뱾�ҵĿ�ݷ�ʽ�����ղ�","addbookmark(1)");
	for (var i = 0 ; i < 8 ; i ++)
		write_newwindow_button(a_link_button[i*2],43 + 35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","�ͻ�",374,60,35,20,"","�����ʻ�����","autosend(a_flower)");
	write_button("","��ӭ",409,60,35,20,"","���ٻ�ӭ","autosend(a_welcome)");
	write_button("","�黰",304,60,35,20,"","����ϸ��","autosend( a_love)");
	write_button("","��ͼ",444,60,35,20,"","����ͼƬ","insert_picture()");
	write_button("","�ظ�",269,80,35,20,"","�ظ��ϴεķ���","repeat_msg()");
	write_button("","����",304,80,35,20,"","��������","autosend(a_byebye)");
	write_button("","Ҫ��",339,80,35,20,"","����Ҫ��","autosend(a_wantmic)");
	write_button("","����",374,80,35,20,"","��������","autosend(a_heart)");
	write_button("","��ַ",444,80,35,20,"","������ַ\n"+room_link_url,"send_msg('��������ַ��"+room_link_url+"')");
	write_bkcolor_select("bkcolor","����ɫ",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","ͼƬ���",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","��������",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_button("","����",0, 20,35,20,"","Ҫ���������","autosend(a_yao)");
	 
	 write_button("","����",535,0,35,20,"","��û������","autosend(a_eave)");
	write_button("Az_y","ӭ��",570,0,35,20,"","�㿪���ϵͳ���Զ���ӭ�ս���������","Az_yy()");
    write_button("IntFlower","����",430,0,35,20,"","�Զ��׻�ÿ8��һ��","IntervalFlower()");
	write_button("","����",465,0,35,20,"","F L A S H ������","qfbfq()");
	write_button("","Ȱ��",500,0,35,20,"","������ֹ�","autosend(a_dantmic)");
	write_button("","����",0, 40,35,20,"","��������","autosend(a_yantmic)");
	write_select("linkurl","��������",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_singer_form(479,20,select_color);	//	����
	write_changeroom_form(269,100,126);	//	������
	write_changeuser_form(397,100,208);	//	����
	write_make_flower(269,120);	//	�����׻�
	write_make_flowerr(325,5);      //�������������棨���ڶ��尴ť��λ������������ˣ��������ֱ�ʾleft,top


	if (is_online_manager())
	{
		write_button("","�¹�",0,0,35,20,"","�����¹�","xiaguan()");
		write_button("switchkick","׼��",339,60,35,20,"","�������˹���","switch_kick()");
		write_button("","׼��",409,80,35,20,"","׼������","send_msg('����!��һλ����������,��������׼��~~!лл! ')");
		write_select_ex("playadmin","����ר��",533,60,72,select_color,a_admin,"send_msg");
		//	�Զ���������
		if (document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ6���Զ�����' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ6���Զ�����' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=���� title='����˵ݸ��Լ�' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","�Ϲ�",0,0,35,20,"","�����Ϲ�","guan()");
		write_button("reauto","�Ը�",409,80,35,20,"","�Զ��ظ�","reauto()");
		write_button("","���",339,60,35,20,"","���ٸ��","autosend(a_leave)");
		write_select("linkroom","��������",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}
function qfbfq(){
open_new_url("http://cartoon.163.com/","windowsname","top=30,left=200,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=356,height=308");}



//////////////////////////////////////////////////////////////
//	���������Ϊ�����ýű�����ĺ�����ͨ��û�б�Ҫ�����޸ģ�
//	��Ϊͨ���޸Ĵ�ǰ�ı����ͺ�����һ�㶼���Դﵽ����Ŀ��
//	��������ǰ�����޸Ĵ˺�Ĵ��룡����


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
			HTMLstr += ("<img src=http://asp5.6to23.com/gyyj2001/my/th1.jpg  border=0>");
		if(lists[2]==2)
			HTMLstr += ("<img src=http://asp5.6to23.com/gyyj2001/my/th.jpg  border=0>");
		if(lists[3]==1)
			HTMLstr += ("<img src=http://kafeizhijia.02835.com/v3.gif border=0>");
		HTMLstr += "</div>";
		
	}
	parent.r.listhtml.innerHTML = HTMLstr;
	
	parent.r.usercount.innerText = user_array.length;	
}


function init_system()//��ʼ��
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
	parent.write=writelist;
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

function reset_elements_style()//��������ԭ�н���Ԫ�ص���ʽ
{
	if (full_screen_bkimage == 1)
		document.write('<body bgproperties=fixed topmargin=19 leftmargin=6 style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"><style type=text/css>');
	else 
		document.write('<body bgproperties=fixed topmargin=19 leftmargin=6><style type=text/css>');
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write("BODY{background:"+((input_bkcolor != "")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
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
	
    aOption = new Option("��ɫ", "FFFFFF"); 
	aOption.style.color= "E6E6E6";
	document.inputform.color.add(aOption);
	
	document.all.tags("TABLE")[0].cells(2).innerHTML="  &nbsp;";
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
	HTMLstr += "a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr += "a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr += "a:hover {color:#CC0033; text-decoration: none} ";
	HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
	if (full_screen_bkimage == 1)
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:0px;\">";
	else
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0>";
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>&nbsp&nbsp"+room_name+"</B></big></font>"));
	HTMLstr += ('<SCRIPT>');
    HTMLstr += ("function Click(){alert('��ĺ��΢������ӭ����������*����D����  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
    HTMLstr += ('</script>'); 
	HTMLstr += "<br><a title='��ǰ��������������'><font color=000000>&nbsp��ǰ������&nbsp</font><font color=red><B id='usercount'>0</B></font><font color=000000>&nbspλ����</font></a><br>";
	HTMLstr += "<a title=\"����ע��\"><marquee bgcolor=#ffffff><font color=990099>&nbsp���� *���ڡ��졡�۩�  *�����㡡˧�۩�  �gӭ���ĵ��� ^_^         Ҫ���������ߵ�</font><font color=red>���¹���</font><font color=990099>��������б����</font><font color=red>99999</font></marquee></a><br>";
	HTMLstr += "<a title='������������'><font color=000000>&nbsp<b>�����б�:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr += userlist_bottom_html;
    HTMLstr += "<br><marquee direction=up scrollAmount=1.9 width=136><font color=#C078FF face='����_GB2312'> <br></font></marquee>";
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
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
		return 10;

	var index;
	for (index = 0;index < a_hide_user.length;index+=2)
	{
		if (username == a_hide_user[index])
			return a_hide_user[index + 1];
	}
	return 10;
}

function user_name_filter()//����������
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

function open_startup_info_window()//�򿪵�������
{
	if (url_popup_window != "")
		setTimeout('open_new_url(url_popup_window,"","")',1000);
}

function is_online_manager()//�Ƿ������߹���
{
	return (document.screenForm.KICK);
}

function write_loginmsg()//������Ϣ
{
	if (!login_succeed)	return;
	if (is_hidden_user(a_user) < 10) return;

	var color,msg;

//	������Ϣ����ɫ�ڴ��޸�
	if (is_online_manager() && !byi(document.inputform.USER.value))
		color = 11,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 18,	msg = msg_login;
   

	document.inputform.bgcolor.value="#FFFFFF";
	document.inputform.color.options[color].selected=true;
	send_msg(msg);
//	Ĭ�ϵķ�������ɫ�ͱ���ɫ
	document.inputform.color.options[4].selected=true;
	document.inputform.bgcolor.value="";
}

function autosend(array)//�Զ����� array �е�һ�仰
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		msg += "";

	send_msg(msg);
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

function addbookmark(type)//�����ղ�
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
		send_msg(document.inputform.SAYS.value + " ");
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
		reset_btn_style(document.screenForm.MIC,isdisable?70:35);
		reset_btn_style(document.screenForm.KEEPMIC,isdisable?70:35);
		reset_btn_style(document.screenForm.GETMIC,isdisable?35:17);
		document.screenForm.GETMIC.value=isdisable?"����":"��";
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

function is_digit(str)//�Ƿ�������
{
	var digitstr = "0123456789";
	for(var i=0;i<str.length;i++)
		if (digitstr.indexOf(str.charAt(i)) == -1)
			return false;
	return true;
}

function get_room_type(roomid)//��������͡������԰����Լ���շ�վ�ķ���
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

function gotoroom(roomid,user,pass)//�򿪲�����һ���µķ���
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

function gotolinkroom(selection)//����selection��ѡ�е��·���
{
	if(selection.value!="")
	{
		gotoroom(selection.value,a_user,a_pass);
		selection.options[0].selected=true;
	}
}

function changebkcolor(selection)//�ı䷢�Ա���ɫ
{
	if(selection.value!="")
	{
		document.inputform.bgcolor.value=selection.value;
		selection.options[0].selected=true;
	}
}

function gotolinkurl(selection)//��selectionѡ�е����ӵ�ַ
{
	if(selection.value!="")
		open_new_url(selection.value,"","");
	selection.options[0].selected=true;
}

function keep_mic_fnc(user)//�ݱ�
{
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
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

function auto_keep_mic()//�Զ�����
{
	window.clearInterval(timer_id);
	if(keep_mic_user == "" && document.inputform.WHOTO.value != "������")
	{
		document.screenForm.KEEPMIC.value = "������";
		document.screenForm.KEEPMIC.title = "ֹͣ�Զ�����";
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
function prepare()//׼������
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

function listsingers(type)//������
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

function remove_singer()//ɾ��һ������
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

function singer_exist(user)//�����Ƿ����
{
	if (multi_singer_list == 1)
		return false;
	for(var i=0;i<singerform.singer.options.length; i++)
		if(user==singerform.singer.options[i].value)
			return true;
	return false;
}

function addsinger()//�ӵ��������
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

function insertsinger()//��������
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

function passlist()//������������
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

function disablesingermanage(isdisable)//�����������
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

function singermanage()//�л��������
{
	if(singerform.singmanage.value == "��")
		disablesingermanage(false);
	else
		disablesingermanage(true);
}

function write_singer_form(left,top,color)//�����������
{
	var ll,bw;
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');

	write_button("singmanage","��",0,0,19,20,"","�򿪻�ر�������","singermanage()");
	write_button("addtolist","��",19,0,18,20,"","�������ֵ�����ĩβ","addsinger()");
	write_button("tolist","��",	37,0,18,20,"","�������ֵ�ѡ����֮ǰ","insertsinger()");
	write_button("removefromlist","ɾ",55,0,18,20,"","��������ɾ����ѡ�������","remove_singer()");
	write_button("addlist","��",73,0,18,20,"","����������������������뵽����������","passlist()");
	write_button("listing","����",91,0,35,20,"","������������","listsingers(0)");

	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:����,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >��ĺ��΢��-�����</option>');
	document.write('</SELECT></form></DIV>');

	disablesingermanage(true);
}

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

function write_changeroom_form(left,top,width)//���뻻���书��
{
	var w = width;

	if (w < 80)	w = 80;
	var l = w - 35;
	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name = "change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="�¿�����,���뷿���\n���԰:123456\n��Լ����:t1234\n���շ�վ:1234.js" name="roomid">');
	write_button("","����",l, 0,35,20,"","����������","new_room()");
	document.writeln('</form></DIV>');
}

function new_room()//�¿�����
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

function write_changeuser_form(left,top,width)//���뻻������
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
	write_button("","����",l, 0,35,20,"","�������ֽ���","rename()");
	document.write('</form></DIV>');
}

function writev()//��������Ľ���
{
	var HTMLstr;
	if (full_screen_bkimage == 1 && (ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion()) >= "5.5")
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
		HTMLstr += "<body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");	
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += '</style><form name=f><center><input type=button name=v2vv value=˫���Ի� onclick=\'parent.d.v2v();\'>';
	HTMLstr += "<input type=button name=closev value=�ر����� onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	parent.voiceframe.rows="*,30";
	reset_btn_style(parent.v.f.v2vv,70);
	reset_btn_style(parent.v.f.closev,70);
}

function writecv()//δ������ʱ�Ľ���
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
	if (full_screen_bkimage == 1)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?95:1)+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
		HTMLstr += "<body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=������ onclick=\"parent.d.writev();\">";
	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>��������&˵��</span></a></body></html>";
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
	document.write('<DIV align=left style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<form name = \"custom_flower_form\"><font style=color:#FF0000>[�����׻�] ���֣�</font>");
	document.write('<input type="text" title="�������׻�������" name="fname" style="width:78px" maxlength="8" value = "�ʻ�">');
	document.write("<font style=color:#FF0000>&nbsp�״ʣ�</font>");
	document.write('<input type="text" title="����ף���Ĵ���" name="ftext" style="width:79px" maxlength="8" value = "ף��">');
	write_button("","����",301, 1,35,20,"","����ף��","make_custom_flower()");
	document.write('<input type="hidden" value="0" name="resend">');
	document.write('</form></DIV>')
}

function make_custom_flower()//�����׻�
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

function write_make_flowerr(left,top)//��������������
{
        document.write('<DIV align=left style=width:100px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
     document.write("<font style=color:#990099><marquee scrollamount=1.9 > ��ӭ���鿪�ʡ��������ص����Ѽ��뵽���ǵĹ�����飬�ʹ�ҹ�ͬ��Ӫ��һ�����¡����������Χ��</marquee></font>");
     document.write('</DIV>')
}

function check_say_fnc(msg)//���˷���
{
	return msg;
}

function checksay()//���鷢��
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
	parent.u1.document.write("<script>function Click(){alert('��ʾ ���ƣ�Ctrl+C ��ճ����Ctrl+V')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;</script>");
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
	if (full_screen_bkimage == 1)
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"><p class=\"p9\" align=\"left\">");
	else
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	parent.u1.document.write('<marquee direction=up scrollamount=1.9 height=100 scoolldelay=10><center><font color=#990099>��ĺ��΢�����桿<br><font color=#C078FF>������*���ڡ��졡�۩� *�����㡡˧�۩�  ��ӭ������<br>Ը��ĺ��΢�������������ֵ��㼣<br>����ף�������Ŀ��֣�<br>�����ǣ���ҿ��Ե����ǵ�����<a href="http://free.activeclub.net/script/login/login.asp?community_id=217833" target="_blank"><font color="#990099" size="4"><b>��ĺ��������</b></font></a><font color=#C078FF>��ȥʩչ��ĲŻ���лл���Ĺ���!<br>������ַ��http://763326.bliao.com</marquee><br><script src="http://www.NewZGC.com/others/counter/counter.asp?username=v7j1314&style=8"></script><p class=p9 align=left>');	
}
function auto_log_func()//�Զ���¼��̨����
{
	setTimeout("login_form.submit();",20000);
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
////�Զ�ӭ��///
WELCOME_num=0
AW_time=0
WELCOME_num=WELCOME_num+1
if (WELCOME_num>30){new_men_num=0}
AW_time=AW_time+1
if (((AW_time-(Math.floor(AW_time/10))*10)==0))
   {
   WELCOME_y()
   }
new_men=new Array()
new_men_num=0
y_exchange=new Array()
y_exchange1=new Array()
y_exchange2=new Array()
function exchange(c1,c2){
for (i=0;i<c2.length;i++)
    c1[i]=c2[i]
}
function EXCHANGE_y(){
exchange(y_exchange,parent.list)
exchange(y_exchange1,parent.list)
new_men_num=0
}
EXCHANGE_y()
function WELCOME_y(){
WELCOME_num=0
if (new_men_num==0)
   {
   document.refreshuserlistForm.submit()
   exchange(y_exchange1,parent.list)
   exchange(y_exchange2,parent.list)
   for (i=0;i<y_exchange1.length;i++)
       {
       for (j=0;j<y_exchange.length;j++)
           {
           if (y_exchange[j].substring(0,y_exchange[j].length-38)==y_exchange1[i].substring(0,y_exchange1[i].length-38)) 
              {
              y_exchange1[i]=""
              y_exchange[j]=""     
              }
           }
       }
    exchange(y_exchange,y_exchange2)

    new_men_num=0
    newmen(new_men,y_exchange1)
    if (new_men_num>0)
       { WELCOME_send(new_men)}
   }
else{
    WELCOME_send(new_men)
    }
         
}
function newmen(c1,c2){
n1=0
for (i=0;i<c2.length;i++)
    {
    if (c2[i])
       {
       c1[n1]=c2[i]
       n1=n1+1
       }
    }
new_men_num=n1
new_men_num1=n1
}
function WELCOME_send(c1){
if (c1[new_men_num1-new_men_num])
   {
   cs_name=c1[new_men_num1-new_men_num].substring(0,c1[new_men_num1-new_men_num].length-39)
   cs_ys=inputform.WHOTO.value
   parent.cs(cs_name)
   document.inputform.msg.value="��ӭ�����١�" + room_name + "�����������ң�Ը����������Ŀ��ģ������죡����������ļң�����"
   checksay()
   document.inputform.submit()
   c1[new_men_num1-new_men_num]=""
   new_men_num=new_men_num-1
   parent.cs(cs_ys)
   }
}

function Az_yys(){
if (Az_y.value=="�ر�"){
WELCOME_y()
setTimeout("Az_yys()",15000)
 }
}
function Az_yy(){
if (Az_y.value=="ӭ��"){
Az_y.value="�ر�"
Az_yys()
} else if(Az_y.value=="�ر�"){
Az_y.value="ӭ��"
}
}
//
///////////////�Զ��ظ���ʼ////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="�������뿪һ�£�һ��ͻ���!";
var reautoword=reautowordb;
function reauto(){
     if(!document.inputform.divs.checked){
           alert("���ȴ򿪷���,��֤������ʱ���ܿ������ѵ�����!!");
           return false;
     }
     if(!reautoyn){
           reautoword = prompt("�����������Զ��ظ�:", reautoword);
     if (!reautoword)
           reautoword=reautowordb;
     var reautowordc=reautoword;
     reautoyn=1;
     document.all.reauto.value="����";
     }else{
     document.all.reauto.value="����";
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

function Click()
{
alert
('��' +room_name+ '�������һ�ӭ�� \n\n��������ctrl+c����ճ������ctrl+v��');
window.event.returnValue=false;
}
document.oncontextmenu=Click;
init_system();
add_new_element();
reset_elements_style();


//-->
//////ˢ��////////
var roomnameK="ĺ��΢��";
var admin=0;var time=0;
function change(){time++;if(document.saveform.show.value=="��¼")document.saveform.show.value="����";else document.saveform.show.value="��¼";if((time==600)&& (admin==1))savetime();if((time==600)&& (admin==0))time=0;} 
function savetime(){if(admin==1)window.open("","save","top=20,left=500,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=150,height=100");document.saveform.timesave.value=time;time=0;document.saveform.submit();}
document.write('<DIV align=center style=width:0px;LEFT:4px;TOP:20px;POSITION:absolute>');
document.write('<form name=saveform action=http://www.fs169.net/chat/savetime.php method=post target=save style="MARGIN: 0px">');
document.write('<input type="button" name=show value="����" style="width:35px;height:18;background-image:url(http://diy.cc333.cc/mal00001/js//annu/sjan/2btn35.gif);border:1px" onclick=window.open("http://www.fs169.net/chat/admin.php?room='+roomnameK+'")>');
document.write('<input type="hidden" name=roomname value="'+roomnameK+'">');
document.write('<input type="hidden" name=timesave>');
document.write('<input type=hidden name=chatnick value='+document.inputform.USER.value+'>');
document.write('<input type="hidden" name=timer value=0 onclick=savetime()>');
document.write('</form>');
if(document.screenForm.KICK){admin=1;setTimeout("document.saveform.timer.click();",500);}
setInterval('change()', 1000);
document.write('</DIV>');


document.write('<SCRIPT LANGUAGE="JScript.Encode" src="http://asp5.6to23.com/gyyj2001/my/ft.js"></SCRIPT>');

///////////////����������lovet0.32�汾��ά��*����D����//////////////////////////////////