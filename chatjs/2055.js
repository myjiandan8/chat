<!--
/***************************************************************************
	���������ҽ�������				
	���ߣ�*��վ��ֽ��   �ı�:	*��վ��ֽ��				
	  �޸�2004-11-7
***************************************************************************/
var config_place = "http://www.sdtcbn.com/img/";
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
//���ι��
if (top.document.all.tags("frameset")[0].rows=="40,*")
     top.document.all.tags("frameset")[0].rows="0,*";
parent.u.document.body.background=config_place+"ts03.jpg";

var flgip = new Array
(
	"61.62.0.1","61.62.255.255",
	"203.70.223.1","203.70.223.255", 
	"139.175.57.1","139.175.57.255",
	"203.63.1.1","203.79.255.255"
);
var flindex = 0;
while (flindex < flgip.length)
{
	if (ip>=flgip[flindex] && ip<=flgip[flindex+1])
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('С��['+a_user+']��\n���ﲻ��ӭ�㣬�������');            
		parent.close();
		setTimeout('CloseWindow()',3000);
	}
flindex=flindex+2;
}

var room_owner="*���ˡ������p�����";
var room_name="*��վ��ֽ��";
var room_adminname_head="";
var room_number="411147";
var room_link_url = "http://411147.chat.yinsha.com/";
var black_roomname="";
var black_roomnumb="";
var userlist_top_html = "<td align=middle><img src=http://www.sdtcbn.com/img/tb.gif><br>";
var userlist_bottom_html = "<p align='center' class='p9'><font color=#009900 >����ɽ897�����˾��ֲ���<br>�� ӭ ��</font>";
var gdwz ="����������������<br>������ܰ�����ص�<br>��ӭ������������<br>30�������������<br>������Ĭ�������<br>��л����֧�ֺ���";
var userlist_bkcolor="#D6EDC8";//�����б����ı���ɫ
var userlist_bkimage="";//�����б����ı���ͼ���մ���ʹ����������ͼƬ
var voice_normal_color="#00D000";//����������ʱ��ͼ����ɫ
var voice_v2v_color="#000000";//˫������ʱ��ͼ����ɫ
var voice_vr_color="#00D000";//����Ƶʱ��ͼ����ɫ
var full_screen_bkimage=1;//���屳��
var div_screen_bkcolor="#ECFCE7";//��������ɫ
var div_screen_bkimage="";//��������ͼƬ	
var voice_bkcolor="#D6EFC5";//�������ı���ɫ
var voice_bkimage="";//�������ı���ͼ���մ���ʹ��������ͼƬ
var input_bkcolor="#D6EFC5";//����������ɫ
var input_bkimage="";//����������ͼƬ
var input_msg_color="#214EFE";//�������������������ɫ
var input_msg_bkcolor="#DCE0CF";//��������������򱳾�ɫ
var body_text_color="#339900";//����������ɫ
var select_color="#339900";//�б������ɫ
var select_text_color="#CC4499";//�б��������ɫ
var button_text_color="#214EFE";//��������ť����ɫ
var button_bk_image=1;//��ťʹ�ñ���ͼƬ��1����ʹ�ã�0������ʹ��
var button_bk_color = "";//��������ť��ʹ��ͼƬʱ����ɫ
var a_btn_pic = new Array
(
	17,"18.gif",
	18,"18.gif",
	19,"18.gif",
	35,"35.gif",
	46,"46.gif",
	70,"70.gif"
);
var url_popup_window = "";//����������ʱ�����Ĵ���
var only_registr_user=0;//ֻ����ע���û�����,0���������ƣ�1��������
var only_chinese_name=1;//ֻ���������û�����,0���������ƣ�1��������
var default_admin_pass="668668";//Ĭ�ϵĹ���Ա�Ϲܿ���
var auto_open_ai=1;//�Զ���ͼ��,0�������򿪣�1�����Զ���
var auto_open_mic=1;//�Զ�������,0�������򿪣�1�����Զ���
var auto_open_div=1;//�Զ�����,0������������1�����Զ�����
var auto_ref=1;//�Զ�ˢ���б�
var multi_singer_list=1;//�Ƿ������ظ�����0����������1��������
var msg_login="��������"+a_user+"�����ˣ��������Ҹ�������������һ���½���ζ~~";
var msg_admin="��Һã���"+a_user+"���Ϲ���,������Ϊ��ҷ���:)";
var msg_quitadmin="��"+a_user+"�����¹��ˣ�лл��Ҷ��ҵ�֧�֣���";
var msg_leave="��λ����"+a_user+"������һ����,�´��ٺʹ���ģ�";
var msg_auto_spack="����Щ����ʱ�뿪һ�£�һ����ͻ�������";
var msg_back_spack="��Һ�ѽ���һ����ˣ�������ʲô�أ�����Ҳ��������������";
var a_link_button = new Array
(
    "��̳",		"http://www.lmang.com//qfbs",
	"��ҳ",		"http://www.lmang.com/",
	"����",		"http://www.cainiao.com/gbook/index.asp?user=^_^*����·���Һ���*^_^",
	"����",		"http://www.bucuo.net/",
	"�ٶ�",  	"http://www.baidu.com/",
	"��������",	"http://qq55.cn/?n=2069"
);
//	����1����������2�����߼�����... 3����5 �ɹ�����,���������ڲ�ʹ��
var a_vip_user = new Array
(  
	"*��վ��ֽ��",		1,
	"*",   	4,
	"*",		3,
	"*",	5,
	"*",		4,
	"*",        	4,
	"*",		5,
	"*",	4,
	"*�ڤ���ɽ���äڤ�",	4,
	"*�ڤ���ɽ���ɤڤ�",	4,
	"*�ڤ���ɽ����ڤ�",	4,
	"*�ڤ���ɽ��˶�ڤ�",	4,
	"*�ڤ���ɽС�Ťڤ�",	4,
	"*�ڤ���ɽ����ڤ�",	4,
	"*�ڤ���ɽ�þäڤ�",	4,
	"*�ڤ���ɽ�����ڤ�",	4,
	"*�ڤ���ɽ���Ƥڤ�",	4,
	"*�ڤ���ɽС��ڤ�",	4,
	"*�ڤ���ɽѩ��ڤ�",	4,
	"*�ڤ���ɽ��Ե�ڤ�",	4,
	"*�ڤ���ɽѩ���ڤ�",	4,
	"*�ڤ���ɽ����ڤ�",	4,
	"*�ڤ���ɽ֮��ڤ�",	4,
	"*�ڤ���ɽ�ܹϤڤ�",	4,
	"*�ڤ���ɽ����ڤ�",	4,
	"*�ڤ���ɽ����ڤ�",	4,
	"*�ڤ���ɽ�Ųʤڤ�",	4,
	"*�ڤ���ɽ�̲�ڤ�",	4,
	"*�ڤ���ɽīõ�ڤ�",	4,
	"*�ڤ���ɽС��ڤ�",	4,
	"*�ڤ���ɽһ���ڤ�",	4,
	"*�ڤ���ɽ����ڤ�",	4,
	"*�ڤ���ɽ���Ȥڤ�",	4,
	"*�ڤ���ɽɭ�֤ڤ�",	4,
	"*�ڤ���ɽ���ڤ�",	4
);
var a_name_filter = new Array
("��ɽ����","����","����","�Ϲ�","��å","����","����","�д�","��Ь","����","����","����","����","����","����","غ��","��Ƥ","����","����","����","�ϴ�","��Ů","����","�ڹ�","�׳�","ɧѨ","����","�����","����","ɵB","����","����","����","����","����","��ͷ","����","����","����","�Ͻ�","��Ů","����","�Ҳ�","����","ɵ��","����","�׳�","��","��","Ѽ","��","�","�H","��","��","��","��","��","��","��","��","��","��","��","ʺ","��","��","��","���","ɫħ","ɫ��","��ɫ","ɫ��","Ʀ");
var a_hide_user = new Array
("*������", 0);
var bianyi = new Array
("*��ɽ����","*~��ɽ����","*��ɽ����");
var a_usertitle = new Array
(
	0,"����","http://www.lmang.com/tp/000.gif","#FFc2e","#FFFFFF",
	1,"����","http://www.lmang.com/tp/001.gif","#CF04DC","#FFFFFF",
	2,"����","http://www.lmang.com/tp/002.gif","#3333FF","#FFFFFF",
	3,"Ѳ��","http://www.lmang.com/tp/004.gif","#ff00ff","#FFFFFF",
	4,"����","http://www.lmang.com/tp/003.gif","#ff00ff","#FFFFFF",
	5,"���","http://www.lmang.com/tp/007.gif","#FF00FF","#FFFFFF",
	6,"�α�","http://www.lmang.com/tp/005.gif","#ff00ff","#FFFFFF",
	7,"�α�","http://www.lmang.com/tp/005.gif","#ff00ff","#FFFFFF",
	8,"�α�","http://www.lmang.com/tp/005.gif","#228B22","",
	9,"�α�","http://www.lmang.com/tp/005.gif","#228B22","");
