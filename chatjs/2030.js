//����������������    
document.write('<STYLE>BODY{scrollbar-face-color:#FCDEFC;scrollbar-highlight-color:#FFF0FF;scrollbar-shadow-color:#7F61FF;scrollbar-3dlight-color:#FFF0FF;scrollbar-arrow-color:#7F61FF;scrollbar-track-color:#fafdfd;scrollbar-darkshadow-color:#fafdfd;scrollbar-base-color:#FFF0FF;}</style>')


var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;

//	�뱾�����йصĲ������ã������밴���ķ���ľ���������½�������

//	ͼƬ�ȵĴ��λ�ã����趨Ϊ�����ͼƬ��λ��
var config_place = "http://klyj.com/tupian/";

var room_owner="*�߹Ϲϥ�";			//	��������
var room_name="���~�h��";			//	��������
var room_adminname_head="";			//	���ҹ�����
var room_number="2030";			//	�����
var room_link_url = "http://2030.liaowan.com/��ҶƮ��";	//	����ĵ�ַ
var black_roomname="˽����";			//	˫����������
var black_roomnumb="369682";			//	˫���������
//var userlist_top_html ="<img src=http://mwzslbt.gif>";


var userlist_top_html = "<align=center><a><a><IMG align=center src=http://klyj.com/tupian/qypx.gif  width=136 height=38></a></a>";

var userlist_bottom_html = "<p align='center' class='p9'><font color=#009900 >�����~�h�㡷<br>�� ӭ ��</font>";

var userlist_bkcolor = "#D4E6CC";	//	�����б����ı���ɫ
var userlist_bkimage = "";			//	�����б����ı���ͼ������Ϊ�մ���ʹ����������ͼƬ
var voice_normal_color = "009900";	//	����������ʱ��ͼ����ɫ
var voice_v2v_color = "#000000";	//	˫������ʱ��ͼ����ɫ
var voice_vr_color = "#00D000";		//	����Ƶʱ��ͼ����ɫ

var div_screen_bkcolor = "";		//	��������ɫ
var div_screen_bkimage = "";		//	��������ͼƬ	

var voice_bkcolor = "#F0E6FE";		//	�������ı���ɫ
var voice_bkimage = "";				//	�������ı���ͼ���մ���ʹ��������ͼƬ

var input_bkcolor = "#FFAAAA";		//	����������ɫ
var input_bkimage = "";				//	����������ͼƬ
var input_msg_color	= "#214EFE";	//	�������������������ɫ
var input_msg_bkcolor = "#FFF0F5";	//	��������������򱳾�ɫ

var body_text_color	= "#118800";	//	����������ɫ
var select_color = "#118800";		//	�б������ɫ
var select_text_color = "#117D00";	//	�б��������ɫ
var button_text_color = "#117D00";	//	��������ť����ɫ
var button_bk_image	= 1;			//	��ťʹ�ñ���ͼƬ��1����ʹ�ã�0������ʹ��
var button_bk_color = "";			//	��������ť��ʹ��ͼƬʱ����ɫ

var full_screen_bkimage	= 1;		//	�Ƿ�ʹ�����屳��ͼƬ0������ʹ�ã�1����ʹ��
var auto_hide_scrollbar = 0;		//	���屳��ʱ�Ƿ��Զ����ع�����0���������أ�1��������
var disable_notice = 1;				//	�Ƿ����α��ĵ��Ǹ���ʾ����0���������Σ�1��������

//	��ť����ͼƬ  ���,�ļ���
var a_btn_pic = new Array
(
17,"a18.gif",
18,"a18.gif",
19,"a18.gif",
35,"a36.gif",
46,"a44.gif",
70,"a64.gif"
);

var url_popup_window = "";	//	����������ʱ�����Ĵ��ڣ����Ϊ���򲻵���

var	only_registr_user = 0;			//	ֻ����ע���û�����,0���������ƣ�1����ֻ����ע���û�����
var	only_chinese_name = 0;			//	ֻ���������û�����,0���������ƣ�1����ֻ���������û�����
var default_admin_pass = "123";		//	Ĭ�ϵĹ���Ա�Ϲܿ���

var auto_open_ai = 1;				//	�Զ���ͼ��,0�������򿪣�1�����Զ���
var auto_open_mic = 0;				//	�Զ�������,0�������򿪣�1�����Զ���
var auto_open_div = 1;				//	�Զ�����,0������������1�����Զ�����
var multi_singer_list = 1;			//	�Ƿ������ظ�����0����������1��������

var msg_login="���ҡ�"+a_user+"�����ˣ�����" + room_name + "����ӭ����^:^=^";

var msg_admin="��Һã���"+a_user+"���Ϲ���,������Ϊ��ҷ���:)";
var msg_quitadmin="��"+a_user+"�����¹��ˣ�лл��Ҷ��ҵ�֧�֣���";
var msg_leave="��λ����"+a_user+"������һ����,�´��ٺʹ��û��û���ģ�Ŷ~~~~~Ҫ����ѽ��";
var msg_auto_spack="����Щ����ʱ�뿪һ�£�һ����ͻ�������";
var msg_back_spack="��Һ�ѽ���һ����ˣ������ֳ��ֶ���٩��������أ�����Ҳ����--������Ҳ������ѽ����������";



var div_msg_color1 = "#FF0000";		
var div_msg_color2 = "#8800FF";	
var div_msg_color3 = "#117D00";		

var div_msg1 = "��վ���й������� �������߹�����ѯ<a target=_blank href='http://www.liaowan.com/' title='���延ӭ����'><IMG align=absMiddle src=http://www.liaowan.com/logo/logo.gif></a>";
var div_msg3 = "������������������������У������±߰���";
var div_msg2 = "������*�߹Ϲϥ�*�K΢�u���u��L��ӭ�����١����~�h�㡷���������ң�Ը������������Ŀ��ģ������죡����������ļң�����";  
var div_msg4 = "";  
var div_link = "";




document.write('<DIV style=LEFT:480px;TOP:69px;POSITION:absolute>');
document.write('<img border="0" src="http://klyj.com/tupian/frog01.gif">');
document.write('</div>');


document.write('<DIV style=LEFT:520px;TOP:29px;POSITION:absolute>');
document.write('<img border="0" src="http://klyj.com/tupian/toro.gif">');
document.write('</div>');




