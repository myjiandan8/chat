var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
var config_place = "http://2077.liaowan.com";
var room_owner="����ve��p���";
var room_name="����ʱ��";
var room_adminname_head="";	
var room_number="2077";
var gonggao=""
var room_link_url = "http://2077.liaowan.com";
var black_roomname="";
var black_roomnumb="2077";
var userlist_top_html = "<table border=0 width=120px cellspacing=0><tr><td align=middle><img src=http://www.sscz.net/zj/2077.gif></td></tr><tr><td align=middle><img src=http://www.sscz.net/pz/logo2.gif></td></tr></table>";
var userlist_bottom_html = "<tr><td colspan=2 align=left><font color=#339900 size=2>    �� ��:<Br>*����ve��p���<Br>    �� ��: <Br>*<Br></font></td></tr>";
var userlist_bkcolor = "#cae6fe";
var userlist_bkimage = "";
var voice_normal_color = "#039694";
var voice_v2v_color = "#BFBFBF";
var voice_vr_color = "#039694";	
var div_screen_bkcolor = "#039694";
var div_screen_bkimage = "";
var voice_bkcolor = "#cae6fe";
var voice_bkimage = "";	
var input_bkcolor = "#E8F4E0";
var input_bkimage = "";	
var input_msg_color	= "#339900";
var input_msg_bkcolor = "#DCE0CF";
var body_text_color	= "#339900";
var select_color = "#339900";
var select_text_color = "#CC4499";
var button_text_color = "#339900";
var button_bk_image	= 1;
var button_bk_color = "";
var full_screen_bkimage	= 0;
var auto_hide_scrollbar = 0;
var disable_notice=1;
var a_btn_pic = new Array
(
	17,		"http://www.tiankong.net/780553/images/aix.gif",
	18,		"http://www.tiankong.net/780553/images/aix.gif",
	19,		"http://www.tiankong.net/780553/images/aix.gif", 
	30,		"http://www.tiankong.net/780553/images/aix.gif",
	35,		"http://www.tiankong.net/780553/images/aix.gif",
	46,		"http://www.tiankong.net/780553/images/aic.gif",
	70,		"http://www.tiankong.net/780553/images/aic.gif"
);
var url_popup_window = "";
var	only_registr_user = 0;	
var	only_chinese_name = 0;
var default_admin_pass = "2580";	
var auto_open_ai = 1;	
var auto_open_mic = 1;	
var auto_open_div = 1;	
var multi_singer_list = 0;
var msg_login		=	"�ҡ�"+document.inputform.USER.value+"�����ˣ�����Һð�,";
var msg_admin		=	"��Һã���"+a_user+"���Ϲ���,������Ϊ��ҷ���,Ҫ�������Ҵ�999999:)";
var msg_quitadmin	=	"��"+a_user+"�����¹��ˣ�����ԱҪע�⾭���Ϲ�Ӵ��һ�����Ϲ�ʱ����������Сʱ�Ľ���ȡ������Ȩ����";
var msg_leave		=	"��λ����"+a_user+"������һ����,�´κʹ�Ҽ�����Լ������";
var msg_auto_spack	=	"����Щ����ʱ�뿪һ�£�һ����ͻ�������";
var msg_back_spack	=	"��Һ�ѽ���һ����ˣ�������ʲô�أ�����Ҳ��������������";
var a_link_button = new Array
(
	
        "��ҳ","http://www.liaowan.com/",
        "����"," http://www.zohu.net/gbook/index.asp?user=sxsd2077",
        "���","http://photo.163.com/openalbum.php?username=sxsd2077",
        "����","http://www.2077.liaowan.com",
        "����","http://www.cococ.com",
);
var a_vip_user = new Array
(
"*��~���u���u��~��","1","","1",

	"*�֩g��^��^���g��","10",

	"*�֩g��^��^��g��","2","*��o�g����go��","2","*��ve������","2",
	"*","3","*","3","*","3","*","3","*","3","*","3",

	"*�֩g��^��^���g��","2","*�֩gƮ^��^ѩ�g��","2","*�֩g��^��^ң�g��","2", "*�֩g��^��^��g��","2",
	"*","4","*","4","*","4","*","4","*","4","*","4",

	"","5",
	"",	9
);
var a_name_filter = new Array
(        "ͬ����","��å","http://","����","����","�Ƕ�","��̬","ɫ��","�侫","ɵ��","�д�","��Ь","����","�϶�","����","����","�","����","غ��","��Ƥ","��Ů","����","�׳�","ɧѨ","����","�����","����","ɵB","����","����","����","����","��ͷ","����","����","����","����","�Ҳ�","����","ɵ��","�","�P","��","�H","��","������","�����","��","��","��","��","��","��","��","����","��","ʺ","��","��","��"
        	);
