/**************************************************************
	   �����ҽ�������
���ߣ�����
����ıࣺ*�ڡ�ǧ�����  *������
�汾��3.36	040913
�ű����ӣ�
<script id="ysyw_336" src=http://�ű��ļ���ַ></script>
�����������ڷ������һ������û�ӭ������
<script>var u_bill="<br>336ǧ����̳�޸İ�<br>���ߣ�����<br>�ο��˶������ִ��룬�ڴ˸�л����<br>�޸ģ�ǧ�� ����<br>����ID��ˡ���𸴴˵��޸ĺ�Ŀ��<br>";</script>
���ý�����http://1017.pwdns.com/leadbbs
**************************************************************/


//�������в��ɸ���
var a_user=document.inputform.USER.value;
var a_pass=document.inputform.PASS.value;

//·������
var tupianlj="http://www.dbyr.com/330462/";//ͼƬ·��
var config_houta="http://www.dbyr.com/330462/manage/";//��̨·��

//��������
var room_owner="####";//��������
var room_name="####";//��������
var room_adminname_head="";//	���ҹ�����
var yingb="*ӭ��С��";//�Զ�ӭ����
var shibiao="http://yunyun1191.51.net/sgif";//�ұ�
var llbxiatp="http://xyhhl.pwdns.com/tupian/hy2.gif";//�б���ͼƬ
var room_number="######";//�������
var black_roomname="";//˫����������
var black_roomnumb="";//˫���������

///////���Ի����������////////
var quanpingt="";//1024X768���ұ���ͼ
var quanpingtu="";//800X600���ұ���ͼ
var userlist_bkcolor="#E8F4E0";//�����б����ı���ɫ
var userlist_bkimage="";//�����б����ı���ͼ
var voice_normal_color="#00D000";//����������ʱ��ͼ����ɫ
var voice_v2v_color="#BFBFBF";//˫������ʱ��ͼ����ɫ
var voice_vr_color="#00D000";//����Ƶʱ��ͼ����ɫ
var div_screen_bkcolor="";//��������ɫ
var div_screen_bkimage="";//��������ͼƬ
var voice_bkcolor="#E5F1DF";//�������ı���ɫ
var voice_bkimage="";//�������ı���ͼ
var input_bkcolor="#E8F4E0";//����������ɫ
var input_bkimage="";//����������ͼƬ
var input_msg_color="#339900";//�������������������ɫ
var input_msg_bkcolor="#DCE0CF";//��������������򱳾�ɫ
var body_text_color="#008800";//����������ɫ
var select_color="#008800";//�б������ɫ
var select_text_color="#008800";//�б��������ɫ
var button_text_color="#008800";//��������ť����ɫ
var button_bk_image=1;//��ťʹ�ñ���ͼƬ1��ʹ��0����ʹ��
var button_bk_color="";//��������ť��ʹ��ͼƬʱ����ɫ
var full_screen_bkimage=1;//�Ƿ�ʹ�����屳��ͼƬ0��ʹ��1ʹ��


//��ťͼƬ
var a_btn_pic=new Array
(
	17,"http://www.dbyr.com/330462/an17.gif",
	18,"http://www.dbyr.com/330462/an18.gif",
	19,"http://www.dbyr.com/330462/an19.gif",
	35,"http://www.dbyr.com/330462/an35.gif",
	46,"http://www.dbyr.com/330462/an44.gif",
	70,"http://www.dbyr.com/330462/an71.gif"
);

//ѡ��������
var only_registr_user = 0;//ֻ����ע���û�����,0�������ƣ�1������
var only_chinese_name = 0;//ֻ���������û���,0�������ƣ�1������
var default_admin_pass = "123";//Ĭ�ϵĹ���Ա�Ϲܿ���
var use_chat_manage = 1;//�Ƿ����Ӻ�̨�������0�������ӣ�1������
var sound_stereo = 1;//�Ƿ�ʹ��������������0��δʹ�ã�1��ʹ��
var auto_open_ai = 0;//	�Զ���ͼ��0������1���Զ���
var auto_open_mic = 1;//�Զ�������0������1���Զ���
var auto_open_div = 1;//�Զ�����0��������1���Զ�����
var multi_singer_list = 0;//�Ƿ������ظ�����0��������1������
var auto_add_singer = 1;//�Ƿ��Զ�����0���ã�1���߹���2���Ѿ���
var auto_welcome_type = 1;//�Ƿ��Զ���ӭ0���ã�1������2���Ѿ���
var auto_set_ws	= 1;//�Ƿ��Զ���¼���Ļ�״̬��0��;1��
var disable_notice=1;//	�Ƿ�������ʾ��0�������Σ�1������
var show_lun_info = 1;//�Ƿ���ʾ����������Ϣ��0������1����ʾ

//ϵͳĬ���������
var msg_login="��Ȼ���ǲ���ͬһ����ȴ���Թ����������~ף��ҿ���ÿһ�̣�~";
var msg_admin="��Һã���"+a_user+"���Ϲ���,������Ϊ��ҷ���:)";
var msg_quitadmin="��"+a_user+"�����¹��ˣ�лл��Ҷ��ҵ�֧�֣���";
var msg_leave="��λ����"+a_user+"������һ����,�´��ٺʹ���ģ�";
var msg_auto_spack="���ջ��⣺";
var msg_back_spack="���������лл��ҵĲ���~";

//�������⹦������
var a_vip_user=new Array//VIP����,����Ϊ������Ϊ���¹���
(
 
"*����",1
);

//����������
var a_name_filter=new Array(
	"��.{0,10}��",
	"��",
	"��"
);

//��������
var a_roomlink=new Array(
	black_roomname,		black_roomnumb,
	
	"��������",			""
);

//D�����Ӱ�ť
var a_link_button=new Array
(
	"���","http://photo.163..php?username2",
        "��̳","http://bbsxp.wfe/bbs/",
	"����","http://www.jsong.aspx?id=25996",
        "ָ��","http://www.o.com/help/help17.htm",
	"����","http:/com/admin/s_admintor.php",
        "�̿�","htt"
);
//����˵�����ڴ��޸��������ֵ���ɫ
var USER_TITLE_FIELDS	= 5
var a_user_title=new Array(
//	����,	  ˵��,	    ͼ�����,	  ��ɫ,	        �ֱ�Եɫ
	0,	"��������",	2,	"#FF0000",	"#FFFF66",
	1,	"���߹���",	2,	"#FF0000",	"#FFFFFF",
	2,	"��������",	3,	"#CC0033",	"#FFFFFF",
	3,	"���Ҹ���",	9,	"#CC0033",	"#FFFFFF",
	4,	"���Ҽα�",	1,	"#FF00FF",	"#FFFFFF",
	5,	"�����ܹ�",	5,	"#FF00FF",	"#FFFFFF",
	6,	"ֵ��߹�",	0,	"#FF00FF",	"#FFFFFF",
	7,	"���Ҹ߹�",	0,	"#FF00FF",	"#FFFFFF",
	8,	"ע��α�",	1,	"#0000FF",	"",
	9,	"���Ҽα�",	6,	"#0000FF",	"",
	10,	"���ּα�",	8,	"#0000FF",	""
);

//����ͼ��
var USER_ICON_FIELDS	= 5
var a_user_icon = new Array
(
//	���,	  ͼƬ�ļ�,	���,	�߶�,	Ԥ�ص�ͼƬ����,
	0,	"008.gif",	20,	15,		1,
	1,	"001.gif",	20,	15,		1,
	2,	"006.gif",	20,	15,		1,
	3,	"007.gif",	20,	15,		1,
	4,	"009.gif",	20,	15,		1,
	5,	"010.gif",	20,	15,		1,
	6,	"002.gif",	20,	15,		1,
	7,	"003.gif",	20,	15,		1,
	8,	"004.gif",	20,	15,		1,
	9,	"005.gif",	20,	15,		1,
	10,	"003.gif",	20,	15,		29
);

//��������
var a_linkurl=new Array(
	"ǧ����̳","http://1017.pwdns.com/leadbbs/",
	"�û�ע��","http://admin.bliao.com/user/reguser.htm",
	"��԰����","http://admin.bliao.com/admin/s_admin.php",
	"��Լ����","http://admin.bliao.com/admin/r_admin.php"
);

//��������
var a_flash=new Array(
	"flash����",""
);

//��������
var a_shizhu=new Array(
	"��ѯ","http://www.dbyrage/admin.asp",
	"����","http://www.dbyrage/showadmin.asp"
);

