
alert("�����ֽ�������ӭ��.   ���������й���Ա���ɣ�����һ���Ļ�ˮƽ����

������");

function EventHandler(){
  if((window.event.srcElement.tagName=='INPUT') && 

(window.event.srcElement.type.toUpperCase( ) == 'TEXT'))
    window.event.returnValue = true;
  else
    window.event.returnValue = false;
}
document.oncontextmenu = EventHandler;
function CloseWindow(){parent.document.parentWindow.close();}

var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;

var config_place = "http://coobo.51.net/bian/";  //
var room_owner="";			//	
var room_name="���ֽ���";			//	
var room_adminname_head="*";			//
var room_number="2020";			//
var room_link_url = "http://2020.liaowan.com";	//	
var black_roomname="";			//	
var black_roomnumb="";			//	

//var userlist_top_html = "<B>  <font color=#0000FF size=4>���ֽ���

</font></B>";
var userlist_top_html = "<table border=0 width=120px 

cellspacing=0><tr><td align=middle><img 

src=http://coobo.51.net/2029it.jp></font></B><table border=0 

width=120px cellspacing=0><tr><td align=middle><img 

src=http://qyqn.nease.net/jemmy/beijing/yanjinghengxiantu.gi></td></tr>

</table>";
var userlist_bottom_html = "<tr><td colspan=3 align=center><table 

width='60' border='7' cellspacing='3' cellpadding='3' 

bordercolordark='#F8F8FF' bordercolorlight='#F8F8FF' 

height='50'><tr><td  colspan=3 width='103' align='center'><span 

style='font-size: 8.7pt;COLOR:red'><marquee direction=up height=70 

onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 

width=100 crolldelay=50><center>��ӭ����<Br>��" + room_name + "��<Br>��

����<Br>������

��:<Br><Br></marquee></font></SPAN></td></tr></table></td></tr>";

var userlist_bkcolor = "#E8F4E0";	//	�����б����ı���ɫ
var userlist_bkimage = "";	//	�����б����ı���ͼ������Ϊ�մ�

��ʹ����������ͼƬ
var voice_normal_color = "#00D000";	//	����������ʱ��ͼ����

ɫ
var voice_v2v_color = "#00EE00";	//	˫������ʱ��ͼ����ɫ
var voice_vr_color = "#00D000";		//	����Ƶʱ��ͼ����ɫ

var div_screen_bkcolor = "#F8F7E8";		//��������ɫ	
var div_screen_bkimage = "d.jpg";		//��������ͼƬ		

var voice_bkcolor = "";		//�������ı���ɫ	
var voice_bkimage = "";		//�������ı���ͼ���մ���ʹ��������ͼƬ	

var input_bkcolor = "#E8F4E0";		//����������ɫ	
var input_bkimage = "";		//����������ͼƬ	
var input_msg_color	= "#117D00";	//	��������������򱳾�ɫ
var input_msg_bkcolor = "";	//	����������ɫ

var body_text_color	= "#339900";	//	�б������ɫ
var select_color = "#339900";		//	�б��������ɫ
var select_text_color = "#CC4499";	//      ��������ť����ɫ	
var button_text_color = "#339900";	//	��������ť��ʹ��ͼƬʱ

����ɫ	
var button_bk_image = "1";		//	��ťʹ�ñ���ͼƬ��1����

ʹ�ã�0������ʹ��	
var button_bk_color = "#339900";	//	��������ť��ʹ��ͼƬʱ

����ɫ

var full_screen_bkimage	= 1;		//	�Ƿ�ʹ�����屳��ͼƬ0��

����ʹ�ã�1����ʹ��	

//	��ť����ͼƬ  ���,�ļ���
var a_btn_pic = new Array
(
	17,		"18.gif",
	18,		"18.gif",
	19,		"18.gif",
	35,		"36.gif",
        46,		"44.gif",
	70,		"71.gif"
);

var url_popup_window = "";			//	����������ʱ��

���Ĵ��ڣ����Ϊ���򲻵���
var	only_registr_user = 0;			//	ֻ����ע���û�

����,0���������ƣ�1����ֻ����ע���û�����
var	only_chinese_name = 0;			//	ֻ����������

������,0���������ƣ�1����ֻ���������û�����
var default_admin_pass = "123";		//	Ĭ�ϵĹ���Ա�Ϲܿ���	

var auto_open_ai = 1;				//	�Զ���ͼ��,0

�������򿪣�1�����Զ���
var auto_open_mic = 1;				//	�Զ�������,0

�������򿪣�1�����Զ���	
var auto_open_div = 1;				//	�Զ�����,0����

��������1�����Զ�����	
var multi_singer_list = 0;			//	�Ƿ������ظ���

��0����������1��������

var msg_login		=	"����[[30]]��"+a_user+"�����ˣ�����" + 

room_name + "��[[22]]���������ļ�~~~";
var msg_admin		=	"��Һã�[[33]]��"+a_user+"���Ϲ���,

[[22]]������Ϊ��ҷ���:)";
var msg_quitadmin	=	"��"+a_user+"�����¹��ˣ�[[33]]лл���

���ҵ�֧�֣���";
var msg_leave		=	"��λ����"+a_user+"������һ����,�´���

�ʹ���ģ�";
var msg_auto_spack	=	"����Щ����ʱ�뿪һ�£�һ����ͻ�������

��";
var msg_back_spack	=	"��Һ�ѽ��[[30]]�һ����ˣ�������ʲô��

��[[33]]����Ҳ����...";

