var m_fullscreen_bgimage = parent.u.document.body.background;
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
var cipdz="http:roomadmin.asp" ;   
enable_auto_log("http://login.asp")
var config_place = "http://bonjaja.512j.com/215/";  	
var room_owner="*�Τ����b�צ�";		
var room_name="����С��";			
var room_adminname_head="";	
var room_adminname_headg="";	
var majia = "" ;           
var room_number="000";		
var black_roomname="";	
var black_roomnumb="";	
var room_link_url = "http://2145.liaowan.com";
var userlist_top_html = "<td align=middle><img src=http://www.ikcmc.com/logo.gif></td></tr></table>";
var userlist_bottom_html = "<marquee scrollamount='2' > <font color=2e8b57> "+room_name+"��ӭ��</font><font color=ff0000>��"+a_user+"��</font><font color=2e8b57>�ĵ�����Ҫ��������¹����9999 </font></marquee></a><tr><td align=middle><img src=http://vchat.yzdoor.com/pic/lines.gif></td></tr></table>";
var listbottem0="�����������<BR>"+room_owner+"<BR>��ӭ��ĵ���<BR>"+room_name+"<Br>������<Br>��ͬ�ļ�";
var userlist_bkcolor = "#CDE4F3";	
var userlist_bkimage = "bj1.jpg";	
var voice_normal_color = "#00D000";	
var voice_v2v_color = "#000000";	
var voice_vr_color = "#00D000";		
var div_screen_bkcolor = "#FFF8FF";		
var div_screen_bkimage = "bj1.jpg";		
var voice_bkcolor = "#efebde";		
var voice_bkimage = "bj1.jpg";				
var input_bkcolor = "#e5fffd";		
var input_bkimage = "bj1.jpg";				
var input_msg_color	= "#0000ff";	
var input_msg_bkcolor = "#ffffff";	
var body_text_color	= "#038ffe";	
var select_color = "#038ffe";		
var select_text_color = "#038ffe";	
var button_text_color = "#000000";	
var button_bk_image	= 1;			
var button_bk_color = "";			
var full_screen_bkimage	= 1;		
var auto_hide_scrollbar = 1;		
var a_btn_pic = new Array
(
	17,		"001.gif",
	18,		"001.gif",
	19,		"001.gif",
	32,		"005.gif",
	35,		"002.gif",
	46,		"003.gif",
	70,		"004.gif");
var url_popup_window = "";			
var	only_registr_user = 0;			
var	only_chinese_name = 1;			
var default_admin_pass = "123";		
var auto_open_ai = 1;		
var auto_open_div = 1;			
var multi_singer_list = 3;		
var qqh=3;                        
var msg_login		=	"��" + room_name + "�������ҵ������ǣ���Һã����ҡ�"+a_user+"�����ˣ���";
var msg_admin		=	"��" + room_name + "���Ĺ���Ա��" + a_user + "�����ڽ������״̬Ϊ������������ϵķ���";
var msg_quitadmin	=	"����Ա��" + a_user + "���˳�����Ա״̬���Ժ���Ϊ��ҷ���";
var msg_leave		=	"��λ���أ�ż��"+a_user+"������һ����,�´��ٺʹ���ģ�";
var div_msg_color1 = "#FF0000";	
var div_msg_color2 = "#8800FF";	
var div_msg1 = "";
var div_msg2 = "";
var div_msg3 = "";
var div_msg4 = "��ӭ�������<<����С��>>�����ң�ף���������죬���ģ�����������ַ��http://2145.liaowan.com";  //֪ͨ
var div_link = "";
var jilu="";   

