
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
var config_place = "http://www.teamiss.org/A_U_0917/";
var room_owner="*HA-6";
var room_name="СΨ�ļ�";
var room_adminname_head="";
var room_number="326470";
var gonggao=""
var room_link_url = "http://326470.bliao.com";
var admin_place="http://www.teamiss.org/ha4/admin/";
var enable_admin = 1;
var auto_flower_time = 8;
var auto_flower = 1;
var black_roomname="";
var black_roomnumb="";
var userlist_top_html = "<B><font style=\"filter: glow(color=#009900,strength=4); Height:12pt; color:#FFFFCC; padding:1px;\">  <font size=4>С</font><font size=4>Ψ</font><font size=5>��</font><font size=6>��</font></font></B>";
var userlist_bottom_html = "<font color=#009900 >"+room_name+"��ӭ��</font>";
var userlist_bkcolor = "#ffeae4";
var userlist_bkimage = "bcf/100.jpg";
var voice_normal_color = "#00D000";
var voice_v2v_color = "#BFBFBF";
var voice_vr_color = "#00D000";
var div_screen_bkcolor = "#00D000";
var div_screen_bkimage = "bcf/100.jpg";
var voice_bkcolor = "#ffeae4";
var voice_bkimage = "bcf/100.jpg";
var input_bkcolor = "#E8F4E0";
var input_bkimage = "bcf/100.jpg";
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
	17,		"bcf/tt001.jpg",
	18,		"bcf/tt001.jpg",
	19,		"bcf/tt001.jpg", 
	30,		"bcf/tt001.jpg",
	35,		"bcf/tt002.jpg",
	46,		"bcf/tt003.jpg",
	70,		"bcf/tt004.jpg"
);
var url_popup_window = "";
var	only_registr_user = 0;
var	only_chinese_name = 0;
var default_admin_pass = "326470-666";
var auto_open_ai = 1;
var auto_open_mic = 0;
var auto_open_div = 1;
var multi_singer_list = 0;
var msg_login		=	"��������ͷ������⼰��ѧ�����http://www.teamiss.org/ha4/v-help.htm ������ִ��,�����С�";
var msg_admin		=	"��Һã���"+a_user+"���Ϲ���,������Ϊ��ҷ���,Ҫ�������Ҵ�999999:)";
var msg_quitadmin	=	"��"+a_user+"�����¹��ˣ������Ϲ�ʱ������60���ӵ��ѱ�ȡ������Ȩ���ˣ�����㻹��ʱ������ϵ��������";
var msg_leave		=	"��λ��"+a_user+"������һ����,�´κʹ�Ҽ�����Լ��http://www.829340.bliao.com";
var msg_auto_spack	=	"����Щ����ʱ�뿪һ�£�һ����ͻ�������";
var msg_back_spack	=	"��Һ�ѽ���һ����ˣ�������ʲô�أ�����Ҳ��������������";
var a_link_button = new Array
(
"��ҳ",	"http://teamiss.w11.dvbbs.net/index.htm",
"����",	"http://teamiss.w11.dvbbs.net/bbs/list.asp?boardid=24",
"����",	"http://teamiss.w11.dvbbs.net/bbs/list.asp?boardid=25",
"���",	"http://teamiss.w11.dvbbs.net/bbs/list.asp?boardid=26",
"�������",	"http://www.teamiss.org/ha4/v-help.htm",
"ͶƱ","http://www.teamiss.org/ha4/admin/showadmin.asp",
"����",	"http://teamiss.w11.dvbbs.net/bbs/dispbbs.asp?boardID=25&ID=793&page=1"
);
var a_vip_user = new Array
(
"77", 1,
"*��o����������o��", 1,
"*�뱿�椤�", 1,
"*�Y�gС�gΨ�g", 1,
"*~���7��~СΨ", 1,
"*���qCDR�r���X", 2,
"*Ī���u_�u�η�", 2,
"*�Y����^��^��Ө", 2,
"*�P�¡��ШP", 2,
"*�����ġ������", 2,
"*_���ܹ���Ա_", 7,
"*��ɫ����-��ʯ", 17,
"*�֡��������Ρ��", 17,
"*�������", 17,
"*HZ����֤�����", 18,"*HZ����֤�����", 18,"*HZ����֤�ק��", 18,"*HZ����֤Ό���", 18,"*HZ����֤�����~", 18,"*HZ����֤���Ե", 18,
"*~���36��~����", 5,
"*����35������", 5,
"*~���28��~��ɯ", 5,
"*����38������", 5,
"*����30�����", 5,
"*����20������è", 5,
"*����15��ɭ��", 5,
"*HA-15", 5,
"*��a", 5,
"*aiyer", 5,"*�����i", 5,"*��ע���û�!", 5,
"*���к�", 5,"*�Y�������Ӥ��Y", 5,"*�ֿ����uo�u������", 5,
"*HA-15", 5,
"*Oo��Oo�����ݣ��", 5,
"������", 2,
"*HA-7", 2,
"566", 2,
"*�Y�K�����өg", 2,
"*������", 2,
"SK-II", 2,
"������", 2,
"*����ʹ�-", 2,
"*�ֵ����", 7,
"*���������ġ�", 7,
"*.���.", 7,
"��",8,
"�����u���u���", 5,"�����u���u�ɡ�", 5,"����u���u���", 5,"����u���u�ɡ�", 5,"��ϲ�u���u�̡�", 5,"��u���u�ۡ�", 5,"��ϲ�u���u�ơ�", 5,"��ϲ�u���u�ǡ�", 5,"����u���uָ��", 5,"�����u���u��", 5,
"666-������", 11,"*HA-6", 11,"666-��Ϣ��", 1,"*~����6��~����", 11
);