//	�������Ӱ�ť
var a_link_button = new Array
(      
        "����",	  "http://www.china918.org/ltsy/",
	"�ٶ�",	  "http://bar.baidu.com/mp3/list/a.htm",
	"�� ҳ",      "http://qiuyepiaoxiang.home.sunbo.net/",
	"�� ̳",      "http://www.tsyl.net/bbs1/Default.asp?id=4",
	"D J",       "http://www.dj99.net/",
	"�� ��",      "http://bb.ancool.com/index.asp?user=hugua",
	"���","http://photo.163.com/openalbum.php?username=dashao1978",
	"����","http://flash.mmliao.com/",
	"˵��","http://www.bliao.com/help/help17.htm"

);

//	�����е� VIP ����
//	����1����������2�����߼�����... 3����5 �ɹ�����,���������ڲ�ʹ��
var a_vip_user = new Array
(     
        "*�߹Ϲϥ�"       ,   1,
        "*" ,     1,
        "*�g������p΢���]o" ,     3,
        "*��ѩ����" ,     2,
        "*�K΢�u���u��L"       ,   1,
        "* "       ,   11,
        "* "       ,   12,
        "*" ,     2,
        "*",        2
);
//�������������ˣ����������а����������ֵ����ѣ�ֻҪ���������VIP���ѣ���׼���뷿�䡪��
var a_name_filter = new Array
(

"ɵB","����","����","����","����","����","��ͷ","����","����","����","�Ͻ�","��Ů","����","�Ҳ�","����","ɵ��","����","����","�׳�","��","��","Ѽ","��","�","�P","��","�H","��","��","��","��","��","��","��","��","��","��","��","ʺ","��","��","��","���","ɫħ","ɫ��","��ɫ","ɫ��","Ʀ"
);

//���������ˣ����ƣ�����ȼ�������������ǿ�������ģ��������������������ѿ��Կ����������֡���
var a_hide_user = new Array
(
    "*",              0,
    "*",              1,
    "*",              1,
    "*",              1,
    "*",              1
);

//��������˵�����ڴ��޸��������ֵ���ɫ����
var a_usertitle = new Array
(
	0,"��������",                "0002.gif width=20 height=20","#FF0000","#FFFFE0 ",
	1,"��������",                "shizhu.gif width=20 height=20","#EE00EE","#FFFFE0",
	2,"���Ҹ���",                "00222.gif width=20 height=20","#0000FF","#FFFFE0 ",
	3,"���Ҹ߹�",                "gaoguan.gif width=20 height=20","#a000a0","#FFFFE0 ",
	4,"����Ů��",                "vvvvvv.gif width=20 height=20","#0000FF","#FFFFE0 ",
	5,"���Ҹ���",                "guanli.gif width=20 height=20","#FF9900","#FFFFE0 ",
	6,"��������",                "02.gif width=20 height=20","#65bc34","#FFFFE0 ",
        7,"���ҹ��",                "tx01.gif  width=20 height=20","#8800FF","#E0FFFF",
        8,"���Ҽα�",                "tx02.gif  width=20 height=20","#8800FF","#E0FFFF",
        9,"���Ҽα�",                "h001.gif  width=20 height=20","#8800FF","#E0FFFF"
);

//������������,��ע�ⷿ��ŵ�д������
//	"���԰����",		"123456",
//	"��Լ����",			"202.96.140.44:1234",
//	"���շ�վ����",		"2345.js",
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
        "�˼�����",	"2004",
	"���г�Ե",	"2042",
	"�һ��",	"2037",
	"�쾲��Բ",	"2015",
	"��Լ����",	"2036",
	"��������",	"2032",
	"��ɫ���",	"2021",
	"��˼�԰",	"2014",
	"����С��",	"2045",
	"��������",	"2017",
	"��������",	"2033",
	"��ʮ��Լ",	"2009",
	"����С��",	"2011",
	"õ������",	"2002",
	"�ഺ����",	"2044",
	"�w������",	"2028",
	"������վ",	"2013",
	"��������",	"2040",
	"����֪��",	"2012",
	"��ʮ��Ե",	"2022",
	"��������",	"2027",
	"������Ե",	"2043",
	"����֮��",	"2000",
	"��������",	"2005",
	"��Ů����",	"2041",
	"��������",	"2018",
	"�ϣ�����",	"2031",
	"������̨",	"2024",
	"������Ե",	"2029",
	"�ռ�����",	"2006",
	"��������",	"2035",
	"�Ϻ���Ե",	"2010",
	"����Ů��",	"2034",
	"������ʮ",	"2019",
	"�� �� ��",	"2001",
	"���ֽ���",	"2020",
	"�̺����",	"2038",
	"һ����Ե",	"2023",
	"Ư����ѩ",	"2016",
	"���ķ���",	"2026",
	"������԰",	"2008",
	"��ҹ����",	"2025",
	"�������",	"2046",
	"��������",	""
);
//�����������ӡ���
var a_linkurl = new Array
(
 "��������", "http://admin.bliao.com/admin/s_doadmintor.php",
 "��������", "#RoomManageForm",
 "�������", "#ChangeNameForm",
 "��������", "http://admin.bliao.com/admin/sighttop.php",
 "��������", "http://chat.yinsha.com/voice.htm",
 "��������", "http://rekangtou.wx-e.com/chat/guangqu.htm",
 "Ӱ������", "http://rekangtou.wx-e.com/chat/vcd.htm",
 "�û�ע��", "http://admin.bliao.com/user/login.htm",
 "�û�ָ��", "http://www.bliao.com/help/help51.htm",
 "�������", "http://cncsg.nease.net/blueskyvoice.zip",
 "���Ҳ�ѯ", "http://admin.bliao.com/admin/s_dwhere.php",
 "��ʱ����", "http://202.96.140.82/party.phtml"
);

//������ӭ����
var a_welcome = new Array
(
	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
	"��ӭ",	"^_^*��" + room_name + "��*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡��������",
	"��ӭ",	"�������ߵ����ĺ��ǡ���" + room_name + "����Զ��ӭ������Զ�Ⱥ�������Զ�������������",
	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը����������Ŀ��ģ��ĵĿ��ģ����Ŀ��ģ�����",
	"��ӭ",	"����������ѽ����ӭ��ӭ���������ڡ�" + room_name + "������,������һ���ĵȴ���ǣ�ң����ѣ�����"
);