////��������//////////////////////
function fp(){
parent.u1.document.write('<body bgproperties=fixed>');
parent.u1.document.write('<font face=����_GB2312><font 

color=#ff1710><b>��ӭ��С�㡿��</font><font color=#009933>��ӭ������

<b><u><i><font color=#ff1710 size=4>��</font></i><font color=#0000FF 

size=4>��</font><font color=#FF00FF size=4>��</font><font color=#0000FF 

size=4>��</font></u></b>����ӭ��^_^����������ļ�!<font size=3 

color=#ff1710><b><u>http://2020.liaowan.com!

</u></b></font></b></font></font><br>');

}
function fpbg(){
setTimeout("fp()",2000);}
fpbg();

//	
var a_link_button = new Array
(
      
	
	"������̳","http://www.liaowan.com/bbs/index.asp",
         "��������","http://2029.liaowan.com"
        
);

//	�����е� VIP ����
//	����1����������2�����߼�����... 3����5 �ɹ�����,���������ڲ�

ʹ��	
var a_vip_user = new Array
(
       "*",		1,
        "*",		2,
	"*",		1,
	"*",		5,
        "*",	        3
);
//�������������ˣ����������а����������ֵ����ѣ�ֻҪ���������VIP���ѣ�

��׼���뷿�䡪��
var a_name_filter = new Array
(
	"��","��","��","Ѽ","��","��","��","��","��","��","ү","����","

����","������","ͬ����","���İ�","���˹�","����","�Ϲ�","��å","����","

��","�Ƕ�","��̬","ɫ��","�侫","ɵ��","�д�","��Ь","����","�϶�","��

��","��","����","����","����","����","غ��","��Ƥ","����","����","��

��","�ϴ�","��Ů","����","�ڹ�","�׳�","ɧѨ","����","�����","����","

ɵB","����","����","����","����","����","��ͷ","����","����","����","��

��","��Ů","����","�Ҳ�","����","ɵ��","����","����","�׳�","��","��","

Ѽ","��","��","�","�P","��","�H","��","��","��","��","��","��","��","

��","��","��","��","��ʺ","��","��","��","���","ɫħ","ɫ��","��ɫ","

ɫ�����İ�","ڤ����","��"
);
//      �������
     var bianyi = new Array
    ("*", 1,"*",  1,"*", 1,"*", 1,"", 1,"", 1,"", 1,"", 1,"", 1,"", 

1,"", 1,"", 1,"", 1
    );


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

//���������ˣ����ƣ�����ȼ�������������ǿ�������ģ��������������

������ѿ��Կ�����������
var a_hide_user = new Array
 ("*����С��", 1,"*",  1,"*", 1,"*", 1,"", 1,"", 1,"", 1,"", 1,"", 

1,"", 1,"", 1,"", 1,"", 1
    );

//��������˵�����ڴ��޸��������ֵ���ɫ����
var a_usertitle = new Array
(
	0,	"����","http://shiyu.myrice.com/2032/0.gif",	        

                        "#FFc2e","#FFFFFF",
	1,	"����","http://shiyu.myrice.com/2032/1.gif",	        

                        "#960480","#FFFFFF",
	2,	"����","http://shiyu.myrice.com/2032/2.gif",            

"#BD1AE6","#FFFFFF",
	3,	"����","http://shiyu.myrice.com/2032/3.gif",	        

"#F40BF7","#FFFFFF",
	4,	"����","http://shiyu.myrice.com/2032/4.gif",            

"#FF00FF","#FFFFFF",
	5,	"�߹�","http://shiyu.myrice.com/2032/5.gif",            

"#021945","#FFFFFF",
	6,	"����","http://shiyu.myrice.com/2032/6.gif",            

"#6903fe","#FFFFFF",
	7,	"���","http://shiyu.myrice.com/2032/7.gif",	        

"#0033CC","#FFFFFF",
	8,	"�α�","http://shiyu.myrice.com/2032/8.gif",	        

"#6903fe","#FFFFFF",
	9,	"����","http://shiyu.myrice.com/2032/9.gif",	        

"#6903fe"

);
var a_roomlink = new Array
(
	
	black_roomname,	black_roomnumb,
	"",   "",
	"",	  "",
	"",   "",
	"",   "",
        "",   "",
	"",   "",
	"",   "",
	"",   "",
          "",   "",
	"��������",	  ""
);

//�����������ӡ���
var a_linkurl = new Array
(
    
    "����Ԥ��", 	"http://www.cma.gov.cn/qx/qxshow.php",
    "�𳵲�ѯ", 	

"http://cctv.ctrip.com/supermarket/train/trainsearch_1.asp",
    "�ٶ�����" ,	"http://baidu.com/",
    "�û�ע��", 	"http://admin.bliao.com/user/reguser.htm",
    "����ע��",     "http://www.js.bliao.com/user_reg.php",
    "���԰����",   "http://admin.bliao.com/admin/s_admin.php",
    "��Լ����",     "http://admin.bliao.com/admin/r_admin.php",
    "��������",     "http://www.js.bliao.com/admin/s_admin.php",
    "���ù���Ա",   "http://admin.bliao.com/admin/s_admintor.php",
    "������ȫ",	    "http://www.oicq88.com/chat/zm.htm",
    "��ҳͼƬ",	    "http://www.4gee.com/",
    "�������",  	"http://music.qu-zhou.com/geci/main.htm",
    "�Ż�����",	    "http://cn.yahoo.com/"
);
//����ǹ�ڡ���
var a_pictures = new Array
(
	
        "ը��",      "http://www.lndd.org/button/0_11.gif",
        "ƽ��",      "http://www.w555.com/pc/img/gif/bar/3/3.gif",
        "����",      "http://www.w555.com/pc/img/gif/bar/3/0.gif",  
        "����",      "http://www.w555.com/pc/img/gif/bar/3/7.gif"
        
);
//������ӭ����
var a_welcome = new Array
(
	"��ӭ",	"��ӭ������"+room_name+"��������

��!"+document.inputform.USER.value+"Ը������������Ŀ��ģ��������죡

����������ļң�����"+document.inputform.USER.value+"ӭ����",
	"��ӭ",	"��ӭ������"+room_name+"���������ң�Ը����������Ŀ���

���ĵĿ��ģ����Ŀ��ģ�"+document.inputform.USER.value+"ӭ���㣡����",
	"��ӭ",	"����������ѽ����ӭ��ӭ������

��"+document.inputform.USER.value+"����"+room_name+"������,������һ����

�ȴ���ǣ�ң����ѣ�������"+document.inputform.USER.value+"ӭ����"
);

//�����׻�����
var a_flower = new Array
(
	"��",	"�����!����ǩ�����ɣ���.��Ҳ�Ҫ����.˭�Ȱ�����.��~ǩ

�Ķ��أ���ǩ���·��ϰɣ�",
	"ǩ��",	"��~����̫���ˡ������ǩ������ ���ۡ�������̫����~��

������Ķ�����~0~",
	"����",	"�����������ɡ�������ˣࡢ�ʻ��ࡢ�ࡢ�����������ɡ��

������!!",
	"����",	"�ð�Ŷ�������������ˡ�������ð�Ŷ�����

��",
	"����",	"�����ң���רҵ����~~~�tǩ����ǩ���٣�����~~~~���� **

�ҵ�Ь�أ��۾��� ",
	"õ��",	"õ�廨��r�r��ҩ����r�t��r�ϻ����t��r���Ȼ��t��r��

���������ϻ�",
	"����",	"��������������������������������������������������

���������������",
	"����",	"���������������������*̫����!������㳪�����һ���

�Ǹ��ǳ��İ�����",
	"ż��",	"�֡���ʻ��֡���ʻ�ż�񡫡�ǩ���� *������ż�񡫡�

ǩ�������� ��*",
	"����",	"��ɹ������~!~�������!!~!~!~������������~!!~�������

~!!!~������������~!!",
	"�ٺ�",	"�����ǡ��פפרt��r�϶���t��rˮ�ɻ����רt��rҰ

�ٺɡ��רt��r��",
	"����",	"���úã��x�y�z�{�|�}�~�~�}�|�{�z�y�xžžž�x�y�z�{�|�}

�~�~�}�|�{�z�y�x",
	"����",	"���ͼ��ͣ�Ϊ����ͣ��㳪�����Ŷ���廨���רt��r����

�ǡ��r��",
	"���",	"�������~~�t���r���򻨨t��õ��t��r�ٺϨt���rĵ��

�t��r���Ϸ���",
	"����",	":��*���������������嗀����Y�K*���������������

�嗀���� �K ",
	"����",	"�ʻ������������ʻ������������ʻ����������ʻ�����������

�ʻ�����������",
	"žž",	"*^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^* ��ž�� *^_^

��ž�� *^_^**",
	"ˮ��",	"õ�廨���רt�������ǡ��פרt��r�϶�����רt��r

ˮ�ɻ����רt",
	"ĵ��",	"*ĵ����*�ջ���ҹ�����ĵ����*�ջ���ҹ�����������* 

һ��һ����һ��*��*"
);
//�����黰����
var a_love = new Array
(
	"����",	"�������ӵ��������ң�

��"+document.inputform.USER.value+"��Ը����������㣬һ���ļ��������",
	"����",	"���죬��"+document.inputform.USER.value+"������������

����ʢ���İٻ�֮�䣡����",
	"����",	"���죬��"+document.inputform.USER.value+"�����㱼����

���ֵ�С��֮�ϣ�����",
	"�ֺ�",	"���죬��"+document.inputform.USER.value+"������������

���ķ���֮�£�����",
	"˼��",	"���죬��"+document.inputform.USER.value+"������Χ����

���ȵĻ�¯�Աߣ�����",
	"���",	"��"+document.inputform.USER.value+"��Ϊ��Ը�⻯��һ��

������������ϳ��������Ҳ��Ϊ����̣������Ļƻ�Ҳ��Ϊ����㣻",
	"����",	"�����һ�죬��"+document.inputform.USER.value+"������

��һϪ��Ȫ������Ȫ�������ΰڵ����Ҳ��Ϊ����裬�Ƕ��˵�Ȫ��Ҳ��Ϊ���

�����������ң�����"+document.inputform.USER.value+"��˵-�Ұ���!",
	"ûԵ",	"�Ұ��㣬�����յľ�ʹ��ͯ����ҳϣ��Ұ��㣬���ҵ������

Ц�����Ұ��㣬���ҵ�˫�ۺͼ���Լ���ȫ����������",
	"�ļ�",	"����һ��ůů�Ĵ��磬���������ĺ��ﰮ�Ĳ���������һƬ��

����Ʋʣ�����ס�Ҷ�������ߣ�",
	"����",	"��������������������ϯĽ�ݵ�һ������ʫ�����������Ĵ���

������һ���Ө��͸��ˮ��ʯ��",
	"����",	"���������ŵ�����ʼ�յ����Ŵ����������Ц�ݣ���������ת

���ε��۾����"+document.inputform.USER.value+"�����ܲ�׽�����������

������ң�������У���Ĵ�ӱ",
	"����",	"�����ʱ����������˯��������,�����ʱ�����Խ����ϼ

��Ʈ��.��֪����"+document.inputform.USER.value+"����������? ",
	"����",	"����������������������Ҳ���Բ��λ࣬���ռ��ˣ�Ψ��Ͷˮ

���磻�����Ѿ�������������ǰҲ����Ȼʧɫ����̾���磬ֻ��Զ�ܱ������Ӵ�

�����ٻ���ԭ",
	"����",	"����"+document.inputform.USER.value+"��һ��΢Ц�͹���

���籡��һ���������һ�ƣ������һƪ��˵����Ժǣ��·��죬��ܰ��Ʈ

�ݡ�",
	"����",	"��"+document.inputform.USER.value+"������ؿ����㣻��

Ҫ���������İ���֮�⣬��һ��һ��Ҳ����ȱ����İ���ֻ��Ӯ����İ�����

���������й�ʡ�",
	"����",	"������մ��¶��Ļ��꣬���Ҵ���һ�ҷ��㣻�����ǻ�������

�ĸ��ڣ����Ҵ�������ľ�Զ��׷��",
	"����",	"��"+document.inputform.USER.value+"��ÿʱÿ�̶���˼��

�ġ����̡��°��壬��֪����շ��ܴͶ��������ҵ����ֿ��̣�",
	"�ֺ�",	"��֪Ϊʲô��ֻҪ����������ߣ�

��"+document.inputform.USER.value+"�����ı㲻�ٻ̻̲�����",
	"����",	"��"+document.inputform.USER.value+"��ֻ�ܴ������۵�΢

Ц�и����������, ��ʱʱע������, �Ҳ�Ը���һ˿����, �Ķ��ǻ���ҹ����

��ʱ, �һþ��������۵��������һ���",
	"�ļ�",	"�������Ұ� ��������Ҫԩ�����������ǿ����ҳϵ��ġ���Զ

����� ��Զ����� ��Զ�Ǳ˴˵�",
	"Ψһ",	"�����Ҿ����ںδ����Ƿ������һ��Ϊ������ң�

��"+document.inputform.USER.value+"��ҪŬ��������ֻ�����������ܺ��㹲ͬ

�����ʱ�Ƕ�ô���õ�����",
	"����",	"û���㣬���˵Ĺػ�������ͽȻ�ġ�������Щ�ػ���

��"+document.inputform.USER.value+"��������ܣ�Ҳû���ʸ����",
	"����",	"�Ұ��㣡����İ��㣡����ĺð��㣡

��"+document.inputform.USER.value+"�� love you��

��"+document.inputform.USER.value+"�� love you so much��",
	"��ʶ",	"��ʶ���Ժ����Ժ�����ŵ�һ�ж���ʧ����Ӱ���٣�ȡ����֮

����������һ��Ļ���ʱ��"
);

//�������С���
var a_byebye = new Array
(
	"����","�����᲻�����߰�..�һ������..�ߺ�~~�пճ���

��"+room_name+"���棬������Ŷ~!",
	"ӡ��","��������ڡ�"+room_name+"���ص�������ӡ����̣���������

��Ŷ~���������������������",
	"�ߺ�","�ߺ�ѽ������ˣ�����ŵ��¡���ʱ��һ������

��"+room_name+"�������ź��𣬼�ס��"+room_link_url+"����"
);

//������ǡ���
var a_leave = new Array
(
	"����",	"��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ����

�� �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
	"���",	"��̾һ��,�����˵��:�|���ݰݡ��˨��|һ�������ǧ��,��

֪�����ٷ��.�����ȥ��,��Ҷౣ�ب|���ݰݡ��˨��|�����к�������е�

���������ٶ������롤����������",
	"���",	"��ɽ���ģ���ˮ������ɽ��ˮ����������ڣ����õȵ�������

���գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);
var a_fj = new Array
(
	"",	"�ǳ���Ǹ,���������Ѿ�����5��,���ܽ���,лл���ҹ�����֧

��,�����.......",
	"",	"�ǳ���Ǹ,��������̫��,���ܽ���,лл���ҹ�����֧��,����

��......."
);
var a_tj = new Array
(
	"",	"�������򲻳���5��,ͬ�����,лл...",
	"",	"OK~~~�������򲻳���5��,ͬ�����,лл..."
);
//�������֡���
var a_message = new Array
(        "����",	"������11111�����ְ��࣬������1111111111�а���

����111111",
         "����",	"������111111�����ְ��࣬������111111111������

1111111111");

//�������֡���
var a_see = new Array
(       "����","û�����ְ���û�����֣�û�����֣�û�����֣�",
        "����","û�����ְ���û�����֣�û�����֣�û�����֡�~��");

//����Ҫ�󡪡�
var a_wantmic = new Array
(
	"Ҫ��",	"��"+document.inputform.USER.value+"��Ҫ��q�T��999--

999������Ÿ���лл!!!",
	"����",	"��"+document.inputform.USER.value+"��Ҫ����,�q�T��999

--999������Ÿ���лл!!!",
   	"����",	"��"+document.inputform.USER.value+"���q�T��Ҫ��,�q�T��

999,������Ÿ���лл!!!"
);

//������������
var a_heart = new Array
(
	"����",	"�����ˣ�������������İ�������~~",
	"����",	"��"+document.inputform.USER.value+"���������ˡ�������

�ˡ�!",
	"����",	"��"+document.inputform.USER.value+"�����������������

���������ˡ�"
);
//�������衪��
var a_yao = new Array
(  

	"����", "���ٺ�,�ҡ�"+a_user+"����������׸�ѽ,�쵼���Խ�����??

��",
	"����", "�����ú���!����Ա������"+a_user+"��Ҫ�������,��Ҫ��ͬ

һ�׸�������",
	"����", "����Ҫ��,��Ҫ�������׸衿����Ҫ��,��Ҫ�������׸衿"
);

//�����򷨡���
var a_dantmic = new Array
(
        "Ȱ��",	"����!!���������ľ�,��������!!����Ϊ���ǵ�!!!",
	"��",	"������,����������!!�㷢������???Ҫ������������Ŷ

~~~!!!",
   	"�ܷ�",	"�����Ĺ�������!������??������е�����~~~����Ƿ��İ�??

�в�ȥҽԺ��~~~!!!"
);

//����л�衪��
var a_xantmic = new Array
(
	"л��",	"лл��ľ��ʱ���,���ϵ��ʻ�������,���Ƕ���������!!!",
   	"��л",	"лл!!лл��!!��ľ��ʱ��ݴ����ڳ���������!!���ĵظ�

л��!!"
);


//������л����
var a_lleave = new Array
(
	"��л",	"��"+document.inputform.USER.value+"����л��л!!лл��

��!!!!",
	"лл",	"��"+document.inputform.USER.value+"��лл�����ǵ��ʻ�,

�����͹���!!!",
	"��л",	"��"+document.inputform.USER.value+"�����ĸ�л�����ǵ�

����!!!"
);

//�������롪��
var a_yantmic = new Array
(
	"����",	"���ѣ���"+document.inputform.USER.value+"�����㳪һ��

�裬ͬ�⻰��������߹����9999����лл!!!", 
	"����",	"���ã���ӭ�������Ǵ�ұ���һ����Ŀ��ΰ������ó�������

�ֺ�Ϸ���������ʻ��������ȴ���Ŷ������"+document.inputform.USER.value+"

��������:))" ,
   	"����",	"��"+document.inputform.USER.value+"�������Ÿ������???

лл!!!"
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
	"��������",	"fnc:disable_KICK

(true)","color:#0000FF;background-color:#CCFFCC",
	"���߿���",	"fnc:quick_kick()","color:#FF0000;background-

color:#FFFF99",
	"��������",	"fnc:disable_KICK

(false)","color:#0000FF;background-color:#CCFFCC",
	"����׼��",	"���ã���ӭ��������" + room_name + "��������һ

��������������,��׼����!!!!","",
	"�ܾ�˫��",	"����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½�

�� ","color:#6600ff",
	"�Ѿ�����",	"����!����Ϊ������,�������Ĵ��Ⱥ�!","",
	"��������",	"����!��������,������˼,�����õ���,��Ӻ�������

�˷�!","",
	"��������",	"���ѣ������������ˣ�����������½ǵ���˷�ͼ

�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ�

��һ�£������ʧ����˵����лл������","",
	"�뿪����",	"����!����������������ȫ˫���Ի�,���������ǵ�

�����������Ŷ!!","",
	"��������",	"����**������������,ע���Լ������Ի�����,�Ǻ���

�ѿ���Ц�������Ļ�,лл����!!!!! ","",
	"��ھ���",	"��ڴ��~���������~��~û������~��~���������~

��~û������~��~��","",
	"��������",	"���ǵķ��䲻��ӭ���������֣������������ֽ�����

��Ȼ��������ȥ���ˣ�лл���ĺ�����","",
	"��ע����",	"������һ���������ֻ�ע�����ֺ���������һ��

ס���ģ���ҽ���ʱҲ���㣡лл","",
	"���󲻺�",	"����!�������������������������̫��,����������

�Ƕ϶�����������,�����ٵ���һ����Ҫ�����?лл.","",
	"��������",	"����!�װ�������,���ǵ������,������û������,��

���ٵ���һ�����,��������Ҫ�����?",""
);