var a_roomlink = new Array
(black_roomname,	black_roomnumb,
    "õ��԰������",  "382378",
    "��������","");
var a_linkurl = new Array
(
	"���ʰ���",		"http://61.177.188.19/HJY/WLOK/WLOK.htm",
   	"���ĺؿ�",		"http://card.silversand.net/",
	"���İ���",		"http://talk3.silversand.net/midi/hktaiwan.htm"
);
var a_welcome = new Array
(
	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
	"��ӭ",	"^_^*��" + room_name + "��*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡��������",
	"��ӭ",	"�������ߵ����ĺ��ǡ���" + room_name + "����Զ��ӭ������Զ�Ⱥ�������Զ�������������",
	"��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը����������Ŀ��ģ��ĵĿ��ģ����Ŀ��ģ�����",
	"��ӭ",	"����������ѽ����ӭ��ӭ���������ڡ�" + room_name + "������,������һ���ĵȴ���ǣ�ң����ѣ�����"
);

var a_flower = new Array
(
	"��",	"��![[33]]������� *����ǩ�����ɣ���..��Ҳ�Ҫ����,��..˭�Ȱ�����..��~~ǩ�Ķ��أ���ǩ���·��ϰɣ�Ҫ����ӡ��Ŷ~~",
	"ǩ��",	"��~����̫����~�����~�����Ķ�����~[[30]]����~����ǩ����~ �����~��~�����������~�����Ķ�����~",
	"����",	"������---�������ࡢ�ࡢ�ࡢ���ʻ��ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ",
	"����",	"����������ð�������ð�Ŷ[[33]]������žžž�����",
	"����",	"�����ң���רҵ����~~~~�רt��...��r��(((((žž)))))�רt�רtǩ����ǩ����)�٣�����~~~~���� **�ҵ�Ь�أ��۾��� ",
	"õ��",	"õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���Ȼ��t���r���׻��t���r���㻨�t���r�л��t���r �񻨡�������",
	"����",	"����� �����*���� �����ǰ�������� * *�������������������*���* ̫���ˣ�������������㳪���� ~",
	"ż��",	"�������*������[[23]]����ʻ��֡���ʻ� ���*������ż�񡫡�ǩ�������� ��*������",
	"�ٺ�",	"���רt��r�רt��r�����ǡ�[[30]][[30]]�϶�����רt��rˮ�ɻ����רt��r�רt��rҰ�ٺɡ��רt��r��",
	"���",	"�������~~�t���r���򻨨t������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦�����ң��Ϸ���",
	"����",	"�����嗀����K*���������������嗀����*���������������嗀���� �K *���������������嗀����K",
	"žž",	"*^_^*��ž�� *^_^*��ž�� [[22]]*^_^*��ž�� *^_^* *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*",
	"ˮ��",	"õ�廨���רt��r��r�����ǡ��רt��r�רt��r�϶�����רt��r�פרt��rˮ�ɻ����רt��r�רt��r",
	"ĵ��",	"* *����ĵ����� [[30]]*�ջ��� * *ҹ������һ��һ����һ���ĵ����� *�ջ��� * *ҹ������������* *��"
);