var a_link_button = new Array
(
	"��̳",	"http://www.ikcmc.com/bbs",
	"����",	"http://www.ikcmc.com/jianghu/",
	"����",	"http://32cm.com/mrk/",
	"����","http://32cm.com/bs/play/",
        "����",	"http://32cm.com/bs/book.asp",
        "����","http://"
);
var a_vip_user = new Array
(
	"*�Τ����b�צ�",4,
        "*�����κ��",1,
	"",		1,
        "",	        2,
        "",	        2,
	"",	        2,
        "",	        6,
        "",	        6,
        "",		6,
        "",		6

);
var a_name_filter = new Array
(
"ɵ��","����","��Ь","��","��","������","����","��","����","����","����","����","����","��","����","����","��","����","����","�׳�","���˹�","fuck","������","����B","�����","������","ɵB","��","������","��","�P","�H","ʺ","��","�Ͻ�","����","ڤ��","���","����","����","ɵ��","������","����","�Ҳ�","���","��","�H","����","����","��","�","�׳�","cao","����","Ѫ��","Ѫϴ","�쵰","ɧ","�P","��","�","����","����","�д�","����","FUCK","����","�񾭲�","sex","SEX","��","CAO","����","����","�û�","ȥ��","����","��","����","����","����","һҹ��","����","����","���澫Ӣ","����","Ұ��","��ĸ","��","��Ь","�І�","���","����","����","����","��ο","���R"

);
var a_hide_user = new Array
(
	"",	           0,"*",	           0

);
var bianyi = new Array
     (
     "*",
     "*�Τ����b�צ�",
     "*",
     "*"

     );
var a_usertitle = new Array
(
	0,	"���߹���",	"0.gif",	"#ff0000",	"#FFFFFF",
	1,	"��������",	"1.gif",	"#FF00FF",	"#FFFFFF",
	2,	"��������",	"2.gif",	"#0000FF",	"#FFFFFF",
	3,	"�����ܼ�",	"3.gif",	"#339900",	"#FFFFFF",
	4,	"�ű�ά��",	"4.gif",	"#0000FF",	"#FFFFFF",
	5,	"���ҹ��",	"5.gif",	"#FF00ff",	"#FFFFFF",
	6,	"�����α�",	"6.gif",	"#339900",	"#FFFFFF",
	7,	"���Ҽα�",	"7.gif",	"#9900FF",	"#FFFFFF",
	8,	"���Ҽα�",	"8.gif",	"#9900FF",	"#FFFFFF",
	9,	"���Ҽα�",	"9.gif",	"#9900FF",	"#FFFFFF"
);
var wudimajia=new Array("*���","*","*","*","*","*",
"*�Τ����b�צ�","*","*","" 
 );  
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
	"",	"",
	"",	""
);