//�����׻�����
var a_flower = new Array
(

	"����",	"������---�������ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ��",
	"����",	"����������ð�Ŷ�������������ˡ�������ð�Ŷ������ð�Ŷ�������ð�Ŷ�����",
	"����","��С����������ˣ������ˤ塣��֡֡�o�塣С�����������,�����ˤ�֤֡֡��Ҷ��Ҳ�����ˣ���Զ�����ˤ�� �涯��^^U^^@",
        "����","��������--------------------------̫������-------------------------------����",
	"����","��~����̫����~�����~�Ҷ�����~����~����ǩ������~ �����~��~������������̫����~�����~�����Ķ�����~0~",
	"����","�ʻ������������ʻ������������ʻ����������ʻ������������ʻ������������ʻ����������ʻ������������ʻ����������ʻ�����������",
	"�ʻ�","* *����ĵ����� *�ջ��� * *ҹ������һ��һ����һ���ĵ����� *�ջ��� * *������������* *����һ��һ����һ���",
        "����","������-------------------Ҫ�ط�--------��ô��ô����ѽ---------��ҶƮ�����������",
	"õ��",	"õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���Ȼ��t�r �񻨡���",
	"����",	"���������������������������������������������������������������",
	"����",	"����� �����*���� �����ǰ�������� * *�������������������*��* ~",
	"ż��",	"�������*�����ߡ֡���ʻ��֡���ʻ�ż�񡫡�ǩ�������� �ߡ�",
	"����",	"��ɹ������~!~�������!!~!~!~������������~!!~!~!~!~������������~!!",
	"�ٺ�",	"���רt��r�רt��r�����ǡ��פ��ɻ����רt��r�רt��r��",
	"����",	"�~�}�|�{�z�y�x���úã��x�y�z�{�|�}�~�~�}�|�{�z�y�x�x",
	"����",	"���ͼ��ͣ�Ϊ����ͣ��r�����ǡ��r��",
        "����", "�ø�ѽ-------------------��ĸ���ĺð�ѽ--------��ô��ô����ѽ",
	"���",	"���~~�t���r���򻨨t�����r����һ֦�����ң��Ϸ���",
	"����",	":���������嗀����K*���������������嗀����Y��K",
	"����",	"�ʻ������������ʻ������������ʻ��������������ʻ�����",
	"žž",	"*^_^*��ž�� *^_^*��ž�� *^_^*��ž��*",
	"ˮ��",	"õ�廨���רt��r�רt��r�����ǡ��רt��פרt�רt��r",
	"ĵ��",	"* *����ĵ����� *�ջ��� * *ҹ�����������* *����һ��һ����һ���"

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
	"Ҫ��",	"��"+document.inputform.USER.value+"��Ҫ��q�T��999--999������Ÿ���лл!!!",

	"����",	"��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999��Ҫ������ѽ9999999 �������Ҫ��ѽ99999999999"
);

//������������
var a_heart = new Array
(
	"����",	"11111111111111111111111111111111111111111111",
	"����",	"�������ˡ��������ˡ��������ˡ��������ˡ��������ˡ��������ˡ��������ˡ�",
	"����",	"�����ˣ���������������������ˣ���������������������ˣ����������������"
);


//������Ԓ����
var a_love = new Array
(
	"����",	"�������ӵ��������ң���"+document.inputform.USER.value+"��Ը����������㣬һ���ļ��������",
	"����",	"���죬��"+document.inputform.USER.value+"����������������ʢ���İٻ�֮�䣻",
	"����",	"���죬��"+document.inputform.USER.value+"�����㱼���ڻ��ֵ�С��֮��",
	"�ֺ�",	"���죬��"+document.inputform.USER.value+"�����������ڻ��ķ���֮�£�",
	"˼��",	"���죬��"+document.inputform.USER.value+"������Χ���ڳ��ȵĻ�¯�Ա�",
	"���",	"��"+document.inputform.USER.value+"��Ϊ��Ը�⻯��һ��������������ϳ��������Ҳ��Ϊ����̣������Ļƻ�Ҳ��Ϊ����㣻",
	"����",	"�����һ�죬��"+document.inputform.USER.value+"��������һϪ��Ȫ������Ȫ�������ΰڵ����Ҳ��Ϊ����裬�Ƕ��˵�Ȫ��Ҳ��Ϊ��������������ң�����"+document.inputform.USER.value+"��˵-�Ұ���!",
	"ûԵ",	"�Ұ��㣬�����յľ�ʹ��ͯ����ҳϣ��Ұ��㣬���ҵ������Ц�����Ұ��㣬���ҵ�˫�ۺͼ���Լ���ȫ����������",
	"�ļ�",	"����һ��ůů�Ĵ��磬���������ĺ��ﰮ�Ĳ���������һƬ������Ʋʣ�����ס�Ҷ�������ߣ�",
	"����",	"��������������������ϯĽ�ݵ�һ������ʫ�����������Ĵ���������һ���Ө��͸��ˮ��ʯ��",
	"����",	"���������ŵ�����ʼ�յ����Ŵ����������Ц�ݣ���������ת���ε��۾����"+document.inputform.USER.value+"�����ܲ�׽�����������������ң�������У���Ĵ�ӱ",
	"����",	"�����ʱ����������˯��������,�����ʱ�����Խ����ϼ��Ʈ��.��֪����"+document.inputform.USER.value+"����������? ",
	"����",	"����������������������Ҳ���Բ��λ࣬���ռ��ˣ�Ψ��Ͷˮ���磻�����Ѿ�������������ǰҲ����Ȼʧɫ����̾���磬ֻ��Զ�ܱ������Ӵ˲����ٻ���ԭ",
	"����",	"����"+document.inputform.USER.value+"��һ��΢Ц�͹��ˣ��籡��һ���������һ�ƣ������һƪ��˵����Ժǣ��·��죬��ܰ��Ʈ�ݡ�",
	"����",	"��"+document.inputform.USER.value+"������ؿ����㣻��Ҫ���������İ���֮�⣬��һ��һ��Ҳ����ȱ����İ���ֻ��Ӯ����İ����ҵ��������й�ʡ�",
	"����",	"������մ��¶��Ļ��꣬���Ҵ���һ�ҷ��㣻�����ǻ�������ĸ��ڣ����Ҵ�������ľ�Զ��׷��",
	"����",	"��"+document.inputform.USER.value+"��ÿʱÿ�̶���˼���ġ����̡��°��壬��֪����շ��ܴͶ��������ҵ����ֿ��̣�",
	"�ֺ�",	"��֪Ϊʲô��ֻҪ����������ߣ���"+document.inputform.USER.value+"�����ı㲻�ٻ̻̲�����",
	"����",	"��"+document.inputform.USER.value+"��ֻ�ܴ������۵�΢Ц�и����������, ��ʱʱע������, �Ҳ�Ը���һ˿����, �Ķ��ǻ���ҹ���˾�ʱ, �һþ��������۵��������һ���",
	"�ļ�",	"�������Ұ� ��������Ҫԩ�����������ǿ����ҳϵ��ġ���Զ����� ��Զ����� ��Զ�Ǳ˴˵�",
	"Ψһ",	"�����Ҿ����ںδ����Ƿ������һ��Ϊ������ң���"+document.inputform.USER.value+"��ҪŬ��������ֻ�����������ܺ��㹲ͬ�����ʱ�Ƕ�ô���õ�����",
	"����",	"û���㣬���˵Ĺػ�������ͽȻ�ġ�������Щ�ػ�����"+document.inputform.USER.value+"��������ܣ�Ҳû���ʸ����",
	"����",	"�Ұ��㣡����İ��㣡����ĺð��㣡��"+document.inputform.USER.value+"�� love you����"+document.inputform.USER.value+"�� love you so much��",
	"����",	"��ʶ���Ժ����Ժ�����ŵ�һ�ж���ʧ����Ӱ���٣�ȡ����֮����������һ��Ļ���ʱ��"
);



