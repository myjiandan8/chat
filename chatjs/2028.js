var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
var config_place = "http://www.bhqf.net/tu/";
var room_owner="*��o���֩I����o��";
var room_name="������ͷ";
var room_adminname_head="";
var room_number="2028";
var room_link_url = "http://2028.liaowan.com";
var black_roomname="";
var black_roomnumb="";
//var userlist_top_html = "<B><font style=\"filter: glow(color=#009900,strength=4); Height:12pt; color:#FFFFCC; padding:1px;\">&nbsp;&nbsp;<font size=4> �� </font><font size=4> �� </font><font size=4> �� </font><font size=4> ͷ </font></font></B>";

var userlist_top_html = "<table border=0 width=120px cellspacing=0><tr><td align=middle><img src=http://daoer.512j.com/logo2.jpg></td></tr></table>";
var userlist_bottom_html = "<img src=http://daoer.512j.com/logo1.gif>";
var userlist_bkcolor = "#E8F4E0";
var userlist_bkimage = "http://daoer.512j.com/bj.jpg";
var voice_normal_color = "#00D000";
var voice_v2v_color = "#BFBFBF";
var voice_vr_color = "#00D000";	
var div_screen_bkcolor = "";
var div_screen_bkimage = "";
var voice_bkcolor = "#E5F1DF";
var voice_bkimage = "";	
var input_bkcolor = "#E8F4E0";
var input_bkimage = "";	
var input_msg_color	= "#328305";
var input_msg_bkcolor = "#F0F8FF";
var body_text_color	= "#328305";
var select_color = "#328305";
var select_text_color = "#328305";
var button_text_color = "#00008B";
var button_bk_image	= 1;
var button_bk_color = "";
var full_screen_bkimage	= 1;
var auto_hide_scrollbar = 0;
var disable_notice = 1;	
var a_btn_pic = new Array
(17,"http://daoer.512j.com/bn17.gif",18,"http://daoer.512j.com/bn18.gif",19,"http://daoer.512j.com/bn18.gif",35,"http://daoer.512j.com/bn35.gif",46,"http://daoer.512j.com/bn46.gif",70,"http://daoer.512j.com/bn70.gif");
var url_popup_window = "";
var only_registr_user = 0;	
var only_chinese_name = 0;
var default_admin_pass = "2028";
var auto_open_ai = 1;
var auto_open_mic = 1;
var auto_open_div = 1;
var multi_singer_list = 0;
var msg_login		=	"�ﰮ����ͷ��~0~�￪�ĵ���԰~0~��~0~��ܰ�ĸ�����ﻶӭ��ĵ���,Ը����Ϊ������ļ�԰,�����㿪�ġ���������!!�����ļ�԰�������Ҳž��ʡ�!! ";
var msg_admin		=	"��Һã���"+a_user+"���Ϲ���,������Ϊ��ҷ���:)";
var msg_quitadmin	=	"��"+a_user+"�����¹��ˣ�лл��Ҷ��ҵ�֧�֣���";
var msg_leave		=	"��λ����"+a_user+"������һ����,�´��ٺʹ���ģ�";
var msg_auto_spack	=	"����Щ����ʱ�뿪һ�£�һ����ͻ�������";
var msg_back_spack	=	"��Һ�ѽ���һ����ˣ�������ʲô�أ�����Ҳ��������������";
var a_link_button = new Array
("���","http://www.xlbbs.com/",
"Փ��","http://www.xlbbs.com/bbs/cgi-bin/leobbs.cgi",
"�]��","http://www.liaowan.com/USadmin/regadd.asp",
"����","http://www.touch.sh/gb/gbook.php?user=��|��",
"�{��","http://www.qhzs.net/qbjy/cx5.1.htm",
"����","http://www.liaowan.com/roomadmin/");
var a_vip_user = new Array
(
"*��o���֩I����o��",1,"*�u��oo",1,"*��o�����I�u��o��",1,"*�t����ؐ��g",2,"*$$�u��$$",2,"*����",6,"*�ٺٺ�",6,"*",6,"*",6,"*",6,"*",6,"*",6,"*",6,"*",6,"*���Ļ�",5,"*�u���u",5,"*",5,"*",5,"*",5,"*",5,"*�YDJ�����ɵ�z�t��",4,"*",6,"*�֡�o׷����r",4,"*",5,"*",4,"",5,"*",4,"*",6,"*",5,"*",4,"*",5,"*",5,"*",4,"*",5,"*",5,"*",5,"*",4,"*",5,"*",5,"*",4,"*",4,"*",5,"*",4,"*",4,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",4,"*",5,"*",4);
var a_name_filter = new Array
("�������¡�","��С����");
var a_hide_user = new Array
("*",0,"*",0,"",0);
var bianyi = new Array
("*�ۊ�Ҽ��","*�������¡�","*��С����","*��o���֩I����o��","*�u��oo","*��o�����I�u��o��","�ٺ�~");
var a_usertitle = new Array
(0,"��������","http://daoer.512j.com/zxgl.gif","#FFc2e","#FFFFFF",
1,"�������i","http://daoer.512j.com/sz.gif","#FF4500","#FFFFFF",
2,"���ұO��","http://www.wzdu.com/UploadFile/20044414383886552.gif","#8FBC8F","#FFFFFF",
3,"���Ҹ���","http://daoer.512j.com/fs.gif","#FFCC33","#FFFFFF",
4,"���Ҹ߹�","http://daoer.512j.com/peizhi/012.gif","#9900FF","#FFFFFF",
5,"���ҹ���","http://daoer.512j.com/peizhi/016.gif","#990099","#FFFFFF",
6,"�����F�e","http://daoer.512j.com/05.gif","#FA089D","#FFFFFF",
7,"�����F�e","http://daoer.512j.com/peizhi/011.gif","#0000ff","#FFFFFF",
8,"���Ҽ��e","http://daoer.512j.com/peizhi/008.gif","#0000ff","#FFFFFF",
9,"���Ҽ��e","http://daoer.512j.com/24.gif","#0000ff","#FFFFFF",
10,"���Ҽ��e","http://daoer.512j.com/30.gif","#0000ff","#FFFFFF");
var a_roomlink = new Array
(
black_roomname,	black_roomnumb,
"�ȴ�����",	"",
"�ȴ�����",             ""
);
var a_welcome = new Array
("��ӭ",	"��ӭ�����١�" + room_name + "�����������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
"��ӭ",	"^_^*��" + room_name + "��*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡��������",
"��ӭ",	"����������ѽ����ӭ��ӭ���������ڡ�" + room_name + "������,������һ���ĵȴ���ǣ�ң����ѣ�����");
var a_lleave = new Array
("��л",	"��"+document.inputform.USER.value+"��лл"+room_name+"������!!!!",
"лл",	"��"+document.inputform.USER.value+"��лл"+room_name+"�����ǵ��ʻ�,�����͹���!!!",
"��л",	"��"+document.inputform.USER.value+"�����ĸ�л"+room_name+"�����ǵ�����!!!");
var a_santmic = new Array
("׼��",	"����!��һλ����������,��������׼��~~!�������Ա��1111��ʾ~~лл!",
"����",	"����!��������,������˼,�����õ���,�������Ա��1111��ʾ~~��׼���Ӻ�������˷�!лл!!!");
var a_flower = new Array
("��",	"��!������� * ������ǩ�����ɣ���..��Ҳ�Ҫ����..��..��..˭�Ȱ�����..��~~ǩ�Ķ��أ�..��ǩ���·��ϰɣ�Ҫ����ӡ��Ŷ~����~�ҵ�Ь~",
"ǩ��",	"��~����̫����~�����~�����Ķ�����~����~����ǩ������~ �����~��~��������~����̫����~�����~�����Ķ�����~0~",
"����",	"������---�������ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ��",
"����",	"����������ð�Ŷ�������������ˡ�������ð�Ŷ������ð�Ŷ�������ð�Ŷ������žžž�����",
"õ��",	"õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���Ȼ��t���r���׻��t���r���㻨�t���r�л��t���r �񻨡��������������ϻ�",
"����",	"����� �����*���� �����ǰ�������� * *�������������������*���* ̫���ˣ�������������㳪�����һ����Ǹ��ǳ��İ�����* ~",
"���",	"�������~~�t���r���򻨨t�����ƣ�����PA PA������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦�����ң��Ϸ���",
"����",	":���������嗀����K*���������������嗀����Y�K*���������������嗀���� �K *���������������嗀����K",
"žž",	"*^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^* *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*",
"ˮ��",	"õ�廨���רt��r�רt��r�����ǡ��רt��r��(((((((((žž))))))))�רt��r�϶�����רt��r�פרt��rˮ�ɻ����רt��r�רt��r",
"ĵ��",	"* *����ĵ����� *�ջ��� * *ҹ������һ��һ����һ���ĵ����� *�ջ��� * *ҹ������������* *����һ��һ����һ���");
var a_message = new Array
("�И�",	"������11111�����ְ��࣬������1111111111�а�������111111",
"����",	"������111111�����ְ��࣬������111111111������1111111111");
var a_see = new Array
("�o��","û�����ְ���û�����֣�û�����֣�û�����֣�",
"�o��","û�����ְ���û�����֣�û�����֣�û�����֡�~��");
var a_byebye = new Array
("����","�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬"+ room_link_url +"��������Ŷ~��",
"�ߺ�","�ߺ�ѽ������ˣ�����ŵ��¡���ʱ��һ��������"+ room_name +"�������ź��𣡣�");
var a_leave = new Array
("����",	"��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
"���",	"��̾һ��,�����˵��:�|���ݰݡ��˨��|һ�������ǧ��,��֪�����ٷ��.�����ȥ��,��Ҷౣ�ب|���ݰݡ��˨��|�����к�������еĻ��������ٶ������롤����������");
var a_love = new Array
("�����ݳ�",	"����!�װ�������,��ӭ���ĵ���,�����Ը���ҳ�һ�׸���˵˵���𣿣���лл���_�У���� ��",
"ϣ������",	"��ӭ����������" + room_name + "������ϣ�������������ֻ��������Ա��999������Ա����󽻵������ϵģ�ף����������Ŀ��ģ�",
"��л����",	"����!лл��Ϊ������ϵĸ���,�Ƿǳ��Ķ���,�����ʱ����Ϊ�������һ����,���Ǹ�л��..ͬʱҲ��ӭ������!!");
var a_like = new Array
("����",	"���������ŵ�����ʼ�յ����Ŵ����������Ц�ݣ���������ת���ε��۾����"+document.inputform.USER.value+"�����ܲ�׽�����������������ң�������У���Ĵ�ӱ",
"����",	"�����ʱ����������˯��������,�����ʱ�����Խ����ϼ��Ʈ��.��֪����"+document.inputform.USER.value+"����������? ",
"����",	"����������������������Ҳ���Բ��λ࣬���ռ��ˣ�Ψ��Ͷˮ���磻�����Ѿ�������������ǰҲ����Ȼʧɫ����̾���磬ֻ��Զ�ܱ������Ӵ˲����ٻ���ԭ",
"����",	"����"+document.inputform.USER.value+"��һ��΢Ц�͹��ˣ��籡��һ���������һ�ƣ������һƪ��˵����Ժǣ��·��죬��ܰ��Ʈ�ݡ�",
"����",	"��"+document.inputform.USER.value+"������ؿ����㣻��Ҫ���������İ���֮�⣬��һ��һ��Ҳ����ȱ����İ���ֻ��Ӯ����İ����ҵ��������й�ʡ�",
"����",	"������մ��¶��Ļ��꣬���Ҵ���һ�ҷ��㣻�����ǻ�������ĸ��ڣ����Ҵ�������ľ�Զ��׷��",
"����",	"��"+document.inputform.USER.value+"��ÿʱÿ�̶���˼���ġ����̡��°��壬��֪����շ��ܴͶ��������ҵ����ֿ��̣�",
"����",	"û���㣬���˵Ĺػ�������ͽȻ�ġ�������Щ�ػ�����"+document.inputform.USER.value+"��������ܣ�Ҳû���ʸ����",
"����",	"�Ұ��㣡����İ��㣡����ĺð��㣡��"+document.inputform.USER.value+"�� love you����"+document.inputform.USER.value+"�� love you so much��",
"����",	"��ʶ���Ժ����Ժ�����ŵ�һ�ж���ʧ����Ӱ���٣�ȡ����֮����������һ��Ļ���ʱ��");
var a_jantmic = new Array
("����",	"��"+document.inputform.USER.value+"�����м���Ҫ119!!!���ȸ�����лл!!!",
"����",	"��"+document.inputform.USER.value+"��119����,�q�T�����м���-119,���ȸ�����лл!!!");
var a_thank = new Array
("����", "���쵼���Խ�����??��",
"����", "�����ú��ۣ�������Ҳ�볪����~~��",
"����", "����Ҫ����Ҫ�������׸�!!������Ҫ����Ҫ�������׸�!!!��");
var a_wantmic = new Array
("Ҫ��",	"��Ҫ�����������������Ÿ���.лл�q�T��   :)",
"����",	"��Ҫ����ѽ��������Ҫ����ѽ������q�T��");
var a_heart = new Array
("����",	"11111111111111111111111111111111111111111111",
"����",	"�����ˡ������ˡ�||||||||||||||||||||||||||||||||||||||",
"����",	"�����ˣ���������������������ˣ���������������������ˣ����������������");
var a_emote = new Array
("���ʺ��","","He���","//hello","����к�","//greet","���һ�ӭ","//welcome","����","//hand","������","//visit","��������","//boy","������","//:)","����ЦЦ","//:)2","����ӵ��","//bearhug","����һ��","//sit","�����Ϲ�","//bow","��̫����","//welcome2","���տ���","//birthday","���ҹ���","//clap","�����","//ha",
"������Ц","//haha","�ɻ���",	"//?","׳ʿ����","//cool","�������","//face","�����",	"//thank","��ʵ�ڸ�","//gao","ɵЦ����","//he","��˵ʲô","//en","����ͷ","//:p",
"������","","���İ���","//ai","��������","//@@","�赹����","//faint","���˹�ȥ","//fly","��Ͷ���","//ds","���Ů��",	"//girl","��ϲ����","//ppp","�������","//wait4","���ڵ���","//waiting","�ȵĻ�л","//wait3","����գգ","//lovesee","��������","//lovelook","�����ջ�","//lure","�������","//marry","�������","//mm","��������","//shy",
"�޹�����","//inn","����ӵ��","//hug","���뻳��","//jump","���һ��","//kiss","����ӵ��","//smooch","����N��",	"//lly","�ð���ĥ","//zhemo","���ҽ��","//qsister","��������","//qsister1","���ҵܵ�","//qbrother","���Ҹ��","//qbrother1","�ڼ��Ͽ�","//cry","��̾����","//sigh",
"��򶷡�","","������ȥ","//allen","����ˮ","//drivel","���۸���","//bad","ҧ���۽�","//bite","�񶾿���","//crazy","���С��","//cut","�����һ�","//da","��բ�Ź�","//dog","�����ȥ","//ds3","��Զ����","//duo","�߷ʴ�","//fat","��Ϊ�ҽ�","//zap","����ӳ�","//tu","��Ƥ��ҩ","//paste","š�÷���","//pinch","��������","//hammer",
"һ��ɵð","//beaut","�˹�����","//breath","�������","//koxia","��������","","��ȫͬ��","//agree","��ô����","//so","��Ե���","//bb","��������","//angry","�������","//ill","�Һܳ���","//know","�Ҳ�֪��","//no","�ҿ����","//work","˭��֪��","//who","������Ц","//laugh","�����޹�","//noask","˵�Ķԣ�","//right","ҡ��ҡͷ","//shake",
"���΢Ц","//smile","�����Ǹ","//sorry","����ԭ��","//sorry2","ԭ�¶���","//sorry3","�������","//stare","�����Դ�","//think","��ĺ���","//tired","ʤ������","//yeah","NoNo","//finger",
"�����","","�������","//cu","�Ǳ��ټ�","//cu2","���ű�Ӱ","//cu3","�����㰳","//stw","�뱣�أ�","//goodbye","�������","//goodbye2","�ѹ�Ҫ��","//tear","��·�ϳ�","//tea1","�ӻ��֡�","//wave");
var a_admin = new Array
("������ַ","��������ַ "+ room_link_url ,"color:#009900",
"��������","fnc:disable_KICK(true)","color:#0000FF;background-color:#CCFFCC",
"���߿���","fnc:quick_kick()","color:#FF0000;background-color:#FFFF99",
"��������","fnc:disable_KICK(false)","color:#0000FF;background-color:#CCFFCC",
"����׼��","���ã���ӭ��������" + room_name + "��������һ��������������,��׼����!!!!","",
"�ܾ�˫��","����!ʮ�ֶԲ��������ڲ��ܺ���˫���������½⡣ ","color:#6600ff",
"�Ѿ�����","����!����Ϊ������,�������Ĵ��Ⱥ�!","",
"��������","����!��������,������˼,�����õ���,��Ӻ�������˷�!","",
"��������","���ѣ������������ˣ�����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������","",
"�뿪����","����!����������������ȫ˫���Ի�,���������ǵݲ����������Ŷ!!","",
"��������","����**������������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,лл����!!!!! ","",
"��ھ���","��ڴ��~���������~��~û������~��~���������~��~û������~��~��","",
"��������","���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ�����","",
"��ע����","������һ���������ֻ�ע�����ֺ���������һ��ס���ģ���ҽ���ʱҲ���㣡лл","");
//����ͼƬ����
var a_picture = new Array
(
	 "��ӭ����","http://flash.daqing.net/bl/images/huanying.gif" , 
         "���лл",   "http://flash.daqing.net/bl/images/xie1.gif", 
         "����",      "http://flash.daqing.net/bl/images/hecha.gif", 
         "ˤ����",      "http://icq.163kk.net/mimi/lbyy/room/pic/shuaisi.gif",
         "���㻹ˢ����",      "http://icq.163kk.net/mimi/lbyy/room/pic/shuaping.gif",
         "��������",      "http://www.lndd.org/button/0283.gif",
         "��Ǯ","http://flash.daqing.net/bl/images/shuqian.gif",
         "�¸�~",     "http://flash.daqing.net/bl/images/gaga.gif",
        "�����Ұ���",     "http://icq.163kk.net/mimi/lbyy/room/pic/lp.gif",
        "�Ϲ��Ұ���~",     "http://icq.163kk.net/mimi/lbyy/room/pic/lg.gif",
        "����~",          "http://icq.163kk.net/mimi/lbyy/room/pic/qiao.gif",
        "������ɵ��~",     "http://icq.163kk.net/mimi/lbyy/room/pic/sha.jpg",
         "�������",	"",
         "̫����",      "http://flash.daqing.net/bl/images/haoting.gif",
         "̫����2",     "http://flash.daqing.net/bl/images/haoting2.gif",
         "̫����3",      "http://flash.daqing.net/bl/images/zhenmei.gif",
         "̫����4",    "http://flash.daqing.net/bl/images/gao.gif",
         "̫����5",    "http://flash.daqing.net/bl/images/changfehao2.gif",
         "̫����6",      "http://flash.daqing.net/bl/images/changdehao.gif",
         "̫����7",      "http://flash.daqing.net/bl/images/jiayou4.gif",
         "̫����8",      "http://flash.daqing.net/bl/images/jiayou5.gif",
         "̫����9",      "http://flash.daqing.net/bl/images/taihaole.gif",
         "�����",      "http://flash.daqing.net/bl/images/qingwen.gif", 
         "���׻���",	"",
         "�׻�",      "http://flash.daqing.net/bl/images/hua.gif",
         "�׻�2",      "http://flash.daqing.net/bl/images/hua2.gif",
         "�׻�3",     "http://flash.daqing.net/bl/images/hua3.gif",
         "�׻�4",     "http://flash.daqing.net/bl/images/hua4.gif",
         "�׻�5",      "http://flash.daqing.net/bl/images/hua5.gif",
         "�׻�6",      "http://flash.daqing.net/bl/images/hua6.gif",
         "�׻�7",      "http://flash.daqing.net/bl/images/hua7.gif",
         "�׻�8",      "http://flash.daqing.net/bl/images/hua8.gif",
         "�׻�9",      "http://flash.daqing.net/bl/images/hua9.gif",
         "�׻�10",      "http://flash.daqing.net/bl/images/hua10.gif",
         "�׻�11",      "http://flash.daqing.net/bl/images/hua11.gif",
         "�׻�12",      "http://flash.daqing.net/bl/images/hua12.gif",
         "�׻�13",      "http://flash.daqing.net/bl/images/hua13.gif",
         "�׻�14",      "http://flash.daqing.net/bl/images/hua14.gif",
         "�׻�15",      "http://flash.daqing.net/bl/images/hua15.gif",
         "�׻�16",      "http://flash.daqing.net/bl/images/hua16.gif",
         "�׻�17",      "http://flash.daqing.net/bl/images/hua17.gif",
         "�׻�18",      "http://flash.daqing.net/bl/images/hua18.gif",
         "�׻�19",      "http://flash.daqing.net/bl/images/hua19.gif",
         "�׻�20",      "http://flash.daqing.net/bl/images/hua20.gif",
         "�������",	"",
         "����",      "http://flash.daqing.net/bl/images/tiaowu.gif",
         "����2",     "http://flash.daqing.net/bl/images/tiaowu12.gif",
         "����3",     "http://flash.daqing.net/bl/images/tiaowu13.gif",
         "����4",     "http://flash.daqing.net/bl/images/tiaowu14.gif",
         "����5",     "http://flash.daqing.net/bl/images/tiaowu5.gif",
         "����6",     "http://flash.daqing.net/bl/images/tiaowu6.gif",
         "����7",     "http://flash.daqing.net/bl/images/tiaowu7.gif",
         "����8",     "http://flash.daqing.net/bl/images/tiaowu8.gif",
         "����9",     "http://flash.daqing.net/bl/images/tiaowu9.gif",
         "����10",    "http://flash.daqing.net/bl/images/tiaowu10.gif",
         "����11",    "http://flash.daqing.net/bl/images/tiaowu11.gif",
         "����12",    "http://flash.daqing.net/bl/images/tiaowu15.gif",
         "����13",    "http://flash.daqing.net/bl/images/tiaowu3.gif",
         "����14",    "http://flash.daqing.net/bl/images/tiaowu4.gif",
         "����15",    "http://flash.daqing.net/bl/images/tiaowu5.gif",
         "˫����",    "http://flash.daqing.net/bl/images/shuangrenwu.gif",
         "������",    "http://flash.daqing.net/bl/images/jitiwu3.gif",
         "������",    "http://flash.daqing.net/bl/images/jitiwu.gif",
         "������2",    "http://flash.daqing.net/bl/images/jitiwu2.gif",
         "��ף�ء�",	"",
         "����ף��",      "http://flash.daqing.net/bl/images/fu.gif",
         "ף���",      "http://flash.daqing.net/bl/images/daji.gif",
         "ף�㷢��",      "http://flash.daqing.net/bl/images/zhunfc.gif",
         "���׬Ǯ",     "http://flash.daqing.net/bl/images/duoduo.gif",
         "����ף��",      "http://flash.daqing.net/bl/images/fu.gif",
         "���տ���",      "http://flash.daqing.net/bl/images/shengri.gif",
         "�͸���",    "http://flash.daqing.net/bl/images/shonggeini.gif",
         "˧������",   "",
         "����",     "http://flash.daqing.net/bl/images/meiyan.gif", 
         "��Ů",      "http://flash.daqing.net/bl/images/liangnu.gif",
         "���",      "http://flash.daqing.net/bl/images/kuge2.gif",
         "������",      "http://flash.daqing.net/bl/images/niqiaowo.gif",
          "�������",	"",
         "����",      "http://flash.daqing.net/bl/images/jiayou.gif",
         "����2",      "http://flash.daqing.net/bl/images/jiayou2.gif",
         "����3",      "http://flash.daqing.net/bl/images/taihaole1.gif",
         "����4",      "http://flash.daqing.net/bl/images/jiayou6.gif",
         "����һ��",      "http://flash.daqing.net/bl/images/zailai.gif",
         "����һ��2",      "http://flash.daqing.net/bl/images/zailai2.gif",
         "������",	"",
         "��",        "http://flash.daqing.net/bl/images/wen.gif",
         "����",      "http://flash.daqing.net/bl/images/feiwen.gif",          
         "� ~~",     "http://flash.daqing.net/bl/images/bo.gif",
         "KISS",     "http://flash.daqing.net/bl/images/Kiss.jpg",
         "OH����",    "http://flash.daqing.net/bl/images/ohtianna.gif",
         "������",    "http://flash.daqing.net/bl/images/kuba.gif",
         "С��",     "http://flash.daqing.net/bl/images/xiaoyang.jpg",
         "�������",	"", 
         "��������",      "http://flash.daqing.net/bl/images/haoxiao.gif",
         "����",      "http://flash.daqing.net/bl/images/gaoxing.gif",
         "̸��",      "http://flash.daqing.net/bl/images/tianxin.gif",
         "����",      "http://flash.daqing.net/bl/images/reqing.gif", 
         "����",      "http://flash.daqing.net/bl/images/kuaile.gif",
         "��ʹ",      "http://flash.daqing.net/bl/images/tanshi.gif",
         "����",      "http://flash.daqing.net/bl/images/jingkao.jpg",
         "����",      "http://flash.daqing.net/bl/images/yumen.gif", 
         "����˭֪",      "http://flash.daqing.net/bl/images/xinshi.gif", 
         "������",      "http://flash.daqing.net/bl/images/yunren.gif", 
         "�Ե�",      "http://flash.daqing.net/bl/images/chidian.gif",
         "��ԩ",      "http://flash.daqing.net/bl/images/yuan.gif",
         "��Ȱ",      "http://flash.daqing.net/bl/images/gengquan.gif",
         "����С�",	"",
         "����",      "http://flash.daqing.net/bl/images/xiangni1.gif",
         "����2",      "http://flash.daqing.net/bl/images/xiangni.gif",
         "�Ұ���",    "http://flash.daqing.net/bl/images/woaini.gif",
         "������",    "http://flash.daqing.net/bl/images/aixiangsui.jpg",
         "��²",      "http://flash.daqing.net/bl/images/fulu.gif",
         "����",      "http://flash.daqing.net/bl/images/huioyi.gif", 
         "����",      "http://flash.daqing.net/bl/images/zhaoliang.gif",
         "����ͬ��",    "http://flash.daqing.net/bl/images/fengyu.gif",
         "�ɰ�һ��",  "http://flash.daqing.net/bl/images/kaiyidui.gif",
         "��������",	"",
         "����",      "http://flash.daqing.net/bl/images/qiqiu.gif",
         "����",     "http://flash.daqing.net/bl/images/shengqi2.gif",
         "������",    "http://flash.daqing.net/bl/images/qisini.gif",
         "���",      "http://flash.daqing.net/bl/images/daku.gif",
         "�Ƶ���",    "http://flash.daqing.net/bl/images/pedianao.gif",
         "�Ȼ�",      "http://flash.daqing.net/bl/images/qiangjiu.gif",
         "�¸�~",     "http://flash.daqing.net/bl/images/gaga.gif",
         "����",      "http://flash.daqing.net/bl/images/qiurao.gif",
         "����",      "http://flash.daqing.net/bl/images/taopao.gif",
         "������",    "http://flash.daqing.net/bl/images/taopao2.gif",
         "����",      "http://flash.daqing.net/bl/images/xiayun.gif",
         "����",      "http://flash.daqing.net/bl/images/duilian.gif",
         "����",      "http://flash.daqing.net/bl/images/fagong.gif",
         "�ٶ�����",  "http://flash.daqing.net/bl/images/baidu.gif",
         "��������",	"",
         "�绰",      "http://flash.daqing.net/bl/images/dianhua.gif",
         "E-mail",    "http://flash.daqing.net/bl/images/Mail.gif",
 "��Ǯ","http://flash.daqing.net/bl/images/shuqian.gif"
);
var a_bkcolor = new Array
("FFFFFF","fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff","9d9dff","ca8eff","AB82FF","ff88ff","ffaaaa","ccffa6",
"a6ffcc","b1fee9","adcafe","d5bbff","f1bbff","D752EB","FFFFCC","7BB706","CCCCFF","DBF3B3","CA00C8","FFCC99","CCFFFF","C8D0e8","582424",
"FFCCFF","4C67D6","00ff00","0033FF","FF3344");
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
	write_button("","�Ϲ�",6,20,35,20,"","�����Ϲ�","guan()");
	for (var i = 0 ; i < 6 ; i ++)
		write_newwindow_button(a_link_button[i*2],6 + 35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("Az_y","ӭ��",4,40,35,20,"","�㿪���ϵͳ���Զ���ӭ�ս���������","Az_yy()");//
	write_button("","�ͻ�",374,60,35,20,"","�����ʻ�����","autosend(a_flower)");
	write_button("","��ӭ",409,60,35,20,"","���ٻ�ӭ","autosend(a_welcome)");
	write_button("","׼��",444,60,35,20,"","׼������","autosend(a_santmic)"); 
        write_button("","�黰",304,60,35,20,"","����ϸ��","autosend( a_like)");
	write_button("","�ظ�",269,80,35,20,"","�ظ��ϴεķ���","repeat_msg()");
	write_button("","����",304,80,35,20,"","��������","autosend(a_byebye)");
	write_button("","Ҫ��",339,80,35,20,"","����Ҫ��","autosend(a_wantmic)");
	write_button("","����",374,80,35,20,"","��������","autosend(a_heart)");
	write_button("","����",444,80,35,20,"","��������","autosend(a_message)");
        write_button("","����",409,80,35,20,"","����������","autosend(a_see)");
	write_button("","����",570, 60,35,20,"","�ٳ��˸�","autosend(a_thank)"); 
        write_button("","��л",525,60,46,20,"","��л����","autosend(a_lleave)");
        write_button("","����",480,60,46,20,"","�����ݳ�","autosend(a_love)");
	write_button("","��ַ",214,0,35,20,"","������ַ\n"+room_link_url,"send_msg('��������ַ��"+room_link_url+"')");
	write_bkcolor_select("bkcolor","����ɫ",374,40,60,select_color,a_bkcolor,"changebkcolor(this)");
        write_select("picture","ͼƬ���",478,40,74,select_color,a_picture,"play_pic(this)");
	write_select("playemote","��������",530,40,74,select_color,a_emote,"send_selection_msg(this)");
	write_button("reauto","�Ը�",480,80,46,20,"","�Զ��ظ�","reauto()");
	write_changeroom_form(269,100,126);	//	������
	write_changeuser_form(397,100,208);	//	����
	write_make_flowerr(300,4);	//


	if (is_online_manager())
	{        
                write_singer_form(479,0,1);	//	����
		write_button("","�¹�",6,20,35,20,"","�����¹�","xiaguan()");
		write_button("switchkick","׼��",339,60,35,20,"","�������˹���","switch_kick()");
                write_button("IntFlower","�׻�",530,80,70,20,"","�����ͻ�","IntervalFlower()"); 
		write_select_ex("playadmin","����ר��",530,60,75,select_color,a_admin,"send_msg");
		//	�Զ���������
		if (document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ6���Զ�����' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=���� title='ÿ6���Զ�����' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=���� title='����˵ݸ��Լ�' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{

		write_button("","���",339,60,35,20,"","���ٸ��","autosend(a_leave)");
		write_select("linkroom","��������",530,80,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}


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
			HTMLstr += "<font color=#FF0099>����</font>";
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
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'������\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
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
	setTimeout("write_loginmsg()",100);
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
                 if (obj.value == "ˢ���б�"){
                       reset_btn_style(obj,70);
                 break;
                 }
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

	aOption = new Option("����", "#FFFFFF"); 
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

	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#000000><big><B>&nbsp;&nbsp;"+room_name+"</B></big></font>"));
	HTMLstr += ('<SCRIPT>');
	HTMLstr += ("function Click(){alert('��*��o�����I�u��o�')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
	HTMLstr += ('</script>');
	HTMLstr += "<br><a title='��ǰ��������������'><font color=#000000>&nbsp;��ǰ������&nbsp;</font><font color=red><B id='usercount'>0</B></font><font color=#000000>&nbsp;λ����</font></a><br>";
	HTMLstr += "<a title=\"����ע��\"><marquee bgcolor=#F1EBFE><font color=#0099FF>��ӭ<font color=red>��"+document.inputform.USER.value+"��<font color=#0099FF>����<font color=red>"+room_name+"</font>�����ҡ�<font color=#0099FF>Ҫ������</font><font color=red>���¹���</font><font color=#0099FF>��</font><font color=red>999</font></marquee>";
	HTMLstr += "<a title='������������'><font color=000000>&nbsp;<b>�����б�:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr>";
	HTMLstr += userlist_bottom_html;
	HTMLstr += "<br><font color=#ff0000 >=��������=</a></body></html>";
            HTMLstr += "<br><font color=#ff0000 >*��o���֩I����o��</a></body></html>";
            HTMLstr += "<br><font color=#ff0000 >*�u��oo</a></body></html>";
            HTMLstr += "<br><font color=#ff0000 >=���ұO��=</a></body></html>";
           HTMLstr += "<br><font color=#ff0000 >*�t����ؐ��g</a></body></html>";
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
//      �Ƿ��Ǳ��¹���
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
	document.inputform.color.options[6].selected=true;
	document.inputform.bgcolor.value="";
}

function autosend(array)//�Զ����� array �е�һ�仰
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		msg += "��"+a_user+"���׻���";
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
//////////////-�Զ��׻�����-///////////////////
var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "������")&&(document.inputform.WHOTO.value!="������"))
 { 
  CFlowerToWho=document.inputform.WHOTO.value;
  if (IntFlower.value=="�׻�") {IntFlower.value="�׻�ͣ";
  CFlowerToWho=document.inputform.WHOTO.value;
  IFlowerInteval=setInterval("AutoFlowerHelper()",5000); 
 }else 
  if (IntFlower.value=="�׻�ͣ") {IntFlower.value="�׻�";
  clearInterval (IFlowerInteval);CFlowerToWho=""
 }
  } else 
   alert("ϵͳ:�ͻ�ͼƬ��������������!!") }
function AutoFlowerHelper() {
 var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
 document.inputform.WHOTO.value=CFlowerToWho;autosend(a_flower);
 document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmpMsg;
}

//////////////-�Զ��׻�������-///////////////////
///ӭ��///
WELCOME_num=0;
AW_time=0;
WELCOME_num=WELCOME_num+1;
if (WELCOME_num>30){new_men_num=0}
AW_time=AW_time+1;
if (((AW_time-(Math.floor(AW_time/10))*10)==0))
   {
   WELCOME_y();
   }
new_men=new Array();
new_men_num=0;
y_exchange=new Array();
y_exchange1=new Array();
y_exchange2=new Array();
function exchange(c1,c2){
for (i=0;i<c2.length;i++)
    c1[i]=c2[i];
}
function EXCHANGE_y(){
exchange(y_exchange,parent.list);
exchange(y_exchange1,parent.list);
new_men_num=0;
}
EXCHANGE_y();
function WELCOME_y(){
WELCOME_num=0;
if (new_men_num==0)
   {
   document.refreshuserlistForm.submit();
   exchange(y_exchange1,parent.list);
   exchange(y_exchange2,parent.list);
   for (i=0;i<y_exchange1.length;i++)
       {
       for (j=0;j<y_exchange.length;j++)
           {
           if (y_exchange[j].substring(0,y_exchange[j].length-39)==y_exchange1[i].substring(0,y_exchange1[i].length-39)) 
              {
              y_exchange1[i]="";
              y_exchange[j]="";
              }
           }
       }
    exchange(y_exchange,y_exchange2);

    new_men_num=0;
    newmen(new_men,y_exchange1);
    if (new_men_num>0)
       { WELCOME_send(new_men);}
   }
else{
    WELCOME_send(new_men);
    }
         
}
function newmen(c1,c2){
n1=0;
for (i=0;i<c2.length;i++)
    {
    if (c2[i])
       {
       c1[n1]=c2[i];
       n1=n1+1;
       }
    }
new_men_num=n1;
new_men_num1=n1;
}
function WELCOME_send(c1){
if (c1[new_men_num1-new_men_num])
   {
   cs_name=c1[new_men_num1-new_men_num].substring(0,c1[new_men_num1-new_men_num].length-39);
   cs_ys=inputform.WHOTO.value;
   parent.cs(cs_name);
   document.inputform.msg.value="//welcome";  
 		if (checksay())
   document.inputform.submit();
   c1[new_men_num1-new_men_num]="";
   new_men_num=new_men_num-1;
   parent.cs(cs_ys);
   }
}

function Az_yys(){
if (Az_y.value=="�ر�"){
WELCOME_y();
setTimeout("Az_yys()",30000)
 }
}
function Az_yy(){
if (Az_y.value=="ӭ��"){
Az_y.value="�ر�";
Az_yys()
} else if(Az_y.value=="�ر�"){
Az_y.value="ӭ��";
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
     document.all.reauto.value="�Ը�";
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
	document.write('<option selected style=color:'+color+' VALUE="" >�� �� �a �^ �� ��</option>');
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
{  parent.writev();
   if(parent.v.document==null)      return;
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
function decoratev()
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
        parent.v.document.write("<script>function Click(){alert('*�����ṩ��*�{ɫ����')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;</script>");
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


function write_make_flowerr(left,top)//��������������
{
        document.write('<DIV align=left style=width:158px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<font style=color:#0066FF><marquee scrollamount=1.9 > ��ӭ���鿪�ʡ��������ص����Ѽ��뵽���ǵĹ�����飬�ʹ�ҹ�ͬ��Ӫ��һ�����¡����������Χ��</marquee></font>");
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
//	�Ҽ�����
	document.oncontextmenu = new Function("return false;") ;
	document.oncontextmenu = about;

//	��Ȩ��Ϣ
function about()
{
	alert('�p���u���������� �p�p�p�p�p�p�p�p�p�p \n�p ������� �� �򡡡���������       �p\n�p �q��r�� <лл������>....<������ͷ>�p\n�p  /��\\/��\\��������*��o���֩I����o��  QQ��15579896�p\n�p�� <|��||�� ����CTRL+C ճ��CTRL+V �p\n�p�p�p�p�p�p�p�p�p �p�p�p�p�p�p�p�p�p ');
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
  var badword = new Array("�侫","ɵ��","���̡�","�����","����","����үү","JB","�|�|","MBսʿ","������","������","�~�}�|�{�z�y�x","�� Ь","��ʺ","�Ҳ�","����","������","���","��","����","����","���","����","�","满���","�$��","����","����","����","����","����","����","غ��","��Ƥ","����","��","ү��","����","��Ů","����","����","����","��ʺ","������","�x�y�z�{�|�}�~","�� �� ��","��","���","fuck","cao","����","�� ��","�� ��","����Ů","�д�","�д�","������Ѫ","���");
  for (var i=0;i<badword.length;i++){
//      if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){
      if (tmpmsg.indexOf(badword[i])!=-1){
      inputform.ws.checked=false;
      inputform.ws.checked=false;
      document.inputform.msg.value='*ϵͳ�����������������.��ֻ˵��һ���໰.��ô�Ͱ����ͳ��������ң�����';

document.inputform.color.value="0000ff";
                login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
alert('����['+a_user+']��\n��ֱ�Ǹ.�����������Ļ��к��в��ŵ����֣����ѱ��������������.�����ٴν���.����ע�ⲻҪ˵�໰.Ը���ڴ˿�����죡');		

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



function writeu1()//��д������
{
	if(this.u1.document==null)
		return;
	this.u1.document.open();
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if (full_screen_bkimage == 1)
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
}

function auto_log_func()//�Զ���¼��̨����
{
	setTimeout("login_form.submit();",30000);
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

//-->
var admins=new Array("*��o���֩I����o��","*����","*","*","*","*","*","*")
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
           alert("˭����ƨƨ��С�Ľ���ʱ��������") 
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