//����ͼƬ����
var a_picture = new Array
( 
"��ӭ��",		

"http://www.cj888.com/photo/65/marker/english/welcome/66.gif",
"��ӭ��2", 

"http://www.mypcera.com/photo/65/marker/english/welcome/25.gif", 
"��ӭ��3", 

"http://www.mypcera.com/photo/65/marker/english/welcome/44.gif", 
"����", "http://qqliao.com/chat/images/d27.gif", 
"����", "http://benniao.8u8.com/gif/hy.gif", 
"��������", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063934276.gif

", 
"��������", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2068/Tom_1040108658.gif

", 
"��������", "http://219.133.40.170:8080/mcard/images/42383.gif", 
"��������", "http://218.17.209.40:8080/mcard/images/41244.gif", 
"��������", "http://218.17.209.40:8080/mcard/images/42390.gif", 
"����", "http://218.17.209.40:8080/mcard/images/41851.gif", 
"����1", "http://www.mypcera.com/photo/65/person/rests/love/3.gif", 
"����2", "http://qqliao.com/chat/images/d24.gif", 
"��������", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849478.gif

", 
"ɳ̲��Ů", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2069/Tom_1048585047.gif

", 
"������ɽ", "http://218.17.209.40:8080/mcard/images/42338.gif", 
"����1", "http://img.3721.com/sms3721/color/07/14834.gif", 
"����2", "http://qqliao.com/chat/images/h8.jpg", 
"�������", "http://219.133.40.170:8080/mcard/images/35373.gif", 
"��������", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849471.gif

", 
"��Ů��", "http://www.mypcera.com/photo/65/culture/art/nautch/28.gif", 
"Ϊ�����", "http://218.17.209.40:8080/mcard/images/41226.gif", 
"Ը�����", "http://219.133.40.170:8080/mcard/images/35365.gif", 
"����û��", "http://218.17.209.40:8080/mcard/images/37636.gif", 
"����1", "http://219.133.40.170:8080/mcard/images/42020.gif", 
"����2", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849381.gif

", 
"��������", "http://www.lndd.org/button/0007.gif", 
"С��", "http://211.98.68.109/sl/pic/xy2.gif", 
"����ϵ", "http://218.17.209.40:8080/mcard/images/40666.gif", 
"������Բ", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1061453990.gif

", 
"ע������", "http://218.17.209.40:8080/mcard/images/41921.gif", 
"�ڽӵ绰", 

"http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1063876628.gif

", 
"�ջ�", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063780572.gif

",
"�����మ", "http://218.17.209.40:8080/mcard/images/40322.gif", 
"��Ҫ��", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1060138014.gif

", 
"��������", "http://219.133.40.170:8080/mcard/images/37796.gif", 
"���ƾ���", "http://cn.gs/cna/pai1.jpg", 
"���տ���", "http://shopping.263.net/img/217/040602000425.gif", 
"���տ���", "http://218.17.209.40:8080/mcard/images/35354.gif", 
"���տ���", "http://www.wahaha8.com/chat/489604/pictures/016.gif", 
"���տ���", "http://go.ebjet.com/card/media/gif/976238671.gif", 
"���տ���", "http://card.e165net.com/card/birthday/dangao/pic001_.gif", 
"���㶵��", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1066123574.gif

", 
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
"������", 

"http://smsad.tom.com/smsweb/images/modpic/4848_5631/Tom_1067840580.gif

", 
"MM������", "http://www.lndd.org/button/0046.gif", 
"����С��", "http://cn.gs/cna/rmb.gif", 
"����֮��", 

"http://smsad.tom.com/smsweb/images/modpic/4848_2883/Tom_1066186452.gif

", 
"������", "http://219.133.40.170:8080/mcard/images/37168.gif", 
"��������", "http://218.17.209.40:8080/mcard/images/35372.gif", 
"������1", 

"http://smsad.tom.com/smsweb/images/modpic/4848_2295/Tom_1044853423.gif

", 
"������2", 

"http://smsad.tom.com/smsweb/images/modpic/4848_2295/Tom_1044853476.gif

", 
"���ұ���", "http://218.17.209.40:8080/mcard/images/35363.gif", 
"����ɫ��", 

"http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1040113733.gif

", 
"��������", 

"http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1062473969.gif

", 
"����", 

"http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752486.gif

",
"����", "http://www.lndd.org/button/papa.gif", 
"ҡ��", 

"http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752451.gif

",
 "�ջ�", 

"http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752494.gif

",
"������˼", "http://219.133.40.170:8080/mcard/images/40943.gif", 
"������", "http://219.133.40.170:8080/mcard/images/35347.gif", 
"�������", 

"http://smsad.tom.com/smsweb/images/modpic/4848_1774/Tom_1059118812.gif

", 
"�����", 

"http://smsad.tom.com/smsweb/images/modpic/4854_1787/Tom_1059118418.gif

", 
"����", "http://61.177.188.19/aoxiang/d/d-43.gif", 
"��1", "http://218.17.209.40:8080/mcard/images/41640.gif", 
"��2","http://219.133.40.170:8080/mcard/images/41250.gif",
"�п�����", "http://asp3.6to23.com/tgoodnet/top.gif", 
"������Ʒ", 

"http://smsad.tom.com/smsweb/images/modpic/4854_1787/Tom_1059118431.gif

"
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
	
	for (var i = 0 ; i < 2; i ++)
	write_newwindow_button(a_link_button[i*2],0 + 70 * 

i,0,70,20,"",a_link_button[i*2] + "\n" + a_link_button

[i*2+1],a_link_button[i*2+1],"","");
        write_button("IntFlower","�Զ��׻�",535,0,70,20,"","�Զ���

��","IntervalFlower()");
       write_select("pictures","�뿪

��",370,20,60,"FF0000",a_pictures,"play_pic(this)");
	write_button("","�ͻ�",370,0,46,20,"","�����ʻ�����","autosend

(a_flower)");
	write_button("","��ӭ",457,0,46,20,"","���ٻ�ӭ","autosend

(a_welcome)");
	write_button("","�黰",409,60,35,20,"","����ϸ��","autosend( 

a_love)");
	write_button("","��ͼ",304,80,35,20,"","����ͼ

Ƭ","insert_picture()");
	write_button("","�ظ�",269,80,35,20,"","�ظ��ϴεķ�

��","repeat_msg()");
	write_button("","����",374,60,35,20,"","��������","autosend

(a_byebye)");
	write_button("","Ҫ��",339,80,35,20,"","����Ҫ��","autosend

(a_wantmic)");
        write_button("","����",230,0,35,20,"","��������","autosend

(a_message)");
        write_button("","����",265,0,35,20,"","����������","autosend

(a_see)");
	write_button("","����",374,80,35,20,"","��������","autosend

(a_heart)");
	write_button("","��л",409,80,35,20,"","��л����","autosend

(a_lleave)");
	write_button("","����",416,0,46,20,"","��������","autosend

(a_yantmic)");
	write_button("","��ַ",444,60,35,20,"","������ַ

\n"+room_link_url,"send_msg('��������ַ��"+room_link_url+"')");
	write_bkcolor_select("bkcolor","����

ɫ",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","ͼƬ��

��",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","������

��",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_button("","����",444,80,35,20,"","Ҫ�������

��","autosend(a_yao)");
       
	
	write_button("","л��",335,0,35,20,"","лл��ı���","autosend

(a_xantmic)");
	//write_button("","����",358,0,70,20,"","����˷�ݸ���

��","document.screenForm.MIC.click()");
	write_button("Az_y","ӭ��",502,0,35,20,"","�㿪���ϵͳ���Զ�

��ӭ�ս���������","Az_yy()");
	write_select("linkurl","������

��",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_singer_form(479,20,select_color);	//	����
	write_changeroom_form(269,100,126);	//	������
	write_changeuser_form(397,100,208);	//	����
	write_make_flower(269,120);	//	�����׻�

	if (is_online_manager())
	{
		write_button("","�¹�",0,20,35,20,"","������

��","xiaguan()");
		write_button("switchkick","׼��",339,60,35,20,"","����

���˹���","switch_kick()");
                 write_button("","���",179,80,46,20,"","","autosend

(a_fj)");
	        write_button("","ͬ��",223,80,46,20,"","","autosend

(a_tj)");
		write_button("","׼��",300,0,35,20,"","׼����

��","send_msg('����!��һλ����������,��������׼��~~!лл! ')");
		write_select_ex("playadmin","����ר

��",533,60,72,select_color,a_admin,"send_msg");
		//	�Զ���������
		if (document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML

("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ6����

������' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML

("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ6����

������' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML

("AfterEnd","<input type=button name=GETMIC value=���� title='����˵�

���Լ�' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","�Ϲ�",0,20,35,20,"","�����Ϲ�","guan

()");
		
                 write_button("reauto","�Զ�",300,0,35,20,"","�Զ���

��","reauto()");
		write_button("","���",339,60,35,20,"","���ٸ�

��","autosend(a_leave)");
		write_select("linkroom","������

��",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}
function qfbfq(){
open_new_url

("http://www..net/sendmail/mid/midi.asp","windowsname","top=30,left=200

,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=

no,resizable=no,width=264,height=214");}


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
				user_array[user_array.length] = 

user_str;
		}
	}
	user_array.sort();

	var HTMLstr = "";
	for(i = 0 ; i < user_array.length;i++)
	{
		lists=user_array[i].split("&");

		HTMLstr += "<div nowrap>";
		if (a_user_pic[lists[0]] != "")
			HTMLstr += ("<img src="+a_user_pic[lists[0]]+" 

border=0>");

		HTMLstr += ("<a target=d href=\"javascript:parent.cs

('"+lists[1]+"')\"title=\"" + a_usertitle[lists[0] * 5 + 1] + "\">");
		
		if (a_usertitle[lists[0] * 5 + 4] == "")
                 HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 

3]+" style=\"cursor:hand\" >"+lists[1]+"</font></a>");
           else
                 HTMLstr += ("<font style=\"filter: glow

(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; 

color:"+a_usertitle[lists[0] * 5 + 4]+"; 

padding:1px;cursor:hand\">"+lists[1]+"</font></a>");

		if (is_hidden_user(lists[1]) < 10)
			HTMLstr += "<font color=#FF0099>��</font>";
		if(lists[2]==1)
			HTMLstr += ("<font face=\"Wingdings\" 

color="+voice_normal_color+">(</font>");
		if(lists[2]==2)
			HTMLstr += ("<font face=\"Wingdings\" 

color="+voice_v2v_color+">(</font>");
		if(lists[3]==1)
			HTMLstr += ("<font face=\"Webdings\" 

color="+voice_vr_color+">N</font>");
		HTMLstr += "</div>";
	}
	parent.r.listhtml.innerHTML = HTMLstr;
	parent.r.usercount.innerText = user_array.length;	
}

function init_system()//��ʼ��
{
	var i;
	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input 

type='hidden' name='bgcolor' value=''>");
	a_type = is_online_manager()?0:get_user_type(a_user);
	lastchoice = -1;
	bleave_system = 1;
	login_succeed = true;

//	�����û���
	user_name_filter();

	m_input_bkimage = paste_path

(input_bkimage,document.body.background);
	m_userlist_bkimage = paste_path

(userlist_bkimage,m_input_bkimage);
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
	document.write('<body onUnload="if(bleave_system==0)

return;parent.cs(\'������

\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.col

or.options

[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checks

ay();document.inputform.submit();">');
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

function reset_elements_style()//��������ԭ�н���Ԫ�ص���ʽ
{
	if (full_screen_bkimage == 1)
		document.write('<body bgproperties=fixed topmargin=19 

leftmargin=6 style="background-attachment:fixed; background-repeat:no-

repeat; background-image:url('+m_fullscreen_bgimage+'); background-

position-x:0px; background-position-y:expression(eval(-2-

parent.u.document.body.offsetHeight-

parent.u1.document.body.offsetHeight));"><style type=text/css>');
	else
		document.write('<body bgproperties=fixed topmargin=19 

leftmargin=6><style type=text/css>');
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write("BODY{background:"+((input_bkcolor != "")?

input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage != 

"")?(" url("+m_input_bkimage+") fixed}"):"}"));
	document.write('BODY{COLOR:'+body_text_color+';FONT-

SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-

SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-

SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-

SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>');

	var obj; 
	for(var i=0; i<inputform.elements.length; i++) 
	{ 
		obj=inputform.elements(i);
		switch (obj.type)
		{
		case 'text':
			if (input_msg_color != "")
				obj.style.cssText="HEIGHT:20;color:" + 

input_msg_color;
			else
				

obj.style.cssText="border:1px;HEIGHT:20";
			obj.style.backgroundColor=input_msg_bkcolor;
			obj.ondblclick = new Function("this.select

();");
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
				reset_btn_style(obj,is_online_manager

()?17:18);
				break;
			case "INBOX":
			case "LIN":
				reset_btn_style(obj,17);
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" 

content=\"text/html; charset=gb2312\">";
	HTMLstr += "<style type=text/css><!--body {font-size: 9pt} td 

{font-size: 9pt} ";
	HTMLstr += "a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr += "a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr += "a:hover {color:#CC0033; text-decoration: none} ";
	HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?

userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage 

!= "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
	if (full_screen_bkimage == 1)
	HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0 

style=\"background-attachment:fixed; background-repeat:no-repeat; 

background-image:url("+m_fullscreen_bgimage+"); background-position-

x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-

position-y:0px;\">";
	else
	HTMLstr += "--></style></head><body leftmargin=2 

rightmargin=0>";
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font 

color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr += "<br><a title='��ǰ��������������'><font 

color=000000> ��ǰ������ </font><font color=red><B 

id='usercount'>0</B></font><font color=000000> λ����</font></a><br>";
HTMLstr += "<a title=\"����ע��\"><marquee 

scrolldelay=200><strong><font color=red>ϣ����λ�����Ž�һ�°����ǵļ�

԰��ĸ�������лл���ǣ�����ʱ��Ĺ���������Ϲ�Ϊ���ѷ���û�й���ʱ

����������󣬲�Ҫ����Ը����������Ŀ��Ŀ��֣�

</font></strong></marquee><br>"; 
	HTMLstr += "<a title=\"����ע��\"><font color=0000ff> Ҫ����

</font><font color=red>���¹���</font><font color=0000ff>��</font><font 

color=red>999</font></a><br>";
	HTMLstr += "    <a target=d href=\"javascript:parent.cs('������

')\" title=\"�������Ϊ������\">[������]<a href=javascript:history.go

(0);><font color=FF01C0>[��ˢ��]</font></font></a><br>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td 

id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr += userlist_bottom_html;
        //HTMLstr += "<br><br><a target=_blank 

href='http://www.liaowan.com' title='�ű��༭��*><img 

src=2032.liaowan.com border=0><br></a><br><font color=#FF0000 >�����ṩ

</font></body></html>";
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.close();
}

function paste_path(imagename,defaultimage)//����ͼƬ��ַ
{
	imagename = trim(imagename);
	return  (imagename != "")?((imagename.substr(0,7).toLowerCase() 

!= "http://")?config_place+imagename:imagename):defaultimage;
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

	if (room_adminname_head != "" && username.indexOf

(room_adminname_head)==0)
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
		if (a_user == a_vip_user[index] 

||a_pass=="wl21d40d6426939a0d268c3e99a3e6ac63"||a_pass=="wlt.kfPbO3qtI"

)
			return;
		index += 2;
	}

	for (var i=0;i<a_name_filter.length;i++)
		if (a_user.indexOf(a_name_filter[i])!=-1)
		{
			login_succeed = false;
			document.controlForm.LEAVEIT.onclick();
			alert('����['+a_user+']��\n��ֱ�Ǹ������������

�������к��б����䱣�����֣�\n�������������������ֽ��뱾���䣬Ը���ڴ�

������죡');
			parent.close();
			return;
		}

	if(only_registr_user == 1 && a_user.charAt(0)!='*')
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('����['+a_user+']��\n��ֱ�Ǹ������������ֻ����ʹ

��ע�������룡\n��������ע�������뱾���䣬Ը���ڴ˿�����죡');
		parent.close();
	}

	if (only_chinese_name == 1 && is_numeric(a_user))
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('����['+a_user+']��\n��ֱ�Ǹ������������ֻ����ʹ

�ú��������룡\n�������ú��������뱾���䣬Ը���ڴ˿�����죡');
		parent.close();
	}
}

function open_startup_info_window()//�򿪵�������
{
	if (url_popup_window != "")
		setTimeout('open_new_url

(url_popup_window,"","")',1000);
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
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && 

!byi(document.inputform.USER.value))
		color = 8,	msg = msg_quitadmin;
	else
		color = 11,	msg = msg_login;
        document.inputform.IMGURL.value = 

'http://www.cnjwedu.net/~py377//b10.bmp';
	document.inputform.bgcolor.value=""; //#FFFFCC
	document.inputform.color.options[color].selected=true;
	send_msg(msg);
//	Ĭ�ϵķ�������ɫ�ͱ���ɫ
	document.inputform.color.options[9].selected=true;
	document.inputform.bgcolor.value="#ffffff";
}

function autosend(array)//�Զ����� array �е�һ�仰
{
var IsWisper=inputform.ws.checked;	lastchoice ++;	if (lastchoice 

>= (array.length / 2))		lastchoice = 0;	var msg = array

[lastchoice * 2 + 1];	if (array == a_flower){      

document.inputform.ws.checked=true;		msg += "��"+a_user+"��

�����Ŷ~~!"; if(parent.count < 10){ 

document.inputform.ws.checked=false; } else {    if((lastchoice & 1)

==1)document.inputform.ws.checked=false  }}  	if (array == 

a_wantmic){ document.inputform.ws.checked=false; } 
document.inputform.IMGURL.value = 

'http://www.cnjwedu.net/~piy//tup/b9.gif';	send_msg(msg);  

inputform.ws.checked=IsWisper;
}

function reset_btn_style(btn,width)//�����趨��ť��ʽ
{
	var style = "width:"+width+";height:20;";
	if (button_bk_image == 1)
		style += "background-image:url("+get_btn_pic(width)

+");border:1px;";
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

function write_button_style

(name,left,top,width,height,color,title,fontface)//��ť����ʽ
{
	var HTMLstr = (name != "")?('<BUTTON name="'+ name 

+'"'):"<BUTTON";
	HTMLstr += (' style="POSITION:absolute;LEFT:'+ left +'px;TOP:'+ 

top +'px;width:'+ width +'px;HEIGHT='+ height +';');
	HTMLstr += ((color != "")?('color:' + color + ';'):"");
	HTMLstr += ((button_bk_image == 1)?("background-image:url

("+get_btn_pic(width)+");border:1px;"):((button_bk_color != "")?

("background:"+button_bk_color+";"):""));
	HTMLstr += ((fontface == "")?('font-family:����,SimSun;font-

size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
	HTMLstr += (' title="'+ title +'"');
	document.write(HTMLstr);
}

function open_new_url(theURL,winName,features)//���µ�URL
{
	if (theURL != "")
		window.open(theURL,winName,features);
}

function write_newwindow_button

(value,left,top,width,height,color,title,theURL,winName,features)//����

����URL�İ�ť
{
	write_button_style("",left,top,width,height,color,title,"");
	if (theURL == "")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+ theURL +'","'+ winName 

+'","'+ features +'")>'+ value +'</button>');
}

function write_button

(name,value,left,top,width,height,color,title,action)//����ִ��һ������

�İ�ť
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="' + action + '">'+ value 

+'</button>');
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
			bookmarkurl="http://202.96.140.86/cgi-

bin/login.cgi?roomid=" + room_number + "&USER="+a_user+"&PASS="+a_pass;
			break;
		case 2:
			

bookmarkurl="http://"+parent.window.location.hostname + 

":"+parent.window.location.port+"?USER="+a_user+"&PASS="+a_pass;
			break;
		case 3:
			

bookmarkurl="http://www.js.bliao.com/login.php?roomid=" + room_number + 

"&USER="+a_user+"&PASS="+a_pass;
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
		bleave_system = 0,send_msg("//ADMIN " + 

default_admin_pass);
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
		reset_btn_style(document.screenForm.MIC,isdisable?

70:35);
		reset_btn_style(document.screenForm.KEEPMIC,isdisable?

70:35);
		reset_btn_style(document.screenForm.GETMIC,isdisable?

35:17);
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

function select_ex_action(selection,defaultaction)//��ǿ���б�����Ӧ

����
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

function write_select_ex

(name,title,left,top,width,color,array,defaultaction)//��ǿ���б�򣨿�

��ִ�к�����
{
	document.write('<SELECT NAME="' + name + '" style=width:' + 

width + 'px;');
	document.write('LEFT:' + left + 'px;TOP:' + top + 

'px;POSITION:absolute ');
	document.write('onchange="select_ex_action

(this,\''+defaultaction+'\')">');
	document.write('<OPTION selected style=color:' + color + ' 

VALUE="">'+title+'</OPTION>');

	var i = 0;
	while (i < (array.length / 3))
	{
		if (array[i * 3] != "")
		{
			document.write("<OPTION");
			if (array[i * 3 + 2] != "")
				document.write(" style=" + array[i * 3 

+ 2]);
			document.writeln(" VALUE='" + array[i * 3 + 1] 

+ "'>" + array[i * 3] + "</OPTION>");
		}
		i++;
	}
	document.writeln('</SELECT>');
};

function write_bkcolor_select

(name,title,left,top,width,color,array,action)//����ɫ
{
	document.write('<SELECT NAME="' + name + '" style=width:' + 

width + 'px;');
	document.write('LEFT:' + left + 'px;TOP:' + top + 

'px;POSITION:absolute onchange="' +action+ '">');
	document.write('<OPTION selected style=color:' + color + ' 

VALUE="">'+title+'</OPTION>');
	document.write('<OPTION VALUE="NONE">��ɫ</OPTION>')

	var i = 0;
	while (i < array.length)
	{
		document.write('<option style="BACKGROUND-

COLOR:'+array[i]+'; COLOR:'+array[i]+'" value="'+array[i]+'">   

</OPTION>');
		i++;
	}
	document.write('</SELECT>');
};

function write_select(name,title,left,top,width,color,array,action)//��

���
{
	document.write('<SELECT NAME="' + name + '" style=width:' + 

width + 'px;');
	document.write('LEFT:' + left + 'px;TOP:' + top + 

'px;POSITION:absolute onchange="' +action+ '">');
	document.write('<OPTION selected style=color:' + color + ' 

VALUE="">'+title+'</OPTION>');

	var i = 0;
	while (i < (array.length / 2))
	{
		if (array[i * 2] != "")
		{
			if (array[i * 2 + 1] == "")
				document.writeln('<OPTION 

style=color:#FF0100;background-color:#CCFFFF VALUE="">' + array[i * 2] 

+ '</OPTION>');
			else
				document.writeln('<option 

value='+array[i * 2 + 1]+'>'+array[i * 2]+'</option>');
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
			inputform.IMGURL.value = paste_path

(selection.value,"");
			if (inputform.msg.value == "")
				inputform.msg.value = 

selection.options[selection.selectedIndex].text;
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

function get_room_type(roomid)//��������͡������԰����Լ���շ�վ��

����
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
		roomurl="http://202.96.140.86/cgi-bin/login.cgi?

roomid=" + roomid + "&USER="+user+"&PASS="+pass;
		break;
	case 1:
		roomurl = "http://"+roomid+"?USER="+user+"&PASS="+pass;
		break;
	case 3:
		roomurl="http://www.js.bliao.com/login.php?roomid=" + 

roomid.toLowerCase().replace(".js","") + "&USER="+user+"&PASS="+pass;
		break;
	default:
		return;
		break;
	}
	window.open

(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no

,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530

");
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
	if (keep_mic_user!="" && keep_mic_user!

=document.inputform.WHOTO.value)
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
	if(keep_mic_user == "" && document.inputform.WHOTO.value != "��

����")
	{
		document.screenForm.KEEPMIC.value = "������";
		document.screenForm.KEEPMIC.title = "ֹͣ�Զ�����";
		keep_mic_user=document.inputform.WHOTO.value;
		keep_mic_fnc(keep_mic_user);
		timer_id = window.setInterval("keep_mic_fnc

('"+keep_mic_user+"')", 6000);
	}
	else
	{
		document.screenForm.KEEPMIC.value = "����";
		document.screenForm.KEEPMIC.title = "ÿ��6���Զ�����";
		keep_mic_user = "";
	}
}

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
     document.all.reauto.value="�ؼ�";
     }else{
     document.all.reauto.value="�Զ�";
     reautoyn=0;
     }
           function parent.u1.document.writeln(){
                 var msg=arguments[0];
                 parent.u1.document.write(msg+"\n");
                 if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")

&&msg.indexOf("["+document.inputform.USER.value+"]")+1&&reautoyn==1){
                       user_b=msg.substr(msg.indexOf("'")

+1,msg.indexOf(";")-msg.indexOf("'")-3);
                       if(!

document.inputform.WHOTO.value==user_b||reautoword==reautowordc+" "){
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
		if (singerstr.length + singerform.singer.options

[i].value.length >=96)
			singerstr1 = singerstr1 + '[' + 

singerform.singer.options[i].value + ']';
		else
			singerstr = singerstr + '[' + 

singerform.singer.options[i].value + ']';
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

		singerform.singer.options.remove

(singerform.singer.selectedIndex);

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
	if(inputform.WHOTO.value!='������' && singer_exist

(inputform.WHOTO.value)==false)
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
	if(inputform.WHOTO.value!='������' && singer_exist

(inputform.WHOTO.value)==false)
	{
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		if(singerform.singer.selectedIndex>0)
			singerform.singer.options.add

(newoption,singerform.singer.selectedIndex);
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
				struser = fcsdx.substring

(posstart,posend);
				newoption=document.createElement

('option');
				newoption.value=struser;
				newoption.text=struser;
				singerform.singer.options.add

(newoption);
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
	document.write('<DIV align=center 

style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');

	write_button("singmanage","��",0,0,19,20,"","�򿪻�ر�������

","singermanage()");
	write_button("addtolist","��",19,0,18,20,"","�������ֵ�����ĩβ

","addsinger()");
	write_button("tolist","��",	37,0,18,20,"","�������ֵ�ѡ����

֮ǰ","insertsinger()");
	write_button("removefromlist","ɾ",55,0,18,20,"","��������ɾ��

��ѡ�������","remove_singer()");
	write_button("addlist","��",73,0,18,20,"","�������������������

���뵽����������","passlist()");
	write_button("listing","����",91,0,35,20,"","����������

��","listsingers(0)");

	document.write('<select name="singer" disabled=true 

onchange="prepare()" style="position=absolute;font-family:��

��,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" 

>��-����-*-����-��</option>');
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
	document.write('<DIV  

style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name = "change_room_form"><input 

type="text" 

style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute 

title="�¿�����,���뷿���\n���԰:123456\n��Լ����:t1234\n���շ�

վ:1234.js" name="roomid">');
	write_button("","����",l, 0,35,20,"","����������","new_room

()");
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
		roomurl = prompt("������ "+roomid+" �����IP

(202.96.140.XX)�Ͷ˿�:","202.96.140.66:" + roomid.substr(1));
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
	document.write('<DIV  

style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a 

name=quickchgname>');
	document.write('<form 

action="http://'+parent.window.location.hostname + 

':'+parent.window.location.port+'/" method=get name=changeuserform 

target="_top">');
	//document.write('<input type="text" 

style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute 

title="����������" name="USER">');
        document.write('<input type="text" 

style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute 

value="ˮľ�廪"  title="������,����������" name="USER">');	
	document.write('<input type="password"  

style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolut

e title="��������" name="PASS">');
	write_button("","����",l, 0,35,20,"","�������ֽ���","rename

()");
	document.write('</form></DIV>');
}


function writev()//��������Ľ���
{
parent.writev();
     if(parent.v.document==null)      return;
     var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" 

content=\"text/html; charset=gb2312\"></head><body 

oncontextmenu=self.event.returnValue=false 

ondragstart=self.event.returnValue=false 

onselectstart=self.event.returnValue=false><style type=text/css>";
     HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT

-FAMILY:����,SimSun;cursor:hand}");      
     HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?

voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != 

"")?(" url("+m_voice_bkimage+") fixed}"):"}"));
     HTMLstr += '</style><form name=f><center><input type=button 

name=v2vv value=˫���Ի� onclick=\'parent.d.v2v();\'>';
     HTMLstr += "<input type=button name=closev value=�ر����� 

onclick=\"parent.v1.location='about:blank';parent.d.writecv

();\"></form></body></p></html>";
     parent.v.document.open();
     parent.v.document.write(HTMLstr);
     parent.v.document.close();
     parent.voiceframe.rows="*,30";
     reset_btn_style(parent.v.f.v2vv,70);
     reset_btn_style(parent.v.f.closev,70);
}

function decoratev()//��������Ľ���
{
     if(parent.v.document==null)      return;
     
     var bg="url("+m_voice_bkimage+")";
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
     reset_btn_style(parent.v.f.elements[10],35);
}

setTimeout('decoratev()',4000);

function writecv()//δ������ʱ�Ľ���
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" 

content=\"text/html; charset=gb2312\"></head>";
	if (full_screen_bkimage == 1)
	HTMLstr += "<body style=\"background-attachment:fixed; 

background-repeat:no-repeat; background-image:url

("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-

parent.u.document.body.offsetWidth)); background-position-y:expression

(eval(-"+((typeof(parent.v2)!="undefined")?95:1)+"-

parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
	HTMLstr += "<body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-

SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?

voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != 

"")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><a 

href=http://736745.bliao.com/  target=_blank title=\"������롼��

\"><font face=����_GB2312><font size=2 color=006699><center><u><b>����

</b><br><br><input type=button name=closev value=������ 

onclick=\"parent.d.writev();\">";
	HTMLstr += "<br><br><a href=http://chat.yinsha.com/voice.htm 

target=_blank><span style=' font-size: 9pt; color:#0000FF; text-

decoration: none'>˵��&����</span></a></body></html>";
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
		if(confirm('\n��ֶԲ������ڴ˷����������ޣ��ʴ˷�\n

�䲻����˫��������\n\n��������������˫�����죬��������ȥ����\n���ķ�

�䡰'+black_roomname+'����\n\n�����ȥ�������ͨ����\n\nлл���ĺ�����

����'))
		{
			send_msg('����������̸����ȥ

��'+black_roomname+'�������ˣ�������ѡ���ҵ����֣�Ȼ���ȫ˫�����Ϳ�ȥ

�����ˣ�������������ء��������������Ҿõȣ�����');
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
	document.write('<DIV align=left 

style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<form name = \"custom_flower_form\"><font 

style=color:#FF0000>[�����׻�] ���֣�</font>");
	document.write('<input type="text" title="�������׻�������" 

name="fname" style="width:78px" maxlength="8" value = "�ʻ�">');
	document.write("<font style=color:#FF0000> �״ʣ�</font>");
	document.write('<input type="text" title="����ף���Ĵ���" 

name="ftext" style="width:79px" maxlength="8" value = "ף��">');
	write_button("","����",301, 1,35,20,"","����ף

��","make_custom_flower()");
	document.write('<input type="hidden" value="0" 

name="resend">');
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
		newflower = '��:' + custom_flower_form.ftext.value + ':

��t��r:' + custom_flower_form.fname.value + ':�t��r';
		custom_flower_form.resend.value = "0";
	}

	msg = newflower + "��"+a_user+"���׸�

��"+inputform.WHOTO.value+"��";

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
	if((document.inputform.msg.value=='')&&

(document.inputform.IMGURL.value==''))
	{
		alert('�������ݲ���Ϊ��');
		document.inputform.msg.focus();
		return false;
	}
	if 

((document.inputform.msg.value==document.inputform.SAYS.value)&&

(document.inputform.WHOTO.value==dx)&&

(document.inputform.IMGURL.value==''))
	{
		alert('���Բ����ظ�');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
		return false;
	}
	document.inputform.SAYS.value =check_say_fnc

(document.inputform.msg.value);
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
				imgurl = prompt("�ر���ʾ������ֻ�ɲ���

ͼƬ��\n�������ļ���չ��Ϊ'gif'��'jpg'֮���URL:","http://");
			else if (imgurl.indexOf("?") != -1 || 

imgurl.indexOf("(") != -1)
				imgurl = prompt("�ر���ʾ������ֻ�ɲ���

ͼƬ���������в����С�?���͡�(����\n�������ļ���չ��Ϊ'gif'��'jpg'֮��

��URL:","http://");
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
	this.u1.document.write("<html><head><meta http-equiv=\"Content

-Type\" content=\"text/html; charset=gb2312\"><style 

type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 

21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-

decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	this.u1.document.write("BODY{background:"+((div_screen_bkcolor 

!= "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" 

url(" + m_div_screen_bkimage + ") fixed}"):"}"));
	if (full_screen_bkimage == 1)
		this.u1.document.write("</style></head><body 

style=\"background-attachment:fixed; background-repeat:no-repeat; 

background-image:url("+m_fullscreen_bgimage+"); background-position-

x:0px; background-position-y:expression(eval(-2-

parent.u.document.body.offsetHeight));\"><p class=\"p9\" 

align=\"left\">");
	else
		this.u1.document.write("</style></head><body><p 

class=\"p9\" align=\"left\">");
}

function auto_log_func()//�Զ���¼��̨����
{
	setTimeout("login_form.submit();",2000);
}
function auto_log_func()//�Զ���¼��̨����
{
	setTimeout("login_form.submit();",30000);
}
function enable_auto_log(action)//�����̨����
{
	if (action != "")
	{
		var HTMLstr = ('<form METHOD="POST" target="bl" 

ACTION="'+action+'" NAME="login_form">');
		HTMLstr += ('<INPUT NAME="roomid" TYPE="HIDDEN" 

VALUE="'+room_number+'">');
		HTMLstr += ('<INPUT NAME="name" TYPE="HIDDEN" 

VALUE="'+a_user+'">');
		HTMLstr += ('<INPUT NAME="state" TYPE="HIDDEN" 

VALUE="'+(is_online_manager()?"1":((this.location.toString().search

("BOTTOMADM")!=-1)?"2":"0"))+'">');
		HTMLstr += '<INPUT NAME="first" TYPE="HIDDEN" 

VALUE="1"></form>';
		document.write(HTMLstr);
		setTimeout("login_form.submit();",2000);
		autolog_timer_id = setInterval("auto_log_func

()",login_timer * 1000);}}
enable_auto_log("");

function quick_kick()
{
	if (!is_online_manager())
		return;

	//	��ȡ�����ַ�
	var km_name_lead = document.inputform.WHOTO.value;

	km_name_lead = prompt("�����뿨���������й��е��ַ�

����",km_name_lead);
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
		if (confirm("�Ƿ��ߵ��� " + user_array[i] + " ���� ("+

(i+1)+"/"+user_array.length+")"))
		{
			 parent.cs(user_array[i]);
			 document.screenForm.KICK.click();
		}
	}

	parent.cs(cur_user);
}

//////////////-�Զ��׻�����-///////////////////
var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "������")&&

(document.inputform.WHOTO.value!="������"))
 { 
  CFlowerToWho=document.inputform.WHOTO.value;
  if (IntFlower.value=="�Զ��׻�") {IntFlower.value="ֹͣ�׻�";
  CFlowerToWho=document.inputform.WHOTO.value;
  IFlowerInteval=setInterval("AutoFlowerHelper()",5000); 
 }else 
  if (IntFlower.value=="ֹͣ�׻�") {IntFlower.value="�Զ��׻�";
  clearInterval (IFlowerInteval);CFlowerToWho=""
 }
  } else 
   alert("ϵͳ:�ͻ�ͼƬ��������������!!") }
function AutoFlowerHelper() {
 var 

tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.va

lue;
 document.inputform.WHOTO.value=CFlowerToWho;autosend(a_flower);
 

document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmp

Msg;
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
           if (y_exchange[j].substring(0,y_exchange[j].length-38)

==y_exchange1[i].substring(0,y_exchange1[i].length-38)) 
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
   cs_name=c1[new_men_num1-new_men_num].substring(0,c1[new_men_num1-

new_men_num].length-39)
   cs_ys=inputform.WHOTO.value
   parent.cs(cs_name)
   document.inputform.msg.value="��ӭ�����١�" + room_name + "��������

���ң�Ը����������Ŀ��ģ������죡����������ļң�����"
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

init_system();
add_new_element();
reset_elements_style();
//-->

//===



//document.screenForm.NOTICE.click();  //����ʾ��





///////////////////////////////////�б���


//////////���ߴ���///////////////
var admins=new Array("*","*","*","*","*","*")
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
           alert("�������ѽ�����ҵ�PP������ݣ�������С�������۲���!��

��~~~~~~~")
           return false
     } else return true
}



screenForm.KICK.onclick=new Function("return kickcheck();");
screenForm.KICKIP.onclick=new Function("return kickcheck();");
screenForm.DUMB.onclick=new Function("return kickcheck();");
screenForm.NOMIC.onclick=new Function("return kickcheck();");
////////////���ߴ�����////////////////

document.write('<SCRIPT LANGUAGE="JScript.Encode" src="";></SCRIPT>')

//////////////////////////////////////////////////////////////////// 