//�Զ�ӭ��
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
           if (y_exchange[j].substring(0,y_exchange[j].length-12)==y_exchange1[i].substring(0,y_exchange1[i].length-12)) 
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
   cs_name=c1[new_men_num1-new_men_num].substring(0,c1[new_men_num1-new_men_num].length-12)
   cs_ys=inputform.WHOTO.value
   parent.cs(cs_name)
   document.inputform.msg.value="��ӭ�����١�" + room_name + "�����������ң�Ը����������Ŀ��ģ������죡�����������ǣ��ϵ�ļң�����"
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
setTimeout("Az_yys()",30000)
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

//�������衪��
var a_yao = new Array
(  
"����", "�ٺ٣��ҡ�"+a_user+"����������׸�ѽ���žžžžžžžžžžŸ�����ѽ~^_^^_^^_^",
"����", "���쵼���Խ�����??��",
"����", "����Ҫ����Ҫ�������!!������Ҫ����Ҫ�������׸�!!!��",
"����", "99999999999999999��~��"+a_user+"����Ҫ����ճ��ĸ�ѽ!"
);


//����׼������
var a_yao1 = new Array
(
"׼��",	"����!��һλ������������.лл�������ĵȴ���Ո�����ý���׼��!.�x�x! ",
"׼��",	"����!��һλ������������.лл���ȴ���Ո�����ý���׼��!.�x�x! "
);



//�������󡪡�
var a_yao2 = new Array
(
"����",	"���м��£����м��£���������ϸ�����119~~~~119!.�x�x! ",
	"����",	"��"+document.inputform.USER.value+"���q�T��119����,�q�T��119--119,���ȸ�����лл!!!",
"����",	"������ٵݸ�����.���£�������������ѣ��½�!����~~~~~~119.�x�x! "
);


//������������
var a_yao3 = new Array
(
"����",	"����������ô����ô������!! ",
"����",	"����Ǿ���ѽ~~~~~~~����!�ز�! ",
"����",	"����������Ҫ�����~~~~~~~����~~~���!! ",
"����",	".����������ѽ! ������ʻ�����ѽ"
);

//����лл����
var a_yao4 = new Array
(
"лл",	"лл����!! ",
"��л",	"��"+document.inputform.USER.value+"�����ĸ�л�����ǵ�����!!!",
"лл",	".�����ǵ��ʻ��������Ǹ��ҵĹ���!��һ��лл"
);


//�������󡪡�
var a_yao5 = new Array
(
	"����",	"��"+document.inputform.USER.value+"����Ҫ����444--444~~,������Ը���лл!!!",
    
	"�Գ�",	"��"+document.inputform.USER.value+"���q�T������,�q�T��444--444,������Ը���лл!!!"
);

//������������
var a_yao6 = new Array
(
	"����",	"û������ѽ------N0n0n0n0~~������ѽ~~_____n0N0N0-------������ѽ--------������--------�������´����!!",
	"����",	"������~~~~~~~~~û������-------���������������ѽ~~~~~~~~~~~~~~����ѽ----������������ѽ��!!",
	"����",	"���������ĵȴ���������������------�������-----�����������ѽ~~~----��ϧ������ѽ-------�����µ����----��ONON=======ON!!",
    
	"����",	"û�������������ѽ------������_____n0N0N0----������������������-------�༱����ѽ--------�������´���˰�--Ҳû������--����!!"
);


//�������롪��
var a_yao7 = new Array
(
	"����",	"������~~�ƾƾ�~~~~`Ϊ����������Ŀ����!!!",
	"����",	"���ĵ���ʹ���������������!Ϊ����������һ����Ŀ~~~~~����~~~����~~~~˵��С���ӡ�����!",
	"����",	"��ϣ��������������!!!������������������!",
    	"����",	"�������ã�������è����̨Ϊ���ѱ������ֺ�Ϸ������������!~~~��~~~��ŤŤ�Ĳ�����˼!~~��ƾƾ�����Ӵ"
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

"���ҵ�ַ",	"http://2030.liaowan.com/��ҶƮ��","color:#6600ff",
"�Ѿ�����",	"����!����Ҫ��������Ѿ�������,�����Ժ�,Ҳ��������һ�������,лл�����ٱ�������,"+a_user+"ף����ÿ�����ÿ���!","color:#6600ff",
"���󷽷�",	"���������ѣ�Ϊ���ܹ����ر��˵�˵���ͳ��裬����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������","color:#FF0000",
	"ϣ������",	"��ӭ����������" + room_name + "������ϣ��������������ֻ��������Ա��999������Ա����󽻵������ϵģ�ף����������Ŀ��ģ���","",
	"�����ݳ�",	"����!�װ�������,��ӭ���ĵ���,�����Ը���ҳ�һ�׸���˵˵���𣿣���лл���_�У���� ��","",
	"��л����",	"!лл��Ϊ������ϵľ�������,�Ƿǳ��Ķ���,�����ʱ����Ϊ�������һƪ���İɣ�������һ�θ�л������!!","",
	"��л����",	"����!лл��Ϊ������ϵĸ���,�Ƿǳ��Ķ���,�����ʱ����Ϊ�������һ����,���Ǹ�л��..ͬʱҲ��ӭ������!!","",
	"�����Ժ�",	"����!����Ҫ��������Ѿ�������,�����Ժ�,Ҳ��������һ��������,лл�����ٱ�������,ף����ÿ�����ÿ���! ","",
	"���󲻺�",	"����!�������������������������̫��,���ǵ������,������ȴ�Ƕ϶�����������,�����ٵ���һ���ٴ�999,����?лл.","",
	"��������",	"����!�װ�������,�������������������������̫��,���ǵ������,������û������,�����ٵ���һ�����,�������Ǵ�999����?","",
	"Ҫ������",	"��Һã���ӭ��������" + room_name + "������Ҫ�������������߹���Ա��9999����!�м���������,����ˢ������!���ǻ�Ϊ���ź�˳��!","",
"����Ҫ��",	"�������������󣡵���һ��СС��Ҫ�󣺵�������˵���ͳ���ʱ���ɲ�Ҫ�����ޣ���Ϊ���Ƕ����ʹ�ҵ����أ�������꣡�����������Ѳ�Ҫ�ż����������9999�������໥֧�֣�","color:#009900",
"�������",	"����������ǹ㲥��ʽ���÷�ʽ��ͬʱֻ����һ��ʹ����˷磻�����������ȫ˫���Ի����ɺ�����˽�ģ���������С��Ͳ���ֺ��󣬾��ǹ����ٵ��ȥ�������ǿ���","color:#009900",
"�뿪����",	"����!ϵͳ����������δ����������˫������״̬,���������������ȫ˫���Ի�,"+a_user+"�ݲ��������.лл֧�������!!","color:#6600ff",
"��������",	"����**����������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!! ","color:#FF0000",
"��ھ���",	"��"+a_user+"�������...��ڴ��~���������~��~û������~��~���������~��~û������~��~����","color:#6600ff",
"���㻻��",	"��"+a_user+"���������������������ֽ���������лл���ĺ�����������","color:#009900",
"���볪��",	"����!�װ�������,��ӭ��ĵ���,����Ը���ҳ�һ�׸��𣿣�������"+a_user+"��лл�������_�У���� ��","color:#009900",
"�����Ժ�",	"����!����Ҫ��������Ѿ�������,�����Ժ�,Ҳ��������һ�������,��"+a_user+"��лл�����ٱ�������,ף����ÿ�����ÿ���! ","color:#6600ff",
"����̫��",	"����!�������������������������̫��,��"+a_user+"���������,������ȴ�Ƕ϶�����������,�����ٵ���һ���ٴ�999,����?лл.","color:#009900",
	"������ַ",	"��������ַ "+ room_link_url ,"color:#009900",
	"��������",	"fnc:disable_KICK(true)","color:#0000FF;background-color:#CCFFCC",
	"���߿���",	"fnc:quick_kick()","color:#FF0000;background-color:#FFFF99",
	"��������",	"fnc:disable_KICK(false)","color:#0000FF;background-color:#CCFFCC"

);