now = new Date(),hour = now.getHours()
if(hour < 6){ var wenhao="���!��ô��,�컹û����!"; }
else if (hour < 9){var wenhao="���Ϻ�!";}
else if (hour < 11){var wenhao="�����!";}
else if (hour < 14){var wenhao="�����!";}
else if (hour < 18){var wenhao="�����!";}
else if (hour < 23){var wenhao="���Ϻ�!";}
else {var wenhao="���!ҹ�����㻹����˯��?";}
var a_linkurl = new Array
(
	"������ַ",		"",
	"������̨",		"http://www.tvma.com.cn/xianshangliange/banzouxiazai.asp",
        "��������",             "http://www.meetchinese.com/song/music.html",
        "��ɫ����",             "http://www.l521.com/banzou/",
        "���Ѱ���",             "http://www.163888.net/blist.asp",
	"������",		"http://mtv99.com",
	"�ѹ�����",		"http://www.sogua.com",
	"��������",		"http://www.chinamp3.net/search/index.php",
	"�ٶ�mp3",		"http://mp3.baidu.com",
	"�ٶ�flas",		"http://flash.baidu.com",
	"�����̨",		"http://admin.asp",
	"�������",		"http://liaowan.com/roomadmin/",
	"��̨����",		""+cipdz+""
);
var a_welcome = new Array
(
	"��ӭ",	"��ӭ������" + room_name + "��Ƶ���������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
	"��ӭ",	"^_^*" + room_name + "*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡������",
	"��ӭ",	"�������ߵ����ĺ��ǡ�" + room_name + "��Զ��ӭ������Զ�Ⱥ�������Զ�������������http://2145.liaowan.com/  ",
	"��ӭ",	"��ӭ������" + room_name + "��Ƶ���������ң�Ը����������Ŀ��ģ��ĵĿ��ģ����Ŀ��ģ�����http://2145.liaowan.com/ ",
	"��ӭ",	"����������ѽ����ӭ��ӭ����������" + room_name + "����,������һ���ĵȴ���ǣ�ң����ѣ�����http://2145.liaowan.com/"
);
var a_flower = new Array
(
	"��",	"��!������� * ������ǩ�����ɣ���..��Ҳ�Ҫ����..��..��..˭�Ȱ�����..��~~ǩ�Ķ��أ�..��ǩ���·��ϰɣ�Ҫ����ӡ��Ŷ~����~�ҵ�Ь~",
	"ǩ��",	"��~����̫����~��~�����Ķ�����~����~����ǩ������~ �����~��~��������~����̫����~�����~�����Ķ�����~0~",
	"����",	"������---�������ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ��",
	"����",	"����������ð�Ŷ��������ˡ�������ð�Ŷ������ð�Ŷ�������ð�Ŷ������žžž�����",
	"����",	"�����ң���רҵ����~~~~�רt�t��r�����ǡ���(((((žž)))))�רt�רtǩ����ǩ����)�٣�����~~~~���� **�ҵ�Ь�أ��۾��� ",
	"õ��",	"õ�廨��r�r��ҩ����r�t���r���Ȼ��t���r���׻��t���r���㻨�t���r�л��t���r �񻨡��������������ϻ�",
	"����",	"���㣮���ǰ�������� * *�������������������*���* ̫���ˣ�������������㳪�����һ����Ǹ��ǳ��İ�����* ~",
	"ż��",	"�������*�����ߡ֡���ʻ��֡���ʻ�ż�񡫡�ǩ�������� ��*���� ��*������*������ż�񡫡�ǩ�������� ��*������",
	"�ٺ�",	"���רt��r�רt��r�����ǡ��פ�(((((((((žž))))))))�רt��r�϶�����רt��rˮ�ɻ����רt��r�רt��rҰ�ٺɡ��רt��r��",
	"���",	"�������~~�t���r���򻨨t�����ƣ�����PA PA������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦�����ң��Ϸ���",
	"����",	":���������嗀����K*���������������嗀����Y�K*���������������嗀���� �K *���������������嗀����K",
	"žž",	"*^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^* *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*",
	"ˮ��",	"õ�廨���רt��r�רt��r�����ǡ��רt��r��(((((((((žž))))))))�רt��r�϶�����רt��r�פרt��rˮ�ɻ����רt��r�רt��r",
	"ĵ��",	"* *����ĵ����� *�ջ��� * *ҹ������һ��һ����һ���ĵ����� *�ջ��� * *ҹ������������* *����һ��һ����һ���",
        "�����ң���רҵ����~~~~�רt��...��r�רt��r�����ǡ���(((((žž)))))�רt�רtǩ����ǩ����)�٣�����~~~~���� **�ҵ�Ь�أ��۾��� ",
       "�t��r�רt��r�����ǡ��פ�(((((((((žž))))))))��(((((((((žž))))))))�t��r "
);
var a_byebye = new Array
(
	"����","�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬http://2145.liaowan.com/ �����ߴ���Ŷ~��",
	"�ߺ�","�����᲻�ã�һ·�ߺã����ǻ������~~~~~���пճ����棬http://2145.liaowan.com/��������Ŷ~��"
);
var a_leave = new Array
(
	"����",	"Bye~~~~~~~~~�ټ�����Ҫ���ˣ�ף�����Ŀ���~~~~~~~~~~~ ",
	"���",	"Bye~~~~~~~~~�ټ�����Ҫ���ˣ�ף�����Ŀ���~~~~~~~~~~~~ ",
        "����",	"��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
	"���",	"��̾һ��,�����˵��:�|���ݰݡ��˨��|һ�������ǧ��,��֪�����ٷ��.�����ȥ��,��Ҷౣ�ب|���ݰݡ��˨��|�����к�������еĻ��������ٶ������롤����������",
	"���",	"��ɽ���ģ���ˮ������ɽ��ˮ����������ڣ����õȵ����������գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);
var a_da = new Array
(
	"��л",	"��л��л!!лл���!!!!  ",
	"��л",	"лл�����ǵ��ʻ�,�����͹���!!!",
	"��л",	"���ĸ�л�����ǵ�����!!! "
);
var a_wen = new Array
(
	"����","����**������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!! ",
	"����","����**������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!!! "
);
var a_huan = new Array
(
	"����","���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ��� ",
	"����","���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ���! "
);
var a_wantmic = new Array
(
	"Ҫ��",	"��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ999999��Ҫ��ѽ",
	"����",	"��Ҫ����ѽ9999999 �������Ҫ����ѽ99999999999��Ҫ����ѽ9999999 �������Ҫ����ѽ"
);
var a_heart = new Array
(
	"����",	"||||||||||||||||||||||||�����ˡ�������������",
	"����",	"�����������������������������ˡ�������������",
        "����",	"1111�������ˣ�������������İ���������111111",
	"����",	"�������ˡ��������ˡ��������ˡ��������ˡ��������ˡ��������ˡ��������ˡ�",
	"����",	"�����ˣ���������������������ˣ���������������������ˣ����������������"
);
var a_dai = new Array
(
	"����",	"�����ˣ���Ҫ���谡9999999999999999999999��������(���򳬹�5�����Ͳ�������) ",
	"����",	"�����ˣ���Ҫ���谡99999999999999999999��������(���򳬹�5�����Ͳ�������)   ",
        "����", "�ٺ٣��ҡ�"+a_user+"����������׸�ѽ���žžžžžžžžžžŸ�����ѽ~^_^^_^^_^",
        "����", "����Ա����������裬��Ҫ����ͬһ�׸�������9999999",
        "����", "99999999999999999��~��"+a_user+"����Ҫ�������ճ��ĸ�ѽ!"
);
var a_zhun = new Array
(
	"׼��",	"����!��һλ����������,��������׼������!(�����������)лл ",
	"׼��",	"����!��һλ����������,��������׼������! (�����������)лл"
);
var a_yao = new Array
(
	"����",	"���_�У��������!�װ�������,��ӭ��ĵ���,����Ը���ҳ�һ�׸���лл���_�У���",
	"����",	"���_�У��������!�װ�������,��ӭ��ĵ���,����Ը���ҳ�һ�׸���лл���_�С�"
);
var a_wang = new Array
(
	"��ַ",	"�뱣����������ַ��"+room_link_url+" ",
	"��ַ",	"�뱣����������ַ��"+room_link_url+" "
);
var a_shi = new Array
( 
        "����", "�ٺ٣��ҡ�"+a_user+"��������ѽ��������������������ѽ~^_^^_^^_^",
        "����", "����Ա��������������Ҫ����666666",
        "����", "6666666666��~��"+a_user+"����Ҫ����ѽ!"
);
var a_ju = new Array
(
	"����",	"�ܱ�Ǹ���������Ϲ������֣����ܺ������죬���½⡣ ",
	"����","�ܱ�Ǹ���������Ϲ������֣����ܺ������죬�����½⡣ "
);
var a_wei = new Array
(
	"��δ����",	"����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ ",
	"��δ����","����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ   "
);
var a_wu = new Array
(
	"��������",	"����!�װ�������,���ǵ������,������û������,�����ٵ���һ�����,��������Ҫ����� ",
	"��������","����!�װ�������,���ǵ������,������û������,�����ٵ���һ�����,��������Ҫ�����   "
);
var a_jie = new Array
(
	"��������",	"����!��������,������˼,�����õ���,��Ӻ�������˷� ",
	"��������","����!��������,������˼,�����õ���,��Ӻ�������˷�   "
);
var a_yi = new Array
(
	"�Ѿ�����",	"����!����Ϊ������,�������Ĵ��Ⱥ�Ҳ��׼��һ�� Ϊ����������ķ�ɣ� ",
	"�Ѿ�����", "����!����Ϊ������,�������Ĵ��Ⱥ�Ҳ��׼��һ�� Ϊ����������ķ�ɣ�    "
);
var a_duan = new Array
(
	"���󲻺�",	"����!�������������������������̫��,�����������Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл ",
	"���󲻺�",   "����!�������������������������̫��,�����������Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл   "
);
var a_guan = new Array
(
	"��������",	"���ѣ������������ˣ�����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл���� ",
	"��������",   "���ѣ������������ˣ�����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл����   "
);
var a_guan = new Array
(
	"лл����������������",	"����Ϊ������׸��������ڴ����ö���������������Ҹ������������лл��Ŷ~�� ",
	"лл����������������",	"����Ϊ������׸��������ڴ����ö���������������Ҹ������������лл��Ŷ~��   "
);
var a_shuang = new Array
(
	"�ܾ�˫��",	"����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣  ",
	"�ܾ�˫��",  "����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣    "
);
var a_hei = new Array
(
	"��ھ���",	"��ڴ��~���������~��~û������~��~���������~��~С��PP  ",
	"��ھ���",  "��ڴ��~���������~��~û������~��~���������~��~С��PP    "
);
var a_heng = new Array
(
	"��Ϸ����",	"��ϲ�����Ϻ��������н�===============================================   ",
	"��Ϸ����",  "��ϲ�����Ϻ��������н�===============================================     "
);
var huati = new Array
(
	"����",	""+div_msg4+"",
	"����",  ""+div_msg4+"  "
);
var a_admin = new Array
(
	"������ַ",	"����������ַ "+ room_link_url ,"color:#009900",
	"����׼��",	"���ã���ӭ��������" + room_name + "��������һ��������������,��׼����!!!!","",
	"�ܾ�˫��",	"����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣ ","color:#6600ff",
	"���볪��",	"лл����������������,	����Ϊ������׸��������ڴ����ö���������������Ҹ������������лл��Ŷ~�� ","color:#6600ff",
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
var a_picture = new Array
(
	"��������","http://vchat.yzdoor.com/pic/z.gif",
	"���","http://vchat.yzdoor.com/pic/0021.gif",
	"��ӭ����","http://vchat.yzdoor.com/pic/-07.gif",
	"лл","http://vchat.yzdoor.com/pic/mgyxx.gif",
	"�����Ȳ�","http://vchat.yzdoor.com/pic/j003.gif",
	"��ȿ���","http://vchat.yzdoor.com/pic/hkf.gif",
        "�����","http://vchat.yzdoor.com/pic/x7.gif",
        "����","http://vchat.yzdoor.com/pic/20_2396_103.gif",
        "����","http://vchat.yzdoor.com/pic/ws.gif",
        "��ϲ����","http://vchat.yzdoor.com/pic/gxfc.gif",
        "ף������","http://vchat.yzdoor.com/pic/a0111.gif",
        "���еĺ�","http://vchat.yzdoor.com/pic/a014.gif",
         "�����","http://vchat.yzdoor.com/pic/cg55.gif",
         "���ú�","http://vchat.yzdoor.com/pic/d04.gif",
         "����","http://vchat.yzdoor.com/pic/zzz.gif",
          "����","http://vchat.yzdoor.com/pic/mgygz.gif",
	 "�ɰ�����",	"http://vchat.yzdoor.com/pic/jiayou.gif",
         "���",		"http://61.177.188.19/aoxiang/d/d-190.gif",
        "��ӭ",		"http://61.177.188.19/aoxiang/d/d-109.gif",
        "����", 	"http://61.177.188.19/aoxiang/d/y30.gif",
	"����",		"http://61.177.188.19/aoxiang/d/d-191.gif",
        "лл",		"http://61.177.188.19/aoxiang/d/t39.gif",
        "����",		"http://61.177.188.19/aoxiang/d/d-10.gif",
        "ף��", 	"http://61.177.188.19/aoxiang/d/qi13.gif",
        "����",		"http://61.177.188.19/aoxiang/d/t46.gif",
        "ѩ��",		"http://61.177.188.19/aoxiang/d/t45.gif",
        "�Ⱦ�",		"http://61.177.188.19/aoxiang/d/t49.gif",
        "����",		"http://61.177.188.19/aoxiang/d/t50.gif",
        "����",		"http://61.177.188.19/aoxiang/d/y2.gif",
        "��Ʊ",		"http://61.177.188.19/aoxiang/d/y38.gif",
        "èè",         "http://61.177.188.19/aoxiang/d/d-16.gif",
        "����", 	"http://61.177.188.19/aoxiang/d/d-193.gif",
        "Ц��",		"http://61.177.188.19/aoxiang/d/dfg203.gif",
        "����",		"http://61.177.188.19/aoxiang/d/d-43.gif",
	"����",		"http://61.177.188.19/aoxiang/d/d-184.gif",
        "����",		"http://61.177.188.19/aoxiang/d/d-42.gif",
	"����", 	"http://61.177.188.19/aoxiang/d/t10.gif",
        "�Ծ�",		"http://61.177.188.19/aoxiang/d/y0.gif",
        "����",		"http://61.177.188.19/aoxiang/d/t51.gif",
        "ʧ��",		"http://61.177.188.19/aoxiang/d/t52.gif",
	"����",         "http://61.177.188.19/aoxiang/d/d-49.gif",
        "�ɱ�",		"http://61.177.188.19/aoxiang/d/d-107.gif",
	"����",		"http://61.177.188.19/aoxiang/d/d-104.gif",
        "�Ȳ�",         "http://61.177.188.19/aoxiang/d/d-110.gif",
        "����", 	"http://61.177.188.19/aoxiang/d/d-106.gif",
        "��׷",		"http://61.177.188.19/aoxiang/d/d-47.gif",
        "С��",		"http://61.177.188.19/aoxiang/d/t42.gif",
        "�ε�", 	"http://61.177.188.19/aoxiang/d/d-189.gif",
        "����", 	"http://61.177.188.19/aoxiang/d/d-176.gif",
	"����", 	"http://61.177.188.19/aoxiang/d/d-177.gif",
        "����", 	"http://61.177.188.19/aoxiang/d/d-180.gif",
	"����",		"http://61.177.188.19/aoxiang/d/y1.gif",
	"����",		"http://61.177.188.19/aoxiang/d/y26.gif",
        "Ͷ��",		"http://61.177.188.19/aoxiang/d/d-15.gif",
        "����", 	"http://61.177.188.19/aoxiang/d/d-14.gif",
	"�赸",		"http://61.177.188.19/aoxiang/d/t17.gif",
        "С��", 	"http://61.177.188.19/aoxiang/d/y15.gif",
	"�ʻ�", 	"http://61.177.188.19/aoxiang/d/d-147.gif"

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
var ppdd=0
var a_type;
var a_user_pic = new Array(10);

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
function add_new_element()
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
       write_button("Az_y","ӭ��",5,40,32,20,"","�㿪���ϵͳ���Զ���ӭ�ս���������","Az_yy()");
	write_bkcolor_select("bkcolor","����ɫ",379,39,60,select_color,a_bkcolor,"changebkcolor(this)");
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
             write_button("","����",515,39,35,20,"","����","autosend(a_shi)");
             write_button("","����",479,39,35,20,"","����","autosend(a_dai)");
	     write_button("reauto","�Դ�",550,39,35,20,"","�����Զ���","reauto()");
	     write_select("linkroom","��������",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
              document.writeln('<DIV id=content style="FILTER: revealTrans(Transition=2, Duration=2); HEIGHT: 0px;LEFT:300px;TOP:3px;WIDTH:300px;POSITION:absolute;TEXT-ALIGN:center"><b><marquee scrollamount=2>'+div_msg4+'</marquee><br></b></font></div>')

	}
}
function Mic_y(){A_y.value="����";document.screenForm.MIC.click()}
function A_yys(){if (A_y.value=="�ػ�"){cs_b=inputform.WHOTO.value;msg2_y=inputform.msg.value;parent.cs(cs_n);document.screenForm.MIC.click();parent.cs(cs_b);inputform.msg.value=msg2_y;setTimeout("A_yys()",6000)}}
function A_yy(){if (A_y.value=="����"){cs_n=inputform.WHOTO.value;A_y.value="�ػ�";A_yys()} else if(A_y.value=="�ػ�"){A_y.value="����"}}
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
var listbottem="<tr><td colspan=3 align=center> <table width='60' border='3' cellspacing='3' cellpadding='3' bordercolordark='red' bordercolorlight='yellow' height='3'> <tr></a></marquee></font></SPAN></td></tr></table></td></tr>";
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
Array.prototype.push=function(){
    var len=arguments.length,i=0;
    if(len>0)while(i<len)this[this.length]=arguments[i++];
    return this.length;
    }
var m_pobot = new Array
    (     
    "6","*�ٻ�����",
    "6","*��ӭ��ң",
    "6","*�۹����",
    "6","*���٦���",
    "6","*��ң����"
    );
var index=0;
while (index<m_pobot.length)
    {
    m_user_str = m_pobot[index] + "&" + m_pobot[index+1] + "&" + "1" + "&" + "0";
    user_array.push(m_user_str);
    index +=2;
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
			HTMLstr += ("<img src=http://vchat.yzdoor.com/pic/voice.gif border=0>");
		if(lists[2]==2)
			HTMLstr += ("<img src=http://pic.liaowan.com/gif/hh.gif border=0>");
		if(lists[3]==1)
			HTMLstr += ("<a href=\"javascript:parent.watch_name('"+lists[1]+"')\"><img src=http://vchat.yzdoor.com/pic/voice1.gif border=0></a>");
                HTMLstr += "</div>";
	}
	parent.r.listhtml.innerHTML = HTMLstr;
	parent.r.usercount.innerText = user_array.length;	
}
function init_system()
{
	var i;
	a_type = is_online_manager()?0:get_user_type(a_user);
	lastchoice = -1;
	bleave_system = 1;
	login_succeed = true;
	user_name_filter();
	m_input_bkimage = paste_path(input_bkimage,document.body.background);
	m_userlist_bkimage = paste_path(userlist_bkimage,m_input_bkimage);
	m_voice_bkimage = paste_path(voice_bkimage,m_userlist_bkimage);
	m_div_screen_bkimage = paste_path(div_screen_bkimage,"");
	if (button_bk_image == 1)
		for (i = 1 ; i < a_btn_pic.length ; i+=2)
			a_btn_pic[i] = paste_path(a_btn_pic[i],"");
	for (i = 0 ; i < 10 ; i ++)
		a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");
	window.onerror = new Function("return true");
	document.write('<body onUnload="if(bleave_system==0)return; window.open("http://www.liaowan.com/","_blank","width=315,height=215,scrollbars=yes,"); ;parent.cs(\'������\');document.inputform.elements[13].value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
	parent.write_new=writelist;
	parent.writecv_new=writecv;
	parent.writeu1 = writeu1;
	open_startup_info_window();
	setTimeout("auto_open_ai_fnc()",3000);
	if (is_hidden_user(a_user) < 10)
		document.inputform.ws.checked=true;
	write_loginmsg();
	if (is_online_manager())
	{  
                document.inputform.ws.checked=false;
       }else {  if ((qqh==1)||(qqh==2)) document.inputform.ws.checked=true;
  
       }
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
function writelistbase()
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

	HTMLstr += "<br><a title='������������'><font color=000000> <b>��ǰ����</font><font color=red><B id='usercount'>0</B></font><font color=000000> λ����</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\"><br></a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'></tr><td id='listhtml'></td></tr></table><center><hr><br>";
       HTMLstr += listbottem;
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.writeln("<script language=javaScript>"); 
        parent.r.document.writeln("function Click(){alert('�������ά��=���ƣ�Ctrl+C ճ����Ctrl+V')\;window.event.returnValue=false\;}  document.oncontextmenu=Click\;");
        parent.r.document.writeln("</SCRIPT>");
	parent.r.document.close();
}

function paste_path(imagename,defaultimage)
{
	imagename = trim(imagename);
	return  (imagename != "")?((imagename.substr(0,7).toLowerCase() != "http://")?config_place+imagename:imagename):defaultimage;
}
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
function user_name_filter()
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
function open_startup_info_window()
{
	if (url_popup_window != "")
		setTimeout('open_new_url(url_popup_window,"","")',1000);
}
function is_online_manager()
{
	return (document.screenForm.KICK);
}
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
function write_loginmsg()
{
	if (!login_succeed)	return;
	if (is_hidden_user(a_user) < 10) return;

	var color,msg;
	if (is_online_manager() && !byi(document.inputform.USER.value))
		color = 18,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 11,	msg = msg_login;
	document.inputform.elements[13].name="bgcolor";
	document.inputform.elements[13].value="#FFFFCC";
	document.inputform.color.options[color].selected=true;
       document.inputform.msg.value=msg; 
       ppdd=1;
       checksay();
       document.inputform.submit()
	document.inputform.color.options[4].selected=true;
	document.inputform.elements[13].value="";
}
function autosend(array)
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
function autosendf(array)
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
       inputform.ws.checked=IsWisper;
       document.inputform.color.value=c202
}
function reset_btn_style(btn,width)
{
	var style = "width:"+width+";height:20;";
	if (button_bk_image == 1)
		style += "background-image:url("+get_btn_pic(width)+");border:1px;";
	else if (button_bk_color != "")
		style += "background:"+button_bk_color+";";
	btn.style.cssText = style;
}

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

function open_new_url(theURL,winName,features)
{
	if (theURL != "")
		window.open(theURL,winName,features);
}

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)
{
	write_button_style("",left,top,width,height,color,title,"");
	if (theURL == "")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+ theURL +'","'+ winName +'","'+ features +'")>'+ value +'</button>');
}
function write_button(name,value,left,top,width,height,color,title,action)
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="' + action + '">'+ value +'</button>');
}
function guan()
{
	if (!is_online_manager())
		bleave_system = 0,send_msg("//ADMIN " + default_admin_pass);
}
function xiaguan()
{
	if (is_online_manager())
		bleave_system = 0,send_msg("//ADMIN quit");
}
function repeat_msg()
{
	if(document.inputform.SAYS.value!="")
		send_msg(document.inputform.SAYS.value + " ");
	document.inputform.msg.focus();
}
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
		reset_btn_style(document.screenForm.MIC,isdisable?35:35);
	}
}

