alert("��������˵����ǧ������������һֱ��̽����������ܣ�̫���Ĺ��������ҹ���棬�������������λ�仯�������Ƕ�����תѭ�أ�����任���ܶ���ʼ�����ǵĳ�û������ʳ���漣�����ǵ����ٵȵ������������ѵĹ�ע�����������������ļ��빲�������������ֵ��ǿ�!!!!"); 
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
var config_place = "http://yunapiao.vip.sina.com/";
var room_owner="*��E·��a��~";
var room_name="������˵";
var room_adminname_head="";	
var room_number="2024";
var gonggao="������ǵ���������֪ʶ�������˽⣬�����������������ͣ���������û�а������������ȱ�����飬���˹����ȱ���ȱ���������òȴû����ů���ģ�������罫���Ϊһ����ô���������簡http://2024.liaowan.com����ͬ�С���������˵�����ո��֣���׸�ʽ����������ߡ��䣬��������������QQ369599996��ϵ��"
var room_link_url = "http://2024.liaowan.com";
var black_roomname="";
var black_roomnumb="2024";
var userlist_top_html = "<B><font style=\"filter: glow(color=#009900,strength=4); Height:12pt; color:#FFFFCC; padding:1px;\">&nbsp;&nbsp;<font size=3>  ��  </font><font size=3>  ��  </font><font size=3>  ��  </font><font size=3>  ˵  </font></font></B>";
//var userlist_top_html = "<B>  <font color=#0000FF size=3>������˵</font></B>";
//var userlist_top_html="<table border=0 width=120px cellspacing=0><tr><td align=middle><img src=http://myweb.public.net.cn/user/yixuan/tu/shuake.gif></td></tr></table>";
var userlist_bottom_html = "<marquee direction=up height=60 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=140 crolldelay=60><center><span style='font-size: 8.7pt;COLOR:#ff0000'><br>������˵<br>������˵<br>��һ���Գ��衡���衡���졡�Ļ�������<br>չʾ��������������������Ȥ<br>����ʱ�����Ҵ���<br>������˵�ڴ����ļ���<br></font></marquee><p align='center' class='p9'><tr>";
document.write('<bgsound src="" loop="-1">');
var userlist_bkcolor = "";
var userlist_bkimage = "http://myweb.public.net.cn/user/yixuan/tu/p99.jpg";
var voice_normal_color = "#00D000";
var voice_v2v_color = "#BFBFBF";
var voice_vr_color = "#00D000";	
var div_screen_bkcolor = "";
var div_screen_bkimage = "http://myweb.public.net.cn/user/yixuan/tu/q98.jpg";
var voice_bkcolor = "";
var voice_bkimage = "http://myweb.public.net.cn/user/yixuan/tu/q98.jpg";	
var input_bkcolor = "";
var input_bkimage = "http://myweb.public.net.cn/user/yixuan/tu/q98.jpg";	
var input_msg_color	= "#009933";
var input_msg_bkcolor = "#DCE0CF";
var body_text_color	= "#009933";
var select_color = "#339900";
var select_text_color = "#009933";
var button_text_color = "#009933";
var button_bk_image	= 1;
var button_bk_color = "";
var full_screen_bkimage	= 0;
var auto_hide_scrollbar=0;
var disable_notice=1;
var a_btn_pic = new Array
(
	17,		"http://free1.e-168.cn/~dcxj/wuhen/a/18.gif",
	18,		"http://free1.e-168.cn/~dcxj/wuhen/a/18.gif",
	19,		"http://free1.e-168.cn/~dcxj/wuhen/a/18.gif",
	35,		"http://free1.e-168.cn/~dcxj/wuhen/a/35.gif",
	46,		"http://free1.e-168.cn/~dcxj/wuhen/a/46.gif",
	70,		"http://free1.e-168.cn/~dcxj/wuhen/a/70.gif"
);
var url_popup_window = "";
var	only_registr_user = 0;	
var	only_chinese_name = 0;
var default_admin_pass = "123";	
var auto_open_ai = 0;	
var auto_open_mic = 0;	
var auto_open_div = 1;	
var multi_singer_list = 0;
var msg_login		=	"*.HI��.������˵��ͬ־��!.�ҡ�"+document.inputform.USER.value+"����߷.*";
var msg_admin		=	"*.HI��.��Һ�!.�F�����ҡ�"+document.inputform.USER.value+"������.ϣ����Ҷ��֧����ϣ���򣹣���Ŷ������.*";
var msg_quitadmin	=	"*.��"+document.inputform.USER.value+"���ȈY��߷.���ᛒ���ҷ���!.*";
var msg_leave		=	"*.��λ:��"+document.inputform.USER.value+"��ԕ������һ��߷.���шY��Ҋ.�ݰ�ඡ�.*";
var msg_auto_spack	=	"*.��ԕЩ���r�x�_һ�Y.һ�����ͻ؁�.ԕ��Ո����.*";
var msg_back_spack	=	"*.��Һ�!.�һ؁�߷!.*";
var a_link_button = new Array
(
"�û�ע��","http://liaowan.com/USadmin/regadd.asp/",
"��������","http://www.xzzb.com/index.html",
"������վ","http://www.100joy.net/mp3/",
"������̨","http://www.npr.cn",
"������̳","http://liaowan.com/bbs/",
"��̨һ��","http://835150.bliao.com"
);
var a_vip_user = new Array
(
"*��E·��a��~",1,
"*",1,
"*ReMIX",14,
"*��qѩ�̨r��",17,
"*��qѩ�̨r��",17,
"*COCO-CHANEL",18,
"*�츻ʿ",19,
"*ˮ����",19,
"*��ɤ����",19,
"*���Ƿ����˭��ɳ",19,
"*����GE��",16,
"*�����",16,

"*�X��j�ب[",11,
"*�^��m�C�a",13,
"*�Ů���߳��",10,
"*��ʨ���������",10,
"*��ˮƿ���߰���",10,
"*",6,
"*",6,
"*",6
);
var a_name_filter = new Array
(
	"��å",
        "����",
        "����",
	"����",
	"���",
	"���đ�ʿ",
	"����",
	"��å",
	"������"
);
var a_hide_user = new Array
(
	"*",	0,
	"*",	1,
	"*",	1,
	"*",	7,
	"*",	7,
	"*",	1,
	"*",	7,
	"*",	7,
	"*",	5,
	"*",	2
);
//      �������
     var bianyi = new Array
     (
"*������˵",
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
(0,      "������˵�ھ�����",      "http://cctony.jiu8.com/leon/wuhen/pic/zc.gif",      "#FF0000",      "#FFFFFF",
1,       "������˵�F���I��",      "http://cctony.jiu8.com/leon/wuhen/pic/md.gif",      "#7401FE",      "#FFFFFF",
2,       "������˵�гɆT",     "http://cctony.jiu8.com/leon/wuhen/pic/shuaige.gif width=27 height=27",      "#1E90FF",      "#FFFFFF",
3,       "������˵Ů�ɆT",     "http://cctony.jiu8.com/leon/wuhen/pic/meinv.gif",      "#FF83FA",      "#FFFFFF",
4,       "������˵�H�ۆ�",     "http://cctony.jiu8.com/leon/wuhen/pic/0002.gif",      "#8080FF",      "#FFFFFF",
5,       "������˵����ؐ",     "http://cctony.jiu8.com/leon/wuhen/pic/0002.gif",      "#00CC99",      "#FFFFFF",
6,       "������˵��ؐ��",     "http://cctony.jiu8.com/leon/wuhen/pic/0040.gif",      "#ED70FF",      "#FFFFFF",
7,       "������˵���e",      "http://cctony.jiu8.com/leon/wuhen/pic/0040.gif",      "#0000FF",      "#FFFFFF",
8,       "������˵�^��",      "http://cctony.jiu8.com/leon/wuhen/pic/5.gif",      "#0000FF",      "#FFFFFF",
9,       "������˵����",      "http://cctony.jiu8.com/leon/wuhen/pic/5.gif",      "#000000",      "#FFFFFF",
10,      "������˵����",      "http://www.wuzhiquan.net/sucai/04/03/gif.files/239.gif",      "#2520F0",      "#FFFFFF",
11,      "������˵����С����",      "http://www.wuzhiquan.net/sucai/03/46.gif",      "#D86015",      "#FFFFFF",
12,      "������˵�������L",      "http://myweb.public.net.cn/user/yixuan/tu/1.gif",      "#800080",      "#FFFFFF",
13,      "������˵����С����",      "http://www.wuzhiquan.net/sucai/03/44.gif",      "#D86015",      "#FFFFFF",
14,      "������˵��̨�ܱO",      "http://www.wuzhiquan.net/sucai/04/02/gif.files/183.gif",      "#061850",      "#8C8F98",
15,      "������˵����",      "http://www.wuzhiquan.net/sucai/04/01/gif.files/026.gif",      "#0033FF",      "#FFFFFF",
16,      "������˵�",      "http://py.sucaiw.com/use1/gif003/gif0159.gif",      "#1E90FF",      "#FFFFFF",
17,      "�������f������H",      "http://www.wuzhiquan.net/sucai/04/01/gif.files/010.gif",      "#03482C",      "#FFFFFF",
18,      "������˵��ͳ����",      "http://www.wuzhiquan.net/sucai/04/01/gif.files/024.gif",   "#061850",      "#FFFFFF",
19,      "������˵VIP",      "http://www.wuzhiquan.net/sucai/04/01/gif.files/009.gif",  "#0000FF",     "#FFFFFF");
var a_roomlink = new Array
();
var a_linkurl = new Array
("����IE6","http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/CN/ie6setup.exe",
"�û�ע��","http://admin.bliao.com/user/reguser.htm",
"����ע��","http://www.js.bliao.com/user_reg.php",
"��԰����","http://admin.bliao.com/admin/s_admin.php",
"��Լ����","http://admin.bliao.com/admin/r_admin.php",
"��������","http://www.js.bliao.com/admin/s_admin.php",
"��������","http://peizhi.net");
var a_welcome = new Array
(
"�gӭ",	"�gӭ�����R��" + room_name + "���Z��������!.��������Y�憬�_�M!.",
"�gӭ",	"�憬�_�M��!.�e����.��[����]՜ǰ�Ῡ!.",
"�gӭ",	"�oՓ���[�����ĺ���.��" + room_name + "�����h�gӭ��!.���h�Ⱥ���!.",
"�gӭ",	"�gӭ��!.Ո����!.���c���c.һ������!.",
"�gӭ",	"��Ϣһ������?.���Y��ȱ����!.",
"�gӭ",	"�����cʲ��߀՜�볪��ѽ.���c��Ҋѽ!.",
"�gӭ",	"���Ɂ�߷!.�gӭ�gӭ!.���ڡ�" + room_name + "���ȁÐh��߷Ү!."
);
var a_flower = new Array
(
"��",	"*.��!.��w�h !.����ǩ������!.��.��҅Ć�����..��..��..�l��ż��߷.��.���ă���?.�ͺ�ż�·�����!.������ӡ��Ŷ.����.�҆�Ь.*",
"����",	"*.��z�@՜ɶ�q���㣮���q���*�q�����z捁Æ��Ć��q���㣮�q�����z�e�W�q���һ�K捨q����z�ٺ�.*",
"����",	"*.�t��r�x�x�x�x�x�x�x�x��Ϊ����x�x�x�x�x�x�x�������¨x�x�x�x�x�x�x��Ⱦ�����x�x�x�x�x�x�x�x�t��r.*",
"����",	"*.�t��r�x�x�x�x�x�x�x�x��Ϊ�а��x�x�x�x�x�x�x��������x�x�x�x�x�x�x���������x�x�x�x�x�x�x�x�t��r.*",
"ǩ��",	"*.�򳪆�̫��߷������ ������߷������o�Һ������ɡ����ۡ��ޡ�ޡ��w��̫��߷�����՜��՜�ó���Ŷ����~0~.*",
"����",	"*.�� �x�y�z�z�y�x������� �x�y�z�z�y�x�žž���� �x�y�z�z�y�x�ԭ�桻�� �x�y�z�z�y�x��^������ �x��  �x�y�z�z�y�x��.*",
"����",	"*.������/�éѩ֨r�@�t��/���@�©ҩ�~���@��՜�ṣ̌������w���?��~�֨rศt/�����ĩ�~����S�š���S/�éѩ֨r�ұw���t��/���ہ���߷.*",
"ż��",	"*.�ࡢ��ࡢ��vKi��S��_�u����u�ࡢ���С�i�i�y^��^�y�y^��^�y�y^��^�y�ࡢ���ࡢ��Ðh�ɐۆѣࡢ��ࡢ��ࡢ���i����߷Ү�ࡢ.*",
"õ��",	"*.õ��N�t���r��ˎ�N�t���r�Ϛg�N�t���r���ȋN�t���r���׋N�t���r���~�N�t���r�[�N�t���r�Y�N�t���r�܁��_�N.*",
"����",	"*.���� �����*��� �����ǰ�!.�w�h !..*������������!.*���* ̫��߷������w��՜�ó�����?.�ґ���՜���ǳ���Ŷ!.*",
"ż��",	"*.�֡�֡�֡�֡��ʋN�֡�֡��ʋN�֡�֡���֡�֡�֡�֡�ż��֡�֡�֡�֡�֡�֡�֡�֡���.ż�񡫺������w�ǡ�.*",
"����",	"*.���ͼ���!..�����!..�ó����w�hŶ!..((((((žž)))))��N!..(((((((žž))))))�t��r�����Ǩt��r(((((((((žž)))))))).*",
"����",  "*.�������嗀����K��������������嗀����K��������������嗀���� �K��������������嗀����K��������������嗀��.*"
);
var a_byebye = new Array
(
"����","*.�w՜��ĵÁ��[��!.�ҕ���Æ�.�[��!.ԕ�ճ�����.��" + room_name + "��.*��"+document.inputform.USER.value+"捿�����",
"�ߺ�","*.�w՜��ĵ�.һ·�[��!.�҂�����Æ�!.����߷��" + room_name + "��Ŷ!.*��"+document.inputform.USER.value+"捿�����"
);
var a_leave = new Array
(
"����","*.�䌍�����[.�䌍������.��Y�����ÿ�������ﶬ.�Æ�������.�����ö��.�҆��ú��ҽ��Kһ����^.��"+document.inputform.USER.value+"��e�Z��.*",
"����","*.�ȳ�����.�ܲ��˘S.���۰�..ӛס��:������δ�ɹ�.�Â�߀��Ŭ��.�ݰ�!.��"+document.inputform.USER.value+"���[��.�e����.*",
"���",	"*.���@һ.������f��:�ݰ�߷!.һ���x��Iǧ��.��֪���~�����.��Ҷౣ��!.�ݰ�߷!.��"+document.inputform.USER.value+"��e�Z��.*",
"����",	"*.����������������.�w՜��ĵð�!.�ҕ�����ǆ�.ֻ������ԕ��.����ԕ�Ҿ�����!.��"+document.inputform.USER.value+"��e�Z��.*",
"���",	"*.���Z�ĸ�.�Gˮ����.���õȵ����������~.ѩ���L�hʱ.ԕ��������һ�����ڡ�" + room_name + "����������.���ԕ��!.��"+document.inputform.USER.value+"��e�Z��.*"
);
var a_wantmic = new Array
(
"Ҫ��","*.�����ˡ�"+document.inputform.USER.value+"��Ҫ��.99999999999.��o����ѽ.*",
"Ҫ��","*��"+document.inputform.USER.value+"��9999999����������������.99999.9999.*",
"Ҫ��","*.99999999999999999�o��"+document.inputform.USER.value+"��������.�e��ӛ��.*",
"����","*.��"+document.inputform.USER.value+"��Ҫ����.99999999..��Ҫ����.99999999.*"
);

//var a_wenming = new Array
//(
//	"����",	"//alert",
//        "һ��","�y�y�y�y�y�y���сèy�y�y�y�y�y�����@�YװB�y�y�y�y�y�y����ҕ��!..",
//	"�پ�",	"��"+document.inputform.USER.value+"����ӭ������������������̨��"
//);
//var a_shuaping = new Array
//(
//	"����",	"��MB..�úܕ�ˢ��?..��"+document.inputform.USER.value+"���y�y�y�y�y�y���сèy�y�y�y�y�y���ڡ�*�p������̨�p*���bB�y�y�y�y�y�y�٨y�y�y�y�y�y�Ë�ȥ�y�y�y�y�y�yˢS��!..",
//
//	"�پ�",	"�x�y�z�z�y�x��MB�x�y�z�z�y�x�٨x�y�z�z�y�x�Ë��x�y�z�z�y�xɵ.�Ȩx�y�z�z�y�x"
//);
var a_qinghua = new Array
(
"����","**.ǰ�����T�װق�����[[30]]..�Q������Ĳ�����^.. ",
"����","**.�ہ�/�����҆��e�����ہ�/�����҆��e�^��[[30]]�������������e�`�Q����Ҳ����e�^�κ�һ�ΙC��ȥ�fһ�Ґہ�/��..",
"����","**.�o��һ��΢Ц�͉��ˣ��籡��һ���������Lһ�|���@����һƪ����˵����԰���[[30]]�·��죬��ܰ���h��..",
"����","**.������ǿգ���ԓ׌��Єӣ�[[30]]���������ᣬ�������һƬ��գ���׌���y�^��ϣ�����_�ģ���ğ����ͼ�į��ȫ�������o�ң������ָ������ߣ��L�ٴ������ӣ��������������..",
"����","**.�J�R������[[23]]���X���Y������һ�ж���ʧ�ßoӰ�oۙ��[[30]]ȡ����֮�����҂z��һ��Ěg���r��..",
"����","**.�����溣�y��ˮ..���s��ɽ���|�..ȡ���k���Ї��..�뾉Ñ��..�뾉��..[[30]]~",
"����","**.�����٧����..ӛ�����f..I will always love you..[[30]]~",
"����","**.��[[30]]�A..",
"����","**.��һ�N���X��ֻ������������Ԃ���[[30]]��һ�N��������֮���ǟo�M�ı�������һ�N׷���������܌��F�s�����oԹ�o�ڵĐۑ�[[30]]..",
"����","**.����һ��ůů�����L.����߷���M���Y�ۆ�����[[30]].����һƬ�p�ᆬ녲�.�`�@ס�Ҷ��醬ҕ��.*..~",
"����","**.�A�fϲ�g��΢Ц..�Ĵ��b���A΢Ц.[[23]].�A�fϲ�g��ӑ��..���b���Aӑ��!..",
"����","**.��s:�~�ӆ��x�_..�g���L��׷��t߀�g�䆬������.�t[[23]] ...",
"����","**.����G[[30]]..Ӯ������̾墨�..�t ",
"����","**.Can you feel my word �ۤ��Ƥ�...[[30]] ",
"����","**.�A����[[30]]�A٧����?..�Ґ��A٧�׷�?..�Aȥ��һ��..�Aȥ��һ��..�������l�Ґ��d..[[30]]",
"����","**.��������..��Ӛһ�b֩����V�A..�Һ����A..�A�յ����N?..[[30]]",
"����","**.���d����\..��٧�Z�� Ҋ��?..һֱ��һֱ��..�A���ῂ���퐜��[[30]]?..",
"����","**.�ҵ��A..��һ݅�ӵ��A..ӛ�����f[[30]]..��߀һֱ��ĬĬ�����A..",
"����","**.��������ӡ�A������..[[30]]�����Ŀ�ĬĬ���A������һ�f��..�Εr�A�u���յ�?..",
"����","**.��һ��..���Aһ�c..�ڶ���..���A��һ�c..������..�ې�����һ�c..[[23]]���Ǻܶ�ܶ�����..�Ґ����Y�b������[[30]]�A����һ�c�c..",
"����","**.�Ґ������䌍�ܺ���[[30]]..���b�|��Ҫ�A���^����һ��..���bϣ��..٧���ҵ������A������.."
);
//�����������ӡ���
var a_linkurl = new Array
(
"�ٶ�����",	"http://mp3.baidu.com",
"�ѹ�����",	"http://www.sogua.com",
"�O������",	"http://www.chinamp3.net/search/index.php",
"��Ŀ����",	"http://npr.cn",
"PARTY��Ո",	"http://class.bliao.com/partyreg.phtml",
"IP����ԃ",	"http://www.bliao.com:2000/ip.phtml"
);
//����EMOTE����
var a_emote = new Array
(
"��������","",
"èè����","//cat",
"�󆸐���","",
"�҆���߷","//poke",
"�󆖺��","",
"He�ÐhŶ","//hello",
"��Ðhѽ","//hi",
"ш���к�","//greet",
"����ЦЦ","//:)2",
"���Қgӭ","//welcome",
"��������","//hand",
"Ո���P��","//visit",
"���Iԕ�Y","//boy",
"ш�����","//:)",
"�����","//bearhug",
"���ڢ���","//sit",
"�����Ϲ�","//bow",
"��̫�͚�","//welcome2",
"��Ұlؔ","//happy",
"�M���³�","//bless",
"�K�~�옷","//birthday",
"���ҹ���","//clap",
"�󺰼���","//addoil",
"�I��õ��","//rose",
"�ᆬţ��","//milk",
"�����I","//tea",
"��߷���f","//wine",
"��ò���","//sweat",
"��Ģ����","//gzxj",
"�������","//ha",
"������Ц","//haha",
"�ɻ���","//?",
"��ʿ�^��","//cool",
"�_���Ŷ","//eat",
"������Ę","//face",
"�ñw���h","//thank",
"�ߌ��ڸ�","//gao",
"ɵɵ��Ц","//giggle",
"ɵЦ��","//he",
"�Ǻ�ɵЦ","//hehe",
"���fʲ��","//en",
"�������^","//:p",
"�@Ӡ�O��","//ah",
"�ÿ��_Щ","//shou",

"���{���","",
"�l�Đہ�","//ai",
"��w����","//@@",
"�s�ҹ��","//date",
"�赹�ѱ�","//faint",
"�w߷�^ȥ","//fly",
"��Ͷ�","//ds",
"�V�V����","//flook",
"�@��Ů��","//girl",
"�^ȥ��Ә","//go",
"ד������","//beauty",
"�������","//sing",
"���u�@��","//sleep",
"�h�G�g��","//ppp",
"�Ґہ���","//love",
"�w��՜��","//miss",
"�w��՜��","//wait4",
"���ڵȁ�","//waiting",
"�Ȇ��Nл","//wait3",
"�������","//love2",
"�f�Ґہ�","//love3",
"�����C��","//loveu",
"����գգ","//lovesee",
"��������","//lovelook",
"�����T��","//lure",
"��˯����","//night",
"������","//marry",
"�h��Ҋ��","//mm",
"���h���","//shy",
"�h�h����","//smoke",
"��������","//dance",
"�o������","//inn",
"Ĩ����Ь","//caxie",
"�p�p��","//hug",
"������","//hug2",
"������ס","//spider",
"�p�p����","//care",
"��������","//caress",
"�ۑz����","//touch",
"�p�p���^","//pat",
"���ˑ��Y","//lean",
"������Y","//jump",
"��H�وY","//kiss",
"�~���ǁ�","//kiss2",
"Ę���ǁ�","//kiss3",
"�������","//smooch",
"�p�����","//ykiss",
"��Ę�H��","//lly",
"���ǌ���","//xixi",
"�Ð���ĥ","//zhemo",
"���ҽ��","//qsister",
"��������","//qsister1",
"���ҵܵ�","//qbrother",
"���Ҹ��","//qbrother1",
"��Ƥ���","//cold",
"��ˮ����","//:(",
"����z��","//cringe",
"�ڼ灠��","//cry",
"���@�ښ�","//sigh",
"���䰲ο","//comfort",
"�����ԕ","//comfort1",
"���ȁö�","//sad",

"��򶷡�","",
"���Ǉ[��","//howl",
"������ȥ","//allen",
"����ˮŶ","//drivel",
"����ؓ��","//bad",
"ҧ���۽�","//bite",
"���@׃�B","//bt",
"���@���x","//bug",
"��������","//crazy",
"��Ɍ���","//cut",
"��Ę�ҋN","//da",
"���l�Ź�","//dog",
"�h�h Ԓ","//dove",
"�ú���˪","//drug",
"���f���f","//ds2",
"�����^ȥ","//ds3",
"���h����","//duo",
"��I���X","//faceless",
"�߷ʴ�","//fat",
"����߷��","//fear",
"����ĘĘ","//blush",
"��Ц��","//heihei",
"��Ц��","//heng",
"ԭՏ����","//forgive",
"Ϲ�I���","//grin",
"��������","//grow",
"���F�N��","//hammer",
"���ƨƨ","//handpat",
"���мt�M","//hit",
"���ɱ���","//ice",
"�҆��x��","//nolove",
"픁öǌI","//nudge",
"����Ҡa","//zap",
"����ӳ�","//tu",
"ͱʲ��ͱ","//poke2",
"��Ƥ��ˎ","//paste",
"�Q�ðl��","//pinch",
"������","//puke",
"������D","//punch",
"������","//qia",
"�٘��ŵ�","//qian",
"�Ðh�o��","//zzz",
"������Ц","//znw",
"���f����","//ti",
"�Ļ��h��","//look3",
"�\�\����","//jjww",
"��֪���^","//joe",
"�߁�ƨƨ","//kick",
"���]����","//kill",
"���t����","//look",
"�����ݷ�","//wait2",
"�ٴ�ɵð","//beaut",
"�˹�����","//breath",
"�@��ۈY","//koxia",

"��������","",
"��ȫͬ��","//agree",
"�@�ᶨ߷","//so",
"���e߷Ү","//wrong",
"�óԵ���","//bb",
"�ЇN���","//angry",
"��ȥ�}�C","//bbb",
"Ո�����","//hp",
"�����߷","//ill",
"�Һܳ���","//know",
"՜������","//fool",
"�Äe���","//wen",
"�҅�֪��","//no",
"�ҿ����","//work",
"�l��֪��","//who",
"������Ц","//laugh",
"��֪զ�f","//look2",
"Ԓ�����","//lonely",
"�Һ�ģ��","//no2",
"���ҟo�P","//noask",
"�c�^�Q՜","//nod",
"��w����","//now",
"���i߀��","//pig",
"�f����Ү","//right",
"�u߷�u�^","//shake",
"��������","//slow",
"ш��΢Ц","//smile",
"�����Ǹ","//sorry",
"����ԭ��","//sorry2",
"ԭ�¶���","//sorry3",
"�������","//stare",
"�����Դ�","//think",
"�w���h��","//tired",
"��������","//wake",
"ʤ������","//yeah",
"�ąąą�","//finger",

"���e���","",
"���ԕ��","//cu",
"�Ǆe��Ҋ","//cu2",
"ԕ���[��","//wait",
"���Û�Ҋ","//bye",
"������Ӱ","//cu3",
"������ż","//stw",
"Ո�ౣ��","//goodbye",
"���ԕ��","//goodbye2",
"�y�^����","//tear",
"��·����","//tea1",
"�]߷�]��","//wave"
);
//	����ר��
var a_admin = new Array
(
        "����",      "fnc:k_km()","color:#FF0000;background-color:#FFFF99"
);

var a_heart = new Array
(
" Ҋ","*. Ҋ�S||||||||��"+document.inputform.USER.value+"�� Ҋ�S||||||||.*",
" Ҋ",	"*. Ҋ߷||||||||��"+document.inputform.USER.value+"�� Ҋ߷|||||||.*",
" Ҋ",	"*.��"+document.inputform.USER.value+"�� Ҋ߷. Ҋ߷.�h���|||||||.*"
);

var a_bkcolor = new Array
(
"FFFFFF","fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff","9d9dff","ca8eff","AB82FF","ff88ff","ffaaaa","ccffa6","a6ffcc","b1fee9","adcafe","d5bbff","f1bbff","D752EB","FFFFCC","7BB706","CCCCFF","FFFF00","FFE000","FFC000","FFA000","FF8000","FF6000","FF4000","FF0000","FF80FF","FF60FF","FF00FF","E000FF","C000FF","A000FF","8000FF","00FFFF","00E0FF","00C0FF","00A0FF","0080FF","0060FF","0000FF","A0FF00","80FF00","00FF00","00E000","00C000","00A000","FFCC99","CCFFFF","C8D0e8","582424","FFCCFF","000000","DBF3B3"
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
	write_button("","ֱ��",6, 20,30,20,"","��ʹ�î�ǰ����ֱ���M�뱾�ҿ�ݷ�ʽ�����ղ�","addbookmark(1)");
	for (var i = 0 ; i < 6 ; i ++)
		write_newwindow_button(a_link_button[i*2],43 + 70 * i,0,70,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","�ͻ�",374,60,35,20,"","�ʻ���","autosend(a_flower)");
	write_button("","�gӭ",409,60,35,20,"","���ٚgӭ","autosend(a_welcome)");
	write_button("","���}",444,60,35,20,"","�ظ��l��","repeat_msg()");
	write_button("","��D",269,80,35,20,"","�l�͈DƬ������","insert_picture()");
	write_button("","����",304,80,35,20,"","��������","autosend(a_byebye)");
	write_button("","Ҫ��",339,80,35,20,"","����Ҫ��","autosend(a_wantmic)");
	write_button(""," Ҋ",374,80,35,20,"","��������","autosend(a_heart)");
	write_button("","��Ԓ",304,60,35,20,"","���ٷ����黰","autosend(a_qinghua)");
	write_button("","�Wַ",444,80,35,20,"","���ҾWַ\n"+room_link_url,"send_msg('�����ҾWַ:"+room_link_url+"')");
	write_changeroom_form(269,100,126);	//	������
	write_changeuser_form(397,100,208);	//	����
	write_bkcolor_select("bkcolor","����ɫ",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	if (is_online_manager())
	{
		write_button("","�¹�",5,40,30,20,"FF0000","�¹�","xiaguan()");
                write_button("reauto","���}",6, 0,35,20,"","�ԄӰl��","reauto()");
	        write_button("","����",500,0,35,20,"FF0000","����","autosend(a_wenming)");
	        write_button("","��ˢ",465,0,35,20,"FF0000","��ֹˢ��","autosend(a_shuaping)");
	        write_button("","����",570,0,35,20,"","�������L�ݽo����","document.screenForm.MIC.click()");
                write_button("","����",535,0,35,20,"00CC99","�������L�ݽo�Լ�","document.screenForm.GETMIC.click()");
		write_button("switchkick","����",339,60,35,20,"FF0000","�������˹���","switch_kick()");
		write_button("","�ʂ�",409,80,35,20,"","�ʂ����","send_msg('�ú�!.��һλ���ý���߷.Ո�����Üʂ�!.')");
		write_select_ex("playadmin","����",413,20,48,select_color,a_admin,"send_msg");
	write_singer_form(479,40,select_color);	//	����
	write_select("playemote","��������",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","����朽�",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");

		//	�Զ���������
		if (document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=�o�� title='ÿ6���Ԅ��o��' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=�o�� title='ÿ6���Ԅ��o��' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=���� title='�����˵ݽo�Լ�' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","�Ϲ�",5,40,30,20,"FF0000","�Ϲ�","guan()");
		write_button("reauto","���}",409,80,35,20,"","�Ԅӻ��}","reauto()");
	write_select("playemote","��������",480,0,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","����朽�",534,0,72,select_color,a_linkurl,"gotolinkurl(this)");
//----��ӭ��---	
 	document.write('<DIV align=center >');
	document.write('<table align=left border=1 cellspacing=0 cellpadding=3 bordercolorlight="#00CC00" style=LEFT:480px;TOP:20px;POSITION:absolute>');
	document.write('<tr><td><MARQUEE direction=up align=center onmouseout=this.start() onmouseover=this.stop() scrollAmount=1 style="HEIGHT: 70px; WIDTH: 120"><font color=#006600>���������ܡ�<br>�Ƶ�ʮ������<br>������.��ţ��.˫����.��з��.ʨ����.��Ů��.��ƽ��.��Ы��.������.ɽ����.ˮƿ��.˫����<br>��������<br>������.С����.������.�ɺ���.������<br>��������<br>��Ů��.������.�����.Ӣ����.����.�����.������.Ы����.��Ȯ��.������.������.������.������.¹����.������.Сʨ��.������.��è��.������<br>���������<br>С����.СȮ��.��ӥ��.�߷���.������.������.������.������.��������.�Ի���<br>��������<br>��̳��.ɽ����.������.ʱ����.�i����.ˮ��������ȸ��.�����.��Ȯ��.������.��β��.�����.������.�����.��΢����.��¯��.��������.������.������.�����.������.�ϼ���.��ʮ����.��������.�ž���.�س���.ӡ�ڰ���.�����.��Ӭ��.������.������.Բ����.��Զ����.�����.�����.������.��ѻ��.������.������.������.��Ͳ��.�޾���</FONT></marquee></td>');
//----��ӭ��---
		write_button("","���o",339,60,35,20,"","���ٸ��o","autosend(a_leave)");
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
			HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 3]+" style=\"cursor:hand\" >"+lists[1]+"</font></a>");
		else
			HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">"+lists[1]+"</font></a>");

		if (is_hidden_user(lists[1]) < 20)
				HTMLstr += ("<font color=#000000>�[��</font>");

		if(lists[2]==1)
			HTMLstr += ("<IMG align=absMiddle src=http://free1.e-168.cn/~dcxj/wuhen/2365.gif>");
                if(lists[2]==0)
			HTMLstr += ("<IMG align=absMiddle src=http://cctony.jiu8.com/leon/wuhen/pic/cp2.gif>");
		if(lists[2]==2)
			HTMLstr += ("<font face=\"Wingdings\" color=#00D000>(</font>");

		if(lists[3]==1)
			HTMLstr += ("<IMG align=absMiddle src=http://www.cnjwedu.net/~wuhen/cp3.gif>");

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
	parent.write_new=writelist;
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
		document.write("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
	}
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>');
        document.write('<STYLE>BODY{ cursor:url(http://music.25158.com/2.ani);}</style>')
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

	document.all.tags("TABLE")[0].cells(2).innerHTML="   ";
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
	HTMLstr +="<STYLE>BODY{ cursor:url(http://music.25158.com/3.ani);}</style>";
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
		HTMLstr += ("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr += ('<SCRIPT>');
	HTMLstr += ("function Click(){alert('�����ṩ��*������˵')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
	HTMLstr += ('</script>');
	HTMLstr += "<br><a title='��ǰ��������������'><font color=6495ED> ��ǰ�����С� </font><font color=red><B id='usercount'>0</B></font><font color=6495ED> ��λ����</font></a><br>";
	HTMLstr += "<a title=\"Ո��ע��\"><marquee bgcolor=#FFFFFF><font color=#0099FF>�gӭ<font color=red>��"+document.inputform.USER.value+"��<font color=#0099FF>���R<font color=red>��"+room_name+"��</font>�Z��������.<font color=#0099FF>Ҫ��Ո��</font><font color=red>�t�¹���</font><font color=#0099FF>��</font><font color=red>999999</font></marquee>";
	HTMLstr += "<a title='������������'><font color=6495ED> <b>�ھ��б�:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">�������ˡ�</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr>";
	HTMLstr += userlist_bottom_html;
	HTMLstr += "<br><br><a target=_blank href='http://2024.liaowan.com' title='��*�v������˵�v��'><img src=http://www.wuzhiquan.net/sucai/04/02/gif.files/127.gif border=0><br></a></body></html>";
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
	document.inputform.elements[11].value="#FFFFCC";
	document.inputform.color.options[color].selected=true;
	send_msg(msg);
//	Ĭ�ϵķ�������ɫ�ͱ���ɫ
	document.inputform.color.options[18].selected=true;
	document.inputform.elements[11].value="#FFFFCC";
}
function autosend(array)//�Զ����� array �е�һ�仰
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		msg += ".";
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
		bookmarktitle="���ġ�"+room_name+"��";
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
		bookmarktitle="���� ��"+room_name+"����"+a_user+"��";
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
	if (switchkick.value=="����")
	{
		disable_KICK(false);
		switchkick.value="����";
		switchkick.title="�������˹���";
	}
	else
	{
		disable_KICK(true);
		switchkick.value="����";
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
		document.screenForm.KEEPMIC.value = "�o��";
		document.screenForm.KEEPMIC.title = "ÿ��6���Զ�����";
		keep_mic_user = "";
	}
}

function auto_keep_mic()//�Զ�����
{
	window.clearInterval(timer_id);
	if(keep_mic_user == "" && document.inputform.WHOTO.value != "������")
	{
		document.screenForm.KEEPMIC.value = "�o����";
		document.screenForm.KEEPMIC.title = "ֹͣ�Զ�����";
		keep_mic_user=document.inputform.WHOTO.value;
		keep_mic_fnc(keep_mic_user);
		timer_id = window.setInterval("keep_mic_fnc('"+keep_mic_user+"')", 6000);
	}
	else
	{
		document.screenForm.KEEPMIC.value = "�o��";
		document.screenForm.KEEPMIC.title = "ÿ��6���Զ�����";
		keep_mic_user = "";
	}
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
		singerform.singmanage.value = "�_";
	else
		singerform.singmanage.value = "�P";
}

function singermanage()//�л��������
{
	if(singerform.singmanage.value == "�_")
		disablesingermanage(false);
	else
		disablesingermanage(true);
}

function write_singer_form(left,top,color)//�����������
{
	var ll,bw;
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');

	write_button("singmanage","�_",0,0,19,20,"","�򿪻�ر�������","singermanage()");
	write_button("addtolist","��",19,0,18,20,"","�������ֵ�����ĩβ","addsinger()");
	write_button("tolist","��",	37,0,18,20,"","�������ֵ�ѡ����֮ǰ","insertsinger()");
	write_button("removefromlist","ɾ",55,0,18,20,"","��������ɾ����ѡ�������","remove_singer()");
	write_button("addlist","��",73,0,18,20,"","����������������������뵽����������","passlist()");
	write_button("listing","����",91,0,35,20,"","������������","listsingers(0)");

	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:����,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >*�v������̨�v����</option>');
	document.write('</SELECT></form></DIV>');

	disablesingermanage(true);
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
	document.write('<form name = "change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="���_���g.ݔ�뷿�g̖\n���^�@:123456\n�ؼs���g:t1234\n���K��վ:1234.js" name="roomid">');
	write_button("","����",l, 0,35,20,"","�M�������g","new_room()");
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
	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="ݔ��������" name="USER">');
	document.write('<input type="password"  style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="ݔ���ܴa" name="PASS">');
	write_button("","����",l, 0,35,20,"","���������M��","rename()");
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
	HTMLstr += "<table width='96' border='1' cellspacing='0' cellpadding='0' bgcolor='#cae6fe' bordercolordark='#cae6fe' bordercolorlight='#ffffff' height='15'><tr><td width='140' align='center'><p align='center'><span style='font-size: 8.7pt;COLOR:red'>*�v������̨�v</SPAN></p></td></tr></table></body></html>";
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
		if(parent.v.document.f.v2vv.value == "�p����Ԓ")
		{
			parent.v.document.f.v2vv.value="�˳��p��";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		}
		else
		{
			parent.v.document.f.v2vv.value="�p����Ԓ";
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
//	�Ҽ�����
	document.oncontextmenu = new Function("return false;") ;
	document.oncontextmenu = about;

//	��Ȩ��Ϣ
function about()
{
	alert('�����ṩ��*��������');
	return false;
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
  var badword = new Array("�侫","ɵ��","���̡�","�����","����","����үү","����","�|�|","����սʿ","������","������","�~�}�|�{�z�y�x","�� Ь","��ʺ","�Ҳ�","����","������","���","��","����","����","���","����","�","满���","�$��","����","����","����","����","����","����","غ��","��Ƥ","����","��","����","����","����","����","��ʺ","������","�x�y�z�{�|�}�~","�� �� ��","SB","fuck","cao","����","�� ��","�� ��","����Ů","�д�","�д�","�ҿ�","���");
  for (var i=0;i<badword.length;i++){
//      if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){
      if (tmpmsg.indexOf(badword[i])!=-1){
      inputform.ws.checked=false;
      inputform.ws.checked=false;
      document.inputform.msg.value='������̨���������������.��ֻ˵��һ���໰���������ͳ����ڡ�*�v������̨�v��.�����ӳ��ˡ�*�v������̨�v�������ң�����';

document.inputform.color.value="0000ff";
                login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
alert('����['+a_user+']��\n��ֱ�Ǹ.�����������Ļ��к��в��ŵ����֣����ѱ������*�v������̨�v��������.�����ٴν���.����ע�ⲻҪ˵�໰.Ը���ڴ˿�����죡');		

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
		this.u1.document.write("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");
		if (auto_hide_scrollbar == 1)
			this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
		this.u1.document.write("><p class=\"p9\" align=\"left\">");
	}
	else
	{
		this.u1.document.write("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	}
	this.u1.document.write("<font color=#000000>�����桿<font color=#CC66FF>�gӭ<font color=#009999>��" + a_user + "��<font color=#CC66FF>���R<font color=#009999>��" + room_name + "��<font color=#CC66FF>�Z��������<br><font color=#000000>�����桿</font><font color=#FF0000>"+gonggao+"</font><br><font color=#000000>��ϵͳ��<font color=#CC66FF>ף����<font color=#009999>��" + room_name + "��<font color=#CC66FF>������!..</font><br>");
    this.u1.document.write("</html></head></BODY>");
}
document.oncontextmenu = new Function("return false;") ;

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
var reautowordb="���r����!..���Ԅӻ��}�Z��";
var reautoword=reautowordb;
function reauto(){
     if(!document.inputform.divs.checked){
           alert("Ո�ȴ��_����.���C�û؁�r���ܿ������ц�����!..");
           return false;
     }
     if(!reautoyn){
           reautoword = prompt("Ոݔ��Æ��Ԅӻ��}�Z:", reautoword);
     if (!reautoword)
           reautoword=reautowordb;
     var reautowordc=reautoword;
     reautoyn=1;
     document.all.reauto.value="�؁�";
     }else{
     document.all.reauto.value="���}";
     reautoyn=0;
     }
           function parent.u1.document.writeln(){
                 var msg=arguments[0];
                 parent.u1.document.write(msg+"\n");
                 if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+document.inputform.USER.value+"]")+1&&reautoyn==1){
                       user_b=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
                       if(!document.inputform.WHOTO.value==user_b||reautoword==reautowordc+" "){
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
var admins=new Array("*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*")
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
           alert("��ʲ��ǆ���������Æ�ҕ��֮���ء�") 
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
           alert("߹.IP��߹.����!..") 
           return false
     } else return true
}
screenForm.KICKIP.onclick=new Function("return kickipcheck();");
function DUMBcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("����Ҳ������?..") 
           return false
     } else return true
}
screenForm.DUMB.onclick=new Function("return DUMBcheck();");
function NOMICcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("������!.��.���߹!..") 
           return false
     } else return true
}
screenForm.NOMIC.onclick=new Function("return NOMICcheck();");  