var a_name_filter = new Array
( 
"����",
"��",
"|",
"�һ����",
"��",
"СΨ",
"��",
"��",
"��",
"HA-6",
"����",
"ha",
"YO",
"����",
"����",
"����",
"ǧ��",
"��",
"�E",
"������",
"�����L",
"ע��",
"����",
"̫��",
"�ֶ�",
"����",
"����",
"�೤",
"����",
"��˼",
"����",
"SI",
"��",
"��Ӱ",
"��",
"--",
"��",
"�Ϲ�",
"��",
"��",
"���",
"���",
"��ɽ����",
"��",
"�ܺ�",
"�������",
"��",
"���",
"һ��",
"��",
"��",
"��",
"�ְ�",
"����~",
"~����",
"����",
"Ѭ��",
"�ɤ�",
"��",
"��",
"��",
"����",
"����",
"����Ա",
"���",
"�ɻ���",
"��",
"�o��",
"����",
"�ٸ�",
"00",
"ddd",
"000",
"222",
"999",
"123",
"366",
"����",
"үү",
"����",
"����",
"����",
"˥",
"Ե��",	
"����",
"����",
"�|",
"666-������",
"��",
"ɱ",
"��",
"��",
"��",
"�����",
"ħ��",
"����",
"�ٺ�",
"88",
"ҹ��",
"ҹ��",
"���");
var a_hide_user = new Array
(
    "",              0,
    "",              1
);
//      �������
var bianyi = new Array
     (
     "*HA-6",
     "*�ֵ����"
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
0,"��������","326470/zc.gif width=28 high=20","#FFc2e","#FFFFFF",
1,"��������","326470/2004618191745.jpg",   "#FF00FF","#FFFFFF",
2,"����������","326470/20047121648.gif width=20 high=18",	"#0000FF","#FFFFFF",
3,"��������","326470/200442903343.gif",   "#ff00ff","#FFFFFF",
4,"��������","326470/200442903343.gif width=32 high=0",   "#ff1493","#FFFFFF",
5,"���Ҽα�","326470/200442903343.gif","#9B30FF","",
6,"���Ҽα�","326470/200442903343.gif","#9B30FF","",
7,"ע���û�",	"326470/7.gif",	"#007575",	"#FFFFFF",
8,"δע���û�","326470/t023.gif",   "#9B30FF","",
9,"����","326470/1212.gif",   "#9B30FF","",
10,"����վ��,����","326470/20047130044.jpg",	"#FF00FF","#FFFFFF",
11,"��������","326470/gif.gif width=22 high=0",	"#0000ff","#ffffff",
12,"��������","326470/txa.gif width=27 high=0",   "#9900ff","#FFFFFF",
13,"���Ҹ�����","326470/20047130044.jpg width=20 high=0",   "#9900ff","#FFFFFF",
14,"�����Ǽ�����,�����Ϲ�ʱ��","326470/guanli.gif width=22 high=0",  "#0000FF","#FFFFFF",
15,"����߹�,�����Ϲ�ʱ��","326470/gg.gif width=23 high=0",   "#0000FF","#FFFFFF",
16,"���Ҹ߹�","326470/gg.gif","#ff00ff","#FFFFFF",
17,"���ҹ���","326470/200442903304.gif","#ff00ff","#FFFFFF",
18,"���Ҹ���","326470/laqin.gif",   "#ff00ff","#FFFFFF",
19,"���ұ�������,Ȩ��Ϊ0������","326470/20047121648.gif width=21 high=0",   "#ff1493","#FFFFFF"
);
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
"СΨ�ļ�",	"326470",
"��ɸ���","537940",
"�� �� ��","280534",
"�� �� ԰","397557",
"--------","326470",
"�������","343398",
"�� �� ��","327620",
"�Ұ����","290093",
"��������","326470"
);
var a_linkurl = new Array
(
"�û�ע��", "http://admin.bliao.com/user/login.htm",
"�������", "http://cncsg.nease.net/blueskyvoice.zip",
"�������", "#ChangeNameForm",
"�û�ע��",		"http://admin.bliao.com/user/reguser.htm",
"�ٶ�����",	"http://mp3.baidu.com/",
"�ѹ�����",		"http://www.sogua.com",
"��������",		"http://www.chinamp3.net/search/index.php",
"���ĺؿ�",		"http://card.silversand.net/",
"��������",	"http://www.163888.net/search/",
"DJ����",	"http://north.china57.com/index.asp",
"��������", "http://admin.bliao.com/admin/sighttop.php",
"��������", "http://chat.yinsha.com/voice.htm",
"��������", "http://rekangtou.wx-e.com/chat/guangqu.htm",
"Ӱ������", "http://rekangtou.wx-e.com/chat/vcd.htm",
"�û�ָ��", "http://www.bliao.com/help/help51.htm",
"���Ҳ�ѯ", "http://admin.bliao.com/admin/s_dwhere.php",
"��ʱ����", "http://202.96.140.82/party.phtml",
"��������", "http://admin.bliao.com/admin/s_doadmintor.php",
"��¼����",	"http://202.96.140.71/cgi-bin/download1.pl",
"���üӹ�",	"http://admin.bliao.com/admin/s_admintor.php"
);
var a_welcome = new Array
(
	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
	"��ӭ",	"^_^*��" + room_name + "��*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡��������",
	"��ӭ",	"�������ߵ����ĺ��ǡ���" + room_name + "����Զ��ӭ������Զ�Ⱥ�������Զ�������������",
	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը����������Ŀ��ģ��ĵĿ��ģ����Ŀ��ģ�����",
	"��ӭ",	"����������ѽ����ӭ��ӭ���������ڡ�" + room_name + "������,������һ���ĵȴ���ǣ�ң����ѣ�����"
);
var a_nov = new Array
("��",	"��ȷ���Ƿ��Ѿ������½ǵ�������ť����˷簴ť��","����",	"û������ѽ,û������ѽ,���������������",	"��",	"�����˷�û������ѽ,�ոչ���Ա�����������,����ϵͳ��ʾ����δ����������˫��״̬��",	"����",	"�����˷�û������ѽ,�ոչ���Ա�����������,��ʼ���޷�˳����ɵ���Ķ���,���Ժ��������Ա��999��һ�ԡ�");
var a_mm = new Array
("���",	"����---�Ҿ��á�����������̫����,���ٽ������ֵ����������µ�СЩ��",	"���",	"����---���ġ���������������̫����,������������������򳪸��������",	"���",	"������---�ҵ�����챬����,������������̫����,�鷳�뽫���ֵ�������СЩ��",	"���",	"����---������������̫����,�мٳ��������!!����...���_�У���� ");
var a_flower = new Array
(
	"��",	"��!������� * ������ǩ�����ɣ���..��Ҳ�Ҫ����..��..��..˭�Ȱ�����..��~~ǩ�Ķ��أ�..��ǩ���·��ϰɣ�Ҫ����ӡ��Ŷ~~",
	"ǩ��",	"��~����̫����~�����~�����Ķ�����~����~����ǩ������~ �����~��~��������~����̫����~�����~�����Ķ�����~0~",
	"����",	"������---�������ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ��",
	"����",	"����������ð�Ŷ�����������ˡ���ð�Ŷ������ð�Ŷ�����ð�Ŷ������žžž�����",
	"����",	"�����ң���רҵ����~~~~�רt��...��r�רt��r�����ǡ���(((((žž)))))�רt�רtǩ����ǩ����)�٣�����~~~~���� **�ҵ�Ь�أ��۾��� ",
	"õ��",	"õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���㻨�t���r �񻨡������ϻ�",
	"����",	"����� �����*���� ����������������*���* ̫���ˣ��������һ����Ǹ��ǳ��İ�����* ~",
	"ż��",	"�������*�����ߡ֡���ʻ��֡���ʻ�ż��ǩ���� �� *������ż��ǩ���� ��*������",
	"�ٺ�",	"���רt��r�רt��r�����ǡ��רt��r�϶�����רt��rˮ�ɻ����רt��r�רt��rҰ�ٺɡ�t��r��",
	"���",	"�������~~�t���r���ƣ�����PA PA������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦������",
	"����",	":���������嗀����K*���������������嗀���� �K *���������������嗀����K",
	"žž",	"*^_^*��ž�� *^_^*��ž��  *^_^* *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*",
	"��",	"�ࡢ�ࡢ�ɡ��ࡢ�ࡢ���ӣࡢ�ࡢ�֣ࡢ�ࡢ�ӣࡢƮ�ࡢ�ࡢ�ӣࡢ�ࡢƮ�ࡢ��ӡ��ࡢ��",
	"ǩ��",	"����o����.��((((ž)))) .����o����.����*�����o����o����.�� .����o.žž��o����.����.����o����.����.����t���r",
	"����",	"�x�y�z�z�y�x���  �x�y�z�z�y�x���x�y�z�z�y�x��� �x�y�z�z�y�x��� ��",
	"����",	"�t���r����������������:��Ÿר�ݣ������������t���r�x�x�x�x�t���rõ�廨��Ϊ�㿪�t���r�x�x",
	"����",	"~*~�л�~*~�t�t��r�r~*~����~*~�t�t��r�r~*~��·~*~�t�t��r�r~*~С��è~*~�t�t��r�r~*~����~*~�t�t��r�r~*~����~*~ ",
	"õ��",	"�x�x^��^�x�x^��^�x�x�㣮��*���*���㣮����u��q���㣮��*����.�ޣ��޺���:��Ÿ�s�����u����ú���Ŷ�q����",
	"����",	"��ࡢ�㺣��:��Ÿ������Mר�ݣࡢ��t��r�ࡢ���*��ࡢ��t��r�ࡢ���*��ࡢ���*��ࡢ���*��ࡢ��t��r",
	"����",	"�㣮��� ����*���� �����* ������������� �ӣ���� �� * �ӣ��� *���㣮�㣮��� ��* �ӣ��� ���� *���� ���ӡ� ",
	"ż��",	"���ࡢ�ࡢ���������ơ��ࡢ�ࡢ���ӣࡢ�ࡢ�ࡢ��ӡ��ࡢ�ࡢ�ࡢ�ӣࡢ�ࡢ�ࡢ��ӡ��ࡢ��",
	"����",	"�㡤������ɡ��������Ҹ��㡤��������ҵ�ȫ����������Ŷ������ ���ҵĿ��֡������㡤����",
	"�ٺ�",	"��*��*��*����Ůɢ����*��*�����*��r��*��*���*��*���*��r��*��*��r *���",
	"����",	"��*�u�v��*��������֪����*��*�v�u��*��㺣ŸΪ���ڷ���q���*��*���*��*���u�v�����*�v�u *��",
	"����",	"�x�x�x�x�x��Ϊ����x�x�x�x�x�x�������¨x�x�x�x�x��Ⱦ�����x�x�x�x�x",
	"���",	"�q�Ҩr `�q���r `�q�Ϩr �q��r�q�˨r�� �������㣮�㡤���� ������ ��������㣮��� �����㣮��v�u.`. �v�u.`. �v�u.`.",
	"����",	"�ࡢ�����ӣࡢ���ࡢ���ࡢ���ࡢ ���ࡢ ���ࡢ���ࡢ���ࡢ���ࡢ ���ࡢ���ࡢ���",
	"����",	"~��~��ࡢ��õ��ࡢ��.~��~��ࡢ������ࡢ��.~��~��ࡢ��õ��ࡢ��.~��~��ࡢ����߹�ࡢ",
	"žž",	"��=========== ž------ž- -����Ϊ������*���㣮��������������ʻ�===========",
	"ˮ��",	"�t��r�x�x�x�x�x��Ϊ�а��x�x�x�x�x��������x�x�x�x�x���������x�x�x�t��r",
	"ĵ��",	"��ࡢ��ࡢ��vKi��S��_�u����u�ࡢ��ࡢ��ࡢ��С����y^��^�y�y^��^�y����ÿɰ�Ӵ�ࡢ��ࡢ��",
	"ˮ��",	"õ�廨���רt��r�����ǡ��רt��r�϶�����רt��r�פרt��rˮ�ɻ����רt��r�רt��r",
	"ĵ��",	"* *����ĵ����� *�ջ��� * *ҹ������ĵ����� *�ջ��� * *ҹ������������* *����һ��һ����һ���"
);
var a_byebye = new Array
(
	"����","�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬"+ room_link_url +"��������Ŷ~��",
	"�ߺ�","�����᲻�ã�һ·�ߺã����ǻ������~~~~~���пճ�����"+ room_name +"�������ź��𣡣�"
);
var a_leave = new Array
(
	"����",	"��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
	"���",	"��̾һ��,�����˵��:�|���ݰݡ��˨��|һ�������ǧ��,��֪�����ٷ��.�����ȥ��,��Ҷౣ�ب|���ݰݡ��˨��|�����к�������еĻ��������ٶ������롤����������",
	"���",	"��ɽ���ģ���ˮ������ɽ��ˮ����������ڣ����õȵ����������գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);
var a_wantmic = new Array
(
	"Ҫ��",	"��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999",
	"����",	"��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999"
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
"����","���ʺ�ף������������������ϵ��ʺ��ף����Ը�ҵ�ף��������һ�칤��������ƣ�ͣ�Ը���ĺͿ��ְ���������",
"����","�����ף������Ը�ҵ�ף��������������ȥ���������Ŀ��֣����������Ц����������һ���������ܵ�������ϵ�ף����",
"����","���������ۡ�������������������Ϊ���������ɡ��������������ۣ�����Ҫ��������ԣ���������ס����֣�����ů����δ�ı䡣",
"����","����ͬ�߹���������ͬ���֣�����ͬ���ܣ����ǻ���ͬ�����ڴ�������ͬ���꣬���ǹ�׷���������ͬһ���İ���",
"����","��������ˡ�������̬�򷽣�������ˣ��������㣬�����߻�������������Ů�ˣ�����һ�����˰��Ͳ���ķ羰��",
"����","���������顿������ãã��˭˵���������飿˭˵����̫��ã�ֻҪ�������Ľ�������������������ڣ�����Ҳ����������ܰ�ļ�԰��",
"����","���ѵ�֪�����������ѵü�֪����ǧ��֪�������١������޵�ͬ������ǧ���޵��߹���������飬�������ӡ�",
"����","���������顿��������Ŀ����ڴ��������ҳ��ķ�������������Ĺ�;�����������ô���氡��һ�ղ�������������",
"����","��������Ե����һ���Ӿ�����һ�������飬һСʱ����ϲ����һ���ˣ�һ����ܰ���һ���ˡ�����Ҫ��һ����ʱ�����ȥ���ǡ�",
"����","��������������ȴ���һ���ֻ꣬Ϊ����������ż������һɲ��ײ���Ĺ�â������������������һ����",
"����","���������顿������һ��΢Ц�͹��ˣ��籡��һ���������һ�ƣ������һƪ��˵����԰����·��죬��ܰ��Ʈ�ݡ�",
"����","���������顿����һ�ָо���ֻ�����������Դ�����һ���Σ�����֮�����޾��ı�������һ��׷����������ʵ��ȴ������Թ�޻ڵİ�����",
"����","������ףԸ����������ԣ��벻Ҫ���ҵ�ף���е��ᷳ��������ܣ���ʱʱ�����������ң����Ը�⣬�����ҷ������ϲŭ���֣�",
"����","���������顿����ô�������㣬�������Լ�����Ȼ��������ȥ����Ϊ��ɰ�������������������ģ���������Σ���Ը����Ը�ѡ� ",
"����","��Ц��������������һ��Ϸ������ԹԹ�ֺα�̫���⣻��������������������ȥ��������Ե�����پۣ��һӻ��䣬��ǰ�ߣ��������ڷ����",
"����","���������顿�����üĿ֮�䣬�����ҵİ��������һ���ƶ��������ҵ����ߣ������ҵ�ʫƪ��������ǧ��Ҳ����롣",
"����","���������顿�������ǰ�����ɣ�һ�������յĶ��̣����������ӵ����飬һ������ӵ�������ۣ���ĺ����㡣",
"����","���������㡿������һ��磬���������ԹԹ��Ҳ������ң�û��˭��˭������������ᣬ��������ĺã����������˵Ĳ��ࡣ",
"����","���������ҡ���������ǿգ�Ӧ������ж������������Ϊ�㲼��һƬ��գ���׼���ѹ���ϣ���㿪�ģ���ķ��պͼ�į��ȫ���������ң�ǣ���ָ������ߣ����ٴ���������������������ҡ�",
"����","������ϧ�㡿����Ҫ�����㣬ֱ���о�������ƣ��������µĺۼ���ֱ��ʧȥ������ȫ������Ҳ���Է����������ܷ����㣻��ֵ����ȥ����ȥ��ϧ��",
"����","�������Ҹ�������ϰ���Բ����ԣ��˿�������ӵ��Ҳ����ʼ���ա�ף��������֣���ʹȴ���ڲ����С�����һ��Ҫ�����Ҹ���"
);
var a_thank = new Array
(
	"����", "�����֣����Խ�����??999��",
	"����", "�����ú��ۣ�������Ҳ�볪���׸���999��",
	"����", "������ѽ��������ѽ��������ѽ999��",
	"����", "����Ҫ�󣬽���ѽ������Ҫ�󣬽���ѽ999��",
	"����", "����Ҫ����Ҫ����׸衿����Ҫ����Ҫ����׸�999��"
);
var a_heart = new Array
(
	"����",	"|||||||||||||||||||||||||||||||||||||||||||||",
	"����",	"�������ˡ��������ˡ��������ˡ��������ˡ��������ˡ��������ˡ��������ˡ�",
	"����",	"�����ˣ���������������������ˣ���������������������ˣ����������������"
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
	"������ַ",	"��������ַhttp://" + room_number + ".chat.yinsha.com","color:#009900",
	"�뿪����",	"����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ!!","",
	"��������",	"����!�װ�������,���ǵ������,������û������,�����ٵ���һ�����,��������Ҫ�����?","",
	"�������",	"����������⼰��ѧ�����http://www.teamiss.org/ha4/v-help.htm ","color:#6600ff",
    "���߿���",      "fnc:k_km()","color:#FF0000;background-color:#FFFF99",
	"�������",	"fnc:guan()","color:#0000FF;background-color:#FFFF99",
	"�˳�����",	"fnc:xiaguan()","color:#FF0000;background-color:#FFFF99",
	"��ʼ����",	"fnc:disablesingermanage(false)","color:#0000FF;background-color:#FFFF99",
	"�ر�����",	"fnc:disablesingermanage(true)","color:#FF0000;background-color:#FFFF99",
	"��������",	"fnc:disable_KICK(true)","color:#0000FF;background-color:#FFFF99",
	"��������",	"fnc:disable_KICK(false)","color:#FF0000;background-color:#FFFF99",
	"����׼��",	"���ã���ӭ��������" + room_name + "��������һ������������,��׼��!!!!лл���ĺ���,��������ҵ����ֱ��Ͻ�Ŀ����,лл!!","",
	"��������",	"����**����������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,���򽫱����������,лл����!!!!! ","",
	"���Ծ���",	"���㲻Ҫ˵һЩ�������֡������������ַ���ظ��������ϵ�ˢ���ߡ�������໥�����Ϲ��ҽУ��پ���ʱ��Ҫ�������ˣ���","",
	"���㻻��",	"���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ�������","",
	"�������",	"�������ڲ�Ҫ����Ƶ��Ա���֣�������������˵���������ģ������ڼ佫�����Υ���涨�ߡ�лл����","",
	"��ֹˢ��",	"//jg","",
	"ϣ������",	"��ӭ����������" + room_name + "������ϣ�������������ֻ��������Ա��999������Ա����󽻵������ϵģ�ף����������Ŀ��ģ���","",
	"�Ϲܾ�˫",	"����!��ӭ��ĵ���,�Բ���,������Ϊ��������,���ܽ�������˫������.......ף����������Ŀ��ľ���!!лл���_�У���� ��","",
	"�����ٳ�",	"����!лл��Ϊ������ϵĸ���,�Ƿǳ��Ķ���,�����ʱ����Ϊ�������һ����,���Ǹ�л��..ͬʱҲ��ӭ������!! ","",
	"���󲻺�",	"����!�������������������������̫��,�����������Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл.","",
	"Ҫ������",	"��Һã���ӭ��������" + room_name + "������Ҫ�������������߹���Ա��9999����!�м���������,����ˢ������!���ǻ�Ϊ���ź�˳��!","",
	"��������",	"fnc:hwin()","color:#ff0099;background-color:#663399",
	"��̨����",	"fnc:mani()","color:#ff0099;background-color:#663399"
);

//����ͼƬ����
var a_picture = new Array
(
"������","",
"����̫����_���ƶ��������С�ƶ�������~~��Լ��������ky��λ��_Լ1/5λ��_","n1/vmls-2.jpg",
"һ����~~","n1/e003.gif",
"Ϊ������","n1/e013.gif",
"�����ʻ�","n1/e016.jpg",

"��ӭ��","",
"��ӭ��~~","n1/e012.gif",
"��    ��","n1/ws.gif",
"�� �� ��","n1/20_2396_103.gif",
"��ȿ���","n1/rqmmx4.gif",
"�� �� ��","n1/j003.gif",
"лл��~~","n1/0004.gif",
"Ůлл~~","n1/0032.gif",
"��лл~~","n1/0014.gif",
"ף����~~","n1/BANNER.gif",

"�׻���","",
"��   ��~","n1/gz.gif",
"���ú�~~","n1/d04.gif",
"���ú���","n1/rqmmx1.gif",
"����S��~","n1/e020.gif",
"����Ү~~","n1/e021.gif",
"�����ʻ�","n1/0045.gif",
"���Ͱ�~~","n1/jiayou.gif",
"�������","n1/mgy010.jgp",
"���쿪��","n1/mgy003.jpg",
"��������","n1/mgy004.jpg",
"�����³�","n1/mgy005.jpg",
"�Ҹ�����","n1/mgy007.jpg",
"��ֿ����","n1/mgy009.jpg",
"��������","n1/t10.gif",
"������~~","n1/tql.gif",
"����DJ~~","n1/0012.gif",
"ŤѽŤ~~","n1/z6.gif",
"Ϊ�����","n1/z15.gif",

"������","",
"��������","n1/meiyan.gif",
"��������","n1/e011.gif",
"�Ұ���~~","n1/e002.gif",
"��������","n1/a43.gif",
"����~~~~","n1/27.jpg",
"������~~","n1/bbn.gif",
"������~~","n1/d001.gif",
"��S��~~~","n1/xph-1.gif",
"�ݺ�����","n1/e014.gif",
"I LOVE","n1/e015.gif",
"����һ��","n1/ysbn.jpg",
"һ������","n1/e005.gif",
"�ÿ���Ӵ","n1/0008.gif",
"����~~~~","n1/y02.gif",
"��������","n1/y03.gif",
"Ц������","n1/e006.jpg",
"�������","n1/potg.gif",
"һ���~~","n1/wch.gif",

"������","",
"����Ҳ~~","n1/BJXX.gif",
"���ػ�??","n1/dn.gif",
"ɶ��˼��","n1/e008.gif",
"��   ��!","n1/gn.gif",
"��ԩ����","n1/0038.gif",
"����Ӵ~~","n1/e017.gif",
"�� Ҫ ѽ","n1/0002.gif",
"���۸���","n1/e007.gif",
"��ȶ���","n1/e009.gif",
"С��~~~~","n1/xiaoya.gif",
"����С��","n1/e001.gif",
"С����~~","n1/xy.gif",
"����~~~~","n1/0017.gif",
"�ҵ�~~~~","n1/0005.gif",
"����~~~~","n1/rqmmx5.gif",
"����~~~~","n1/qiao.gif",
"�ҿ�~~~~","n1/0029.gif",
"�Ҵ��~~","n1/wdk.gif",
"�������","n1/0009.gif",
"��~~~~��","n1/0023.gif",
"��������","n1/0007.gif",

"������","",
"�������","n1/0010.gif",
"�� �� ��","n1/0011.gif",
"�� �� ��","n1/0003.gif",
"����PP~~","n1/dapp.gif",
"����~~","n1/jc02.gif",
"������~~","n1/jc08.gif",
"ը��~~~~","n1/1035.gif",
"ҧ��~~~~","n1/1301.gif",
"ʩ��~~~~","n1/1311.gif",
"����~~~~","n1/119.gif",
"����~~~~","n1/0031.gif",
"�Բ�����","n1/0039.gif",

"������","",
"����أ�","n1/e004.gif",
"�    ˯","n1/keshui.gif",
"վס~~~~","n1/gr3.gif",
"�ټ���~~","n1/0006.gif",
"�ݰ�~~~~","n1/zaijian.gif",
"�һ�����","n1/e018.gif",
"�������","n1/e019.gif"
);
var a_bkcolor = new Array
(	"FFFFFF",	"fdd242",	"F4FFFF",	"F7ECF0",	"f8fead",	"D8DEF8",	"FFFF99",	"a0e4a0",	"80dbd7",	"CCCCFF",	"eaadfe",	"ffacd8",	"9bcfff",	"75bdff",	"F1EEFF",	"9d9dff",	"CCFFFF",	"ffaaaa",	"ccffa6",	"F5FFF4",	"b1fee9",	"a6ffcc");
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
	write_button("","ֱ��",41, 0,35,20,"","��ʹ�õ�ǰ������ֱ�ӽ��뱾�ҵĿ�ݷ�ʽ�����ղ�","addbookmark(1)");
	 strSPANdivs = '<span class="p9">����';
        strdivs=document.inputform.divs.outerHTML;
        document.inputform.divs.outerHTML="";
        document.all.tags("span")[5].innerText="" 
        document.all.tags("span")[4].outerHTML="";
        document.inputform.as.insertAdjacentHTML("AfterEnd",strdivs);
        document.inputform.as.insertAdjacentHTML("AfterEnd",strSPANdivs);
	if (is_online_manager())
	{var albl=a_link_button.length/2-2;}else {var albl=a_link_button.length/2;}
	for (var i = 0 ; i < albl; i ++)
	write_newwindow_button(a_link_button[i*2],76 + 66 * i,0,66,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","����",6,39,30,20,"","�������뱣���һ�仰","dealstorewordclick()");
	write_button("","�ͻ�",374,60,35,20,"","�����ʻ�����","autosend(a_flower)");
	write_button("","��ӭ",409,60,35,20,"","���ٻ�ӭ","autosend(a_welcome)");
	write_button("","�ظ�",444,60,35,20,"","�ظ��ϴεķ���","repeat_msg()");
	write_button("","��ͼ",269,80,35,20,"","����ͼƬ��������","insert_picture()");
	write_button("","����",304,80,35,20,"","��������","autosend(a_byebye)");
	write_button("","Ҫ��",339,80,35,20,"","����Ҫ��","autosend(a_wantmic)");
	write_button("","����",374,80,35,20,"","��������","autosend(a_heart)");

	write_button("","�黰",304,60,35,20,"","���ٷ����黰","autosend(a_qinghua)");
	write_button("","��ַ",444,80,35,20,"","������ַ\n"+room_link_url,"send_msg('��������ַ��"+room_link_url+"')");
	write_bkcolor_select("bkcolor","����ɫ",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","ͼƬ���",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","��������",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","��������",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_changeroom_form(269,100,126);//	������
	write_changeuser_form(397,100,208);//	����
	if (is_online_manager())
	{
	    	    write_newwindow_button(a_link_button[10],4,18,32,20,"",a_link_button[10] + "\n" + a_link_button[11],a_link_button[11],"","");
		if (auto_flower == 1) 
		write_flower_number(460,0,35,20,"�Զ�����һ���������ʻ�����");
		write_button("send_f","�ʻ�",425,0,35,20,"","���ٷ����ʻ�����","a_f()");
        write_button("","��",503,0,17,20,"","����������̫����","autosend(a_mm)");
		write_button("","�¹�",6,18,35,20,"","�����¹�","xiaguan()");
			document.write("<scri"+"pt src=\"http://www.teamiss.org/ha4/pobot-326470.js\"></scri"+"pt>");
    	write_singer_form(479,20,select_color);//	����
    	write_button("Az_y","ӭ��",440,20,35,20,"","�㿪���ϵͳ���Զ���ӭ�ս���������","Az_yy()");
        write_button("reauto","�Ը�",6, 0,35,20,"","�Զ�����","reauto()");
        write_button("","����",520,0,35,20,"#0000FF","����˷�ݸ��Լ�","document.screenForm.GETMIC.click()");
        write_button("","��",555,0,17,20,"","��������","autosend(a_nov)");
	    write_button("","����",570,0,35,20,"","����˷�ݸ�����","document.screenForm.MIC.click()");
		write_button("switchkick","׼��",339,60,35,20,"#ff0000","�������˹���","switch_kick()");
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
	    	    write_newwindow_button(a_link_button[10],4,18,32,20,"",a_link_button[10] + "\n" + a_link_button[11],a_link_button[11],"","");
		if (auto_flower == 1) 
		write_flower_number(570,0,35,20,"�Զ�����һ���������ʻ�����");
		write_button("send_f","�ʻ�",535,0,35,20,"","���ٷ����ʻ�����","a_f()");
		write_button("","�Ϲ�",6,18,35,20,"","�����Ϲ�","guan()");
		write_button("","����",479,20,35,20,"","���볪��","send_msg('��ﰦѽ�����λ���Ѻ����찡~~~~~~~~~������Ϊ�����ǳ��׸�ò���~��������ͻ���~~���')");		
        write_button("","����",510,20,35,20,"","�������","autosend(a_thank)");
    	write_button("","��л",541,20,35,20,"","��л����","send_msg('���лл���лл���лл�����лл����ҹ���~�����Ҫ��ҪҲ���׸谡���')");
    	write_button("","����",572,20,35,20,"","��������","send_msg('���лл���ָ��ҵ����������Ȱ����ջ�ȥ�ɡ��лл��~~~��7777��')");		
		write_button("reauto","�Ը�",409,80,35,20,"","�Զ��ظ�","reauto()");
		write_button("","���",339,60,35,20,"","���ٸ��","autosend(a_leave)");
		write_select("linkroom","��������",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}
function dealstorewordclick() 
{ if(document.inputform.msg.value!="") storedaword=document.inputform.msg.value; 
if(document.inputform.msg.value=="") document.inputform.msg.value=storedaword; } 
function hwin()//�����¼
{open_new_url("http://"+parent.window.location.hostname+"/cgi-bin/download1.pl","","");}
function mani()//��̨����
{open_new_url(admin_place+"admin.asp","","");}
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
		}}
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
			HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">"+lists[1]+"</font></a>");
		if (is_hidden_user(lists[1]) < 20)
			HTMLstr += "<font color=#FF0099>��</font>";
		if(lists[2]==1)
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_normal_color+">(</font>");
		if(lists[2]==2)
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_v2v_color+">(</font>");
		if(lists[3]==1)
			HTMLstr += ("<IMG align=absMiddle src=http://www.teamiss.org/A_U_0917/bcf/v12_3.gif>");
		HTMLstr += "</div>";	}
	parent.r.listhtml.innerHTML = HTMLstr;
	parent.r.usercount.innerText = user_array.length;	}
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
		document.write("BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#F9D9DE;scrollbar-face-Color:#F9D9DE;scrollbar-3dlight-Color:#F9D9DE;scrollbar-darkshadow-color:#F9D9DE;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#fdf4d5;SCROLLBAR-TRACK-COLOR: #F9D9DE;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
	}
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>');
        document.write('<STYLE>BODY{ cursor:url(http://js.205449.com/2.ani);}</style>')
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
	HTMLstr +="<STYLE>BODY{ cursor:url(http://www.teamiss.org/A_U_0917/326470/3.ani);}</style>";
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
		HTMLstr += ("BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#F9D9DE;scrollbar-face-Color:#F9D9DE;scrollbar-3dlight-Color:#F9D9DE;scrollbar-darkshadow-color:#F9D9DE;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#fdf4d5;SCROLLBAR-TRACK-COLOR: #F9D9DE;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr += "<br><a title='��ǰ��������������'><font color=000000> ��ǰ������ </font><font color=red><B id='usercount'>0</B></font><font color=000000> λ����</font></a><br>";
	HTMLstr += "<a title='������������'><font color=000000> <b>�����б�:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr>";
	HTMLstr += ("<br><br><a title=\"�Լ�����ʹ�õ�����\"><font color=#FF0000 >[" + a_user + "]</font></a>");
	HTMLstr += "<br><br><a target=_blank href='http://www.teamiss.org' title='teamiss web\nhttp://www.teamiss.org'>����֧��<br>*HA-6<br>QQ46484540</a></body></html>";
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
		alert('����['+a_user+']��\n����ѡ�������ֻ����ʹ��ע�������룡\n��������ע�������뱾���䣬�����ǰ���ȡ���������룡');
        top.location.href = 'http://www.teamiss.org/ha4/mreg.htm';
	}
			if (a_user.length<2){
           login_succeed = false;
          controlForm.LEAVEIT.onclick();
           alert('����['+a_user+']��\n��ֱ�Ǹ������ô��������̫����');
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
	document.inputform.color.options[3].selected=true;
	document.inputform.elements[11].value="#FFFFFF";
}
flowercolor=2;
function autosend(array)
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
	msg += "��"+a_user+"�͡�";
	send_msg(msg);}

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
function write_flower_number(left,top,width,height,title)
{
document.write("<DIV align=left style='left:"+left+";top:"+top+";width:"+width+";height:"+height+";position:absolute;'>");
document.write("<input type='text' name='flower_num' style='left:"+left+";top:"+top+";width:"+width+";height:"+height+";color:"+input_msg_color+";background-color:"+input_msg_bkcolor+"'");
document.write(" value='12' maxlength='2' title='"+title+"'></DIV>");
}
function send_flower()
{
if (auto_flower == 0) u=document.inputform.WHOTO.value;
var cur_user=document.inputform.WHOTO.value;
var cur_input=inputform.msg.value;
	c202=document.inputform.color.value
	flowercolor=flowercolor+1
	if (flowercolor>21){flowercolor=2}
	document.inputform.color.value=document.inputform.color.options[flowercolor].value
lastchoice ++;
if (lastchoice >= (a_flower.length / 2))
  lastchoice = 0;
var msg = a_flower[lastchoice * 2 + 1];
msg += "��"+a_user+" ר�á�";
parent.cs(u);
send_msg(msg);
parent.cs(cur_user);
inputform.msg.value=cur_input;
}
function auto_send_flower()
{
if (auto_flower == 1) 
{
if (flower_num.value>0)
{
send_flower();
flower_num.value-=1;
}
else {clearInterval(timeoutID);flower_num.value=12;send_f.value="�ʻ�";}
}
else if (auto_flower == 0) send_flower();
}
function a_f()
{
if (auto_flower == 1)
{
if (send_f.value=="�ʻ�")
{
send_f.value="ͣ��";
flower_state=true;
u=document.inputform.WHOTO.value;
send_flower();
flower_num.value-=1;
if (flower_num.value>0)
timeoutID=setInterval("auto_send_flower()",auto_flower_time*1700);
else {send_f.value="�ʻ�";flower_num.value=30;}
}
else if (send_f.value=="ͣ��")
{
send_f.value="�ʻ�";
flower_state=false;
clearInterval(timeoutID);
flower_num.value=12;
}
}
else send_flower();
}
function end_a_f(){
send_f.value="�ʻ�";
flower_state=false;
clearInterval(timeoutID);
flower_num.value=12;
}
function send_msg(msg)//����
{
	if(msg != "")
	{
		inputform.msg.value=msg;
		if (checksay())
			document.inputform.submit();
	}}