function switch_kick()
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

function send_selection_msg(selection)
{
	if(selection.value!="")
		send_msg(selection.value);
	selection.options[0].selected=true;
}

function send_msg(msg)
{
	if(msg != "")
	{
		inputform.msg.value=msg;
		if (checksay())
			document.inputform.submit();
	}
}
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
function is_digit(str)
{
	var digitstr = "0123456789";
	for(var i=0;i<str.length;i++) if (digitstr.indexOf(str.charAt(i)) == -1) return false;
	return true;
}
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
function gotolinkroom(selection){if(selection.value!=""){gotoroom(selection.value,a_user,a_pass);selection.options[0].selected=true;}}
function changebkcolor(selection)
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
function writev()
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
function decoratev()
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
	HTMLstr += "</style><center><br><input type=button name=closev value=������ onclick=\"{parent.writev_new();parent.d.decoratev();}\">";
	HTMLstr += "<br><br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>˵��&����<br>��ң����</span></a></body></html>";
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

function is_numeric(str)
{
	for(var j=0;j<str.length;j++)
	{
		if(str.charCodeAt(j)>=256)
			return false;
	}
	return true;
}
function auto_open_ai_fnc()
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
function write_make_flower(left,top)
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

function make_custom_flower()
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


function check_say_fnc(msg)
{
	return msg;
}