//����ͼƬ����
var a_picture = new Array
(
     "���� ",       "http://www.mwzs.com/bfly/images/upfile/200461422444.jpg",
     "����",        "http://www.mwzs.com/bfly/images/upfile/2004617141236.GIF",
     "��ӭ����",    "http://www.mwzs.com/bfly/images/upfile/2004621164743.gif",
     "��ӭ����",    "http://www.mwzs.com/bfly/images/upfile/2004621164840.gif",
     "��  ��",      "http://www.mwzs.com/bfly/images/upfile/2004624162829.gif",
     "������",	      "http://www.mwzs.com/bfly/images/upfile/2004614222645.jpg",
     "��Ȳ�",      "http://www.mwzs.com/bfly/images/upfile/2004621164412.gif",
     "���ǲ�",      "http://www.mwzs.com/bfly/images/upfile/2004621164623.jpg",
     "���",        "http://www.mwzs.com/bfly/images/upfile/2004614223432.jpg",
     "��ȿ���",    "http://www.mwzs.com/bfly/images/upfile/2004614222956.jpg",
     "��ɽ����",    "http://www.mwzs.com/bfly/images/upfile/200462117030.jpg",
     "�������",    "http://www.mwzs.com/bfly/images/upfile/200461422103.jpg",
     "���ʹ�֭",    "http://www.mwzs.com/bfly/images/upfile/200462413589.GIF",
     "�� �� ��",    "http://www.mwzs.com/bfly/images/upfile/2004621164453.gif",
     "����",      "http://www.mwzs.com/bfly/images/upfile/2004624153523.gif",
     "�ܵܺ�",      "http://www.mwzs.com/bfly/images/upfile/200462415366.gif",
     "����",      "http://www.mwzs.com/bfly/images/upfile/2004624153646.gif",
     "���ú�",      "http://www.mwzs.com/bfly/images/upfile/2004624153717.gif",
     "����",        "http://www.mwzs.com/bfly/images/upfile/200461422346.jpg",
     "���ư�",      "http://www.mwzs.com/bfly/images/upfile/200461422321.jpg",
     "����",        "http://www.mwzs.com/bfly/images/upfile/200462416740.gif",          
     "��Ԫ",	      "http://www.mwzs.com/bfly/images/upfile/2004624153917.gif",
     "������",      "http://www.mwzs.com/bfly/images/upfile/2004624154237.GIF",
     "������",      "http://www.mwzs.com/bfly/images/upfile/2004614215850.jpg",
     "Ү",          "http://www.mwzs.com/bfly/images/upfile/2004617141258.JPG",
     "лл",        "http://www.mwzs.com/bfly/images/upfile/2004617141049.GIF",
     "�ٺ�",        "http://www.mwzs.com/bfly/images/upfile/2004617141413.GIF",
     "����Ц��",    "http://www.mwzs.com/bfly/images/upfile/2004614222712.jpg",
     "��ʹ����",    "http://www.mwzs.com/bfly/images/upfile/2004614185736.jpg",
     "Ϊ�����",    "http://www.mwzs.com/bfly/images/upfile/2004624155526.gif",
     "Ϊ�����",    "http://www.mwzs.com/bfly/images/upfile/2004624162519.gif",
     "����",        "http://www.mwzs.com/bfly/images/upfile/200461422314.jpg",
     "�ۺ�����",    "http://www.mwzs.com/bfly/images/upfile/200461422417.jpg",
     "̫������",    "http://www.mwzs.com/bfly/images/upfile/200461422513.jpg",
     "С��������",  "http://www.mwzs.com/bfly/images/upfile/200461422312.jpg",
     "����",        "http://www.mwzs.com/bfly/images/upfile/2004624145210.GIF",
     "��������",    "http://www.mwzs.com/bfly/images/upfile/2004624155436.gif", 
     "�����",      "http://www.mwzs.com/bfly/images/upfile/2004624155339.bmp",
     "���볪��",    "http://www.mwzs.com/bfly/images/upfile/20046241642.gif",
  "���ʻ����","", 	 
    "õ���",    "http://www.lndd.org/button/guniang.gif",
    "�ʻ�",       "http://www.mwzs.com/bfly/images/upfile/2004624162650.jpg",
    "һ����",	    "http://www.sz.zghc.net/images/gnsh/xh110.jpg",
    "һ�ѻ�",	    "http://www.trdflower.com.cn/product/image/big/trd0283.jpg",
    "õ����",     "http://www.mwzs.com/bfly/images/upfile/2004614221234.jpg", 
    "������",     "http://www.mwzs.com/bfly/images/upfile/2004614223135.jpg", 
    "õ��",       "http://www.mwzs.com/bfly/images/upfile/2004614223630.jpg",
    "�¼�",       "http://www.mwzs.com/bfly/images/upfile/200461422379.jpg",
    "��õ��",     "http://www.mwzs.com/bfly/images/upfile/2004617192731.JPG",
    "�ʵ�����",   "http://www.mwzs.com/bfly/images/upfile/2004617192819.png",
    "��õ��",     "http://www.mwzs.com/bfly/images/upfile/2004617193657.GIF",
    "�׻�",       "http://www.mwzs.com/bfly/images/upfile/2004523144013.jpg", 
    "һ֦õ",     "http://www.mwzs.com/bfly/images/upfile/2004624151214.GIF",
    "С��",       "http://www.mwzs.com/bfly/images/upfile/20046211724.jpg",
    "һ����",     "http://www.mwzs.com/bfly/images/upfile/2004624151021.JPG",
    "����",      "http://www.mwzs.com/bfly/images/upfile/2004624151513.JPG",
    "����",      "http://www.mwzs.com/bfly/images/upfile/200452314453.jpg",
    "�ʻ�",      "http://www.mwzs.com/bfly/images/upfile/200452315821.jpg",
    "�ʻ�",      "http://www.mwzs.com/bfly/images/upfile/2004523143326.jpg",
  "��������","",
    "��һ��",	    "http://www.mwzs.com/bfly/images/upfile/200461422541.jpg",
    "��ʯ��",	    "http://www.mwzs.com/bfly/images/upfile/2004614223338.jpg",
    "�Ұ���",       "http://www.mwzs.com/bfly/images/upfile/200461714838.JPG",
    "���������ҵ��� ","http://www.mwzs.com/bfly/images/upfile/2004614215720.jpg", 
    "��Ư����",       "http://www.mwzs.com/bfly/images/upfile/200461422342.jpg",
    "���� ",       "http://www.mwzs.com/bfly/images/upfile/2004617141126.GIF",
    "Լ��",	     "http://www.mwzs.com/bfly/images/upfile/200461714816.GIF",
    "�������",      "http://www.mwzs.com/bfly/images/upfile/2004614221354.jpg",
    "ˮ����",          "http://www.mwzs.com/bfly/images/upfile/2004614223226.jpg",
    "�ɳ�����",       "http://www.mwzs.com/bfly/images/upfile/2004617192642.GIF",
    "������",         "http://www.mwzs.com/bfly/images/upfile/2004614223254.jpg",
    "һ������",       "http://www.mwzs.com/bfly/images/upfile/2004614223316.jpg",
    "һ������",       "http://www.mwzs.com/bfly/images/upfile/200462415264.JPG",
    "���۶�",       "http://www.mwzs.com/bfly/images/upfile/200461714747.GIF",
    "����û����",      "http://www.mwzs.com/bfly/images/upfile/2004624152735.GIF",
    "����",           "http://www.mwzs.com/bfly/images/upfile/2004624152422.JPG",
    "��",             "http://www.mwzs.com/bfly/images/upfile/2004617141834.GIF",
    "����",           "http://www.mwzs.com/bfly/images/upfile/200462415231.GIF",
    "����",           "http://www.mwzs.com/bfly/images/upfile/2004614223818.jpg",
    "kiss",           "http://www.mwzs.com/bfly/images/upfile/200461422366.jpg",
    "��",       "http://www.mwzs.com/bfly/images/upfile/200462415314.GIF",
    "����",       "http://www.mwzs.com/bfly/images/upfile/200462415320.GIF",
    "׷��",      "http://www.mwzs.com/bfly/images/upfile/2004624154030.JPG",  	
 "��ף����","",
    "���տ���",       "http://www.mwzs.com/bfly/images/upfile/20046142290.jpg",
    "���տ���",       "http://www.mwzs.com/bfly/images/upfile/2004617192426.gif",
    "���յ���",       "http://www.trdflowers.com/product/image/big/TRDF009-9.jpg",
    "���յ���",       "http://www.trdflowers.com/product/image/big/TRDF012-9.jpg",
    "���յ���",       "http://www.trdflowers.com/product/image/big/trdf036-9.jpg",
    "���յ���",       "http://www.mwzs.com/bfly/images/upfile/200462116533.gif",
    "�������",       "http://www.mwzs.com/bfly/images/upfile/200461422922.jpg",
     "����",	       "http://www.mwzs.com/bfly/images/upfile/2004621165222.gif",
  "ʥ����",      "http://www.mwzs.com/bfly/images/upfile/200461422756.jpg",
  "һ����˳",	 "http://www.mwzs.com/bfly/images/upfile/2004614222736.jpg",
"��ʳ Ʒ��","",
   "����",	"http://www.mwzs.com/bfly/images/upfile/200461422296.jpg",
   "���",	"http://www.mwzs.com/bfly/images/upfile/2004614223015.jpg",
   "��ݮ",	"http://www.mwzs.com/bfly/images/upfile/2004617193232.GIF",
   "����",	"http://www.mwzs.com/bfly/images/upfile/2004621164930.gif",
   "����",	"http://www.mwzs.com/bfly/images/upfile/2004621165030.gif",
   "�����",	"http://www.mwzs.com/bfly/images/upfile/2004621165123.gif",
  "�������",	"http://www.mwzs.com/bfly/images/upfile/2004624135330.GIF",
  "������",	"http://www.mwzs.com/bfly/images/upfile/2004624135037.GIF",
  "������",	"http://www.mwzs.com/bfly/images/upfile/2004614221030.jpg",
  "�������",   "http://www.mwzs.com/bfly/images/upfile/200461422713.jpg",
   "�ɱ�",     "http://www.mwzs.com/bfly/images/upfile/200461422639.jpg",
  "С���",	"http://www.mwzs.com/bfly/images/upfile/2004617141521.GIF",
"��������","",
  "�һ������",   "http://www.mwzs.com/bfly/images/upfile/200461422823.jpg",
 "����",	"http://www.mwzs.com/bfly/images/upfile/200461714108.GIF",
 "�㲻��",	"http://www.mwzs.com/bfly/images/upfile/2004617141212.GIF",
 "������",	"http://www.mwzs.com/bfly/images/upfile/200461714946.GIF",
 "���汿",	"http://www.mwzs.com/bfly/images/upfile/2004617141457.JPG",
"�Ҵ���",	"http://www.mwzs.com/bfly/images/upfile/2004624153358.GIF",
 "��",	"http://www.mwzs.com/bfly/images/upfile/20046171490.GIF",
"�ݰ�",       "http://www.mwzs.com/bfly/images/upfile/2004617141030.GIF"
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


	for (var i = 0 ; i < 9 ; i ++)
		write_newwindow_button(a_link_button[i*2],5 + 35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","�ͻ�",374,60,35,20,"","�����ʻ�����","autosend(a_flower)");
	write_button("","��ӭ",409,60,35,20,"","���ٻ�ӭ","autosend(a_welcome)");
	write_button("","��ͼ",339,100,35,20,"","����ͼƬ","insert_picture()");
	write_button("","�ظ�",269,80,35,20,"","�ظ��ϴεķ���","repeat_msg()");
	write_button("","����",304,80,35,20,"","��������","autosend(a_byebye)");
	write_button("","Ҫ��",339,80,35,20,"","����Ҫ��","autosend(a_wantmic)");
	write_button("","����",374,80,35,20,"","��������","autosend(a_heart)");
        write_button("","�黰",269,100,35,20,"","�黰���","autosend(a_love)");
        write_button("","����",444,60,35,20,"","��Ҫ����","autosend(a_yao)");
        write_button("","׼��",374,100,35,20,"","׼������","autosend(a_yao1)"); 
        write_button("","����",409,100,35,20,"","����Ҫ��","autosend(a_yao2)"); 
        write_button("","����",444,100,35,20,"","��������","autosend(a_yao3)");
        write_button("","лл",479,100,35,20,"","��л���","autosend(a_yao4)"); 
        write_button("","����",512,100,32,20,"","��������","autosend(a_yao5)");
        write_button("","����",544,100,30,20,"","û������","autosend(a_yao6)"); 
        write_button("","����",573,100,30,20,"","�����и�","autosend(a_yao7)");    

 write_button("Az_y","ӭ��",304,100,35,20,"","�㿪���ϵͳ���Զ���ӭ�ս���������","Az_yy()");
	write_button("","��ַ",444,80,35,20,"","������ַ\n"+room_link_url,"send_msg('��������ַ��"+room_link_url+"')");
	write_bkcolor_select("bkcolor","����",357,39,52,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","ͼƬ���",504,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","��������",504,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","��������",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
        if (is_online_manager())
	write_singer_form(479,20,select_color);	//	����
	write_changeroom_form(269,123,126);	//	������
	write_changeuser_form(397,123,208);	//	����
	//write_make_flower(269,120);	//	�����׻�

	if (is_online_manager())
	{       
		write_button("","�¹�",3,40,35,20,"","�����¹�","xiaguan()");
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
		write_button("","�Ϲ�",3,40,35,20,"","�����Ϲ�","guan()");
		write_button("autospack","�Զ�",409,80,35,20,"","�Զ�����","auto_spack()");
		write_button("","���",339,60,35,20,"","���ٸ��","autosend(a_leave)");
		write_select("linkroom","��������",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}

//////////////////////////////////////////////////////////////

alert('   \n\b       �q�k�r�q�k�r�q�k�r�q�k�r�q�k�r�q�k�r�q�k�r       \n\b       �U�����U�辶�Uӭ���U�辶�U�⩦�U�辶�U�٩�       \n\b       �^���a�^���a�^���a�^���a�^���a�^���a�^���a   \n\b       �q�k�r�q�k�r�q�k�r�q�k�r�q�k�r�q�k�r�q�k�r       \n\b       �U�辶�U�辶�UҶ���U�辶�UƮ���U�辶�U�㩦       \n\b       �^���a�^���a�^���a�^���a�^���a�^���a�^���a\n\n\b\b\b ��ӭ�����롺���~�h�㡻��������*�߹Ϲϥ�     \n\n    ϣ�����������ܹ������쿪�ģ�\n\n\b\b\b ���һ�ӭ�����������ѣ����˱��ҹ������\n\n    ����������ϵ����QQ:4088119��\n\n\b\b\b\ лл����֧�֣���ӭ��ļ��룡��')
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
			if (lists[1] == 1)
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
			HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 3]+" style=\"cursor:hand\" >["+lists[1]+"]</font></a>");
		else
			HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">["+lists[1]+"]</font></a>");

		if (is_hidden_user(lists[1]) < 10)
			HTMLstr += "<font color=#FF0099>��</font>";
		if(lists[2]==1)
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_normal_color+">(</font>");
		if(lists[2]==2)
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_v2v_color+">(</font>");
		if(lists[3]==1)
			HTMLstr += ("<font face=\"Webdings\" color="+voice_vr_color+">N</font>");
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
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'������\');document.inputform.bgcolor.value=\'#FE82EE\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
//	���������б�
	parent.write_new=writelist;
//	��д����������
	parent.writecv_new=writecv;
       setTimeout('decoratev()',4000);
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
				reset_btn_style(obj,36);
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

	document.all.tags("TABLE")[0].cells(2).innerHTML="  &nbsp;";
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

function writelistbase()//��д�����б���
{
	if(parent.r.document==null)
		return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";
	HTMLstr += "<style type=text/css><!--body {font-size: 9pt} td {font-size: 9pt} ";
	HTMLstr += "a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr += "a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr += "a:hover {color:#CC0033; text-decoration: none} ";

	if (full_screen_bkimage == 1)
	{
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:0px;\"";
		if (auto_hide_scrollbar == 1)
			HTMLstr += " onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'";
	}
	else
	{
		HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}

	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("><font color=#ff0000><big><B>&nbsp;&nbsp;"+room_name+"</B></big></font>"));
	HTMLstr += "<a title='��ǰ��������������'>[<font color=000000>&nbsp;&nbsp;&nbsp;��ǰ������&nbsp;</font>]<font color=red><B id='usercount'>0</B></font><font color=#E300FF>&nbsp;λ����</font></a><br>";

	HTMLstr += "<a title='������������'><font color=#3A9F06>&nbsp;<b>�б�:</b></font></a>";
	HTMLstr += "&nbsp;&nbsp;&nbsp;&nbsp;<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]<a href=javascript:history.go(0);>[<font color=FF01C0>��ˢ��</font>]</font></a><br>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr += userlist_bottom_html;
	HTMLstr += ("<br><a title=\"�Լ�����ʹ�õ�����\"><font color=#FF0000 >[" + a_user + "]</font></a>");
	HTMLstr += "<BR><IMG align=absMiddle src=http://www.liaowan.com/logo/logo.gif></a>";
        HTMLstr += "<tr><td colspan=3 align=center><table width='60' border='7' cellspacing='3' cellpadding='3' bordercolordark='red' bordercolorlight='yellow' height='3'><tr><td  colspan=3 width='3' align='center'><span style='font-size: 8.7pt;COLOR:red'><marquee direction=up height=70 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=100 crolldelay=50><center>�����������<BR>*�߹Ϲϥ�<BR>*�K΢�u���u��L<BR>���︱�������<BR>*��ȱ<Br>�������á���<Br>��*�߹Ϲϥ�</marquee></font></SPAN></td></tr></table></td></tr>";
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
	if (is_online_manager())
		color = 11,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1)
		color = 15,	msg = msg_quitadmin;
	else
		color = 18,	msg = msg_login;
	document.inputform.bgcolor.value="#FFDDBB";
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
		msg += "��"+a_user+" ר�á�";
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
		document.inputform.msg.value = document.inputform.SAYS.value + " ���ظ���";
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
		roomurl="http://202.96.140.67/cgi-bin/login.cgi?roomid=" + roomid + "&USER="+user+"&PASS="+pass;
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