var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "������")&&(document.inputform.WHOTO.value!="������"))
 {   CFlowerToWho=document.inputform.WHOTO.value;
  if (IntFlower.value=="�Զ��׻�") {IntFlower.value="ֹͣ�׻�";
  CFlowerToWho=document.inputform.WHOTO.value;
  IFlowerInteval=setInterval("AutoFlowerHelper()",9000); 
 }else 
  if (IntFlower.value=="ֹͣ�׻�") {IntFlower.value="�Զ��׻�";
  clearInterval (IFlowerInteval);CFlowerToWho="" }
  } else 
   alert("ϵͳ:�ͻ�ͼƬ��������������!!") }
function AutoFlowerHelper() {
 var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
 document.inputform.WHOTO.value=CFlowerToWho;autosend(a_flower);
 document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmpMsg;}
function play_pic(selection)//����ͼƬ
{	if(document.inputform.AI.checked)
	{		if(selection.value!="")
		{			inputform.IMGURL.value = paste_path(selection.value,"");
			if (inputform.msg.value == "")
				inputform.msg.value = selection.options[selection.selectedIndex].text;
			checksay();
			inputform.submit();
			selection.options[0].selected=true;		}	}
	else
	{		alert('����ѡ��ͼ��!');
		selection.options[0].selected=true;	}}
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
	document.write('<option selected style=color:'+color+' VALUE="" >��'+room_name+'����</option>');
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><style type=text/css>";
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><input type=button name=closev value=������ onclick=\"parent.d.writev();\">";
	HTMLstr += "<table width='96' border='1' cellspacing='0' cellpadding='0' bgcolor='#ff81af' bordercolordark='#ff5fa1' bordercolorlight='#ffffff' height='15'><tr><td width='140' align='center'><p align='center'><span style='font-size: 8.7pt;COLOR:ffffff'>�����������������򿪱��������еĲ�������</SPAN></p></td></tr></table></body></html>";
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
		parent.bodyframe.rows='70%,*';

	if (auto_open_div == 1)
	{
		document.inputform.divs.checked=true;
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='70%,*';
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
  var tmpmsg=document.inputform.msg.value;
  var badword = new Array("ĥ��","Ϊ��","����","װ��","�� ��","����","���","Zhen","kaoqing","����","��ƨ","W5��","н��","�� ��","�б�","Ҫ��","����","����","�˽�","��ǹ","�� ��","�ơ�","�ð�","˫��","��˾","����","����","��ƨ","��ë","����","����","����","����","����","����","�ƺ�","����","����","��ʳ","����","���","����","����","н��","�ܼ�","����","ί��","Ҽ��","����ߵ���","Ҽֱ","����","���","��Э","Ա��","����","����","��ί","����","����","����","��û��","ȥ��","��ɱ","�� ��","baoleng","��","�� ��","heixie","��Ѻ","��ѧ","����","̨��","�侫","ɵ��","����","غ��","��Ů","��Ƥ","����","��","����","����","��.��.��.","��","����","�Ӽ�","����","�� ʳ","Ѻ��","�ɴ�","�� ����","������","����");
  for (var i=0;i<badword.length;i++){
//      if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){
      if (tmpmsg.indexOf(badword[i])!=-1){
      inputform.ws.checked=false;
      inputform.ws.checked=false;
      document.inputform.msg.value='*СΨ�ļҵ��������������.��ֻ˵��һ���໰���������ͳ����ڡ�СΨ�ļҡ�.�����ӳ��ˡ�СΨ�ļҡ������ң�����';

document.inputform.color.value="0000ff";
                login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
alert('����['+a_user+']��\n��ֱ�Ǹ.�����������Ļ��к��в��ŵ����֣����ѱ������СΨ�ļҡ�������.�����ٴν���.����ע�ⲻҪ˵�໰.Ը���ڴ˿�����죡');	

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
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if (full_screen_bkimage == 0)
	{
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");
		if (auto_hide_scrollbar == 1)
			this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
//this.u1.document.write("<p class=\"p9\" align=\"left\">");
//parent.u1.document.write('<font color=#EE0D5C>^_^СΨ�ļ�^_^����ӭ</font><font color=6040FF size=3>'+a_user+'</font><font color=#EE0D5C>����СΨ�ļң�Ը����ÿ���~</font></font><br>');
//parent.u1.document.write('<font color=#EE0D5C>�����ҹ��򡿣�<font color=#009933>ʹ������ͷʱ��ֹ���̼���������,�������Ա��Ȩ,��ʱ���Զ������������ҡ�</font></font><br>');
//parent.u1.document.write('<font color=#EE0D5C>�����L�����<font color=#009933>ÿ��18:00~20:00��21:00~24:00Ϊ������ϵͳ�������ۡ�</font></font><br>');
//parent.u1.document.write('<font color=#EE0D5C>������ͨ�桿��<font color=#0182FA>������������ͷ�����������Ȳ���<a target="_blank" href="http://www.teamiss.org/ha4/v-help.htm "> http://www.teamiss.org/ha4/v-help.htm </a> ������ִ��,�����С�</font></font><br>');
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	}
	else
	{
		this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
			this.u1.document.write("</style><STYLE>BODY{scrollbar-face-color:#F7CED2;scrollbar-highlight-color:#FFF0FF;scrollbar-shadow-color:#7F61FF;scrollbar-3dlight-color:#FFF0FF;scrollbar-arrow-color:#7F61FF;scrollbar-track-color:#fafdfd;scrollbar-darkshadow-color:#fafdfd;scrollbar-base-color:#FFF0FF;}</style></head><body><p class=\"p9\" align=\"left\">");
	}}
///////////////////////////��������//////////////////////
function fp(){
parent.u1.document.write('<body bgproperties=fixed>');
parent.u1.document.body.style.bgcolor="#FFEDEC";
}
function fpbg(){
setTimeout("fp()",1500);}
fpbg();
function auto_log_func()
{setTimeout("login_form.submit();",20000);}
function GetCookie (name) {  
var arg = name + "="
var alen = arg.length 
var clen = document.cookie.length
var i = 0
while (i < clen) {    
var j = i + alen
if (document.cookie.substring(i, j) == arg)
return getCookieVal (j)
i = document.cookie.indexOf(" ", i) + 1
if (i == 0) break}return null}
function SetCookie (name, value) {  
var argv = SetCookie.arguments;var argc = SetCookie.arguments.length;var expires = (argc > 2) ? argv[2] : null
document.cookie = name+"="+escape (value)+("; expires=" + expires.toGMTString())}
function getCookieVal(offset) {
var endstr = document.cookie.indexOf (";", offset)
if (endstr == -1)endstr = document.cookie.length
return unescape(document.cookie.substring(offset, endstr))}
var expdate = new Date()
expdate.setMonth(expdate.getMonth()+6)
var ranID = GetCookie('ranID');
if ((ranID==null)||(ranID=="")) ranID=Math.round(5000000*(Math.abs(Math.random()+Math.sin(expdate.getTime()))));
SetCookie("ranID", ranID, expdate, "/", null, false)
function enable_auto_log(action)
{if (action != "")
{var HTMLstr = ('<form METHOD="POST" target="j" ACTION="'+action+'" NAME="login_form">');
HTMLstr += ('<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+room_number+'">');
HTMLstr += ('<INPUT NAME="ranID" TYPE="HIDDEN" VALUE="'+ranID+'">');
HTMLstr += ('<INPUT NAME="ucount" TYPE="HIDDEN" VALUE="'+parent.count+'">');		
HTMLstr += ('<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+a_user+'">');
HTMLstr += ('<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(is_online_manager()?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">');
HTMLstr += '<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
document.write(HTMLstr);setTimeout("login_form.submit()",2000);
autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);}}
if (enable_admin==1)enable_auto_log(admin_place+"login.asp")
///////////////�Զ��ظ���ʼ////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="������̳,����ȥ��̳����[�Զ�����]";
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
                 }}}
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
              }}}
    exchange(y_exchange,y_exchange2)
    new_men_num=0
    newmen(new_men,y_exchange1)
    if (new_men_num>0)
       { WELCOME_send(new_men)}
   }