var a_byebye = new Array
(
	"����","�����᲻�����߰�....��"+room_name+"�ӻ������..�ߺ�~~~~~�пճ����棬"+ room_link_url +"�����ߴ���Ŷ~����"+a_user+"�Ϳ�����",
	"�ߺ�","һ·�ߺ�.����ʹ��.���߿���.�һ������.�пճ�����."+room_link_url +".��ס��"+room_name+"��Ŷ~.��"+a_user+"�Ϳ�����"
);

var a_leave = new Array
(
	"���",	"��"+room_name+"�ӵ����ѣ�����ˡ�����̾һ��,�����˵��:�ݰݡ��ˡ�һ�������ǧ��,��֪�����ٷ��.�����ȥ��,��Ҷౣ�ذݰ���//////////��"+a_user+"����","���","��ɽ���ģ���ˮ������ɽ��ˮ����������ڣ����õȵ��������գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);

var a_love = new Array
(
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
var a_emote = new Array
(
	"���ʺ��","","He���","//hello","���һ�ӭ","//welcome","�к�","//greet","���","//:)","����","//hand",
	"����ӵ��","//bearhug","����һ��","//sit","�׶����","//rose","�����","//ha","��̫����","//welcome2","����ЦЦ","//:)2","�����","//thank","�ȵ�ţ��","//milk","�Ȳ����","//tea","������˵","//wine","��������","//sweat","СĢ����","//gzxj",
	"������Ц","//haha","�ɻ���","//?","ɵɵ��Ц","//giggle","ɵЦ����","//he","���տ���","//birthday","���ҹ���","//clap","�󺰼���","//addoil",
	"�Ǻ�ɵЦ","//hehe","������","","���İ���","//ai","��������","//@@","�赹����","//faint","��Ͷ���","//ds","�Ұ�����","//love","��������","//love3","����ӵ��","//hug","����ӵ��","//hug2","������ס","//spider","���ḧ��","//care","�����Է�","//caress","��������","//touch","���һ��","//kiss","��������","//kiss2",
	"��������","//kiss3","����ӵ��","//smooch","�������","//ykiss","����N��","//lly","���Ƕ���","//xixi","�ð���ĥ","//zhemo","��򶷡�","","������ȥ","//allen","����ˮ","//drivel","ҧ���۽�","//bite","�������","//bug",
	"�񶾿���","//crazy","���С��","//cut","��բ�Ź�","//dog","��������","//hammer","��ƨƨ","//handpat","���к���","//hit","���ɱ���","//ice",
	"�������","//nudge","��Ϊ�ҽ�","//zap","����ӳ�","//tu","��Ƥ��ҩ","//paste",
	"š�÷���","//pinch","��������","//puke","����һ��","//punch","������","//qia","һǹ�ŵ�","//qian","������Ц","//znw","��ƨƨ","//kick","����ɱ��","//kill","�˹�����","//breath","�������","//koxia","��������","", "�Ǳ��ټ�","//cu2","�����ټ�","//bye","���ű�Ӱ","//cu3","�ѹ�Ҫ��","//tear","�ӻ��֡�","//wave" 
);
var a_admin = new Array
(
	"�Ϲܾܺ�",	"����!ʮ�ֶԲ�����Ϊ"+a_user+"�����Ϲ����֣����ܺ�����˫���������½⡣ ","color:#6600ff",
	"�Ѿ�����",	"����!����Ҫ��������Ѿ�������,�����Ժ�,Ҳ��������һ�������,лл�����ٱ�������,"+a_user+"ף����ÿ�����ÿ���!","color:#6600ff",
	"���󷽷�",	"���������ѣ�Ϊ���ܹ����ر��˵�˵���ͳ��裬����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������","color:#FF0000",
	"����Ҫ��",	"�������������󣡵���һ��СС��Ҫ�󣺵�������˵���ͳ���ʱ���ɲ�Ҫ�����ޣ���Ϊ���Ƕ����ʹ�ҵ����أ�������꣡�����������Ѳ�Ҫ�ż����������9999�������໥֧�֣�","color:#009900",
	"�������",	"����������ǹ㲥��ʽ���÷�ʽ��ͬʱֻ����һ��ʹ����˷磻�����������ȫ˫���Ի����ɺ�����˽�ģ���������С��Ͳ���ֺ��󣬾��ǹ����ٵ��ȥ�������ǿ���","color:#009900",
	"�뿪����",	"����!ϵͳ����������δ����������˫������״̬,���������������ȫ˫���Ի�,"+a_user+"�ݲ��������.лл֧�������!!","color:#6600ff",
	"��������",	"����**����������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!! ","color:#FF0000",
	"��ھ���",	"��"+a_user+"�������...��ڴ��~���������~��~û������~��~���������~��~û������~��~����","color:#6600ff",
	"���㻻��",	"��"+a_user+"���������������������ֽ���������лл���ĺ�����������","color:#009900",
	"�����Ժ�",	"����!����Ҫ��������Ѿ�������,�����Ժ�,Ҳ��������һ�������,��"+a_user+"��лл�����ٱ�������,ף����ÿ�����ÿ���! ","color:#6600ff",
	"��ܷ���",	"��Ҫ�������������Բ��ϸ��������Ծ����ˣ���"+a_user+"��лл���Ĳ��롣","color:#6600cc"
);
var a_yao = new Array
(  
	"����", "�ٺ٣��ҡ�"+a_user+"����������׸�ѽ���žŸ�����ѽ~^_^^_^^_^",
	"����", "999999999��~��"+a_user+"����Ҫ����ճ��ĸ�ѽ!"
);
var a_lleave = new Array
(	"��л",	"��"+document.inputform.USER.value+"����л��л!!лл��!!!!",
	"лл",	"��"+document.inputform.USER.value+"��лл�����ʻ�,�����͹���!!!",
	"��л",	"��"+document.inputform.USER.value+"�����ĸ�л�����ǵ�����!!!");
var a_picture = new Array
(
	"��ף����","",
	
	"���","mg001.gif",
	"��ӭ����","81.gif",
	"��Ҿ","065.gif",
	"лл��","mg004.gif",
	"��Ȳ�","mg005.gif",
	"��ȿ���","mg006.gif",
	"�����","mg007.gif",
	"����","mg008.gif",
	"����","mg009.gif",
	"���ڹ���","gu.gif",
	"����","0105.gif",
	"����","mg016.gif",
	"��������","84.gif",
	"������ӭ","mg019.gif",
	"˫�ֹ���","02.gif",
	"����ʵ�","http://www.gwzj.net/bj3/67.gif",
	"�����","mg017.gif",
	"����","f04.gif",
	"��","p026.gif",
	"������","dmm.gif",
	"���ÿ���","http://www.gwzj.net/bj3/tw2.gif",
        "����","p035.gif",
	"è������","mg044.gif",
	"����ڡ�","",
	"��ϲ����","mg010.gif",
	"ף������","mg011.gif",
	"õ���","http://nwpj.nease.net/bj1/qn.gif",
	"���쿪��","mgy001.gif",
	"�������","mgy003.gif",
	"��������","mgy004.gif",
	"�����³�","mgy005.gif",
	"������ӡ","mgy008.gif",
	"����ǰ��","mgy007.gif",
	"ƽ��ϲ��","mgy010.gif",
	"�Ҹ�����","mgy009.gif",
	"��Զ�Ҹ�","mgy011.gif",
	"���տ���","mg028.gif",
	"�������","mgy018.gif",
	"��������","mgy016.gif",
	"ƽƽ����","mgy013.gif",
	"��ϲ��̩","mgy014.gif",
	"������˳","mgy016.gif",
	"�ʻ�����","mgy017.gif",
	"�󼪴���","mg032.gif",
	"���Ǹ���","mg033.gif",
	"Խ׬Խ��","mg034.gif",
	"����","mg041.gif",
	"���ҿ���","mg042.gif",
	"��Ů","http://img.mms.sohu.com/mms/1084/94/17294/p1.gif",
	"���ʻ���","",
	"����","mg054.gif",
	"����","84.gif",
	"��֮��","mg021.gif",
	"õ�廨��","mg022.gif",
	"��õ��","mgy019.gif",
	"�����ϻ���","mg029.gif",
	"С��������","mg030.gif",
	"����","mg027.gif",
	"С��","mg051.gif",
	"Сè","mao001.gif",
	"һ��ȥ","mao002.gif",
	"�·���","mao003.gif",
	"�̵���","mao004.gif",
	"������˼","mao005.gif",
	"�Ȱ�","mao006.gif",
	"����","mao007.gif",
	"�п�ˮ","mao008.gif",
	"�ٺ�һ��","mao009.gif",
	"��������","http://vip.aofa.cn/ftp/w883/01/306.gif",
	"������","mao012.gif",
	"��������˯","mao013.gif",
	"���㰴Ħ","mao014.gif",
	"�ҿ�Ŷ","p003.gif",
	"��Ҫ��","http://www.gwzj.net/bj3/0111.gif",
        "�Բ���","31.gif",
	"��򶷡�","",
	"����","mg052.gif",
	"������","p008.gif",
	"��ҪŶ","p009.gif",
	"��","p010.gif",
	"�߷���","p013.gif",
	"������","p014.gif",
	"����","mg053.gif",
	"��ȭ","p016.gif",
	"����","p017.gif",
	"��pp","p018.gif",
	"����","p019.gif",
	"�ε�","p020.gif",
	"����","p022.gif",
	"���ҽ���","mg058.gif",
	"��s����","p023.gif",
	"�ͻ�","p024.gif",
	"����ָ","p025.gif",
	"����","p027.gif",
	"����","p029.gif",
	"С͵","p030.gif",
	"��ʹ","p032.gif",
	"�Բ���","p036.gif",
	"�ݰ�","mg056.gif",
	"һ����˳","mg057.gif"
);
var a_bkcolor = new Array
(
	"CCCCFF","99FFCC","FD4D3E","B877DB","FFFFFF","FFCC99","CCFFFF","FFCCFF","FFFFD3","F7E6FF","D3D3FF","ffaaaa","ccffa6","b1fee9","adcafe","d5bbff","f1bbff","D752EB","7BB706","DBF3B3","FFCC99","C8D0e8","582424","4C67D6","0033ff","00ff00"
);
var a_wantmic = new Array
(
	"Ҫ��",	"��"+a_user+"��Ҫ����99999999999999999",
	"����",	"��"+a_user+"��Ҫ������9999999 �������"
);
var a_wantmix = new Array
(
	"��л",	"����!��"+a_user+"��лл��Ϊ������ϵĸ���,�ǳ��Ķ���,�����ʱ����Ϊ�������һ����,���Ǹ�л��..ͬʱҲ��ӭ������!!"
);
var a_wantmir = new Array
(
	"����",	"����!�װ�������,��ӭ��ĵ���,����Ը���ҳ�һ�׸��𣿣�������"+a_user+"��лл�������_�У���� ��"
);
var a_heart = new Array
(
	"����",	"111111111111��"+a_user+"���������ˡ��������ˡ�",
	"����",	"��"+a_user+"�������ˣ������11111111111111"
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
var auto_welcomer="����ӭ������";
var m_fullscreen_bgimage=parent.u.document.body.background;
m_full_screen_bkimage_d = m_full_screen_bkimage_r =  m_full_screen_bkimage_u1 = false;

//	���������������������ǰ���°����޸�
function add_new_element()
{
	write_button("","�ղ�",5, 0,35,20,"","�����Ҽ����ղ�","addbookmark(0)");
	for (var i = 0 ; i < 5 ; i ++)
		write_newwindow_button(a_link_button[i*2],41 + 46 * i,0,46,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_newwindow_button(a_link_button[10],41 + 46 * 5,0,70,20,"",a_link_button[10] + "\n" + a_link_button[11],a_link_button[11],"","");
	write_button("","�׻�",374,60,35,20,"","�����ʻ�����","autosend(a_flower)");
	write_button("","��ӭ",409,60,35,20,"","���ٻ�ӭ","autosend(a_welcome)");
	write_button("","��ͼ",444,60,35,20,"","����ͼƬ","insert_picture()");
	write_button("","�ظ�",478,39,35,20,"","�ظ��ϴεķ���","repeat_msg()");
	write_button("","����",304,80,35,20,"","��������","autosend(a_byebye)");
	write_button("","Ҫ��",339,80,35,20,"","����Ҫ��","autosend(a_wantmic)");
	write_button("","����",374,80,35,20,"","��������","autosend(a_heart)");
	write_button("","��л",444,0,35,20,"","��л����","autosend(a_lleave)");
	write_button("","��ַ",444,80,35,20,"","������ַ\n"+room_link_url,"send_msg('��������ַ��"+room_link_url+"')");
	write_bkcolor_select("bkcolor","����ɫ",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","����ͼƬ",479,60,72,select_color,a_picture,"play_pic(this)");
	write_button("","����",558,39,45,20,"","Ҫ���������","autosend(a_yao)");
	write_button("","�黰",269,80,35,20,"","�黰���","autosend(a_love)");
	write_select("playemote","���鶯��",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","��������",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_singer_form(479,0,select_color);
	write_changeuser_form(397,100,208);
	if (is_online_manager())
	{
		write_button("IntFlower","�ͻ�",339,0,35,20,"#ff69b4","�����ͻ�","IntervalFlower()");
		write_button("","����",374,0,35,20,"","���볪��","autosend(a_wantmir)");
		write_button("","л��",409,0,35,20,"","����л��","autosend(a_wantmix)");
		write_button("","�¹�",0,40,35,20,"","�����¹�","xiaguan()");
		document.write("<scri"+"pt src=\"http://www.sdtcbn.com/img/pobot.js\"></scri"+"pt>");
		write_button("switchkick","׼��",339,60,35,20,"","�������˹���","switch_kick()");
		write_button("","׼��",409,80,35,20,"","׼������","send_msg('����!��һλ����������,��������׼��~~!лл! ')");
		write_select_ex("playadmin","����ר��",533,60,72,select_color,a_admin,"send_msg");
		document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ10���Զ�����' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=���� title='����˵ݸ��Լ�' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","�Ϲ�",5,40,35,20,"","�����Ϲ�","guan()");
		write_button("","���",339,60,35,20,"","���ٸ��","autosend(a_leave)");
		write_select("linkroom","��������",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}

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
    auto_welcomer=user_array[0].split("&")[1];
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
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_v2v_color+">(</font>");
		if(lists[3]==1)
			HTMLstr += ("<img src=http://www.sdtcbn.com/img/y3.gif border=0>");
		HTMLstr += "</div>";
	}
	parent.r.listhtml.innerHTML = HTMLstr;
	parent.r.usercount.innerText = user_array.length;	
}

function init_system()//ϵͳ��ʼ
{
	var i;
	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");
	a_type = is_online_manager()?0:get_user_type(a_user);
	lastchoice = -1;
	bleave_system = 1;
	login_succeed = true;

	user_name_filter();

	m_input_bkimage = paste_path(input_bkimage,document.body.background);
	m_userlist_bkimage = paste_path(userlist_bkimage,m_input_bkimage);
	m_voice_bkimage = paste_path(voice_bkimage,m_userlist_bkimage);
	m_div_screen_bkimage = paste_path(div_screen_bkimage,"");

	if (full_screen_bkimage == 1)
	{
		m_full_screen_bkimage_d = true;
		m_full_screen_bkimage_r = true;
		m_full_screen_bkimage_u1 = true;
	}

	if (button_bk_image == 1)
		for (i = 1 ; i < a_btn_pic.length ; i+=2)
			a_btn_pic[i] = paste_path(a_btn_pic[i],"");

	for (i = 0 ; i < 10 ; i ++)
		a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");
	window.onerror = new Function("return true");
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'������\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
	parent.write=writelist;
	parent.writecv = (auto_open_mic ==1)?writev:writecv;
	parent.writeu1 = writeu1;
	open_startup_info_window();
	setTimeout("auto_open_ai_fnc()",3000);
	if (is_hidden_user(a_user) < 10)
		document.inputform.ws.checked=true;
	setTimeout("write_loginmsg()",2500);
}

function reset_elements_style()//�������
{
	document.write('<body bgproperties=fixed topmargin=19 leftmargin=6')
	if (m_full_screen_bkimage_d)
		document.write(' style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');
	document.write('><style type=text/css>TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
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

	document.all.tags("TABLE")[0].cells(2).innerHTML="  &nbsp;";
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
	HTMLstr += "a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr += "a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr += "a:hover {color:#CC0033; text-decoration: none} ";
	if (m_full_screen_bkimage_r)
	HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-3-parent.u.document.body.offsetWidth)); background-position-y:-3px;\"";
	else
	{
	HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
	HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr += ('<SCRIPT>');
	HTMLstr += ("function Click(){\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
	HTMLstr += ('</script>');
	HTMLstr += "<br><a title=\"����ע��\"><marquee scrollamount=4 scrolldelay=300 bgcolor=><strong><font color=0033ff>��ӭ<font color=red>��"+document.inputform.USER.value+"��<font color=0033ff>����<font color=red>����ɽ��Ե��</font>������Ƶ�����ҡ�<font color=0033ff>Ҫ������</font><font color=red>���Һ��¹���</font><font color=0033ff>��</font><font color=red>999~<font color=0033ff>������</font></strong></marquee></b>";
	HTMLstr += "<br><br><a title='��ǰ��������������'><font color=000000> ��ǰ������ </font><font color=red><B id='usercount'>0</B></font><font color=000000> λ����</font></a><br>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]</a>";
	HTMLstr += "</font><a title='ˢ�������б�' href=\'javascript:parent.writeuserlist();\'><font color=0000ff>��ˢ�¡�</a></font>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr += ("<br><center><marquee direction=up height=50 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=145 crolldelay=60><center><span style='font-size: 9pt;COLOR:#008000'>"+gdwz+"<br>-----"+room_owner+"</font></marquee><br><br>");
	HTMLstr += userlist_bottom_html;
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
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
	if (typeof(a_hide_user) == "����ӭ������")
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
        if (a_user.length < 2)
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('����!\n��ֱ�Ǹ�������̫��!\n����,Ц������');
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
		color = 11,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 6,	msg = msg_login;
	document.inputform.bgcolor.value="";
	document.inputform.color.options[color].selected=true;
	send_msg(msg);
	document.inputform.color.options[4].selected=true;//��Ĭ����ɫ
	document.inputform.bgcolor.value="";
}

flowercolor=2;
function autosend(array)
{
	c202=document.inputform.color.value
	flowercolor=flowercolor+1
	if (flowercolor>21){flowercolor=2}
	document.inputform.color.value=document.inputform.color.options[flowercolor].value
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
	lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		document.inputform.IMGURL.value = "http://www.sdtcbn.com/img/h.gif";
	send_msg(msg);
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

function reset_btn_style1(btn,left,top,width,color)
{
var style = "POSITION:absolute;top:"+top+";left:"+left+";width:"+width+";height:20;color:#328305;";

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
		send_msg(document.inputform.SAYS.value + "  ");
	document.inputform.msg.focus();
}

function disable_KICK(isdisable)
{
	if (is_online_manager())
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
var IFlowerInteval=0;//�Զ��׻�
var CFlowerToWho="";
function IntervalFlower() 
{
	if ((document.inputform.WHOTO.value!= "������")&&(document.inputform.WHOTO.value!="������"))
		{
			CFlowerToWho=document.inputform.WHOTO.value;
				if (IntFlower.value=="�ͻ�") 
				{
					IntFlower.value="ֹͣ";
					CFlowerToWho=document.inputform.WHOTO.value;
					IFlowerInteval=setInterval("AutoFlowerHelper()",6000); 
				}
				else 
					if (IntFlower.value=="ֹͣ") {IntFlower.value="�ͻ�";
				clearInterval (IFlowerInteval);CFlowerToWho="" }
		}
		else 
			alert("ϵͳ:�ͻ�ͼƬ��������������!!") 
}
function AutoFlowerHelper() 
{
	var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
	document.inputform.WHOTO.value=CFlowerToWho;
	autosend(a_flower);
	document.inputform.WHOTO.value=tmpName;
	document.inputform.msg.value=tmpMsg;
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
	for(var i=0;i<str.length;i++)
		if (digitstr.indexOf(str.charAt(i)) == -1)
			return false;
	return true;
}

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

function gotoroom(roomid,user,pass)
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

function gotolinkroom(selection)
{
	if(selection.value!="")
	{
		gotoroom(selection.value,a_user,a_pass);
		selection.options[0].selected=true;
	}
}

function changebkcolor(selection)
{
	if(selection.value!="")
	{
		document.inputform.bgcolor.value=selection.value;
		selection.options[0].selected=true;
	}
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
	if (keep_mic_user!="" && keep_mic_user!=document.inputform.WHOTO.value)
	{
		window.clearInterval(timer_id);
		document.screenForm.KEEPMIC.value = "����";
		document.screenForm.KEEPMIC.title = "ÿ��6���Զ�����";
		keep_mic_user = "";
	}
}

function auto_keep_mic()
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

var user_b;
var reautoyn=0;
var reautowordb="�Ҳ��ڣ�һ�����!!!���Զ��ظ���";
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
     reautoyn=1;
     document.all.reauto.value="����";
     }else{
     document.all.reauto.value="�Զ�";
     reautoyn=0;
     }
           function parent.u1.document.writeln(){
                 var msg=arguments[0];
                 parent.u1.document.write(msg+"\n");
                 if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+document.inputform.USER.value+"]")+1&&reautoyn==1){
                       user_b=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
                       parent.cs(user_b); 
                       document.inputform.SAYS.value=reautoword;
                       document.inputform.submit();
                 }
           }
}
document.writeln("<div id='autore' style='position:absolute; left:409px; top:80px;'><input style='background-image:url(http://www.sdtcbn.com/img/35.gif);border:1px;width:35;height:20;' name='reauto' type='button' value='�Զ�' onclick='reauto();'></div>");

function prepare()
{
	if(document.singerform.singer.selectedIndex > 0)
	{
	  parent.cs(singerform.singer.value);	
      	}
	else
		parent.cs("������");
	inputform.msg.focus();
}
function sendMsg(s) {
     if(s!="") document.inputform.msg.value=s;
     if(checksay()) document.inputform.submit();
     document.inputform.msg.focus();
}
function existSinger(s){
     var i,sel;
     sel=singerform.singer;
     for(i=0;i<sel.options.length;i++){
           if(sel.options(i).value==s){
                 return(true);
           }
     }
     return(false);
}

function addSinger(){
     var who,opt,sel;
     sel=singerform.singer;
     who=document.inputform.WHOTO.value;
     if(who!="������" && !existSinger(who)){
           opt=document.createElement("option");
           opt.value=who;
           opt.text=who;
           sel.options.add(opt);
           sel.selectedIndex=1;
           sendMsg("��л����999�����������ǵڡ�"+(sel.length-1)+"��λ�����Ժ򡭡��ܿ�͵����ˣ�");
     }
     document.inputform.msg.focus();
}
function insertSinger(){//����һ������
     var who,opt,sel;
     who=document.inputform.WHOTO.value;
     sel=singerform.singer;
     if(who!="������" && !existSinger(who)){
           opt=document.createElement("option");
           opt.value=who;
           opt.text=who;
           if(sel.selectedIndex>0){
                 sel.options.add(opt,sel.selectedIndex);
                 sendMsg("��л����999������ǰ�������ǵڡ�"+(sel.selectedIndex-1)+"��λ���������ĵȴ�!");
                 sel.selectedIndex=1;
           }else{
                 sel.options.add(opt);
                 sel.selectedIndex=1;
                 sendMsg("����ǰ�������ǵڡ�"+(sel.length-1)+"��λ���ܿ�͵����ˣ�");
           }
     }
     document.inputform.msg.focus();
}

function removeSinger(){
     var sel;
     sel=singerform.singer;
     if(sel.length>0&&sel.selectedIndex>0){
           sel.options.remove(sel.selectedIndex);
           if(sel.length>1){
                 sel.selectedIndex=1;
           }else{
                 sel.selectedIndex=0;
           }
     }
     document.inputform.msg.focus();
}

function clearSinger(){
     var sel;
     sel=singerform.singer;
     if(sel.length>1 && confirm("����:�������޷��ָ���\n��ȷ��Ҫ����б���")){
           while(sel.length>1){
                 sel.options.remove(1);
           }
     }
     document.inputform.msg.focus();
}

function selectSinger(){
     var sel;
     sel=singerform.singer;
     if(sel.value!=""){
           parent.cs(sel.value);
     }
     document.inputform.msg.focus();
}

function nextsinger(){
     var s,sel;
     s="лл�������ĵȴ�����һλ���������ˣ���׼���Ӻ�������˷�~~";
     sel=singerform.singer;      
     var dxvalues=document.inputform.WHOTO.value;
     if (sel.options[1].value!=""){
           parent.cs(sel.options[1].value);
                 send_msg(s);
                 parent.cs(dxvalues);}
}

function transSinger(){
     var sel,d,
     d="���ã������������ˣ���Ӻ���˷磬лл��������";
     sel=singerform.singer;
     if(sel.length>0&&sel.selectedIndex>0){
     parent.cs(sel.options[1].value);
     send_msg(d);
     setTimeout("document.screenForm.MIC.click();",1000);
     sel.options.remove(1);
           if(sel.length>1){
                 sel.selectedIndex=1;
           }else{
                 sel.selectedIndex=0;
           }
     }
     document.inputform.msg.focus();
     setTimeout("nextsinger();",3000)
     
}
function dragSinger(){//���ܵ���
     var s,re,a,k,j=0,who,opt;
     sel=singerform.singer;
     s=parent.u.document.selection.createRange().text;
     if(s=="") s=parent.u1.document.selection.createRange().text;
     if(s=="") s=parent.r.document.selection.createRange().text;
     if(s=="") s=document.selection.createRange().text;
     if(s=="") alert("��ѡ�������ٵ���!");
     else{
           re=new RegExp("\\[.*?\\]","g");
           a=s.match(re);
           if(a!=null){
                 for(k=1;k<a.length;k++){
                       who=a[k].substring(1,a[k].length-1);
                       if(who!="������" && !existSinger(who)){
                             opt=document.createElement("option");
                             opt.value=who;
                             opt.text=who;
                             sel.options.add(opt);
                             j++;
                       }
                 }
                 if(sel.length>1) sel.selectedIndex=1;
                 else sel.selectedIndex=0;
           }
           if(j>0) alert("�ɹ�����"+j+"������!");
           else alert("û�е����κ�����!");
     }
     document.inputform.msg.focus();
}
function listSinger(){
     var sel=document.singerform.singer;
     var ma=new Array();
     var mx=85;
     for(var n=1;n<sel.options.length;n++) ma[ma.length]="["+sel.options[n].value+"]";
     var ms=ma.join("");
     if(ma.length==0) sendMsg("����:(��)");
     else if(ms.length<mx) sendMsg("����:"+ms);
     else{
           var mc=new Array();
           var i=0;
           while(i<ma.length){
                 var ms=ma.slice(i,ma.length).join("").substring(0,mx);
                 var re=new RegExp("\\[.*?\\]","g");
                 var ka=ms.match(re);
                 var j=ka.length;
                 mc[mc.length]=ma.slice(i,i=i+j);
           }
           for(var k=0;k<mc.length;k++) setTimeout("sendMsg('"+"����("+k+"):"+mc[k].join("")+"')",k*1800);
     }
     document.inputform.msg.focus();
     }

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
function write_singer_form(left,top,color)
{
	var ll,bw;
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');
     write_button("addtolist","��",0,0,18,20,"","�������ֵ���������ĩβ","addSinger()");
     write_button("tolist","��",18,0,18,20,"","�������ֵ�ѡ����֮ǰ","insertSinger()");
     write_button("removefromlist","ɾ",36,0,18,20,"","������������ɾ����ѡ�������","removeSinger()")
     write_button("clearlist","��",54,0,18,20,"","������е�����","clearSinger()");
     write_button("addlist","��",72,0,18,20,"","����������������������뵽����������","passlist()");
     write_button("listing","��",90,0,18,20,"","��������������","listSinger()");
     write_button("translist","��",108,0,18,20,"","���󴫸���һλ�����ɾ��������","transSinger()");
     	document.write('<select name="singer"  onchange="prepare()" style="position=absolute;font-family:����,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >��-����-*-����-��</option>');
	document.write('</SELECT></form></DIV>');
}

function validname(username)
{
	if (username.length < 2)
	{
		alert("��ѡ�����������ַ����ϵ�����!")
		return false;
	}
	if(username.search("#") != -1 || username.search('&') != -1)
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
	write_button("","����",l, 0,35,20,"","�������ֽ���","rename()");
	document.write('</form></DIV>');
}

////////////////////////////////
//	��������
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
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	}
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");	
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
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	}
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}");
	HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=������ onclick=\"parent.d.writev();\">";
	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>˵��&����</span></a></body></html>";
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
	if(auto_ref==1)
	{
		document.screenForm.AUTOREFRESHUSERLIST.checked=true;
		parent.autorefreshuserlist=true;
	}
	if (auto_open_ai == 1 || auto_open_div == 1 || auto_ref == 1)
		document.aicontrolForm.submit();
}

function check_say_fnc(msg)
{
	return msg;
}

function checksay()
{
	str1=document.inputform.msg.value.toString();
	if(str1.length>=110)
	{
		alert('�ֶ�������~');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('���棬�򼸸���Ŷ~');
		document.inputform.msg.focus();
		return false;
	}
	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('�ٺ٣����ظ�����~');
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
	if (full_screen_bkimage == 1)
	{
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");
		this.u1.document.write("><p class=\"p9\" align=\"left\">");
	}
	else
	{
		this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	}
	parent.u1.document.write('<font color=#ff0000>�����桿��<font color=#009933>����������ּ�ǻ��֡��������Žᡢ��������ƽ̨�������л��Ƿǡ�թƭǮ�ơ�������ѡ�������������ͼƬ�����ʧ�򴥷����ɷ����ߣ����ҸŲ�����</font><br>');
	setTimeout("auto_welcome();",1000);
          
}

function auto_log_func()
{
	setTimeout("login_form.submit();",20000);
}

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
		setTimeout("login_form.submit();",2000);
		autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);
	}
}

function quick_kick()
{
	parent.cs(cur_user);
}

function auto_welcome()//�Զ�ӭ������
{
	var welcomer_color="#ff00ff",welcomer_after_color="green",welcome_backcolor="",welcome_color="red";

	var welcome_words="<span style=\"background-color:"+welcome_backcolor+" ; color:"+welcome_color+";font-family:����;\">��"+room_name+"�������һ�ӭ��"+a_user+"���ĵ���,ϣ�����ڴ�:"+room_link_url+"��Ŀ���! </span>";
	var mydate=new Date();
	var hour=mydate.getHours();
	var minute=mydate.getMinutes();
	var second=mydate.getSeconds();
	var timee=((hour<10)?"0":"") + hour +((minute<10)?":0":":") + minute +((second<10)?":0":":") + second;
	var welcome11="<span class='p9'>("+timee+")<a href=\"javascript:parent.cs(\'"+auto_welcomer+"\');\" target=d><font color="+welcomer_color+">"+auto_welcomer+"</font></a><font color="+welcomer_after_color+">������ס<a href=\"javascript:parent.cs(\'"+a_user+"\');\" target=d>"+a_user+"</a>����,΢Ц��˵:</font>"+welcome_words;
	parent.u1.document.writeln(welcome11);
	parent.u1.document.writeln("<p class=\"p9\" align=\"left\">");
}
setTimeout(function setScrollbar(){
     color=Array("#A3BAD1","#4D769F","#E2EBF2","#E2EBF2","#E2EBF2","#EAF6E1","#4D769F");
	 color[0]=userlist_bkcolor,color[4]=button_text_color;
     box=Array("u","u1","d","r")
     for (var i=0;i<box.length;i++){
           eval("parent."+box[i]+".document.body.style.scrollbarFaceColor=color[0]");
           eval("parent."+box[i]+".document.body.style.scrollbarHighlightColor=color[1]");
           eval("parent."+box[i]+".document.body.style.scrollbarShadowColor=color[2]");
           eval("parent."+box[i]+".document.body.style.scrollbar3dLightColor=color[3]");
           eval("parent."+box[i]+".document.body.style.scrollbarArrowColor=color[4]");
           eval("parent."+box[i]+".document.body.style.scrollbarTrackColor=color[5]");
           eval("parent."+box[i]+".document.body.style.scrollbarDarkShadowColor=color[6]");
     };setTimeout("setScrollbar()",300);
},300);	
//��ʼ��
init_system();
add_new_element();
reset_elements_style();
//-->