var a_hide_user = new Array
(
	"*0.258",1,
	"",1,
	"*",1,
	"*",1,
	"",			0
);
//      �������
     var bianyi = new Array
     (
     "*0.258",
	"*",
	"*",
	"*",
	"*",
	"*",
	"*"
     );

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
//˳��Ϊ1 ��ߣ�����Ϊ10-19 2-6
var a_usertitle = new Array
(
	0,	"�������֡��𿴣�Ҫ���99",	"http://www.tiankong.net/780553/tu/0.gif",	"red",	"",
	1,	"�����������ǺŦ��ӹ����������",	"http://www.tiankong.net/780553/tu/1.gif",	"#0033FF",	"",
	2,	"�߹ܨq���ǲ���˧�硢��ü���ݹ���֪��",	"http://www.tiankong.net/780553/tu/31.gif",	"#0033FF",	"",
	3,	"����Ƶ��MM��Ư���ר�ݸ��Ӵ",	"http://www.tiankong.net/780553/tu/222.gif",	"#0033FF",	"",
	4,	"����Ƶ��GG��˧˧��:��",	"http://www.tiankong.net/780553/tu/mt.gif",	"#0033FF",	"",
	5,	"�ֵܽ��ã�������壩",	"http://www.tiankong.net/780553/tu/181.gif",	"#0033FF",	"",
	6,	"��ʵ����",	"http://www.tiankong.net/780553/tu/2.gif",	"#0033FF",	"",
	7,	"ע���û�",	"http://www.tiankong.net/780553/tu/20.gif",	"#0033FF",	"",
	8,	"δע���û�",	"http://www.tiankong.net/780553/tu/21.gif",	"#0033FF",	"",
	9,	"����",	"http://www.tiankong.net/780553/tu/21.gif",	"#0033FF",	"",
        10,     "���������󡢿ɼӹ���",      "http://www.tiankong.net/780553/tu/15.gif",       "#0033FF",      "",
        11,      "���ܣ����Ư������MM~�ɼӹ���",      "http://www.tiankong.net/780553/tu/3.gif",       "#0033FF",      "",
        12,      "СŮ���Ǧ���յĽ�������Ư����",      "http://www.tiankong.net/780553/tu/5.gif",       "#0033FF",      "",
        13,      "С�����ǡ������еľ�Ʒ",      "http://www.tiankong.net/780553/tu/7.gif",       "#0033FF",      "",
        14,      "��������ġ������ġ��װ��ġ�������~�ӱ��Ŀ�ק��",      "http://www.tiankong.net/780553/tu/17.gif",       "#0033FF",      "",
        15,      "Ů�����ˡ�Ư������",      "http://www.tiankong.net/780553/tu/9.gif",       "#0033FF",      "",
        16,      "��ί",      "http://www.tiankong.net/780553/tu/16.gif",       "#0033FF",      "",
        17,      "�ӌ���ֵ�ࡢ�Y�����",      "http://www.tiankong.net/780553/tu/8.gif",       "#0033FF",      "",
        18,      "�Ӹ��֡������裿�������㻹����˭",      "http://www.tiankong.net/780553/tu/12.gif",      "#0033FF",      "",
        19,      "���������˧����Ů�������֣���쮹����ǰ�",      "http://www.tiankong.net/780553/tu/mao.gif",      "#0033FF",      ""
);

var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
	"�ԹԹ�",		"754463",
	"��������",	""
);

//����ʵ�ò�ѯ����
var a_linkurl = new Array
(
	"����ʱ��",		"http://admin.bliao.com/user/where.php",
	"��Ƶд��",		"http://www.99bus.com",
	" IP ��ѯ",		"http://www.7720.com/yong/ip.html",
	"�ֻ�����",		"http://www.7720.com/yong/waihui.html",
	"����Ԥ��",		"http://www.7720.com/yong/tvs.html",
	"����Ԥ��",		"http://www.7720.com/yong/tians.html",
	"��������",		"http://www.7720.com/yong/sm.html",
	"��Ф����",		"http://www.7720.com/yong/shengxiao.html",
	"����ɱ��",		"http://www.7720.com/yong/sha.html",
	"���ٲ���",		"http://www.7720.com/yong/netsu.html",
	"���ߵ�ͼ",		"http://www.7720.com/yong/map.html",
	"�г�ʱ��",		"http://www.7720.com/yong/lieche.html",
	"�ܹ�����",		"http://www.7720.com/yong/jiemeng.html",
	"�ٶ�����",		"http://www.7720.com/index_go/5.html",
	"��������",		"http://www.cococ.com",
	"�������",		"http://www.adu.cn",
	"google��",		"http://www.7720.com/index_go/35.html",
	"���ּ���",		"http://www.7720.com/index_go/28.html",
	"��������",		"http://www.7720.com/"
);
var a_welcome = new Array
(
	"��ӭ",	"��ӭ�������!Ϊ�˼�������,���������ǲ����Ŀ,���ǻἰʱ��������,���߻�����������������������ʾ,лл��",
	"��ӭ",	"2004ȫ�Ĵ������������������ң���ˣ�Ϊ�˱�֤�^�����p�����������ǽ�������һ����ɸѡ��������ˢ�¿����ǵĹ��棡",
	"��ӭ",	"��ӭ����������꣬��ס���ǵ���ַ http://520672.bliao.com ��ף����ÿ��ģ���ÿ��֣�",
	"��ӭ",	"������Ӫ�����ǵļ�԰���ø�����׺���ǵ������ÿһλæµ��һ��������ṩһ�����ɡ���졢��ܰ�������԰��",
	"��ӭ",	"��ӭ��������������ˡ���Ҫ������99999������Ա��Ϊ�����󡢵�����ַ: http://520672.bliao.com����������ļң�",
	"��ӭ",	"��ӭ������������ˡ����������������ѻ���������,���Ƕ�һ���Ļ�ӭ��!��ַ: http://520672.bliao.com,���ߵ绰999��",
	"��ӭ",	"��ӭ����������ˡ���������������Ϊ�������������,��������ǵ����аɣ�",
	"��ӭ",	"����������ĸ��壬�����Ǹ����ĺ������������ֵ��������ﻶӭ���ļ��룬��������������ɣ�����",
	"��ӭ",	"ɽˮ�����...��ϵ������...��ӭ���١�" + room_name + "��ϣ�����������ǵ��������ĵĿ��ĺ���죡����"
);
var a_flower = new Array
(
	"�ʻ�",	"��~*~�������ܰ�ѣࡢ�ࡢ�����İ��ơ��ࡢ�ࡢ�ܲ�������~*~�����ࡢ�ࡢ�^�m�ࡢ�ࡢ��ĺܰ���~*~�����ࡢ~0~~",
	"�ʻ�",	"������---�������ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ~0~",
	"�ʻ�",	"�x�y�z�z�y�x��������� �x�y�z�z�y�x�žž���� �x�y�z�z�y�x�ԭ�桻�� �x�y�z�z�y�x��������� �x�y�z�z�y�x�~*~ž��",
       "����","����ࡢ�㡢��ࡢ��ࡢ��vKi��S��_�u����u�ࡢ��ࡢ��ࡢ��С����y^��^�y�y^��^�y�y^��^�y�ࡢ��ࡢ��ࡢ����ÿɰ�Ӵ�ࡢ��",
	"�ʻ�",	"����vKi��S��_�u����u�ࡢ��ࡢ�㡢��vKi��S��_�u����u�ࡢ��ࡢ�㡢��vKi��S��_�u����u�ࡢ��ࡢ�㡢��vKi��S��_�u����u",
	"�ʻ�",	"�ʻ�=========== ž------ž- -����Ϊ������*���㣮��������������ʻ�=========== ž--------ž--����Ϊ������",
	"�ʻ�",	"��~*~ž���ܰ�Ӵ�ࡢ�ࡢ��~*~ž��Ϊ���İ��ƣࡢ�ࡢ��~*~ž���ܲ������ࡢ�ࡢ��~*~ž�������ࡢ�ࡢ��~*~ž����ĺܰ��ࡢ",
	"�ʻ�",	"��^�Ѩ���^���w�Ǵ���͡���o��࣡����vKi��S��_�u����u*��^�Ѩ���^������㡫��o��࣡����vKi��S��_�u����u*��^�Ѩ���^�������",
	"�ʻ�",	"����vKi��S��_�u����u�ࡢ��ࡢ�㡢��vKi��S��_�u����u�ࡢ��ࡢ�㡢��vKi��S��_�u����u�ࡢ��ࡢ�㡢��vKi��S��_�u����u",
	"�ʻ�",	"�������~~�t���r���ƣ�����PA PA������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦������",
	"�ʻ�",	"��㳪��ġ��á��͡����---���q���u���u���s ��㡤���� �������������á��ͩǨ~�B�~�B�T����PP���һ�������ȥ�ͣ��",
	"�ʻ�",	"*��z����ɶ�q���㣮*����յ���Ů���֡֨q���*�q���*��z����Ҫ��Ҫ �q���㣮��*�q��e�W�q���㣮��*���B���� һ���͡���ٺ�*",
	"�ʻ�",	"�q�Шr �q�Шr �� �� �� �� ��...�q�Шr�� �� �� ��...�� �� �� �� �� -- +��� �ĸ�q�Шr��~ �衡 �q�Шr �ٺ٨q�Шr ��`�q�Шr��",
	"�ʻ�",	 "�� ��ࡢ�㰥�q����� �� ���^�q��� ���� �਼�n ·�^ ��t-��-�sǧ�f��Ҫ��``~�e�^ �˦ᦸ...��һ��Ҫ���``~��զ�����һ����",
	"�ʻ�",	"�� ��-������ղ�֪���q�� ��---�� ��-�q�������s .һ����Շ�һ���� ��-ԭ����݁�...�m.Ҳ��һ�r...�m.�Ҹ�...�q�f��---�� ��-������",
	"�ʻ�",	"��x�ڨy�Ǩz��{�ݨ|�ި}�˨~�਀���õ���͸����I��~*~ž���I�֡���ʻ��֡�IŮ��������~�I��Ȩ���ЩIΥ�߱ؾ��I�����",
	"�ʻ�",	"�x�y�z�z�y�x��������� �x�y�z�z�y�x�žž���� �x�y�z�z�y�x�ԭ�桻�� �x�y�z�z�y�x��������� �x�y�z�z�y�x�~*~ž���� "
);
var a_byebye = new Array
(
	"����","�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬"+ room_link_url +"��������Ŷ~��",
	"�ߺ�","�����᲻�ã�һ·�ߺã����ǻ������~~~~~���пճ�����"+ room_name +"�������ź��𣡣�"
);
var a_leave = new Array
(
	"����",	"��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
	"���",	"��̾һ��,�����˵��:�ݰ���һ�������ǧ��,��֪�����ٷ��.�����ȥ��,��Ҷౣ�ء���������",
	"���",	"��ɽ���ģ���ˮ������ɽ��ˮ����������ڣ����õȵ����������գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);
var a_wantmic = new Array
(
	"Ҫ��",	"��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999",
	"����",	"��Ҫ����ѽ9999999 ��Ҫ����ѽ99999999999"
);
var a_lleave = new Array
(
	"��л",	"��"+document.inputform.USER.value+"����л��л!!лл���!!!!",

	"лл",	"��"+document.inputform.USER.value+"��лл�����ǵ��ʻ�,�����͹���!!!",
	
	"��л",	"��"+document.inputform.USER.value+"�����ĸ�л�����ǵ�����!!!"
);
var a_wenming = new Array
(
	"����",	"//alert",

	"�پ�",	"��"+document.inputform.USER.value+"������������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,���򽫱����������,лл����!!!!"
);
var a_shuaping = new Array
(
	"����",	"��"+document.inputform.USER.value+"��������Ҫ�ظ������������ϰ�ˢ������лл��������",

	"�پ�",	"//jg"
);
var a_qinghua = new Array
(
"COCOC","���ʺ�ף������������������ϵ��ʺ��ף����Ը�ҵ�ף��������һ�칤��������ƣ�ͣ�Ը���ĺͿ��ְ���������",
"COCOC","�����ף������Ը�ҵ�ף��������������ȥ���������Ŀ��֣����������Ц����������һ���������ܵ�������ϵ�ף����",
"COCOC","���������ۡ�������������������Ϊ���������ɡ��������������ۣ�����Ҫ��������ԣ���������ס����֣�����ů����δ�ı䡣",
"COCOC","����ͬ�߹���������ͬ���֣�����ͬ���ܣ����ǻ���ͬ�����ڴ�������ͬ���꣬���ǹ�׷���������ͬһ���İ���",
"COCOC","��������ˡ�������̬�򷽣�������ˣ��������㣬�����߻�������������Ů�ˣ�����һ�����˰��Ͳ���ķ羰��",
"COCOC","���������顿������ãã��˭˵���������飿˭˵����̫��ã�ֻҪ�������Ľ�������������������ڣ�����Ҳ����������ܰ�ļ�԰��",
"COCOC","���ѵ�֪�����������ѵü�֪����ǧ��֪�������١������޵�ͬ������ǧ���޵��߹���������飬�������ӡ�",
"COCOC","���������顿��������Ŀ����ڴ��������ҳ��ķ�������������Ĺ�;�����������ô���氡��һ�ղ�������������",
"COCOC","��������Ե����һ���Ӿ�����һ�������飬һСʱ����ϲ����һ���ˣ�һ����ܰ���һ���ˡ�����Ҫ��һ����ʱ�����ȥ���ǡ�",
"COCOC","��������������ȴ���һ���ֻ꣬Ϊ����������ż������һɲ��ײ���Ĺ�â������������������һ����",
"COCOC","���������顿������һ��΢Ц�͹��ˣ��籡��һ���������һ�ƣ������һƪ��˵����԰����·��죬��ܰ��Ʈ�ݡ�",
"COCOC","���������顿����һ�ָо���ֻ�����������Դ�����һ���Σ�����֮�����޾��ı�������һ��׷����������ʵ��ȴ������Թ�޻ڵİ�����",
"COCOC","������ףԸ����������ԣ��벻Ҫ���ҵ�ף���е��ᷳ��������ܣ���ʱʱ�����������ң����Ը�⣬�����ҷ������ϲŭ���֣�",
"COCOC","���������顿����ô�������㣬�������Լ�����Ȼ��������ȥ����Ϊ��ɰ�������������������ģ���������Σ���Ը����Ը�ѡ� ",
"COCOC","��Ц��������������һ��Ϸ������ԹԹ�ֺα�̫���⣻��������������������ȥ��������Ե�����پۣ��һӻ��䣬��ǰ�ߣ��������ڷ����",
"COCOC","���������顿�����üĿ֮�䣬�����ҵİ��������һ���ƶ��������ҵ����ߣ������ҵ�ʫƪ��������ǧ��Ҳ����롣",
"COCOC","���������顿�������ǰ�����ɣ�һ�������յĶ��̣����������ӵ����飬һ������ӵ�������ۣ���ĺ����㡣",
"COCOC","���������㡿������һ��磬���������ԹԹ��Ҳ������ң�û��˭��˭������������ᣬ��������ĺã����������˵Ĳ��ࡣ",
"COCOC","���������ҡ���������ǿգ�Ӧ������ж������������Ϊ�㲼��һƬ��գ���׼���ѹ���ϣ���㿪�ģ���ķ��պͼ�į��ȫ���������ң�ǣ���ָ������ߣ����ٴ���������������������ҡ�",
"COCOC","������ϧ�㡿����Ҫ�����㣬ֱ���о�������ƣ��������µĺۼ���ֱ��ʧȥ������ȫ������Ҳ���Է����������ܷ����㣻��ֵ����ȥ����ȥ��ϧ��",
"COCOC","�������Ҹ�������ϰ���Բ����ԣ��˿�������ӵ��Ҳ����ʼ���ա�ף��������֣���ʹȴ���ڲ����С�����һ��Ҫ�����Ҹ���"
);
var a_thank = new Array
(
	"����", "�����֣����Խ�����??��",
	"����", "�����ú��ۣ�������Ҳ�볪���׸��ˡ�",
	"����", "������ѽ��������ѽ��������ѽ��",
	"����", "����Ҫ�󣬽���ѽ������Ҫ�󣬽���ѽ��",
	"����", "����Ҫ����Ҫ����׸衿����Ҫ����Ҫ����׸衿"
);
var a_heart = new Array
(
	"����",	"|||||||||||||||||||||||||||||||||||||||||||||",
	"����",	"1111111111111111111111111111111",
	"����",	"�����ˣ������11111111111111111111"
);

//����EMOTE����
var a_emote = new Array
(
	"���ʺ��",		"",
	"����",		"kiss����!!~~࣡�����kiss����!!~~࣡�����kiss����!!~~࣡�����kiss����!!~~࣡�����kiss����!!~~࣡�����kiss����!!~~࣡�����",
	"�����",		"࣡���������������㡫��o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���",
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
	"������ַ",	"http://2077.liaowan.com","color:#009900",
        "���߿���",      "fnc:k_km()","color:#FF0000;background-color:#FFFF99",
	"�������",	"fnc:guan()","color:#0000FF;background-color:#FFFF99",
	"�˳�����",	"fnc:xiaguan()","color:#FF0000;background-color:#FFFF99",
	"��ʼ����",	"fnc:disablesingermanage(false)","color:#0000FF;background-color:#FFFF99",
	"�ر�����",	"fnc:disablesingermanage(true)","color:#FF0000;background-color:#FFFF99",
	"��������",	"fnc:disable_KICK(true)","color:#0000FF;background-color:#FFFF99",
	"��������",	"fnc:disable_KICK(false)","color:#FF0000;background-color:#FFFF99",
	"����ר��",	"�gӭ��ҁ�������ʱ������Ҫ �� �� �� �� Ո �o���ҡ�����9999999 ����ԇ �� ��666666 ���x�x!!","",
	"����׼��",	"���ã���ӭ����������ʱ��������һ��������������,��׼����������лл!!","",
	"��������",	"����!��������,������˼,�����õ���,��Ӻ�������˷�!��������˵�����ǳ��衷","",
	"�Ҳ�����",	"���ã�������������ֵ���֣����Ҳ���������֣����������ظ���Ϣ��лл�������Ϣ��һ����ɾ���������","",
	"���ֲ���",	"������˼���������֣���ʱ�������������ش�������⡣���������������̳�������ԣ�лл����","",
	"���׽�99",	"��gӭ���������ʱ��������������ֻ����ע�������������������Ѵ�9999Ҫ���뻻�����ע�������������ɡ��x�x!!","",
	"���ĵȴ�",	"����!��������е㳤����Ҫ��ȵ�Ӵ��ͬʱ���ǻἰʱ�����ڵ����ѵ�����ģ��ܿ�͵����ˣ���Ӵ!!","",
	"����ר��",	"��gӭ��ҁ�������ʱ�������������Ո�o���ҡ���1111111111 �����һ�����˫������ģ����Ժ󡣡����x�x!!","",
	"��������",	"���ã����ڲ����������֣�������������Ա��999��лл��������ʾ������ÿһ��������һ��9999������һ��Ҫ����Ӵ��","",
	"���㻻��",	"���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ�������","",
	"��л���",	"����!лл��Ϊ������ϵĸ���,�Ƿǳ��Ķ���,�����ʱ����Ϊ�������һ����,���Ǹ�л��..ͬʱҲ��ӭ������!!","",
	"��������",	"����������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,���򽫱����������,лл����!!!!! ","",
	"������Ϣ",	"��ӭ��������ա������Ǵ��������͵������ң�����ʱ���������ӣ�������ȫ���ڴ����衢�����������̶��ȣ�����лл","",
	"ϣ������",	"��ӭ������������ʱ������ϣ�������������ֻ��������Ա��999������Ա����󽻵������ϵģ�ף����������Ŀ��ģ���","",
    	"���󹫸�",	"��Һã���ӭ��������ա����ǵĹ���Ա�ἰʱ�����������ҵ���������ͬʱ����Ҳ����������ģ�лл��ף����졣","",
    	"¼������",	"���������ҵ�һ����������¼�Ƴɽ�Ŀ�������Ҫ������������һСʱ�����������Ϸ���¼����ť�����������ǰ�Ľ�Ŀ","",
    	"���Ҫ��",	"1���ڱ��ҷ���ӭ�ʲ��ͻ�����2���ڼ�����ÿ����Сʱ�ڹ�ʱ��3������ͨ������1���ڹ���ʮСʱ����Ҫ�ӹ�����������","",
	"����Ҫ��",	"1�������������������2��������봿����Ӻ�����3����¼�����ύ����¼����Ʒ��������Ȩ��Ҫ��������������","",
	"����ͷ��",	"��ã����������Ƴ��˸���ͷ�����룬ͷ����ο����ǵġ�������ӡ����ͷ��˵������ѡ����Ҫ��ͷ��Ȼ��������˵����лл","",
	"ͷ��ע��",	"��ã������Ҫѡ�����������ҵĸ���ͷ������ע���������֣�Ȼ����������������ң�ͬʱ������Ծ���ղſ��Լӵ�Ӵ","",
	"���ע��",	"���ڱ��ҡ�����ʱ������ѡ�����ע�ᡷȥע����Ҫע������֣��������뱾����̳�ǲ�ͬ�Ķ�Ҫ�ֱ�ע��Ӵ��","",
	"������Ƶ",	"���ڱ�����ҳ(http://2077.liaowan.com)ѡ����ص���ҳ�����������࿴���ͻ�","",
	"�ܾ�˫��",	"����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣","",
	"��������",	"��Ҫ���������뿴��ҳ�ϵ�����Ҫ��Ȼ������д���Լ��ļ����С�","color:#6600ff"
);

//����ͼƬ����
var a_picture = new Array
(
	"��ӭ��",		"http://www.cj888.com/photo/65/marker/english/welcome/66.gif",
"��ӭ��2", "http://www.mypcera.com/photo/65/marker/english/welcome/25.gif", 
"��ӭ��3", "http://www.mypcera.com/photo/65/marker/english/welcome/44.gif", 
"����", "http://qqliao.com/chat/images/d27.gif", 
"����", "http://benniao.8u8.com/gif/hy.gif", 
"��������", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063934276.gif", 
"��������", "http://smsad.tom.com/smsweb/images/modpic/4854_2068/Tom_1040108658.gif", 
"��������", "http://219.133.40.170:8080/mcard/images/42383.gif", 
"��������", "http://218.17.209.40:8080/mcard/images/41244.gif", 
"��������", "http://218.17.209.40:8080/mcard/images/42390.gif", 
"����", "http://218.17.209.40:8080/mcard/images/41851.gif", 
"����1", "http://www.mypcera.com/photo/65/person/rests/love/3.gif", 
"����2", "http://qqliao.com/chat/images/d24.gif", 
"��������", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849478.gif", 
"ɳ̲��Ů", "http://smsad.tom.com/smsweb/images/modpic/4854_2069/Tom_1048585047.gif", 
"������ɽ", "http://218.17.209.40:8080/mcard/images/42338.gif", 
"����1", "http://img.3721.com/sms3721/color/07/14834.gif", 
"����2", "http://qqliao.com/chat/images/h8.jpg", 
"�������", "http://219.133.40.170:8080/mcard/images/35373.gif", 
"��������", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849471.gif", 
"��Ů��", "http://www.mypcera.com/photo/65/culture/art/nautch/28.gif", 
"Ϊ�����", "http://218.17.209.40:8080/mcard/images/41226.gif", 
"Ը�����", "http://219.133.40.170:8080/mcard/images/35365.gif", 
"����û��", "http://218.17.209.40:8080/mcard/images/37636.gif", 
"����1", "http://219.133.40.170:8080/mcard/images/42020.gif", 
"����2", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849381.gif", 
"��������", "http://www.lndd.org/button/0007.gif", 
"С��", "http://211.98.68.109/sl/pic/xy2.gif", 
"����ϵ", "http://218.17.209.40:8080/mcard/images/40666.gif", 
"������Բ", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1061453990.gif", 
"ע������", "http://218.17.209.40:8080/mcard/images/41921.gif", 
"�ڽӵ绰", "http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1063876628.gif", 
"�ջ�", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063780572.gif",
"�����మ", "http://218.17.209.40:8080/mcard/images/40322.gif", 
"��Ҫ��", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1060138014.gif", 
"��������", "http://219.133.40.170:8080/mcard/images/37796.gif", 
"���ƾ���", "http://cn.gs/cna/pai1.jpg", 
"���տ���", "http://shopping.263.net/img/217/040602000425.gif", 
"���տ���", "http://218.17.209.40:8080/mcard/images/35354.gif", 
"���տ���", "http://www.wahaha8.com/chat/489604/pictures/016.gif", 
"���տ���", "http://go.ebjet.com/card/media/gif/976238671.gif", 
"���տ���", "http://card.e165net.com/card/birthday/dangao/pic001_.gif", 
"���㶵��", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1066123574.gif", 
"һ���غ�", "http://218.17.209.40:8080/mcard/images/42990.gif", 
"����", "http://219.133.40.170:8080/mcard/images/42347.gif", 
"ʧ����", "http://219.133.40.170:8080/mcard/images/41920.gif", 
"�Ƶ���", "http://www.cj888.com/photo/65/res/electric/computer/9.gif", 
"�������", "http://www.wahaha8.com/chat/489604/pictures/013.gif", 
"�������", "http://218.18.95.214:8080/mcard/images/43924.gif", 
"�������", "http://219.133.40.169:8080/mcard/images/43854.gif", 
"�������", "http://218.18.95.214:8080/mcard/images/43859.gif", 
"ü��1", "http://www.lndd.org/button/meiyan.gif", 
"�ŵ�", "http://qqliao.com/chat/images/d23.gif", 
"ü��2", "http://218.17.209.40:8080/mcard/images/42539.gif", 
"������", "http://smsad.tom.com/smsweb/images/modpic/4848_5631/Tom_1067840580.gif", 
"MM������", "http://www.lndd.org/button/0046.gif", 
"����С��", "http://cn.gs/cna/rmb.gif", 
"����֮��", "http://smsad.tom.com/smsweb/images/modpic/4848_2883/Tom_1066186452.gif", 
"������", "http://219.133.40.170:8080/mcard/images/37168.gif", 
"��������", "http://218.17.209.40:8080/mcard/images/35372.gif", 
"������1", "http://smsad.tom.com/smsweb/images/modpic/4848_2295/Tom_1044853423.gif", 
"������2", "http://smsad.tom.com/smsweb/images/modpic/4848_2295/Tom_1044853476.gif", 
"���ұ���", "http://218.17.209.40:8080/mcard/images/35363.gif", 
"����ɫ��", "http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1040113733.gif", 
"��������", "http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1062473969.gif", 
"����", "http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752486.gif",
"����", "http://www.lndd.org/button/papa.gif", 
"ҡ��", "http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752451.gif",
 "�ջ�", "http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752494.gif",
"������˼", "http://219.133.40.170:8080/mcard/images/40943.gif", 
"������", "http://219.133.40.170:8080/mcard/images/35347.gif", 
"�������", "http://smsad.tom.com/smsweb/images/modpic/4848_1774/Tom_1059118812.gif", 
"�����", "http://smsad.tom.com/smsweb/images/modpic/4854_1787/Tom_1059118418.gif", 
"����", "http://61.177.188.19/aoxiang/d/d-43.gif", 
"��1", "http://218.17.209.40:8080/mcard/images/41640.gif", 
"��2","http://219.133.40.170:8080/mcard/images/41250.gif",
"�п�����", "http://asp3.6to23.com/tgoodnet/top.gif", 
"������Ʒ", "http://smsad.tom.com/smsweb/images/modpic/4854_1787/Tom_1059118431.gif"
);
var a_bkcolor = new Array
(
        "FFFF00",        "FFE000",        "FFC000",        "FFA000",        "FF8000",        "FF6000",        "A0FF00",        "80FF00",        "00FF00",        "00E000",        "00C000",        "00A000",        "FFCC99",        "CCFFFF",        "C8D0e8",        "582424",        "FFCCFF",        "FFFFFF",        "fdd242",        "f8fead",        "a0e4a0",        "80dbd7",        "eaadfe",        "ffacd8",        "9bcfff",        "75bdff",        "9d9dff",        "ca8eff",        "AB82FF",        "ff88ff",        "ffaaaa",        "ccffa6",        "a6ffcc",        "b1fee9",        "adcafe",        "d5bbff",        "f1bbff",        "D752EB",        "FFFFCC",        "7BB706",        "CCCCFF",        "DBF3B3"
);
var a_type;
var a_user_pic = new Array(20);

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
function add_new_element()
{
	write_button("","�ղ�",6, 0,35,20,"","�����Ҽ����ղ�","addbookmark(0)");
	write_button("","ֱ��",6, 20,30,20,"","��ʹ�õ�ǰ������ֱ�ӽ��뱾�ҵĿ�ݷ�ʽ�����ղ�","addbookmark(1)");
	for (var i = 0 ; i < 9 ; i ++)
		write_newwindow_button(a_link_button[i*2],43 + 35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","�ͻ�",374,60,35,20,"","�����ʻ�����","autosend(a_flower)");
	write_button("","��ӭ",409,60,35,20,"","���ٻ�ӭ","autosend(a_welcome)");
	write_button("","�ظ�",444,60,35,20,"","�ظ��ϴεķ���","repeat_msg()");
	write_button("","��ͼ",269,80,35,20,"","����ͼƬ��������","insert_picture()");
	write_button("","����",304,80,35,20,"","��������","autosend(a_byebye)");
	write_button("","Ҫ��",339,80,35,20,"","����Ҫ��","autosend(a_wantmic)");
	write_button("","����",374,80,35,20,"","��������","autosend(a_heart)");
        write_button("Az_y","ӭ��",500,0,35,20,"","�㿪���ϵͳ���Զ���ӭ�ս���������","Az_yy()");

	write_button("","�黰",304,60,35,20,"","���ٷ����黰","autosend(a_qinghua)");
        write_button("","��л",535,0,35,20,"","��л����","autosend(a_lleave)");
	write_button("","����",570,0,35,20,"","�������","autosend(a_thank)");
	write_button("","��ַ",444,80,35,20,"","������ַ\n"+room_link_url,"send_msg('��������ַ��"+room_link_url+"')");
	write_bkcolor_select("bkcolor","����ɫ",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","ͼƬ���",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","��������",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","�������",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_singer_form(479,20,select_color);	//	����
	write_changeroom_form(269,100,126);	//	������
	write_changeuser_form(397,100,208);	//	����
	write_make_flower(269,120);	//	�����׻�

	if (is_online_manager())
	{
		write_button("","�¹�",5,40,30,20,"","�����¹�","xiaguan()");
                write_button("reauto","�Ը�",6, 0,35,20,"","�Զ�����","reauto()");
	        write_button("","����",395,0,35,20,"","������������","autosend(a_wenming)");
	        write_button("","��ˢ",360,0,35,20,"","�����ֹˢ��","autosend(a_shuaping)");
	        write_button("","����",465,0,35,20,"","����˷�ݸ�����","document.screenForm.MIC.click()");
                write_button("","����",430,0,35,20,"","����˷�ݸ��Լ�","document.screenForm.GETMIC.click()");
		write_button("switchkick","׼��",339,60,35,20,"","�������˹���","switch_kick()");
		write_button("","׼��",409,80,35,20,"","׼������","send_msg('����!��һλ����������,��������׼������~~!���ҽ�ֹ�峪��лл! ')");
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
		write_button("","�Ϲ�",5,40,30,20,"","�����Ϲ�","guan()");
		write_button("reauto","�Ը�",409,80,35,20,"","�Զ��ظ�","reauto()");
		write_button("","���",339,60,35,20,"","���ٸ��","autosend(a_leave)");
		write_select("linkroom","��������",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}


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
			HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 3]+" style=\"cursor:hand\" >["+lists[1]+"<B></B>]</font></a>");
		else
			HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">["+lists[1]+"]</font></a>");

		if (is_hidden_user(lists[1]) < 20)
				HTMLstr += ("<font color=#FF0099>��Ա</font>");

		if(lists[2]==1)
			HTMLstr += ("<font face=\"Wingdings\" color=#00FF00>(</font>");

                if(lists[2]==0)
			HTMLstr += ("<font face=\"Wingdings\" color=#00FF00>(</font>");
		if(lists[2]==2)
			HTMLstr += ("<font face=\"Wingdings\" color=#7FFFD4>(</font>");

		if(lists[3]==1)
			HTMLstr += ("<font face=\"Webdings\" color=red>N</font>");

			HTMLstr += ("<br>");

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

	if (button_bk_image == 1)
		for (i = 1 ; i < a_btn_pic.length ; i+=2)
			a_btn_pic[i] = paste_path(a_btn_pic[i],"");
	for (i = 0 ; i < 20 ; i ++)
		a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");
	window.onerror = new Function("return true");
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'������\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
	parent.write=writelist;
	parent.writecv = (auto_open_mic == 1)?writev:writecv;
	parent.writeu1 = writeu1;
	open_startup_info_window();
	setTimeout("auto_open_ai_fnc()",3000);
	if (is_hidden_user(a_user) < 20)
		document.inputform.ws.checked=true;
	write_loginmsg();
}

function reset_elements_style()
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
		document.write("BODY{scrollbar-arrow-Color:#09BACA;scrollbar-base-Color:#DFFBFD;scrollbar-face-Color:#8BE5ED;scrollbar-3dlight-Color:#DFFBFD;scrollbar-darkshadow-color:#8BE5ED;scrollbar-highlight-Color:#B7F9FF;scrollbar-shadow-Color:#B7F9FF;SCROLLBAR-TRACK-COLOR: #DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
	}
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>');
        document.write('<STYLE>BODY{ cursor:url(http://www.a615.com/cursor.cur.ani);}</style>')
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
			case "MIC":
			case "ODOOR":
			case "CDOOR":
				reset_btn_style(obj,35);
				break;
			case "INBOX":
			case "LOUT":
				reset_btn_style(obj,18);
				break;
			case "BOXLIST":
				reset_btn_style(obj,17);
				break;
			case "OUTBOX":
			case "LIN":
				reset_btn_style(obj,is_online_manager()?17:18);
				break;
			case "VREQ":
				reset_btn_style(obj,70);
				break;
                 default:
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

	aOption = new Option("��ɫ", "#FFFFFF"); 
	aOption.style.color= "#FF0000";
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
	HTMLstr +="<STYLE>BODY{ cursor:url(http://www.a615.com/cursor.cur.ani);}</style>";
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
		HTMLstr += ("BODY{scrollbar-arrow-Color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#8BE5ED;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>&nbsp;&nbsp;"+room_name+"</B></big></font>"));
	HTMLstr += ('<SCRIPT>');
	HTMLstr += ("function Click(){alert('����վ�и�������ϵ����������վ�Ͽ�˵��')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
	HTMLstr += ('</script>');
	HTMLstr += "<br><a title='��ǰ��������������'><font color=000000>&nbsp;��������&nbsp;</font><font color=red><B id='usercount'>0</B></font><font color=000000>&nbsp;λ����</font></a><br>";
	HTMLstr += "<a title=\"PS\"><marquee bgcolor=#cae6fe><font color=#ff0000>����ʱ����Ƶ���컶ӭ�����������Ա��999Ҫ��</font></marquee>";
	HTMLstr += "<a title='������������'><font color=000000>&nbsp;<b>�����б�:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr>";
	HTMLstr += userlist_bottom_html;
	HTMLstr += "<br><br><a target=_blank href='http://520672.bliao.com' title='����ʱ����Ƶ������'><img src='http://www.tiankong.net/images/logo.gif' border='0' width='88' height='31'></a><br><br></body></html>";
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
	if (is_hidden_user(a_user) < 20) return;

	var color,msg;

//	������Ϣ����ɫ�ڴ��޸�
	if (is_online_manager() && !byi(document.inputform.USER.value))
		color = 11,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 18,	msg = msg_login;
	document.inputform.elements[11].name="bgcolor";
	document.inputform.elements[11].value="#A0FF00";
	document.inputform.color.options[color].selected=000000;
	send_msg(msg);
//	Ĭ�ϵķ�������ɫ�ͱ���ɫ
	document.inputform.color.options[3].selected=true;
	document.inputform.elements[11].value="#FFFFFF";
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
           send_msg(document.inputform.SAYS.value + "  ");
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
// ��һ����ԭ�ű��м������´���(���Կ���)
var km_word="";
var km_a="";

//�߿�������
function k_km(){
if (is_online_manager()){
     km_a="";
     //���ܿ����ַ�
     km_word=prompt("�����뿨���������еĹ����ַ���(��:'����1','����2','����3'��,��ֱ������'��')","")      
     
     c_list();

     //������������
     var user_list=km_a.split(";");
     
     //��Ⲣ�߳�
     for(var i=0;i<user_list.length;i++)
     { 
           if (p_km(user_list[i])){
                 if (confirm("�Ƿ��ߵ��� " + user_list[i] + " ��"))
                       kick_km(user_list[i]);
           }                  
     }
}else{
alert("����ר�ã������Ҷ�����");
}
}

// ������������
function c_list(){
     for(var i=1;i<parent.list.length;i++)
     {
           if (parent.list[i] != ""){
                 var km=parent.list[i].split("-'");
                 km_a += km[0]
                 if (i!=(parent.list.length-1))
                 km_a += ";"
           }
     }
}

//�߳�ѡ��
function kick_km(nom_user) 
{
     disable_KICK(false);
     var cur_user=document.inputform.WHOTO.value;
     parent.cs(nom_user);
     document.screenForm.KICKIP.click();
     parent.cs(cur_user);
}

//      �Ƿ����
     function p_km(username){
           if (username.indexOf(km_word)+1){
           return true;
           }else{
           return false;
           }
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
		document.inputform.elements[11].name="bgcolor";
		document.inputform.elements[11].value=selection.value;
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
	document.write('<option selected style=color:'+color+' VALUE="" >�����������</option>');
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body oncontextmenu=self.event.returnValue=false ondragstart=self.event.returnValue=false onselectstart=self.event.returnValue=false><style type=text/css>";
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body oncontextmenu=self.event.returnValue=false ondragstart=self.event.returnValue=false onselectstart=self.event.returnValue=false><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><input type=button name=closev value=������ onclick=\"parent.d.writev();\">";
	HTMLstr += "<table width='96' border='1' cellspacing='0' cellpadding='0' bgcolor='#cae6fe' bordercolordark='#cae6fe' bordercolorlight='#ffffff' height='15'><tr><td width='140' align='center'><p align='center'><span style='font-size: 8.7pt;COLOR:ffffff'>�����������������򿪱��������еĲ�������</SPAN></p></td></tr></table></body></html>";
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
function write_make_flower(left,top)//���������׻�����
{
	document.write('<DIV align=left style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<form name = \"custom_flower_form\"><font style=color:#993366>[�����׻�] ���֣�</font>");
	document.write('<input type="text" title="�������׻�������" name="fname" style="width:78px" maxlength="8" value = "�ʻ�">');
	document.write("<font style=color:#993366>&nbsp;�״ʣ�</font>");
	document.write('<input type="text" title="����ף���Ĵ���" name="ftext" style="width:79px" maxlength="8" value = "ף��">');
	write_button("","����",301, 1,35,20,"","����ף��","make_custom_flower()");
	document.write('<input type="hidden" value="0" name="resend">');
	document.write('</form></DIV>')
}
//	�Ҽ�����
	document.oncontextmenu = new Function("return false;") ;
	document.oncontextmenu = about;

//	��Ȩ��Ϣ
function about()
{
	alert('����CTRL+C ճ��CTRL+V ');
	return false;
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
  var tmpmsg=document.inputform.msg.value;
  var badword = new Array("�侫","��","����","սʿ","�S�","�����ʿ","һ����","ɵ��","���̡�","�����","����","����үү","��ʿ","�|�|","����սʿ","������","������","�~�}�|�{�z�y�x","�� Ь","��ʺ","�Ҳ�","����","������","���","��","����","����","���","����","�","满���","��Ը","����","����","����","����","����","����","غ��","��Ƥ","����","��","ү��","����","��Ů","����","����","����","��ʺ","������","�x�y�z�{�|�}�~","��","��","���","fuck","cao","����","ʿ","��","����Ů","�д�","�д�","�ҿ�","���");
  for (var i=0;i<badword.length;i++){
//      if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){
      if (tmpmsg.indexOf(badword[i])!=-1){
      inputform.ws.checked=false;
      inputform.ws.checked=false;
      document.inputform.msg.value='*������������������.��ֻ˵��һ���໰���������ͳ����ڡ�������ˡ�.�����ӳ��ˡ�������ˡ������ң�����';

document.inputform.color.value="0000ff";
                login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
alert('����['+a_user+']��\n��ֱ�Ǹ.�����������Ļ��к��в��ŵ����֣����ѱ������������ˡ�������.�����ٴν���.����ע�ⲻҪ˵�໰.Ը���ڴ˿�����죡');		

parent.close();
 setTimeout('CloseWindow()',3000);
    }
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
	this.u1.document.write('<SCRIPT>');
	this.u1.document.write("function Click(){\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
	this.u1.document.write('</script>');
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if (full_screen_bkimage == 0)
	{
		this.u1.document.write("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((m_div_screen_bkimage != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_div_screen_bkimage != "")?(" url("+m_div_screen_bkimage+") fixed}"):"}"));
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");
		if (auto_hide_scrollbar == 1)
			this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
		this.u1.document.write("><p class=\"p9\" align=\"left\">");
	}
	else
	{
		this.u1.document.write("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((m_div_screen_bkimage != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_div_screen_bkimage != "")?(" url("+m_div_screen_bkimage+") fixed}"):"}"));
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");                
	}
	this.u1.document.write("<html><head><BODY><font color=#2e8b57>�����桿��<font color=#ff0000 >��ӭ<font color=#000ff >[" + a_user + "]<font color=#ff000 >����<font color=#0000ff>[" + room_name + "]<font color=#ff000 >����������!<br><font color=#FF00FF>�����桿</font>��<font color=#009933>"+gonggao+"</font><br><font color=#2e8b57>��ϵͳ����<font color=#ff0000 >�������ȫ�����Ա�����ʺã���ף����<font color=#0000ff>[" + room_name + "]<font color=#ff0000 >��ÿ��ģ�</font><br>");
    this.u1.document.write("</html></head></BODY>");
    this.u1.document.write('<STYLE>BODY{ cursor:url(http://www.a615.com/cursor.cur.ani);}</style>');
}
document.oncontextmenu = new Function("return false;") ;
///////////////////////////��������//////////////////////
function fp(){
parent.u1.document.write('<body bgproperties=fixed>');
parent.u1.document.write('<font color=#EE0D5C>�������桿��<font color=#009933><a href="�������"; target="_blank">�����䳤�����������������������ϵ���߸߹ܻ��������Ƶ�о��������ȡ�!!</a></font></font><br>');
parent.u1.document.body.style.bgcolor="#CCFFFF";
}
function fpbg(){
setTimeout("fp()",2000);}
fpbg();
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
		setTimeout("login_form.submit();",2000);
		is_online_manager()
    autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);
	}
}
///////////////�Զ��ظ���ʼ////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="������û����������[�Զ�����]";
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
     document.all.reauto.value="�Ը�";
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
                             reautoword+=" ";
                       }
                       parent.cs(user_b);
                       document.inputform.msg.value=reautoword;
                       checksay();
                       document.inputform.submit();
                 }
           }
}
///////////////�Զ��ظ�����//////////////////////////////////
init_system();
add_new_element();
reset_elements_style();
//-->
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
setTimeout("Az_yys()",20000)
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
var admins=new Array("*��~���u���u��~��","*�֩g��^��^���g��","*�֩g��^��^��g��","","*","*","*","*")
function admin(AName){
     for(var mj=0;mj<admins.length;mj++){
          if(AName==admins[mj]){
          return true
          }
     }
    return false
}
function kickcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("�������Ұ����ҿ޼ܡ���") 
           return false
     } else return true
}
screenForm.KICK.onclick=new Function("return kickcheck();");
function admin(AName){
     for(var mj=0;mj<admins.length;mj++){
          if(AName==admins[mj]){
          return true
          }
     }
    return false
}
function kickipcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("�Σ�˭�����أ���Ҫ���˲�Ҫ���ˡ���") 
           return false
     } else return true
}
screenForm.KICKIP.onclick=new Function("return kickipcheck();");
function DUMBcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("�㻵�������Ҵ��֣�55555������Ҫ��...��!!") 
           return false
     } else return true
}
screenForm.DUMB.onclick=new Function("return DUMBcheck();");
function NOMICcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("�ҿ���~~~~~~~�����ڲ���˵���ۡ����Ҿ�Ҫ˵��!!!!!") 
           return false
     } else return true
}
screenForm.NOMIC.onclick=new Function("return NOMICcheck();");