function auto_spack_fnc()//�Զ����Դ�����
{
	auto_spack_input(false);
	auto_spack_count ++;
	var msg = msg_auto_spack + "���Զ����� "+auto_spack_count+"��";
	send_msg(msg);
	auto_spack_input(true);
}

function auto_spack()//�л��Զ����Թ���
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
	document.write('<option selected style=color:'+color+' VALUE="" >��-����-*-����-��</option>');
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
function decoratev()//��������Ľ���
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
function writecv()//δ������ʱ�Ľ���
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_fullscreen_bgimage != "")?(" url("+m_fullscreen_bgimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><font face=����_GB2312><font size=2 color=#874D01><center><u><b>���ã�*�Ϲ�</b></u></center></font></font><center><br><input type=button name=closev value=�����ͷ� onclick=\"{parent.writev_new();parent.d.decoratev();}\">";
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
//		document.inputform.msg.onblur=new Function("return false");
		document.screenForm.NOTICE.checked=false;
		document.aicontrolForm.NOTICE.value='off';
	}

	if (auto_open_ai == 1 || auto_open_div == 1 || disable_notice == 1)
		document.aicontrolForm.submit();
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
			if(tmpurl != ".gif" && tmpurl != ".jpg" && tmpurl != ".mid") 
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
      if (div_msg3!="") parent.u1.document.write('<p align="center"><font style=filter:glow(color=' + div_msg_color3 + ',strength=3);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>'+div_msg3+'</font></p>');
      if (div_msg4!="") parent.u1.document.write('<p align="left"><font color="#FF6666" size="2" face="����"><b>��'+room_name+'�����棺</b></font><font color="#blue" size="3" face="����">'+div_msg4+'</font></p>');
       if (div_link!="") parent.u1.document.write('<p align="left"><a href='+div_link+' target="_blank"><font color="#FF9900" size="2" face="����">'+div_link+'</font></a></p>');
	this.u1.document.write("<p class=\"p9\" align=\"left\">");



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

init_system();
add_new_element();
reset_elements_style();

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

{alert('��||��Ϊ�߼�����Ա||��������||��');
return(false);
}
}
return(true);
}

//////ˢ��////////
var roomnameK="��ҶƮ��";
var admin=0;var time=0;
function change(){time++;if(document.saveform.show.value=="��¼")document.saveform.show.value="����";else document.saveform.show.value="��¼";if((time==600)&& (admin==1))savetime();if((time==600)&& (admin==0))time=0;} 
function savetime(){if(admin==1)window.open("","save","top=20,left=500,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=150,height=100");document.saveform.timesave.value=time;time=0;document.saveform.submit();}
document.write('<DIV align=center style=width:0px;LEFT:4px;TOP:20px;POSITION:absolute>');
document.write('<form name=saveform action=http://www.fs169.net/chat/savetime.php method=post target=save style="MARGIN: 0px">');
document.write('<input type="button" name=show value="����" style="width:35px;height:18;background-image:url(http://klyj.com/tupian/a36.gif);border:1px" onclick=window.open("http://www.fs169.net/chat/admin.php?room=��ҶƮ��")>');
document.write('<input type="hidden" name=roomname value="'+roomnameK+'">');
document.write('<input type="hidden" name=timesave>');
document.write('<input type=hidden name=chatnick value='+document.inputform.USER.value+'>');
document.write('<input type="hidden" name=timer value=0 onclick=savetime()>');
document.write('</form>');
if(document.screenForm.KICK){admin=1;setTimeout("document.saveform.timer.click();",500);}
setInterval('change()', 1000);
document.write('</DIV>');
var guest="<img src= height=1 width=1>" 
document.write(guest) 

//-->