//һ�㹦�����ã������޸�
var a_welcome=new Array
(
	"��ӭ","��ӭ�����١�"+room_name+"�����������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
	"��ӭ","^_^*��"+room_name+"��*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡��������",
	"��ӭ","�������ߵ����ĺ��ǡ���"+room_name+"����Զ��ӭ������Զ�Ⱥ�������Զ�������������",
	"��ӭ","��ӭ�����١�"+room_name+"�����������ң�Ը����������Ŀ��ģ��ĵĿ��ģ����Ŀ��ģ�����",
	"��ӭ","����������ѽ����ӭ��ӭ���������ڡ�"+room_name+"������,������һ���ĵȴ���ǣ�ң����ѣ�����"
);
var a_flower=new Array
(
	"ǩ��","��~����̫����~�����~�����Ķ�����~����~����ǩ������~ �����~��~��������~����̫����~�����Ķ�����~0~",
	"����","������---�������ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ��",
	"����","����������ð�Ŷ�������������ˡ�������ð�Ŷ������ð�Ŷ������žžž�����",
	"����","�����ң���רҵ����~~~~�רt��...��r�רt��r�����ǡ���(((((žž)))))�רt�רtǩ���٣�����~~~~���� **�ҵ�Ь�أ��۾��� ",
	"õ��","õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���Ȼ��t���r���׻��t���r���㻨�t���r �񻨡��������������ϻ�",
	"����","����� *��� �����ǰ�������� **�������������������*���* ̫���ˣ�������������㳪�ģ��һ����Ǹ��ǳ��İ���* ~",
	"ż��","�������*�����ߡ֡���ʻ��֡���ʻ�ż�񡫡���*���� ��*������*������ż�񡫡�ǩ�������� ��*������",
	"�ٺ�","���רt��r�רt��r�����ǡ��פ�((((žž))))�רt��r�϶�����רt��rˮ�ɻ����רt��r�רt��rҰ�ٺɡ��רt��r��",
	"���","�������~~�t���r���򻨨t�����ƣ�����PA PA������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦������",
	"ˮ��","õ�廨���רt��r�רt��r�����ǡ��רt��r��(((((((žž))))))�רt��r�϶�����רt��r�רt��rˮ�ɻ����t��r�רt��r",
	"ĵ��","* *����ĵ����� *�ջ��� * *ҹ������һ��һ����һ���ĵ����� *�ջ��� * *ҹ������������* *����һ��һ����һ���"
);
var a_byebye=new Array
(
	"����","�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬http://"+room_number+".chat.yinsha.com��������Ŷ~��",
	"�ߺ�","�ߺ�ѽ������ˣ�����ŵ��¡���ʱ��һ��������"+room_name+"�������ź��𣡣�"
);
var a_qinghua=new Array(
	"����","���㣬���㣬���㣬ǧ��εİ��㣬�������󰮴��ס�",
	"����","���㣬���㣬���㣬����޵��Ŀ��������������㡣",
	"�ĸ�","�����ҵ�ʹ�������ҵĸΣ������������е�һ��֮��",
	"Ψһ","�Ұ��㣬˭�ܳ����Ұ��㣬�Ұ�һ�н����㣬����Ψ����",
	"","�Һޣ����Ҳ��������㣬ֻ��Զ�������㣬ֻ�����������",
	"","Love you!��˼�����㣬���Ҽ�����ʱ����һ����Ȫ����������",
	"","���㣬���㣬������һ��Ũ�裬�ݺݵİ���Ƚ�������~"
);
var a_leave=new Array
(
	"����","��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
	"���","��ɽ���ģ���ˮ������ɽ��ˮ����������ڣ����õȵ����������գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);
var a_wantmic=new Array
(
	"Ҫ��","��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999",
	"����","��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999"
);
var a_heart=new Array
(
	"����","11111111111111111111111111111111111111111111",
	"����","�������ˡ��������ˡ��������ˡ��������ˡ��������ˡ�"
);
//����
var shim=new Array
(
	"����A","����������6666666666",
	"����B","6666666666�����ҵ�����"
);
//����
var jiaob=new Array
(
	"����A","���裬���裬5555555555555555555",
	"����B","555555555555555����Ҫ����ѽ�������ͣ�~"
);
//�赸�����ޣ����޸�Ϊץ�˰�Ť
var wud=new Array
(
	"��ϷA","=============================================================~",
	"��ϷB","�������ڽ���ץ����Ϸ����ϲ���µ������н���лл������~"
);
//�����µĽ���Ԫ��
function add_new_element()
{
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

//����ר�ù���
	var a_admin=new Array(
		"������ַ","��������ַ http://"+room_number+".chat.yinsha.com" ,"color:#009900",
		"��������","fnc:disable_KICK(true)","color:#0000FF;background-color:#CCFFCC",
		"��������","fnc:disable_KICK(false)","color:#0000FF;background-color:#CCFFCC",
		"����׼��","���ã���ӭ��������"+room_name+"��������һ��������������,��׼����!!!!","",
		"�ܾ�˫��","����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣ ","color:#6600ff",
		"�Ѿ�����","����!����Ϊ������,�������Ĵ��Ⱥ�!","",
		"��������","����!��������,������˼,�����õ���,��Ӻ�������˷�!","",
		"��������","���ѣ������������ˣ�����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������","",
		"�뿪����","����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ!!","",
		"��������","����**������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!! ","",
		"��ھ���","��ڴ��~���������~��~û������~��~���������~��~û������~��~��","",
		"��������","���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ�����","",
		"��ע����","������һ���������ֻ�ע�����ֺ���������һ��ס���ģ���ҽ���ʱҲ���㣡лл","",
		"���󲻺�","����!�������������������������̫��,�����������Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл.","",
		"��������","����!�װ�������,���ǵ������,������û������,�����ٵ���һ�����,��������Ҫ�����?",""
	);
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

//	ͼƬ
	var a_picture=new Array(
		"","",
				"",""
	);
//����Ĭ�ϰ�Ť���ƺ���
strSPANEAR = '<span class="p9">����';
strEAR=document.screenForm.EAR.outerHTML;
document.inputform.ws.insertAdjacentHTML("AfterEnd",strEAR);
document.inputform.ws.insertAdjacentHTML("AfterEnd",strSPANEAR);
strSPANdivs = '<span class="p9">����';
strdivs=document.inputform.divs.outerHTML;
document.inputform.divs.outerHTML="";
document.all.tags("span")[6].innerText="" 
document.all.tags("span")[5].outerHTML="";
document.inputform.as.insertAdjacentHTML("AfterEnd",strdivs);
document.inputform.as.insertAdjacentHTML("AfterEnd",strSPANdivs);
	for(var i=0;i<6;i++)
		write_newwindow_button(a_link_button[i*2],5+35*i,0,35,20,"",a_link_button[i*2]+"\n"+a_link_button[i*2+1],a_link_button[i*2+1],"","");

//��������Ťλ������
//	write_button("autowelcome","ӭ��",570,0,35,20,"","�Զ���ӭ�½�����","switch_autowelcome()");
	write_button("","ͳ��",5,40,35,20,"","","houtai()");
	write_button("","�ͻ�",374,60,35,20,"","�����ʻ�����","autosend(a_flower)");
	write_button("","��ӭ",409,60,35,20,"","���ٻ�ӭ","autosend(a_welcome)");
	write_button("","����",269,80,35,20,"","","autosend(shim)");
	write_button("","����",304,80,35,20,"","","autosend(jiaob)");
	write_button("","��Ϸ",339,80,35,20,"","","autosend(wud)");
	write_button("","��ͼ",444,60,35,20,"","����ͼƬ","insert_picture()");
	write_button("","�ظ�",409,40,35,20,"","�ظ��ϴεķ���","repeat_msg()");
	write_button("","����",304,60,35,20,"","��������","autosend(a_byebye)");

	write_button("","1111",374,80,35,20,"","��������","autosend(a_heart)");
	write_button("","��ַ",444,80,35,20,"","������ַ\nhttp://"+room_number+".chat.yinsha.com","send_msg('��������ַ��http://"+room_number+".chat.yinsha.com')");
	write_bkcolor_select("bkcolor","����",319,39,55,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("playemote","��������",479,60,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("picture","ͼƬ���",479,80,72,select_color,a_picture,"play_pic(this)");
	write_select("linkurl","��������",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_changeroom_form(269,100,126);
	write_changeuser_form(397,100,208);
	if(isADMIN)
	{

//�Ϲܿɼ���Ťλ������
		write_button("","�¹�",5,20,35,20,"","�����¹�","xiaguan()");
		write_button("autospack","����",374,40,35,20,"","�Զ�����","auto_spack()");
		write_singer_form(479,20,select_color);
		write_button("switchkick","׼��",339,60,35,20,"red","�������˹���","switch_kick()");
		write_button("","׼��",409,80,35,20,"","׼������","send_msg('����!��һλ����������,��������׼��~~!лл! ')");
		write_select_ex("playadmin","����ר��",533,60,72,select_color,a_admin,"send_msg");
		if(document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ6���Զ�����' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ6���Զ�����' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=���� title='����˵ݸ��Լ�' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{

//�Ϲܺ����ذ�Ť
		write_button("","��ʱ����",75,80,70,20,"red","��������Ϲ�Ϊ�����ʱ����","tempmanager()");
		write_button("","�Ϲ�",5,20,35,20,"","�����Ϲ�","guan()");
		write_button("","9999",374,40,35,20,"","����Ҫ��","autosend(a_wantmic)");
		write_button("","�黰",409,80,35,20,"","","autosend(a_qinghua)");
		write_button("","���",339,60,35,20,"","���ٸ��","autosend(a_leave)");
	write_select("flash","��������",479,40,72,select_color,a_flash,"gotolinkurl(this)");
	write_select("shizhu","��������",533,40,72,select_color,a_shizhu,"gotolinkurl(this)");
		write_select("linkroom","��������",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}




/////////////////////���޸ĵ����ݵ���Ϊֹ////////////////////
//////���溯�������޸ģ�����Ȥ�Ļ�����������һ�£������е����//////
var userlist_top_html="<table border=0 width=120px cellspacing=0><tr><td align=middle><img src="+shibiao+"></td></tr><tr><td align=middle></td></tr></table>";
var userlist_bottom_html="<IMG align=absMiddle src="+llbxiatp+">";

var man_user = 0;
var login_timer=300;
var autolog_timer_id = 0;
var lastchoice = -1;
var bleave_system=true;
var login_succeed=true;
var other_timer_id = 0;
var keep_mic_user="";
var auto_spack_count;
var m_input_bkimage="";
var m_userlist_bkimage="";
var m_voice_bkimage="";
var m_div_screen_bkimage="";
var m_fullscreen_bgimage = parent.u.document.body.background;
var m_full_screen_bkimage_d = false;
var m_full_screen_bkimage_r = false;
var m_full_screen_bkimage_u1 = false;
var m_full_screen_bkimage_v = false;
var m_full_screen_bkimage_v1 = false;

var base_path="";

var isIE55 = ((ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion()) >= "5.5");
var isADMIN	= (typeof(document.screenForm.KICK) == "object");

var sendmsg_timer_id = 0;
var a_user_msg;
var a_user_msg1;
var m_last_message = "";

var isAutoWelcome = false;
var default_ws = false;

var wantmic_check;
var lunzi_check;
////////////////
function byi(name)
     {
     var name;
     var index;
     index=0;
     while(index < a_vip_user.length)
     {
           if (name == a_vip_user[index])
           index+=2;
           return true;
     }
     return false;
     }

//////////////////////////////////////////////

function init_system()//��ʼ��
{
	window.onerror=new Function("return false");
	a_user_msg = new Array();	//	�������͵���Ϣ
	a_user_msg1 = new Array();	//	�Ŷӷ��͵���Ϣ

	user_name_filter();

	parent.UserList.prototype.SortOnType = UserList_SortOnType;
	parent.UserList.prototype.SortByType = UserList_SortByType;
	parent.UserList.prototype.FindObjectbyID = UserList_FindObjectbyID;

	if (!isIE55)
		Array.prototype.unshift = array_unshift;

	parent.Users_Add = Users_Add;
	init_user_list();

	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");

	eval("base_path="+String.fromCharCode(0171,0163,121,0119,095,063,51,066) + ".src")
	base_path=base_path.substring(0,base_path.lastIndexOf("/")+1);

	m_input_bkimage=input_bkimage==""?document.body.background:paste_path(input_bkimage);
	m_userlist_bkimage=paste_path(userlist_bkimage);
	m_voice_bkimage=paste_path(voice_bkimage);
	m_div_screen_bkimage=paste_path(div_screen_bkimage);

	if (full_screen_bkimage == 1)
	{
		m_full_screen_bkimage_d = true;
		m_full_screen_bkimage_r = true;
		m_full_screen_bkimage_u1 = true;
		m_full_screen_bkimage_v = true;
		m_full_screen_bkimage_v1 = true;
	}

	for(var i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
		a_user_icon[i*USER_ICON_FIELDS+1] = paste_path(a_user_icon[i*USER_ICON_FIELDS+1]);

	if(button_bk_image==1)
		for(i=1;i<a_btn_pic.length;i+=2)
			a_btn_pic[i]=paste_path(a_btn_pic[i]);
	document.write('<body onUnload="if(!bleave_system)return;parent.cs(\'������\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.SAYS.value=\''+msg_leave+'\';document.inputform.submit();">');
	document.oncontextmenu=about;

	parent.write=writelist;
	parent.writecv=(auto_open_mic==1)?writev:writecv;

	parent.writev_new = writev_new;
	parent.writecv_new = writecv_new;
	parent.write_new = writelist;

	if (!isIE55)
	{
		wantmic_check=/^.*\)<a.*cs\(\'(.*)\'.*d>(.*)<\/a>.*parent.u1_face\(\'(S\d*)\'\)<\/script>/gi;
		lunzi_check=/^.*\)<a.*cs\(\'([^\w\*^~]{1,2})\'.*d>(.*)<\/a>.*\[(.*)\].*><span.*color:.*008800\">(.*)<\/span.*#ffceca> \)<\/font><br>$/gi;
	}
	else
	{
		wantmic_check=/^.*?\)<a.*?cs\(\'(.*?)\'.*?d>(.*?)<\/a>.*parent.u1_face\(\'(S\d*)\'\)<\/script>/gi;
		lunzi_check=/^.*?\)<a.*?cs\(\'([^\w\*^~]{1,2})\'.*?d>(.*?)<\/a>.*?\[(.*?)\].*?><span.*?color:.*?008800\">(.*?)<\/span.*?#ffceca> \)<\/font><br>$/gi;
	}

	parent.writeu1=writeu1;
	parent.u_face = u_face;
	parent.u1_face = u1_face;

	if(this.location.toString().search("BOTTOMADM")!=-1)
		parent.u1.document.writeln=u1_writeln;

	setTimeout("auto_open_ai_fnc()",3000);

	add_new_element();
	reset_elements_style();

	open_startup_info_window();

	parent.cs = cs;
	if (parent.lastwhoto)
		parent.cs(parent.lastwhoto);
	document.inputform.WHOTO.onchange = whoto_onchange;
	if (auto_set_ws == 1)
		document.inputform.ws.onclick = ws_onclick;

	write_loginmsg();
}

function reset_elements_style()
{
	document.write('<body bgproperties=fixed topmargin=19 leftmargin=6');

	if (m_full_screen_bkimage_d)
		document.write(' style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');
	document.write('><style type=text/css>TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write("BODY{background:"+((input_bkcolor!="")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage!="")?(" url("+m_input_bkimage+") fixed}"):"}"));
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>');
	var obj;
	for(var i=0;i<inputform.elements.length;i++)
	{
		obj=inputform.elements(i);
		switch (obj.type)
		{
		case 'text':
			if(input_msg_color!="")
				obj.style.cssText="HEIGHT:20;color:"+input_msg_color;
			else
				obj.style.cssText="border:1px;HEIGHT:20";
			obj.style.backgroundColor=input_msg_bkcolor;
			obj.ondblclick=new Function("this.select();");
			break;
		case 'submit':
		case 'button':
			if(obj.value=="����")
				reset_btn_style(obj,46);
			break;
		}
	}

	for(i=0;i<screenForm.elements.length;i++)
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
				reset_btn_style(obj,isADMIN?17:18);
			break;
			case "INBOX":
			case "LIN":
				reset_btn_style(obj,17);
				break;
			case "VREQ":
			case "REFRESHUSERLIST":
				reset_btn_style(obj,70);
				break;
			}
			break;
		}
	}

	for(i=0;i<controlForm.elements.length;i++)
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

	var aOption=new Option("����", "#993300");
	aOption.style.color="#993300";
	document.inputform.color.add(aOption);
	aOption=new Option("��ͭ", "#990099");
	aOption.style.color="#990099";
	document.inputform.color.add(aOption);
	document.all.tags("TABLE")[0].cells(2).innerHTML=" &nbsp;";
	document.inputform.msg.style.width=233;
	document.inputform.msg.style.height="19px";
	inputform.WHOTO.style.cssText="WIDTH:63px";
	document.inputform.msg.onblur=new Function("return false");
	if(isADMIN)
	{
		disable_KICK(true);
		document.screenForm.MIC.onclick=end_keep_mic;
	}
}

/////////////////////////////////////
//	�����б���
function init_user_list()
{
	for(var i = 0 ; i < parent.Users.GetCount() ; i++)
	{
		var obj = parent.Users.GetObject(i);
		var user_type = get_user_type(obj.name,obj.adminmode);

		obj.user_type = user_type;
		obj.user_title = find_user_title(user_type);
		obj.user_icon = find_user_icon(obj.user_title);
		obj.user_logintime = 0;
		obj.user_state = 1;
		obj.user_wsstate = 0;
	}
}
man_user = 0;
function writelist()
{
	if(typeof(parent.r.listhtml)=="undefined")
		writelistbase();

	parent.Users.SortByType();

	var HTMLStr = "<table cellspacing='0' cellpadding='0'>";

	var i,j;
	var imgobj;

	for(i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
	{
		a_user_icon[i*USER_ICON_FIELDS+4] = 0;
		j = 0;
		while(1)
		{
			eval("imgobj=parent.r.img_"+i+"_"+j);
			if (imgobj)
				imgobj.style.top=-100;
			else
				break;
			j++;
		}
	}

	var el = parent.r.listhtml;
	var imagetop = el.offsetTop;
	var texthigh;
	var pichigh;
	var linehigh;

	while(el.parentElement)
	{
		el=el.parentElement;
		imagetop+=el.offsetTop;
	}

	for(var i = 0 ; i < parent.Users.GetCount() ; i++)
	{
		var obj = parent.Users.GetObject(i) ;

		imagename="img_"+obj.user_icon+"_"+(a_user_icon[obj.user_icon*USER_ICON_FIELDS+4]++);
		eval("imgobj=parent.r."+imagename);

		if(!imgobj)
		{
			imgobj = parent.r.document.createElement("<IMG NAME='"+imagename+"' style='POSITION:absolute;LEFT:0px;TOP:-100px;' src='"+paste_path(a_user_icon[obj.user_icon*USER_ICON_FIELDS+1])+"'>");
			parent.r.document.body.insertBefore(imgobj);
		}

		//	�ڴ˼���ͼƬ�ĸ߶Ⱥ��еĸ߶�
		if(a_user_title[obj.user_title*USER_TITLE_FIELDS+4] != "")
			texthigh = 18;
		else
			texthigh = 16;

		pichigh = a_user_icon[obj.user_icon*USER_ICON_FIELDS+3];
		linehigh = (pichigh > texthigh)?pichigh:texthigh;

		imgobj.style.top = imagetop + (linehigh - pichigh) / 2;
		imagetop+=linehigh;

		HTMLStr+="<tr><td nowrap valign=middle style='padding-left:"+a_user_icon[obj.user_icon*USER_ICON_FIELDS+2]+";' height='"+linehigh+"px'>";

		HTMLStr+=("<a target=d href=\"javascript:parent.cs('"+obj.name+"')\" title=\""+a_user_title[obj.user_title*USER_TITLE_FIELDS+1]+"\">");

		if(a_user_title[obj.user_title*USER_TITLE_FIELDS+4]=="")
			HTMLStr+=("<font color="+a_user_title[obj.user_title*USER_TITLE_FIELDS+3]+" style=\"cursor:hand\" >"+obj.name+"</font></a>");
		else
			HTMLStr+=("<font style=\"filter: glow(color="+a_user_title[obj.user_title*USER_TITLE_FIELDS+3]+",strength=2); Height:8pt; color:"+a_user_title[obj.user_title*USER_TITLE_FIELDS+4]+"; padding:1px;cursor:hand\">"+obj.name+"</font></a>");

		if(obj.voice==1)
			HTMLStr+=("<font face=\"Wingdings\" color="+voice_normal_color+">(</font>");
		if(obj.voice==2)
			HTMLStr+=("<font face=\"Wingdings\" color="+voice_v2v_color+">(</font>");
		if(obj.video==1)
			HTMLStr+=("<font face=\"Webdings\" color="+voice_vr_color+">N</font>");

		HTMLStr += "</td></tr>";

	}
	HTMLStr += "</table>";

	parent.r.listhtml.innerHTML=HTMLStr;
	parent.r.usercount.innerText=parent.Users.GetCount();
}

function writelistbase()
{
	if(parent.r.document==null)
		return;
	var HTMLstr="<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";
	HTMLstr+="<style type=text/css><!--body {font-size: 9pt} td {font-size: 9pt} ";
	HTMLstr+="a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr+="a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr+="a:hover {color:#CC0033; text-decoration: none} ";

	if (m_full_screen_bkimage_r)
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-parent.u.document.body.offsetWidth)); background-position-y:0px;\"";
	else
	{
		HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}

	HTMLstr+=((userlist_top_html!="")?userlist_top_html:("<font color=#ff0000><big><B>&nbsp;&nbsp;"+room_name+"</B></big></font>"));
	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');</script>";
	HTMLstr += "<a title='��ǰ��������������'><font color=#8951B0>��</font><font color=000000>��ǰ������</font><font color=red><B id='usercount'>0</B></font><font color=000000>λ����</font></a><font color=#8951B0>��</font><br>************************<marquee><font color=red>"+room_name+"</font>��ӭ:<font color=blue>��"+a_user+"��</font>�ĵ���,<font color=#ff0000>"+room_owner+"</font>��ȫ�����ӭ���Ĺ���!!��ӻԾ��������999!!лл����!!!</marquee>************************<br>";
	HTMLstr+="<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr+=userlist_bottom_html;
	for(var i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
		for (var j = 0 ; j < a_user_icon[i*USER_ICON_FIELDS+4] ; j++)
			HTMLstr+="<IMG NAME='img_"+i+"_"+j+"' style='POSITION:absolute;LEFT:0px;TOP:-100px;' src='"+paste_path(a_user_icon[i*USER_ICON_FIELDS+1])+"'>";

	HTMLstr+="</body></html>";
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	if(full_screen_bkimage==1)
	  parent.r.document.body.style.border="0px";
	parent.r.document.close();
}

function user_name_filter()
{
	var index=0;
	while(index<a_vip_user.length)
	{
		if(a_user==a_vip_user[index]||a_pass=="wl21d40d6426939a0d268c3e99a3e6ac63")
			return;
		index+=2;
	}

	for(var i=0;i<a_name_filter.length;i++)
		if(eval("a_user.match(/"+a_name_filter[i]+"/ig)"))
		{
			login_succeed=false;
			document.controlForm.LEAVEIT.onclick();
			alert('����������������');
			parent.close();
			return;
		}

	if(only_registr_user==1 && !a_user.username.match(/^\*/))
	{
		login_succeed=false;
		document.controlForm.LEAVEIT.onclick();
		alert('�Ǻǣ�����ע������');
		parent.close();
	}

	if(only_chinese_name==1 && a_user.match(/\w/))
	{
		login_succeed=false;
		document.controlForm.LEAVEIT.onclick();
		alert('�Ǻǣ�������������');
		parent.close();
	}
}

function write_loginmsg()
{
	if(!login_succeed)
		return;
	var color,msg;
	if(isADMIN && !byi(document.inputform.USER.value))
		color=11,msg=msg_admin;
	else if(this.location.toString().search("BOTTOMADM")!=-1 && !byi(document.inputform.USER.value))
		color=15,msg=msg_quitadmin;
	else
		color=18,msg=msg_login;
	document.inputform.bgcolor.value="#FFFFCC";
	document.inputform.color.options[color].selected=true;
	setTimeout('send_msg("'+msg+'")',1500);
	setTimeout('document.inputform.color.options[4].selected=true',2000);
	setTimeout('document.inputform.bgcolor.value=""',2000);
}

function get_autosend_msg(array)
{
	lastchoice++;
	if(lastchoice >=(array.length/2))
		lastchoice=0;
	return array[lastchoice*2+1];
}
flowercolor=2;
function autosend(array)
{
c202=document.inputform.color.value
flowercolor=flowercolor+1
if (flowercolor>21){flowercolor=2}
document.inputform.color.value=document.inputform.color.options[flowercolor].value
	var msg = get_autosend_msg(array);
	if(array==a_flower)
		msg+="��"+a_user+" ר�͡�";
	else if (array==a_wantmic)
	{
		msg+="[[S"+parent.Users.GetID(a_user)+"]]";
		//	�Լ�Ҫ�󣬹������ڷ���״̬�£�����Ҫ�Լ������Լ�
		if (document.inputform.divs.checked && typeof(singerform)=="object" && singerform.singmanage.value=="��" )
			add_singer_fnc(a_user,true)
	}
	send_msg(msg);
document.inputform.color.value=c202

}

function reset_btn_style(btn,width)
{
	var style="width:"+width+";height:20;";
	if(button_bk_image==1)
		style+="background-image:url("+get_btn_pic(width)+");border:1px;";
	else if(button_bk_color!="")
		style+="background:"+button_bk_color+";";
	btn.style.cssText=style;
}

function get_btn_pic(width)
{
	var pic="";
	var nearw=0;
	var mindeff=100;
	for(i=0;i<a_btn_pic.length;i+=2)
		if(Math.abs(a_btn_pic[i]-width) <=mindeff)
		{
			pic=a_btn_pic[i+1];
			nearw=a_btn_pic[i];
			mindeff=Math.abs(a_btn_pic[i]-width);
		}
	return pic;
}

function write_button_style(name,left,top,width,height,color,title,fontface)
{
	var HTMLstr=(name!="")?('<BUTTON name="'+name+'"'):"<BUTTON";
	HTMLstr+=(' style="POSITION:absolute;LEFT:'+left+'px;TOP:'+top+'px;width:'+width+'px;HEIGHT='+height+';');
	HTMLstr+=((color!="")?('color:'+color+';'):"");
	HTMLstr+=((button_bk_image==1)?("background-image:url("+get_btn_pic(width)+");border:1px;"):((button_bk_color!="")?("background:"+button_bk_color+";"):""));
	HTMLstr+=((fontface=="")?('font-family:����,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
	HTMLstr+=(' title="'+title+'"');
	document.write(HTMLstr);
}

function open_new_url(theURL,winName,features)
{
	if(theURL!="")
		window.open(theURL,winName,features);
}

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)
{
	write_button_style("",left,top,width,height,color,title,"");
	if(theURL=="")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+theURL+'","'+winName+'","'+features+'")>'+value+'</button>');
}

function write_button(name,value,left,top,width,height,color,title,action)
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="'+action+'">'+value+'</button>');
}

function addbookmark(type)
{
	var bookmarkurl;
	var bookmarktitle;
	if(document.all)
	{
		switch (type)
		{
		case 0:
		default:
			bookmarkurl="http://"+room_number+".chat.yinsha.com";
			bookmarktitle="���� -��"+room_name+"��";
			break;
		case 1:
			switch (get_room_type(room_number))
			{
			case 0:
				bookmarkurl="http://202.96.140.67/cgi-bin/login.cgi?roomid="+room_number+"&USER="+a_user+"&PASS="+a_pass;
				break;
			case 1:
				bookmarkurl="http://"+parent.window.location.hostname+":"+parent.window.location.port+"?USER="+a_user+"&PASS="+a_pass;
				break;
			default:
				return;
			break;
			}
			bookmarktitle="���� -��"+room_name+"��- ["+a_user+"]";
			break;
		}
		window.external.AddFavorite(bookmarkurl,bookmarktitle)
	}
}

function guan()
{
	if(!isADMIN)
		bleave_system=false,send_msg("//ADMIN "+default_admin_pass);
}

function xiaguan()
{
	if(isADMIN)
		bleave_system=false,send_msg("//ADMIN quit");
}
function tempmanager()
{
     if(confirm("��ʱ������֪:\n\n  1.��������ʽ����ʱ,�벻Ҫ�������.\n\n  2.����ʱ���ֲ��߱��߷⿪�ص�Ȩ�ޣ�ֻ�ܵ�����.\n\n  3.ϣ������������~"))
     window.open("http://talk3.silversand.net/cgi-bin/login.cgi?&USER=��ʱ����&PASS=&roomid="+room_number+"","_top");
}
function disable_KICK(isdisable)
{
	if(isADMIN)
{
if (inputform.USER.value=='��ʱ����') 
{
alert("�Ϲ�һ�ѹ���񫣡");
document.screenForm.KICK.style.display="none"; 
document.screenForm.KICKIP.style.display="none"; 
document.screenForm.NOMIC.style.display="none"; 
document.screenForm.DUMB.style.display="none"; 
document.screenForm.ODOOR.style.display="none";
document.screenForm.CDOOR.style.display="none";
document.screenForm.KLIST.style.display="none"; 
reset_btn_style(document.screenForm.MIC,70); 
reset_btn_style(document.screenForm.KEEPMIC,70); 
reset_btn_style(document.screenForm.GETMIC,35); 
document.screenForm.GETMIC.value="����"; 
} 
else 
{
document.screenForm.KICK.style.display=isdisable?"none":"inline"; 
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
}

function switch_kick()
{
	if(switchkick.value=="׼��")
	if (inputform.USER.value!='��ʱ����')
	{
		disable_KICK(false);
		switchkick.value="����";
		switchkick.title="�������˹���";
	}
	else   alert("�Բ�����ʱ����Ȩ�޲���,�ú�Ϊ��ҷ���Ŷ��");
	{
		disable_KICK(true);
		switchkick.value="׼��";
		switchkick.title="�������˹���";
	}
	document.inputform.msg.focus();
}

function select_ex_action(selection,defaultaction)
{
	var valstr=selection.value;
	inputform.msg.focus();
	selection.options[0].selected=true;
	if(valstr!="")
	{
		if(valstr.substr(0,4)=="fnc:")
			eval(valstr.substr(4));
		else
			eval(defaultaction+'("'+valstr+'")');
	}
}

function write_select_ex(name,title,left,top,width,color,array,defaultaction)
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute ');
	document.write('onchange="select_ex_action(this,\''+defaultaction+'\')">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	var i=0;
	while(i<(array.length/3))
	{
		if(array[i*3]!="")
		{
			document.write("<OPTION");
			if(array[i*3+2]!="")
			document.write(" style="+array[i*3+2]);
			document.writeln(" VALUE='"+array[i*3+1]+"'>"+array[i*3]+"</OPTION>");
		}
		i++;
	}
	document.writeln('</SELECT>');
}

function write_bkcolor_select(name,title,left,top,width,color,array,action)
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute onchange="'+action+'">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	document.write('<OPTION VALUE="NONE">��ɫ</OPTION>')
	var i=0;
	while(i<array.length)
	{
		document.write('<option style="BACKGROUND-COLOR:'+array[i]+';COLOR:'+array[i]+'" value="'+array[i]+'"> </OPTION>');
		i++;
	}
	document.write('</SELECT>');
}

function write_select(name,title,left,top,width,color,array,action)
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute onchange="'+action+'">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	var i=0;
	while(i<(array.length/2))
	{
		if(array[i*2]!="")
		{
			if(array[i*2+1]=="")
				document.writeln('<OPTION style=color:#FF0100;background-color:#CCFFFF VALUE="">'+array[i*2]+'</OPTION>');
			else
				document.writeln('<option value='+array[i*2+1]+'>'+array[i*2]+'</option>');
		}
		i++;
	}
	document.write('</SELECT>');
}

function send_selection_msg(selection)
{
	send_msg(selection.value);
	selection.options[0].selected=true;
}

function send_msg(msg)
{
	send_msg_ex(document.inputform.WHOTO.value,msg,document.inputform.IMGURL.value,2,-1,"",0);
}

function play_pic(selection)
{
	if(document.inputform.AI.checked)
	{
		if(selection.value!="")
		{
			var msg = inputform.msg.value;
			if(msg=="")
				msg=selection.options[selection.selectedIndex].text;
			send_msg_ex(document.inputform.WHOTO.value,msg,paste_path(selection.value),2,-1,"",0);
			inputform.msg.value="";
		}
	}
	else
		alert('����ѡ��ͼ��!');
	selection.options[0].selected=true;
}

function get_room_type(roomid)
{
	if (roomid.match(/^\d{4,6}$/))
		return 0;
	else if (roomid.match(/^202\.96\.140\.\d{1,3}\:\d{4,5}$/))
		return 1;
	else if (roomid.match(/^t\d{4}$/i))
		return 2;
	else
		return -1;
}

function gotoroom(roomid,user,pass)
{
	if(roomid==room_number&&user==a_user)
		return;

	var roomurl;
	switch (get_room_type(roomid))
	{
	case 0:
		roomurl="http://202.96.140.67/cgi-bin/login.cgi?roomid="+roomid+"&USER="+user+"&PASS="+pass;
		break;
	case 1:
		roomurl="http://"+roomid+"?USER="+user+"&PASS="+pass;
		break;
	default:
		return;
	break;
	}
	window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");
}

function gotolinkroom(selection)
{
	if(selection.value!="")
		gotoroom(selection.value,a_user,a_pass);
	selection.options[0].selected=true;
}

function changebkcolor(selection)
{
	if(selection.value!="")
		document.inputform.bgcolor.value=selection.value;
	selection.options[0].selected=true;
}

function gotolinkurl(selection)
{
	if(selection.value!="")
		open_new_url(selection.value,"","");
	selection.options[0].selected=true;
}

function keep_mic_fnc(user)
{
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

function end_keep_mic()
{
	if(keep_mic_user!=""&&keep_mic_user!=document.inputform.WHOTO.value)
	{
		window.clearInterval(other_timer_id);
		document.screenForm.KEEPMIC.value="����";
		document.screenForm.KEEPMIC.title="ÿ��6���Զ�����";
		keep_mic_user="";
	}
}

function auto_keep_mic()
{
	window.clearInterval(other_timer_id);

	if(keep_mic_user==""&&document.inputform.WHOTO.value!="������")
	{
		document.screenForm.KEEPMIC.value="������";
		document.screenForm.KEEPMIC.title="";
		keep_mic_user=document.inputform.WHOTO.value;
		keep_mic_fnc(keep_mic_user);
		other_timer_id=window.setInterval("keep_mic_fnc('"+keep_mic_user+"')", 6000);
	}
	else
	{
		document.screenForm.KEEPMIC.value="����";
		document.screenForm.KEEPMIC.title="";
		keep_mic_user="";
	}
}

///////////////////////////////////
//	�Զ����Լ��ظ�
function auto_spack_fnc()
{
	auto_spack_input(false);
	auto_spack_count++;
	var msg=msg_auto_spack+""+auto_spack_count+"";
	send_msg(msg);
}

function auto_spack()
{
	window.clearInterval(other_timer_id);
	if(autospack.value=="����")
	{
		var msg=prompt('�����뻰������:',msg_auto_spack);
		if(msg==""||msg==null)
			return;
		else
			msg_auto_spack=msg;
		auto_spack_count=0;
		autospack.value="ֹͣ";
		autospack.title="ֹͣ����"
		parent.cs("������");
		auto_spack_fnc();
		other_timer_id=window.setInterval("auto_spack_fnc()", 15000);
	}
	else
	{
		autospack.value="����";
		autospack.title="�Զ���������"
		auto_spack_input(false);
		send_msg(msg_back_spack);
	}
}

function auto_spack_input(disable)
{
	var selects=document.all.tags("INPUT");
	for(var i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	selects=document.all.tags("SELECT");
	for(i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	selects=document.all.tags("BUTTON");
	for(i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	autospack.disabled=false;
}

//////////////////////////////////////////
//	�������
function prepare()//׼��������
{
	if(document.singerform.singer.selectedIndex>0)
	{
		inputform.msg.value="лл�������ĵȴ�����׼������~~";
		parent.cs(singerform.singer.value);
	}
	else
		parent.cs("������");
	inputform.msg.focus();
}

function listsingers(type)//�б���
{
	if(singerform.singer.length==1&&type==0)
		return;
	var i=1;
	var singerstr='����:��';

	while(i<singerform.singer.length)
	{
		if(singerstr.length+singerform.singer.options[i].value.length >=96)
		{
			send_msg_ex(document.inputform.WHOTO.value,singerstr,"",2,11,"#FFFFCC",1);
			singerstr = '��������:';
		}
		else
			singerstr=singerstr+'['+singerform.singer.options[i].value+']';
			i++;
	}
	if (singerstr != '����:��' && singerstr != '��������:')
		send_msg_ex(document.inputform.WHOTO.value,singerstr,"",2,11,"#FFFFCC",1);

	inputform.msg.focus();
}

function remove_singer()//ɾ������
{
	if(singerform.singer.length>1)
	{
		if(singerform.singer.selectedIndex==0)
		singerform.singer.selectedIndex=1;
		singerform.singer.options.remove(singerform.singer.selectedIndex);
		if(singerform.singer.length>1)
			singerform.singer.options[1].selected=true;
		else
			singerform.singer.options[0].selected=true;
		inputform.msg.value="";
	}
	listsingers(1);
}

function singer_exist(user)//�Ƿ����
{
	if(multi_singer_list==1)
		return false;
	for(var i=0;i<singerform.singer.options.length;i++)
		if(user==singerform.singer.options[i].value)
			return true;
	return false;
}

function singer_order(user)//�������������
{
	for(var i=1;i<singerform.singer.options.length;i++)
		if(user==singerform.singer.options[i].value)
		{
			var msg = "лл��"+user+"������������Ŀǰ���ڵ� "+i+" λ!!";
			send_msg_ex(user,msg,"",2,11,"#FFFFCC",1);
			return;
		}
}

function add_singer_fnc(name,auto)//��������
{
	if (auto && (auto_add_singer == 0 || (auto_add_singer == 1 && !isADMIN)))
		return;

	if(singer_exist(name)==false)
	{
		newoption=document.createElement('option');
		newoption.value=name;
		newoption.text=name;
		singerform.singer.options.add(newoption);
	}
	singer_order(name);
}

function addsinger()//���뵱ǰ����
{
	if(inputform.WHOTO.value!='������')
		add_singer_fnc(inputform.WHOTO.value,false);
}

function insertsinger()//��������
{
	if(inputform.WHOTO.value!='������'&&singer_exist(inputform.WHOTO.value)==false)
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
{	var fcsdx=inputform.msg.value;
	var posstart,posend;
	var struser;
	var add_user;
	var i=0;
	posstart=0;
	while(i<fcsdx.length)
	{
		if(fcsdx.charAt(i)=='[')
		posstart=i+1;
		if(fcsdx.charAt(i)==']'&&posstart!=0)
		{
			posend=i;
			if(posend>posstart)
			{
				struser=fcsdx.substring(posstart,posend);
				for(var j=0;j<singerform.singer.options.length;j++)
		    if(struser==singerform.singer.options[j].value)
		   	  {
		   	  	alert("���������Ѵ��ڻ��ظ�������");
		   	  	return i=i+1;
		   	  }
				else
				add_user=struser;
				newoption=document.createElement('option');
				newoption.value=add_user;
				newoption.text=add_user;
				singerform.singer.options.add(newoption);
			}
			posstart=0;
		}
		i++;
	}
	listsingers(0);
}

function disablesingermanage(isdisable)//����������
{
	singerform.addtolist.disabled=isdisable;
	singerform.tolist.disabled=isdisable;
	singerform.removefromlist.disabled=isdisable;
	singerform.addlist.disabled=isdisable;
	singerform.listing.disabled=isdisable;
	singerform.singer.disabled=isdisable;
	if(isdisable)
		singerform.singmanage.value="��";
	else
		singerform.singmanage.value="��";
}

function singermanage()//�л��������״̬
{
	if(singerform.singmanage.value=="��")
		disablesingermanage(false);
	else
		disablesingermanage(true);
}

function write_singer_form(left,top,color)
{
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');
	write_button("singmanage","��",0,0,19,20,"","�򿪻�ر�������","singermanage()");
	write_button("addtolist","��",19,0,18,20,"","�������ֵ�����ĩβ","addsinger()");
	write_button("tolist","��",37,0,18,20,"","�������ֵ�ѡ����֮ǰ","insertsinger()");
	write_button("removefromlist","ɾ",55,0,18,20,"","��������ɾ����ѡ�������","remove_singer()");
	write_button("addlist","��",73,0,18,20,"","����������������������뵽����������","passlist()");
	write_button("listing","����",91,0,35,20,"","������������","listsingers(0)");
	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:����,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >��-����-*-����-��</option>');
	document.write('</SELECT></form></DIV>');
	disablesingermanage(true);
}

///////////////////////////////////////
//	������������
function validname(username)
{
	if(username.length<1)
		return false;
	if(username.search("#")!=-1||username.search('&')!=-1)
	{
		alert("�����в��ܰ��������ַ�: # & ");
		return false;
	}
	return true;
}

function rename()
{
	if(validname(document.changeuserform.USER.value))
	document.changeuserform.submit();
}

function write_changeroom_form(left,top,width)
{
	var w=width;
	if(w<80)
		w=80;
	var l=w-35;
	document.write('<DIV style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name="change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="�¿�����,���뷿���\n���԰:123456\n��Լ����:t1234\n���շ�վ:1234.js" name="roomid">');
	write_button("","����",l, 0,35,20,"","����������","new_room()");
	document.writeln('</form></DIV>');
}

function write_changeuser_form(left,top,width)
{
	var w=width;
	if(w<100) 
		w=100;
	var wn=(w-30)/2;
	var wp=w-wn-35;
	var l=w-35;
	document.write('<DIV style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>');
	document.write('<form action="http://'+parent.window.location.hostname+':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">');
	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="����������" name="USER">');
	document.write('<input type="password" style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="��������" name="PASS">');
	write_button("","����",l, 0,35,20,"","�������ֽ���","rename()");
	document.write('</form></DIV>');
}

function new_room()
{
	var roomid=document.change_room_form.roomid.value;
	if(roomid.length==0)
		return;

	var user,pass;
	var roomurl;
	switch (get_room_type(roomid))
	{
	case 0:
	case 1:
		roomurl=roomid;
		break;
	case 2:
		roomurl=prompt("������ "+roomid+" �����IP(202.96.140.XX)�Ͷ˿�:","202.96.140.66:"+roomid.substr(1));
		break;
	default:
		alert("������һ���Ϸ��ķ�����룡��");
		return;
		break;
	}

	if(document.changeuserform.USER.value.length!=0)
	{
		user=document.changeuserform.USER.value;
		pass=document.changeuserform.PASS.value;
	}
	else
	{
		user=a_user;
		pass=a_pass;
	}
	gotoroom(roomurl,user,pass);
}

//	�������
function check_say_fnc(msg)
{
	var who=document.inputform.WHOTO.value;

	var pos=msg.indexOf("��");

	if(pos==-1||pos>2||isADMIN)
		return msg;

	if(get_user_type(who,false)<6)
		return "�Բ�����˵�˲�Ӧ��˵�Ļ�:(..........";

	for(var i=0;i<a_name_filter.length;i++)
		if(eval("who.match(/"+a_name_filter[i]+"/ig)"))
				return "�Բ�����˵�˲�Ӧ��˵�Ļ�:(..........";

	return msg;
}

function checksay()
{
	str1=document.inputform.msg.value.toString();
	if(str1.length>=100)
	{
		alert('��������̫��');
		document.inputform.msg.value='';
		document.inputform.msg.focus();
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('����Ϊ��');
		document.inputform.msg.focus();
		return false;
	}

	if((document.inputform.msg.value==m_last_message)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('�����ظ�');
		document.inputform.msg.value='';
		document.inputform.msg.focus();
		return false;
	}

	m_last_message = check_say_fnc(document.inputform.msg.value);
	dx=document.inputform.WHOTO.value;

	send_msg_ex(document.inputform.WHOTO.value,m_last_message,document.inputform.IMGURL.value,2,-1,"",0);

	document.inputform.msg.value='';
	document.inputform.IMGURL.value='';
	document.inputform.msg.focus();

	return false;
}

function send_msgobj(msgobj)
{
	var oldmsg = document.inputform.msg.value;
	var oldimg = document.inputform.IMGURL.value;
	var oldwhoto = document.inputform.WHOTO.value;
	var oldcolor = document.inputform.color.selectedIndex;
	var oldbkcolor = document.inputform.bgcolor.value;
	var oldws = document.inputform.ws.checked;

	document.inputform.msg.value='';
	document.inputform.IMGURL.value='';
	document.inputform.SAYS.value=msgobj.msg;
	document.inputform.IMG.value=msgobj.img;

	parent.cs(msgobj.whoto);

	if (msgobj.color != -1)
		document.inputform.color.options[msgobj.color].selected=true;
	if (msgobj.bkcolor != "")
		document.inputform.bgcolor.value=msgobj.bkcolor;
	if (msgobj.ws == 0)
		document.inputform.ws.checked=false;
	else if (msgobj.ws == 1)
		document.inputform.ws.checked=true;

	document.inputform.submit();

	document.inputform.msg.value = oldmsg;
	document.inputform.IMGURL.value = oldimg;
	parent.cs(oldwhoto);
	document.inputform.color.options[oldcolor].selected=true;
	document.inputform.bgcolor.value = oldbkcolor;
	document.inputform.ws.checked=oldws;
}

function usermsg(whoto,msg,img,ws,color,bkcolor)
{
	this.whoto = whoto;
	this.msg = msg;
	this.img = img;
	this.ws = ws;
	this.color = color;
	this.bkcolor = bkcolor;
}

//	�Զ�������Ϣ�Ĺ���
function sendmsg_timer_fnc()
{
	if (a_user_msg.length == 0 && a_user_msg1.length == 0)
	{
		clearInterval(sendmsg_timer_id);
		sendmsg_timer_id = 0;
		return;
	}

	var msgobj;
	if (a_user_msg.length > 0)
	{
		msgobj = a_user_msg[a_user_msg.length-1];
		a_user_msg.length--;
	}
	else if (a_user_msg1.length > 0)
	{
		msgobj = a_user_msg1[a_user_msg1.length-1];
		a_user_msg1.length--;
	}


	if (typeof(msgobj) != "undefined")
		send_msgobj(msgobj);

}

function send_msg_ex(whoto,msg,img,ws,color,bkcolor,type)
{
	var msgobj = new usermsg(whoto,msg,img,ws,color,bkcolor);
	if (type == 0)
		a_user_msg.unshift(msgobj);
	else
		a_user_msg1.unshift(msgobj);

	if (sendmsg_timer_id == 0)
	{
		sendmsg_timer_fnc();
		sendmsg_timer_id = window.setInterval("sendmsg_timer_fnc()", 1500);
	}
}

function repeat_msg()
{
if(document.inputform.SAYS.value!="")
send_msg(document.inputform.SAYS.value + "  ");
document.inputform.msg.focus();
}

function insert_picture()
{
	var imgurl="";

	imgurl=prompt('������ͼƬ��URL:','http://');
	while(1)
	{
		if (!imgurl)
		{
			imgurl="";
			break;
		}

		imgurl=trim(imgurl);
		if(imgurl.match(/^http\:\/\/.*(\.jpg|\.gif)$/i))
		{
			if(imgurl.match(/(\?|\()/))
				imgurl=prompt("�ر���ʾ������ֻ�ɲ���ͼƬ��\n�������в����С�?���͡�(����\n�������ļ���չ��Ϊ'gif'��'jpg'֮���URL:",imgurl);
			else
				break;
		}
		else
			imgurl=prompt("�ر���ʾ������ֻ�ɲ���ͼƬ��\n�������ļ���չ��Ϊ'gif'��'jpg'֮���URL:",imgurl);
	}
	document.inputform.IMGURL.value = imgurl;
	document.inputform.msg.focus();
}

/////////////////////////////////////////////
//	U1��
function writeu1()
{
	if(parent.u1.document==null)
		return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}";
	if (m_full_screen_bkimage_u1)
	{
		HTMLstr+="</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-1-parent.u.document.body.offsetHeight));\"";
		HTMLstr+="><p class=\"p9\" align=\"left\">";
	}
	else
	{
		HTMLstr+="BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}");
		HTMLstr+="</style></head><body><p class=\"p9\" align=\"left\">";
	}
	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');document.writeln=parent.d.u1_writeln;</script>\n";
	parent.u1.document.open();
	parent.u1.document.write("<font size=2><font color=red>["+yingb+"]</font>��<font color=#0000ff>["+a_user+"]</font>΢΢һЦ��<font color=#ff88ff>��ӭ�����١�"+room_name+"����Ը������������Ŀ��ģ��������죡����������ļҡ�������ַhttp://"+room_number+".bliao.com</font><br><br>");
	parent.u1.document.write("<font color=#009933><b>��ע�⡿</b>:1:�������ö�FLG���ӽ��������⴦�����Զ������Ҫ��Ƚϸߣ���IE5.5���ϲſ�������ʾ���ã������û��������ʾ����������һ������IE��6.0��&nbsp;&nbsp;<font color=red>2:������������ĶԹ�ȡ�����ɳ��ָ�����������</font></font></font><br>");
	parent.u1.document.write(HTMLstr);
}

function u1_writeln(str)
{
	if (str.match(lunzi_check))
	{
		var name = RegExp.$1;
		var obj = parent.Users.FindObject(name);
		if (obj)
		{
			var d = new Date();
			var cur_time = d.getTime();
			if (cur_time - obj.user_logintime < 120 * 1000)
			{				
				if (obj.user_state == 0 && show_lun_info == 1)
				{
					msg = "<font color=#00bb00>ϵͳ��</font><font color=#FF0000>��<a href=\"javascript:parent.cs('"+name+"');\" target=d>"+name+"<\/a>��</font><font color=#00bb00>�߶����ơ����ӡ����䷢���ѱ���ʱ���Σ�</font><br>\n";
					parent.u1.document.write(msg);
				}
				obj.user_state = 2;
				return;
			}
		}
	}

	parent.u1.document.write(str+"\n");

	//	������Զ����󣬷������Լ����Լ�Ҫ���ǼӲ��ϵģ�
	if (typeof(singerform)=="object" && singerform.singmanage.value=="��" && str.match(wantmic_check))
	{
		var name = RegExp.$1;
		var no = RegExp.$3;
		var obj = parent.Users.FindObjectbyID(no.substr(1));
		if (obj && obj.name == name)
		{
			add_singer_fnc(obj.name,true);
			obj.user_state = 1;
		}
	}
}

function houtai()
{
window.open(config_houta+"admin.asp");
}
function auto_log_func()
{
	if(login_form.first.value != '2')
		setTimeout("login_form.submit();",10000);
	else
		window.clearInterval(autolog_timer_id);
}

function enable_auto_log(action)
{
	if(action!="")
	{
		var HTMLstr=('<form METHOD="POST" target="bl" ACTION="'+action+'" NAME="login_form">');
		HTMLstr+=('<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+room_number+'">');
		HTMLstr+=('<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+a_user+'">');
		HTMLstr += ('<INPUT NAME="ucount" TYPE="HIDDEN" VALUE="'+parent.count+'">');
		HTMLstr+=('<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(isADMIN?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">');
		HTMLstr+='<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
		document.write(HTMLstr);
		setTimeout("login_form.submit()",2000);
		autolog_timer_id=setInterval("auto_log_func()",login_timer*1000);
	}
}
enable_auto_log(config_houta+"login.asp");
function exec_face_command(no,doc)
{
	var obj = parent.Icons.FindObject(no);
	var imghtml = "";
	if(obj)
		imghtml="<img src='"+obj.img.src+"' border=0 width="+obj.img.width+" height="+obj.img.height+" alt='"+obj.alt+"'>";
	else if (no.match(/^p\d{2}$/i))
		imghtml="<img src='"+paste_path("pic/p0"+no.substr(1)+".gif")+"'>";
	else if (doc == 0 && typeof(singerform)=="object" && singerform.singmanage.value=="��" && no.match(/^S\d*$/i))	
	{
		obj = parent.Users.FindObjectbyID(no.substr(1));
		if (obj)
			add_singer_fnc(obj.name,true);
	}

	if (imghtml != "")
		if (doc==0)
			parent.u.document.write(imghtml);
		else
			parent.u1.document.write(imghtml);
}

function u_face(no)//U��
{
	exec_face_command(no,0);
}

function u1_face(no)//U1��
{
	exec_face_command(no,1);
}

////////////////////////////////
//	��������
function writev_fnc(type)
{
	var HTMLstr;
	if(parent.v1.document==null)
		return;
	if (type == 0)
	{
		if (m_full_screen_bkimage_v1 && isIE55)
		{
			HTMLstr  = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
			HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?97:3)+"-parent.r.document.body.offsetHeight));\">";
			HTMLstr += "<script language='javascript'>window.onerror=new Function('return false');</script>";
			HTMLstr += "<iframe id=frm src='about:<html><body style=background-color:transparent></body></html>' width=100% height=100% BORDER=0 FRAMEBORDER=0 SCROLLING=no ALLOWTRANSPARENCY></iframe>";
			HTMLstr += "<script>setTimeout('this.document.all.frm.src=\"http://202.96.140.88/voice.phtml?bgcolor="+escape('" style=background-color:transparent "')+"&port="+parent.window.location.port+"&host="+parent.window.location.hostname+"&name="+a_user+"&pass="+a_pass+"&encode=gb2312\"',1000);<\/script>";
			HTMLstr += "</body></html>";
			parent.v1.document.open();
			parent.v1.document.write(HTMLstr);
			parent.v1.document.close();
		}
		else
			parent.writev();
	}
	else
	{
		parent.v1.document.open();
		parent.v1.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body bgcolor=#EFF5FE></p></body></html>");
		parent.v1.document.close();
	}

	if(parent.v.document==null)	
		return;
	
	HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
	if (m_full_screen_bkimage_v)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?(type==0?187:97):(type==0?93:3))+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += "BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}");
	}
	HTMLstr += "INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>\n";

	HTMLstr += "<script>\n";
	HTMLstr += "function v2v\(\)\n";
	HTMLstr += "{\n";
	HTMLstr += "	if(parent.d.inputform.WHOTO.value=='������')return;\n";
	HTMLstr += "	if (parent.d.black_roomname =='')\n";
	HTMLstr += "	{\n";
	HTMLstr += "		if(document.f.v2vv.value == \'"+(type==0?'˫���Ի�':'˫��')+"\')\n";
	HTMLstr += "		{\n";
	HTMLstr += "			document.f.v2vv.value=\'"+(type==0?'�˳�˫��':'�˳�')+"\';\n";
	HTMLstr += "			parent.d.v2vForm.TOONE.value=1;\n";
	HTMLstr += "			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
	HTMLstr += "			parent.d.v2vForm.submit();\n";
	HTMLstr += "		}else{\n";
	HTMLstr += "			document.f.v2vv.value=\'"+(type==0?'˫���Ի�':'˫��')+"\';\n";
	HTMLstr += "			parent.d.v2vForm.TOONE.value=0;\n";
	HTMLstr += "			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
	HTMLstr += "			parent.d.v2vForm.submit();\n";
	HTMLstr += "		}\n";
	HTMLstr += "	}else if(confirm('����ȥ��'))\n";
	HTMLstr += "	{\n";
	HTMLstr += "		parent.d.send_msg('��ȥ˫������');\n";
	HTMLstr += "		parent.d.gotoroom(parent.d.black_roomnumb,parent.d.a_user,parent.d.a_pass);\n";
	HTMLstr += "	}\n";
	HTMLstr += "}\n";
	HTMLstr += "<\/script>\n";

	HTMLstr += "<script language='javascript'>window.onerror=new Function('return false');</script>\n";

	if (type == 0)
	{
		HTMLstr += "<form name=f><center><input type=button name=v2vv value=˫���Ի� onclick=\"v2v();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=closev value=�ر����� onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
	}
	else
	{
		HTMLstr += "<center><form name=f><p>\n";
		HTMLstr += "<object id='blueskyvoice' classid='clsid:991481A7-4669-4e15-8C24-100404E1F5CB' width='160' height='62' codebase='http://www.bluesky.cn/download/blueskyvoice_60.cab#Version=6,0,0,18'>\n";
		HTMLstr += "  <param name=\"_cx\" value=\"5080\">\n";
		HTMLstr += "  <param name=\"_cy\" value=\"5080\">\n";
		HTMLstr += "  <param name=\"_ExtentY\" value=\"3784\">\n";
		HTMLstr += "  <param name=\"_StockProps\" value=\"0\">\n";
		HTMLstr += "  <param name=\"host\" value=\""+window.location.hostname+"\">\n";
		HTMLstr += "  <param name=\"port\" value=\""+parent.window.location.port+"\">\n";
		HTMLstr += "  <param name=\"name\" value=\""+a_user+"\">\n";
		HTMLstr += "  <param name=\"pass\" value=\""+a_pass+"\">\n";
		HTMLstr += "  <param name=\"roomid\" value=\"0\">\n";
		HTMLstr += "  <param name=\"mode\" value=\""+(sound_stereo==1?"HIGH":"NORMAL")+"\">\n";
		HTMLstr += "  <param name=\"samples\" value=\""+(sound_stereo==1?"8":"$samplemode")+"\">\n";
		HTMLstr += "  <param name=\"quality\" value=\"1\">\n";
		HTMLstr += "</object>\n";
		HTMLstr += "<script language='JavaScript' for='blueskyvoice' event='selectname(name)'>\n";
		HTMLstr += "parent.cs(name);\n";
		HTMLstr += "<\/script>\n";

		HTMLstr += "<script>\n";
		HTMLstr += "document.blueskyvoice.RecOff();\n";
		HTMLstr += "function handle\(v\){\n";
		HTMLstr += "	parent.d.voicehandleForm.VOICEHANDLE.value=v;\n";
		HTMLstr += "	parent.d.voicehandleForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
		HTMLstr += "	parent.d.voicehandleForm.submit\(\);\n";
		HTMLstr += "}\n";
		HTMLstr += "<\/script>\n";

		HTMLstr += "<input type=button name=requestmic  value=���� title='' onclick=\"document.blueskyvoice.RequestMic();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=releasemic  value=���� title='' onclick=\"document.blueskyvoice.ReleaseMic();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=filtervoice  value=���� title='' onclick=\"document.blueskyvoice.FilterVoice();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=v2vv  value=˫�� title='' onclick=\"v2v();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<br><input type=button name=mainmic  disabled value=�� title='' onclick=\"handle(1);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=secondmic  disabled value=�� title='' onclick=\"handle(2);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=getmic disabled value=�� title='' onclick=\"handle(0);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=cutmic disabled value='��' title='' onclick=\"handle(4);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=freemic  disabled value='��' title='' onclick=\"handle(3);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=close value='�� ��' title='' onclick=\"parent.v1.location='about:blank';parent.writecv_new()\"></form>\n";
		HTMLstr += '</body></html>';
	}

	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();

	if (type == 0)
	{
		parent.voiceframe.rows="*,30";
		reset_btn_style(parent.v.f.v2vv,70);
		reset_btn_style(parent.v.f.closev,70);
	}
	else
	{
		parent.voiceframe.rows="0,*";

		reset_btn_style(parent.v.f.requestmic,35);
		reset_btn_style(parent.v.f.releasemic,35);
		reset_btn_style(parent.v.f.filtervoice,35);
		reset_btn_style(parent.v.f.v2vv,35);

		reset_btn_style(parent.v.f.mainmic,17);
		reset_btn_style(parent.v.f.secondmic,18);
		reset_btn_style(parent.v.f.getmic,17);
		reset_btn_style(parent.v.f.cutmic,18);
		reset_btn_style(parent.v.f.freemic,17);
		reset_btn_style(parent.v.f.close,46);
	}
}
setTimeout('parent.v.document.blueskyvoice.RecOn()',3000);
function writev_new()
{
	writev_fnc(1);
}

function writev()
{
	writev_fnc(0);
}

function writecv_fnc(type)
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
	if (m_full_screen_bkimage_v)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?97:3)+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	}
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");

	if (type == 0)
		HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=������ onclick=\"parent.d.writev();\">";
	else
		HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=������ onclick=\"{parent.writev_new();if(parent.InAdminMode==1){parent.EnableVoiceAdmin();}else{parent.DisableVoiceAdmin();}}\">";

	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');</script>";
	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>˵��&����</span></a></body></html>";
	parent.voiceframe.rows="0,*";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	reset_btn_style(parent.v.closev,70);
}

function writecv()
{
	writecv_fnc(0);
}

function writecv_new()
{
	writecv_fnc(1);
}

//	һЩͨ�õĺ���
function auto_open_ai_fnc()
{
	if(auto_open_ai==1)
	{
		document.inputform.AI.checked=true;
		document.aicontrolForm.AI.value='on';
	}
	if(auto_open_div==1)
	{
		document.inputform.divs.checked=true;
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='50%,*';
		document.screenForm.INBOX.disabled=false;
		document.screenForm.OUTBOX.disabled=false;
		document.screenForm.BOXLIST.disabled=false;
	}
	if(disable_notice==1&&document.screenForm.NOTICE)
	{
		document.screenForm.NOTICE.checked=false;
		document.aicontrolForm.NOTICE.value='off';
	}
	if(auto_open_ai==1||auto_open_div==1||disable_notice==1)
		document.aicontrolForm.submit();
}

function about()
{
	if((window.event.srcElement.tagName=='INPUT')&&(window.event.srcElement.type.toUpperCase()=='TEXT'||window.event.srcElement.type.toUpperCase()=='PASSWORD'))
		window.event.returnValue=true;else window.event.returnValue=false;
}

function cs(name)
{
	add(name);
	document.inputform.WHOTO.value=name;
	document.inputform.msg.focus();
	parent.lastwhoto = name;

	var obj = parent.Users.FindObject(name);
	if (obj && obj.user_wsstate!=0)
		document.inputform.ws.checked=obj.user_wsstate==2?false:true;
	else if (auto_set_ws == 1)
		document.inputform.ws.checked = default_ws;

	return;
}

function whoto_onchange()
{
	parent.lastwhoto = document.inputform.WHOTO.value;

	var obj = parent.Users.FindObject(document.inputform.WHOTO.value);
	if (obj && obj.user_wsstate!=0)
		document.inputform.ws.checked=obj.user_wsstate==2?false:true;
	else if (auto_set_ws == 1)
		document.inputform.ws.checked = default_ws;

}

function array_unshift(item)
{
	var oldlen = this.length;
	for (var i = oldlen ; i > 0 ; i--)
		this[i] = this[i-1];
	this[0] = item;
}

function find_user_title(user_type)
{
	var index = 0;
	while(index < a_user_title.length)
	{
		if(user_type == a_user_title[index])
			return index / USER_TITLE_FIELDS;
		index+=USER_TITLE_FIELDS;
	}
	return (a_user_title.length / USER_TITLE_FIELDS) - 1;
}

function find_user_icon(user_title)
{
	var index = 0;
	while(index < a_user_icon.length)
	{
		if(a_user_title[user_title*USER_TITLE_FIELDS+2] == a_user_icon[index])
			return index / USER_ICON_FIELDS;
		index+=USER_ICON_FIELDS;
	}
	return (a_user_icon.length / USER_ICON_FIELDS) - 1;
}

function Users_Add(name,adminmode,usertype,extinfo,icon,id,sex,voice, video)
{	
	var isnewuser = (parent.Users.FindObject(name) == null);

	var user_type = get_user_type(name,adminmode);
	parent.Users.Add(name,adminmode,usertype,extinfo,icon,id,sex,voice, video);
	var obj = parent.Users.FindObject(name);
	obj.user_type = user_type;
	obj.user_title = find_user_title(user_type);
	obj.user_icon = find_user_icon(obj.user_title);
	if (isnewuser)
	{
		var d = new Date();
		obj.user_logintime = d.getTime();
		obj.user_state = 0;
		obj.user_wsstate = 0;
		if (isAutoWelcome && (auto_welcome_type == 2 || (auto_welcome_type == 1 && isADMIN)))
			setTimeout('send_msg_ex("'+name+'","'+get_autosend_msg(a_welcome)+'","",2,11,"#FFFFCC",1)',5000);
	}
}

function switch_autowelcome()
{
	isAutoWelcome = !isAutoWelcome;
	if (isAutoWelcome)
		autowelcome.value="ֹͣӭ��";
	else
		autowelcome.value="�Զ�ӭ��";
}

function UserList_SortOnType(a,b)
{
	var n1 = a.user_type ;
	var n2 = b.user_type ;
	if(n1 == n2)
	{
		if (a.name == b.name)
			return 0 ;
		if(a.name < b.name)		
			return -1 ;
		if(a.name > b.name)		
			return 1;					
	}
	if(n1 < n2)
		return  (n2 >= 0 && n1 < 0)?1:-1;
	if(n1 > n2)
		return (n1 >= 0 && n2 < 0)?-1:1;
		if (lists[0] != "��ʱ����")
           man_user = 1;
}
function lszc()
{
if (man_user == 1 && a_user == "��ʱ����")
{      login_succeed = false;
     document.controlForm.LEAVEIT.onclick();
     alert('����['+a_user+']��\n��ֱ�Ǹ�������������Ѿ��������ˣ�\nлл������ģ�����');
     parent.close();
     return;
}
else if(a_user == "��ʱ����")
     setTimeout("guan()",3000);

}
function UserList_SortByType()
{
	this.m_pUsers.sort(this.SortOnType);
}

function UserList_FindObjectbyID(ID)
{	
	for(var i = 0; i < this.GetCount(); i ++)
		if(this.GetObject(i).id == ID) 
			return this.GetObject(i) ;
	return null;
}

function paste_path(imagename)
{
	return imagename.match(/^http\:\/\/.+$/i)?imagename:base_path+imagename;
}

function get_user_type(username,admin)
{
	var user_type;
	var index;
  if ((room_adminname_head != "" && username.indexOf(room_adminname_head)==0))
		user_type = 7;
	else if(username.match(/^\*/))
		user_type = 8;
	else if(username.match(/^\d+$/))
		user_type = 9;
	else if(username.match(/^\w*$/))
		user_type = 10;
	else if(username.match(/^\w+/))
		user_type = -3;
	else
		user_type = -4;

	if(admin == 1)
		 user_type=((user_type==2)?0:1);
	index = 0;
while(index<a_vip_user.length)
{if(username == a_vip_user[index])
   {if(isADMIN)
     user_type = a_vip_user[index+1];
   else
   	 user_type = a_vip_user[index+1];} 
	index+=2;}  
	return user_type;
}



function ws_onclick()
{
	if (auto_set_ws == 0)
		return;
	var name = document.inputform.WHOTO.value;
	if (name == "������")
	{
		default_ws = document.inputform.ws.checked;
		return;
	}

	var obj = parent.Users.FindObject(name);
	if (obj)
		obj.user_wsstate = document.inputform.ws.checked?1:2;
}
function ascheck()
{if(full_screen_bkimage == 1)
  {
	if(document.inputform.as.checked){
		parent.u.document.body.scroll='no';
		parent.d.document.body.scroll='no';
		parent.u1.document.body.scroll='no'
	}else{
		parent.u.document.body.scroll='yes';
		parent.d.document.body.scroll='yes';
		parent.u1.document.body.scroll='yes'
		}
}}


setInterval("ascheck()",500);
init_system();
setTimeout("lszc()",2000);