else{
    WELCOME_send(new_men)
    }}
function newmen(c1,c2){
n1=0
for (i=0;i<c2.length;i++)
    {
    if (c2[i])
       {
       c1[n1]=c2[i]
       n1=n1+1
       }}
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
   }}
function Az_yys(){
if (Az_y.value=="�ر�"){
WELCOME_y()
setTimeout("Az_yys()",65000)
 }}
function Az_yy(){
if (Az_y.value=="ӭ��"){
Az_y.value="�ر�"
Az_yys()
} else if(Az_y.value=="�ر�"){
Az_y.value="ӭ��"
}}
var zn_default=document.inputform.ws.checked;
Array.prototype.push=function(){
    var len=arguments.length,i=0;
    if(len>0)while(i<len)this[this.length]=arguments[i++];
    return this.length;
    }
var m_ws_list = new Array();
function parent.cs(name)
{
     this.d.add(name);
     this.d.document.inputform.WHOTO.value=name;
     this.d.document.inputform.msg.focus();
     this.d.zn_ws_s()
     return;
}
function write_ws_elements()
{
document.inputform.WHOTO.attachEvent("onchange",function(){zn_ws_s();});
document.inputform.ws.attachEvent("onclick",function(){zn_ws_c();});
}
function zn_ws_c()
{
     var index;
     var j=0;
     for (index = 0;index < m_ws_list.length;index+=2)
     {
           if (document.inputform.WHOTO.value == m_ws_list[index])
           {
                 if (document.inputform.ws.checked)
                       m_ws_list[index + 1]="1";
                 else
                       m_ws_list[index + 1]="0";
                 j=1;
           }}
if (j==0)
     if (document.inputform.ws.checked)
           m_ws_list.push(document.inputform.WHOTO.value,"1");
     else
           m_ws_list.push(document.inputform.WHOTO.value,"0");
}
function zn_ws_s()
{
     var index;
     var m_state=3;
     for (index = 0;index < m_ws_list.length;index+=2)
           if (document.inputform.WHOTO.value == m_ws_list[index])
                 m_state=m_ws_list[index + 1];
if (m_state==1)
  document.inputform.ws.checked=true;
else if (m_state==0)
  document.inputform.ws.checked=false;
else
  document.inputform.ws.checked=zn_default;
}
write_ws_elements();

var admins=new Array("*HA-6","*������","*!ѩǧѰ~","00")
function admin(AName){
     for(var mj=0;mj<admins.length;mj++){
          if(AName==admins[mj]){
          return true
          }}
    return false
}
function kickcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("˭����ƨƨ��С�Ľ���ʱ��������") 
           return false
     } else return true
}
screenForm.KICK.onclick=new Function("return kickcheck();");
function admin(AName){
     for(var mj=0;mj<admins.length;mj++){
          if(AName==admins[mj]){
          return true
          }}
    return false
}
function kickipcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("˭����IP��žž�����ƺ������㡭��") 
           return false
     } else return true
}
screenForm.KICKIP.onclick=new Function("return kickipcheck();");
function DUMBcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("���Ȼ�����Ҵ��֡����Ҿ�Ҫ��...��!!") 
           return false
     } else return true
}
screenForm.DUMB.onclick=new Function("return DUMBcheck();");
function NOMICcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("5555~~~~~~~~���Ȼ������˵�������Ҿ�Ҫ˵��!!!!!") 
           return false
     } else return true
}
screenForm.NOMIC.onclick=new Function("return NOMICcheck();");