function checksay()
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
function insert_picture()
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

function writeu1()
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
setInterval(function (){
document.oncontextmenu=new Function("return false;") 
parent.u.document.body.oncontextmenu=new Function("return false;")  
parent.u1.document.body.oncontextmenu=new Function("return false;") 
parent.v.document.body.oncontextmenu=new Function("return false;") 
parent.r.document.oncontextmenu=new Function("return false;")} 
,700);
function EventHandler(){
if((window.event.srcElement.tagName=='INPUT') &&
(window.event.srcElement.type.toUpperCase( ) == 'TEXT'))
window.event.returnValue = true;
else
window.event.returnValue = false;}
document.oncontextmenu = EventHandler;
document.onselectstart = EventHandler;
document.ondragstart = EventHandler;
function auto_log_func()//�Զ���¼��̨����
{

              if ((a_user=="*�������")||(a_user=="*�������") )
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
              if ( (a_user=="*�������") || (a_user=="*�������") )
              { }
               else {

		login_form.submit();
		autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);
              }
	}
}

document.write('<DIV style=POSITION:absolute;width:0px;LEFT:150;TOP:-30px>');
document.write('<FORM name="playing">');
document.write('<select NAME="playnamed" onchange="plays2()" style="font-family:���� color=#008000:SimSun;font-size:10pt;visibility: hidden">');
document.write('<OPTION selected VALUE="">�ʻ���</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/a0111.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/cg55.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/d04.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgygz.gif>�ʻ�</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/zzz.gif>�ʻ�</OPTION>');
document.write('<OPTION ALUE=http://www.6see.com/js/001/js/gif/jiayou.gif>�ʻ�</OPTION>');
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

{alert('��||��ң˵:���ĺܺ���?||��������||��');
return(false);
}
}
return(true);
}
//���ű����������� ������������̳ ��ң����
