/*****************************************/
// �q�Ψr���ө����ө� ���ө����ө� �q�Ψr
//  �v�u ��л�̩�лL��v��ʹ�̩��é�  �v�u 
// ��oo�����ǩ����թ� ���䩿���é� ��oo��   
// ���������ǿ�������(��ɫ) ������İ���ʮ��
// ������Ҫ������������bbs���� asp.ik8.com/fxw/bbs
// �뱣����Ȩ��Ϣ ����QQ��95639323
/****************************************/
<!--
var vers = "1.043";			//	���ð汾��
var config_style = 0;			//	���õķ��

var room_owner="*��������";			//	��������
var room_name="���˵�����";		//	��������
var room_number="2097";			//	�������

var black_roomname="";			//	˫����������
var black_roomnumb="";			//	˫���������
alert('   \n\b       �q�k�r�q�k�r�q�k�r�q�k�r�q�k�r�q�k�r�q�k�r       \n\b       �U�����U�辶�Uӭ���U�辶�U�⩦�U�辶�U�٩�       \n\b       �^���a�^���a�^���a�^���a�^���a�^���a�^���a   \n\b       �q�k�r�q�k�r�q�k�r�q�k�r�q�k�r�q�k�r�q�k�r       \n\b       �U�����U�辶�U�˩��U�辶�U�����U�辶�U�֩�       \n\b       �^���a�^���a�^���a�^���a�^���a�^���a�^���a\n\n\b\b\b ��ӭ�����롺���˵����֡���������*��������     \n\n    ϣ�����������ܹ������쿪�ģ�\n\n\b\b\b ������Ҫ�ڼ�����,��ʮ������,������������\n\n    �����������Ա����ԣ�\n\n\b\b\b\ �����������������죬ף�����Ŀ���')

//	ͼƬ�ȵĴ��λ�ã�����û��ָ����ȫ��ַ��http://.....����ͼƬ��������ַ��Ѱ�ң��������������б��
var config_place = "http://www.wodukom.com/zxg77/tupian/";
//	�Ϲܼ�¼��ַ
var guan_record = "http://qrliao.com/time/index.asp?room=���˵�����";
//	�����Զ��������ֵĵ�ַ��û�о�����Ϊ��
var auto_player = "";
var userlist_top_html = "<table border=0 width=120px cellspacing=0></td><tr></tr><tr><td align=middle><img src=http://fxw.ik8.com/fxw/zhanbiao.gif></td><tr><td align=middle><tr><td align=middle><marquee scrollamount=1><font color=Olive size=2><b>վ��*�����ӭ<font color=Olive><b>��"+document.inputform.USER.value+"��</b></font>����<font color=Olive>���</font><font color=red>���˵�����ϣ��������������Ŀ��ģ�Ҫ���999�������666</font></marquee></td></tr></table>"; //�����б���ͷ����ʾ
var userlist_bottom_html = "";
//	�����б���������֣��������Ҫ��������Ϊ�մ�
var userlist_bottom_html="<tr><td colspan=3 align=center><table width='60' border='0' cellspacing='3' cellpadding='3' bordercolordark='#ADC2EB' bordercolorlight='#FFFFFF' height='3'><tr><td  colspan=3 width='3' align='center'><b><span style='font-size: 8.0pt;COLOR:red'></b><marquee direction=up height=70 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=100 crolldelay=50><center>�k�k�k�k�k�k�k�k<Br>�����������<BR>*��������<BR>���︱�������<BR>*����<Br>Br><Br>�k�k�k�k�k�k�k�k</marquee></font></SPAN></td></tr></table></td></tr>";

var msg_bkimage = "";			//	��������ͼƬ
var full_screen = 1;			//	�Ƿ�ʹ������������0��ʹ�ã�1ʹ�ã�ʹ�ô���������
var def_textcolor = 4;			//	Ĭ�ϵķ�������ɫ,��1�ŵ�16��
var def_bgcolor = "";			//	Ĭ�ϵķ������ֱ���ɫ

var div_screen_bkcolor = "fff6ea";	//	����������ɫ
var div_screen_bkimage = "";		//	��������ͼƬ	
var div_msg_color1 = "#FF0000";		//	����������ɫ
var div_msg_color2 = "#8800FF";		//	����������ɫ

var list_user_color = "8800FF";		//	�б�����ɫ
var userlist_bkcolor = "#D4F6DC";	//	�б�������ɫ
var userlist_bkimage = "";		//	�б����ı���ͼ

var voice_bkcolor = "#D4F6DC";		//	����������ɫ
var voice_bkimage = "";			//	�������ı���ͼ
var voice_openimg = "";			//	���������²�����ͼ

var body_text_color = "#660099";	//	����������ɫ
var input_bkcolor = "#D4F6DC";		//	����������ɫ
var input_bkimage = "";			//	����������ͼƬ
var select_text_color = "#006699";	//	�������б������ɫ
var select_bkg_color = "#EEEEFF";	//	�������б�򱳾�ɫ
var sel_txt_color = "#FF0100";		//	�������б��˵��������ɫ
var sel_bkg_color = "#CCFFFF";		//	�������б��˵��������ɫ
var button_t_color = "#006699";	//	��������ť����ɫ
var button_text_color = "#006699";	//	��������ť�뿪������ɫ
var button_over_color = "#FF0000";	//	��������긲��ʱ��ť����ɫ
var input_msg_color = "#8e5208";	//	�������������������ɫ
var input_msg_bkcolor = "#CDE4F3";	//	��������������򱳾�ɫ

var KeepMicTime = 6;			//	�Զ������ʱ��������λ���룩
var AutoWelco = 3;			//	�Զ�ӭ����ʱ��������λ���룩
var AutoSayTime =120;			//	�Զ����Ե�ʱ��������λ���룩

var button_bk_image =1;		//	��ťʹ�ñ���ͼƬ��0������ʹ�ã�1����ʹ��
var btn_pic_18 = "http://pic.liaowan.com/anniu/21/1.gif";	//	18���
var btn_pic_35 = "http://pic.liaowan.com/anniu/21/2.gif ";		//	34���
var btn_pic_45= "http://pic.liaowan.com/anniu/21/3.gif";   
        //	44���
var btn_pic_60 = "http://pic.liaowan.com/anniu/21/4.gif";		//	60���
var btn_pic_72 = "http://pic.liaowan.com/anniu/21/6.gif";		//	70���

var url_popup_window = "";		//	����������ʱ�����Ĵ��ڣ����Ϊ���򲻵���
var only_registr_user = 0;		//	ֻ����ע���û�����,0��1��
var only_chinese_name = 0;		//	ֻ���������û�����0��1��
var default_admin_pass = "888";		//	Ĭ�ϵĹ���Ա����

var auto_open_ai = 1;			//	�Զ���ͼ��,0���򿪣�1�Զ���
var auto_open_mic = 1;			//	�Զ�������,0���򿪣�1�Զ���
var auto_open_qq = 0;			//	�Զ�������,0���򿪣�1�Զ���
var auto_open_div = 1;			//	�Զ��򿪷���,0��������1�Զ�����
var auto_open_notice = 0;		//	�Զ�����ʾ,0���򿪣�1�Զ���
var auto_refresh = 1;			//	�Զ���ˢ��,0���򿪣�1�Զ���
var auto_disable_kick = 1;		//	�Զ���ֹ����,0����ֹ��1�Զ���ֹ

var auto_flower_time = 6;		//	�Զ��ͻ���ʱ����������λ���룩
var acc_m_user = 1;			//	�Ƿ���������û�,0������1����
var auto_flower = 1;			//	�Ƿ������Զ��ͻ�,0������1����
var multi_singer_list = 0; 		// 	�Ƿ������ظ�����,0������1����
var accept_right_click = 0;		//	�Ƿ������Ҽ��˵�,0������1����

//	�������Ӱ�ť
var a_link_button = new Array
(
"��̳","�ǿ���̳",	"http://asp.ik8.com/fxw/bbs",
"����","��������",	"http://asp.ik8.com/fxw/wyxk/book.asp",
"��ҳ","�ǿ���վ",	"http://asp.ik8.com/fxw/wyxk",
"˵��","����������˵��",	"http://www.bliao.com/help/help17.htm"
);

//	�����е� VIP ����
//	����1������2�߹ܣ�3�����4��6����0��7��8��9�����ڲ�ʹ��;
var a_vip_user = new Array
(
"*��������",	1,
"*91925",5,
"*",4,
"*",4,
"*",4,
"*",6,

"*",6,
"*",6,
"*",6,
"*",4,
"*",4,
"*",4,
"*",4,
"*",4,
"*",4,
"*",4,
"",2,
"*�Ϥ���",2,
"*��������",3,
"*�������",3,
"*",5,
"*",6,
"*",6
);


//��������˵������
var a_usertitle = new Array
(
0,"���ڹ���",	"http://m168.w8.mscn.cn/bs/upload/8059-1-1-7436.gif",
1,"��������",	"http://kf.web15.bootchina.com/tp/shizhu.gif",
2,"������",	"http://liren.xiaoyao.com.cn/tu/00222.gif",
3,"��������",	"http://liren.xiaoyao.com.cn/tu/0123.gif",
4,"���ҹ���",	"http://chat.yeeyoo.com/chatimages/22.gif",
5,"�ű����",	"http://fxw.ik8.com/fxw/Emotion041.gif",
6,"���Ҽα�",	"http://chat.yeeyoo.com/chatimages/001.gif",
7,"���Ҽα�",     "http://kf.web15.bootchina.com/kz/jiabin.gif",
8,"���Ҽα�","http://kf.web15.bootchina.com/kz/jiabin.gif",
9,"���Ҽα�",	"http://js.liaowan.com/tp/tb/1/008.gif",
10,"","http://www.liaowan.com/bbs/upload/2004829-235937-520521.gif "

);

//	������������
var div_msg1 = "�������˵����ֻ�ӭ������";
var div_msg2 = "";
var div_msg3 = "��ӭ�����١����˵����֡����������ң�Ը����������Ŀ�����죡ϣ�������ܹ���Ϊ���ļ�!";
var div_msg4 = "��������Ϣ�����߹��Ҵ�����,������Ц�ﻶ��,�ε���¶�����˵�����,Ը��λ�����ڴ��и�������!";
var div_link = "";
//	�Զ�ӭ����
var AutoWelcome = "��ӭ�����١�"+room_name+"�����������ң�Ը����������Ŀ�����죡ϣ�������ܹ���Ϊ���ļң�"
//	����������
var mic_prompt = "����,��һ�������������,��������ҵ����ֱ��Ͻ�Ŀ����,лл!!";
//	�Զ��ظ���
var msg_auto_speak = "��Ǹ�����뿪һ��������ڲ��ڣ����ϻ���...";
var msg_back_speak = "��Һã��һ����ˣ��ܱ�Ǹ�ô�Ҿõ���~~";

//	״̬��ʾ��Ϣ
var log_bkcolor = "#FFFFCC";
var msg_login = "��"+room_name+"���������Ǻã����������ˣ�";
var msg_admin = "��Һã���"+document.inputform.USER.value+"�������Ϲ���,������Ϊ������������ϵķ���:)";
var msg_quitadmin = "��"+document.inputform.USER.value+"�����¹��ˣ��Ժ���Ϊ��ҷ���";
var msg_leave = "��Ҫ�뿪�ˣ���������棬��λ888888888";

//�������������ˡ���
var a_name_filter = new Array
(
"*���������������"
);

//�������֣������������ˡ���
var badword = new Array
(
"����","ɵ��","��Ь","�Ҳ�","����","����","����","����","���ã�","��ã�",
"����","����","���","���̵�","����","����","fuck","sex"
);

//���������ˡ���
var a_hide_user = new Array
(
);

//�����������ȡ���
var a_roomlink = new Array
(
"�ȴ�����",	"2000"
);
//�����Զ��������ݡ���
var auto_speak = new Array
(
"��ȥ�Է�","�ҳԷ�ȥ�ˣ������������Ҫ����ѽ",
"�����뿪","�Բ����������뿪һ��������ϻ���",
"���ڵ绰","��Ǹ�������ڽӵ绰�����Ժ򣬱��߿�",
"����ʱ��","���������ڹ���������æ�������ͻ���",
"��ʱ����","�����ڲ����㽲�����벻Ҫ����˵����лл",
"����Ÿ�","����û���������ڷŸ裬Ҫ����ʾ����",
"��Ŀ���","ף�����Ŀ��ģ����Ҳ�Ҫ����~"
);

//�����������ӡ���
var a_linkurl = new Array
(
"�ȴ�����",	"",
"",	"",
"",	"",
"",	"",
"",	""
);

//�����黰����
var a_love = new Array
(
"����","�������ҵĴ����������ҵĴ���������������Ĵ�������Ҳ��Ը����κ�һ�λ���ȥ˵һ���Ұ��㡣",
"����","���ΰ���֮�䣬���������Ӱ���������㻳�˵�����ĸо�����֪�ܷ�������һ�θ��ܵ�����¶ȣ�",
"����","��Ȼ����������أ������뵲��ס�Ҷ����˼����ף����Ը������Դ������ҵ�������",
"����","���У�˼���η�˿������У���Ҷ��������ꣻ������˶�����֪���ˣ�Ҳ�գ�Ц�������绨��",
"����","�������ģ��ټ����ģ����շ��ģ����÷��ģ�ɷ�ѿ��ģ���ô��ģ��������ģ�ӵ�����ģ����˳��ģ���Զ���ġ�",
"����","�����ʱ����������˯��������,�����ʱ�����Խ����ϼ��Ʈ��....��֪������������? ",
"����","����һ��΢Ц�͹��ˣ��籡��һ���������һ�ƣ������һƪ��˵����Ժǣ��·��죬��ܰ��Ʈ�ݡ�",
"����","���������Ұ��㣬�������󰮴��ף��������ϵķ�˷ɰ��ɣ����ǵ��ϵĲ���׷��׷���Ҳ�����Ҳ�����㣬���ø�����ĥ�㡣"
);

//������ӭ����
var a_welcome = new Array
(
"��ӭ",""+document.inputform.USER.value+"��ӭ�����١�" + room_name + "�����������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
"��ӭ","^_^*��" + room_name + "��*^_^*��ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡��������",
"��ӭ","�����ˣ���,����,������;��,����,����裡����" + room_name + "��ף�����е�Ůʿ������!ף�����е���ʿ������������",
"��ӭ","�񨍨�������" + room_name + "�����������Ĩ��������쨍�������Ҩ�����������������ӭ������������",
"��ӭ","�������ߵ����ĺ��ǡ���" + room_name + "����Զ��ӭ������Զ�Ⱥ�������Զ�������������",
"��ӭ","��ӭ�����١�" + room_name + "�����������ң�Ը����������Ŀ��ģ��ĵĿ��ģ����Ŀ��ģ�����",
"��ӭ","����������ѽ����ӭ��ӭ���������ڡ�" + room_name + "������,������һ���ĵȴ���ǣ�ң����ѣ�����"
);

//�����׻�����
var a_flower = new Array
(
"��","��!������� * ������ǩ�����ɣ���..��Ҳ�Ҫ����..��..��..˭�Ȱ�����..��~~ǩ�Ķ��أ�..��ǩ���·��ϰɣ�Ҫ����ӡ��Ŷ~����~�ҵ�Ь~",
"ǩ��","��~����̫����~�����~�����Ķ�����~����~����ǩ������~ �����~��~��������~����̫����~�����~�����Ķ�����~0~",
"����","������---�������ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ�ࡢ�ʻ��ࡢ�ࡢ�ࡢ�ࡢ�ࡢ�����������ɡ�������ˣࡢ�ࡢ��",
"����","����������ð�Ŷ�������������ˡ�������ð�Ŷ������ð�Ŷ�������ð�Ŷ������žžž�����",
"����","�����ң���רҵ����~~~~�רt��...��r�רt��r�����ǡ���(((((žž)))))�רt�רtǩ����ǩ����)�٣�����~~~~���� **�ҵ�Ь�أ��۾��� ",
"õ��","õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���Ȼ��t���r���׻��t���r���㻨�t���r�л��t���r �񻨡��������������ϻ�",
"����","�����������������������������������������������������������������������������������������������������������",
"����","����� �����*���� �����ǰ�������� * *�������������������*���* ̫���ˣ�������������㳪�����һ����Ǹ��ǳ��İ�����* ~",
"ż��","�������*�����ߡ֡���ʻ��֡���ʻ�ż�񡫡�ǩ�������� ��*���� ��*������*������ż�񡫡�ǩ�������� ��*������",
"����","��ɹ������~!~�������!!~!~!~������������~!!~!~!~!~��~!~����������~!~!!~!~!~�������~!~!!~������������~!!",
"�ٺ�","���רt��r�רt��r�����ǡ��פ�(((((((((žž))))))))�רt��r�϶�����רt��rˮ�ɻ����רt��r�רt��rҰ�ٺɡ��רt��r��",
"����","�~�}�|�{�z�y�x���úã��x�y�z�{�|�}�~�~�}�|�{�z�y�xžžž�x�y�z�{�|�}�~�~�}�|�{�z�y�x���úã��x�y�z�{�|�}�~�~�}�|�{�z�y�x",
"����","���ͼ��ͣ�Ϊ����ͣ��㳪�����Ŷ��(((((((((žž))))))))�廨���רt��r�����ǡ��r��",
"���","�������~~�t���r���򻨨t�����ƣ�����PA PA������õ��t���r�ٺϨt���rĵ���t���r����t���r����һ֦�����ң��Ϸ���",
"����",":���������嗀����K*���������������嗀����Y�K*���������������嗀���� �K *���������������嗀����K",
"����","�ʻ������������ʻ������������ʻ����������ʻ������������ʻ������������ʻ������������ʻ������������ʻ����������ʻ�����������",
"žž","*^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^* *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*��ž�� *^_^*",
"ˮ��","õ�廨���רt��r�רt��r�����ǡ��רt��r��(((((((((žž))))))))�רt��r�϶�����רt��r�פרt��rˮ�ɻ����רt��r�רt��r",
"ĵ��","* *����ĵ����� *�ջ��� * *ҹ������һ��һ����һ���ĵ����� *�ջ��� * *ҹ������������* *����һ��һ����һ���"
);

//�������С���
var a_byebye = new Array
(
"����","�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬http://2097.liaowan.com/�����ߴ���Ŷ~��",
"�ߺ�","�����᲻�ã�һ·�ߺã����ǻ������~~~~~���пճ����棬http://2097.liaowan.com/��������Ŷ~��"
);

//������ǡ���
var a_leave = new Array
(
"����","��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
"���","��̾һ��,�����˵��:�|���ݰݡ��˨��|һ�������ǧ��,��֪�����ٷ��.�����ȥ��,��Ҷౣ�ب|���ݰݡ��˨��|�����к�������еĻ��������ٶ������롤����������",
"����","������������Ŵ��  ,�����᲻�ð�....�һ������ǵ�..���ǲ������ҵģ�Ҳ��һ��Ҫ���ҷ������������ֻҪ�������Σ��������Ҿ�����%��%����#��@",
"���","��ɽ���ģ���ˮ������ɽ��ˮ����������ڣ����õȵ����������գ�ѩ���Ʈʱ����Ե������һ�����ڡ�"+room_name+"���ٴ���ᣡ"
);

//����Ҫ�󡪡�
var a_wantmic = new Array
(
"Ҫ��","��Ҫ��ѽ999999��Ҫ��ѽ999999",
"����","��Ҫ����ѽ9999999 ������"
);

//�������󡪡�
var a_sentmic = new Array
(
"����","����!��������,������˼,����õ���,��Ӻ�������˷�!(���������С���������ߺ����ұߵĿڹ��ϣ���Ҫ�Ÿ���ͬʱ���м�Ŀ�Ҳ���ϡ�)",
"����","����!��������,��Ӻ�������˷�!(���������С���������ߺ����ұߵĿڹ��ϣ���Ҫ�Ÿ���ͬʱ���м�Ŀ�Ҳ���ϡ�)"
);

//��������������
var a_novoicemic = new Array
(
"û������","����!�װ�������,�������������������������̫��,���ǵ������,������û������,�����ٵ���һ�����,�������Ǵ�999����?",
"û������","����!�װ�������,�������������������������̫��,����û��������������������ٵ���һ�����,�������Ǵ�999����"

);


//�������衪��
var churn_up = new Array
(
"����","����Ҫ����ѽ999999999~~~~~~~",
"����","����ҲҪ�����׸�ѽ����Ҫ����ѽ��"
);

//������������
var a_heart = new Array
(
"����",	"111111111���������11111111�������ˡ�",
"����",	"�������ˡ�����������������ˡ����������",
"����",	"�����ˣ���������������������ˣ������"
);

//����׼������
var prepare_mic = new Array
(
"׼��","����!��һλ����������,��������׼��~~!������ڣ������ֻػ����������������ұߵĿڹ��ϣ���Ҫ�Ÿ���ͬʱ���м�Ŀ�Ҳ���ϡ�лл! ",
"׼��","����!�Ⱥþ��˰�,��һλ������������~~!������ڣ������ֻػ����������������ұߵĿڹ��ϣ���Ҫ�Ÿ���ͬʱ���м�Ŀ�Ҳ���ϡ�лл! ",
"׼��","����!��������׼��,���Ͼ͵���������~~!������ڣ������ֻػ����������������ұߵĿڹ��ϣ���Ҫ�Ÿ���ͬʱ���м�Ŀ�Ҳ���ϡ�лл! "
);

//������ַ����
var a_address = new Array
(
"��ַ","�����μ�<<���˵�����>>��������ַ http://2097.liaowan.com ���о����ﲻ�ã��������˵�� ",
"��ַ","<<���˵�����>>������Ƶ��������ַ http://2097.liaowan.com  ���о�����ܺã�������ǵ�����˵��"
);

//����EMOTE����
var a_emote = new Array
(
"���ʺ��",	"",
"Hi��ã�",	"//hi",
"������",	"//visit",
"�����",		"࣡���������������㡫��o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���o��࣡���",
"������",	"//:)",
"����ЦЦ",	"//:)2",
"����",		"//hand",
"��������",	"//boy",
"����ӵ��",	"//bearhug",
"����һ��",	"//sit",
"��ҷ���",	"//happy",
"�����³�",	"//bless",
"���ҹ���",	"//clap",
"�׶����",	"//rose",
"��������",	"//sweat",
"������Ц",	"//haha",
"�ɻ���",	"//?",
"�������",	"//face",
"�����",	"//thank",
"ɵЦ����",	"//he",
"�Ǻ�ɵЦ",	"//hehe",

"������",	"",
"���˹�ȥ",	"//fly",
"�ճ�����",	"//flook",
"����裡",	"//sing",
"��ϲ����",	"//ppp",
"�Ұ�����",	"//love",
"�ȵĻ�л",	"//wait3",
"����Ը��",	"//love2",
"����֤��",	"//loveu",
"����գգ",	"//lovesee",
"��������",	"//lovelook",
"�������",	"//marry",
"��������",	"//shy",
"����ӵ��",	"//hug",
"���ḧ��",	"//care",
"���˻���",	"//lean",
"���һ��",	"//kiss",
"�������",	"//ykiss",
"�ð���ĥ",	"//zhemo",

"��򶷡�",	"",
"������ȥ",	"//allen",
"ҧ���۽�",	"//bite",
"�����̬",	"//bt",
"�������",	"//bug",
"���С��",	"//cut",
"�����һ�",	"//da",
"��բ�Ź�",	"//dog",
"�����˪",	"//drug",
"�����ȥ",	"//ds3",
"�߷ʴ�",	"//fat",
"��������",	"//grow",
"��������",	"//hammer",
"��ƨƨ",	"//handpat",
"���к���",	"//hit",
"���ɱ���",	"//ice",
"�������",	"//nudge",
"��Ϊ�ҽ�",	"//zap",
"����ӳ�",	"//tu",
"����ͱͱ",	"//poke",
"��Ƥ��ҩ",	"//paste",
"š�÷���",	"//pinch",
"��������",	"//puke",
"����һ��",	"//punch",
"������",	"//qia",
"һǹ�ŵ�",	"//qian",
"��ƨƨ",	"//kick",
"����ɱ��",	"//kill",
"�������",	"//koxia",

"��������",	"",
"��ȫͬ��",	"//agree",
"��ô����",	"//so",
"����ˣ�",	"//wrong",
"�Һܳ���",	"//know",
"�Ǳ�����",	"//fool",
"�������",	"//wen",
"�Ҳ�֪��",	"//no",
"�ҿ����",	"//work",
"˭��֪��",	"//who",
"��֪զ˵",	"//look2",
"�������",	"//lonely",
"�����޹�",	"//noask",
"��ͷ����",	"//nod",
"�Թ�����",	"//now",
"������",	"//pig",
"˵�Ķԣ�",	"//right",
"ҡ��ҡͷ",	"//shake",
"��������",	"//slow",
"���΢Ц",	"//smile",
"�����Ǹ",	"//sorry",
"����ԭ��",	"//sorry2",
"ԭ�¶���",	"//sorry3",
"�������",	"//stare",
"�����Դ�",	"//think",
"��ĺ���",	"//tired",
"��������",	"//wake",
"ʤ������",	"//yeah",
"NoNo",		"//finger",

"�����",	"",
"�������",	"//cu",
"�Ǳ��ټ�",	"//cu2",
"��������",	"//wait",
"�����ټ�",	"//bye",
"���ű�Ӱ",	"//cu3",
"�����㰳",	"//stw",
"�뱣�أ�",	"//goodbye",
"�������",	"//goodbye2",
"�ѹ�Ҫ��",	"//tear",
"��·�ϳ�",	"//tea1",
"�ӻ��֡�",	"//wave"
);

//	������
var a_adminmsg_ex = new Array
(
"�������","fnc:guan()","color:#0000FF;background-color:#FFFF99",
"�˳�����","fnc:xiaguan()","color:#FF0000;background-color:#FFFF99",
"��ʼ����","fnc:disablesingermanage(false)","color:#0000FF;background-color:#FFFF99",
"�ر�����","fnc:disablesingermanage(true)","color:#FF0000;background-color:#FFFF99",
"��������","fnc:disable_KICK(true)","color:#000000;background-color:#FFFFFF",
"��������","fnc:disable_KICK(false)","color:#FFFFFF;background-color:#000000"
);

//	������ʾ
var a_admin = new Array
(
"������ַ","��ӭ�������ס������ַhttp://2097.liaowan.com","color:#009900",
"�Ϲܾܺ�","����!ʮ�ֶԲ�����Ϊ�������Ϲ����֣����ܺ�����˫���������½⡣ ","color:#6600ff",
"��ڷ���","���ѽ~~��������~~~û������~~~�����ɷ�������~~~��������~~~~","",
"�Ѿ�����","����!����Ҫ��������Ѿ�������,�����Ժ�,Ҳ��������һ�������,лл�����ٱ�������,ף����ÿ�����ÿ���!","",
"û������","����!�װ�������,�������������������������̫��,���ǵ������,������û������,�����ٵ���һ�����,�������Ǵ�999����?","",
"Ҫ��˵��","���������ѣ�Ϊ���ܹ����ر��˵�˵���ͳ��裬����������½ǵ���˷�ͼ�꣬ʹ���ɺ�棬�������Ͳ���ϱ��˵��󣡵�����˵���ͳ���ʱ�������ٵ��һ�£������ʧ����˵����лл������","",
"�뿪����","����!ϵͳ����������δ����������˫������״̬,���������������ȫ˫���Ի�,���������ǵݲ���������Ŷ.���,лл֧�������!!","",
"��������","����!��������,������˼,����õ���,��Ӻ�������˷�!(���������С���������ߺ����ұߵĿڹ��ϣ���Ҫ�Ÿ���ͬʱ���м�Ŀ�Ҳ���ϡ�)","color:#6600ff",
"����ˢ��","����**��ע�ⲻҪˢ���������ѿ���Ц�����Ļ������򽫻ᱻ���ԣ������߽�����������ң��������лл","color:#ff0000",
"��������","����**����������,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,���򽫱����������,лл����!!!!! ","color:#ff0000",
"���㻻��","���ǵķ��䲻��ӭ���������֣������������ֽ���������������������䣬лл��������","color:#ff0000",
"���볪��","����!�װ�������,��ӭ��ĵ���,����Ը���ҳ�һ�׸��𣿣���лл���_�У���� ��","",
"��л����","����!лл��Ϊ������ϵĸ���,�Ƿǳ��Ķ���,�����ʱ����Ϊ�������һ����,���Ǹ�л��..ͬʱҲ��ӭ������!!","",

"���󲻺�","����!�������������������������̫��,���ǵ������,������ȴ�Ƕ϶�����������,�����ٵ���һ���ٴ�999,����?лл.","",
"Ҫ������","��Һã���ӭ��������" + room_name + "������Ҫ�������������߹���Ա��9999����!�м���������,����ˢ������!���ǻ�Ϊ���ź�˳��!","",
"ϣ������","��ӭ����������" + room_name + "������ϣ�������������ֻ��������Ա��999������Ա����󽻵��������ϣ�ף����������Ŀ��ģ���","color:#6633ff",
"��ӭ����","лл�����١���" + room_name + "�����������ڴ�������һ�εĹ��٣�һ·���ߣ�����","color:#6633ff",
"��������","��Ҫ���������뿴����ı��ҽ��ܣ������Բ��ϸ��������Ծ����ˣ�лл���Ĳ��롣","color:#6600ff"
);

//����ͼƬ����
var a_picture = new Array
(
"��ӭ","http://www.cj888.com/photo/65/marker/english/welcome/66.gif",
"��ӭ2", "http://www.mypcera.com/photo/65/marker/english/welcome/25.gif", 
"��ӭ3", "http://www.mypcera.com/photo/65/marker/english/welcome/44.gif", 
"����", "http://www.wzdu.com/UploadFile/20041422193945511.gif", 
"����", "http://benniao.8u8.com/gif/hy.gif", 
"���ĺ�",     "http://wwjxxx.8u8.com/9.gif", 
"��ɳ��",     "http://www.wzdu.com/UploadFile/20041421312930456.gif",
"�ȿ���",     "http://www.wzdu.com/UploadFile/20041421322135295.gif",
"����", "http://www.mypcera.com/photo/65/person/rests/love/3.gif",
"����", "http://www.liaowan.com/bbs/upload/200493-94636-$$C9$$D9$$C5$$F4.gif",
"��ʹ", "http://www.cj888.com/photo/65/person/rests/angel/3.gif", 
"�߷���", "http://www.wzdu.com/UploadFile/20041422304880269.gif",
"��", "http://www.liaowan.com/bbs/upload/200492-211625-$$C9$$D9$$C5$$F4.gif",
"����", "http://www.wzdu.com/UploadFile/20041422303992662.gif", 
"ɫ��", "http://www.liaowan.com/bbs/upload/200493-94543-$$C9$$D9$$C5$$F4.gif",
"���", "http://www.liaowan.com/bbs/upload/200492-211606-$$C9$$D9$$C5$$F4.gif",
"��Ц", "http://www.wzdu.com/UploadFile/20041422553662050.gif",
"��������", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063934276.gif", 
"����", "http://218.17.209.40:8080/mcard/images/41851.gif", "��������", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849478.gif", 
"ɳ̲��Ů", "http://smsad.tom.com/smsweb/images/modpic/4854_2069/Tom_1048585047.gif", 
"Ը�����", "http://219.133.40.170:8080/mcard/images/35365.gif", 
"����û��", "http://218.17.209.40:8080/mcard/images/37636.gif", 
"����1", "http://219.133.40.170:8080/mcard/images/42020.gif", 
"����2", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849381.gif", 
"����ϵ", "http://218.17.209.40:8080/mcard/images/40666.gif", 
"������Բ", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1061453990.gif", 
"ע������", "http://218.17.209.40:8080/mcard/images/41921.gif", 
"�ڽӵ绰", "http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1063876628.gif", 
"�ջ�", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063780572.gif",
"�����మ", "http://218.17.209.40:8080/mcard/images/40322.gif", 
"��Ҫ��", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1060138014.gif", 
"��������", "http://219.133.40.170:8080/mcard/images/37796.gif",  
"���տ���", "http://shopping.263.net/img/217/040602000425.gif", 
"���տ���1", "http://218.17.209.40:8080/mcard/images/35354.gif", 
"���տ���2", "http://www.wahaha8.com/chat/489604/pictures/016.gif", 
"���տ���3", "http://go.ebjet.com/card/media/gif/976238671.gif",  
"���㶵��", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1066123574.gif", 
"һ���غ�", "http://218.17.209.40:8080/mcard/images/42990.gif", 
"����", "http://219.133.40.170:8080/mcard/images/42347.gif", 
"ʧ����", "http://219.133.40.170:8080/mcard/images/41920.gif", 
"�Ƶ���", "http://www.cj888.com/photo/65/res/electric/computer/9.gif", 

"ת",	"http://www.newliao.com/bchat/chat/pic/p031.gif",
"������Ʒ", "http://smsad.tom.com/smsweb/images/modpic/4854_1787/Tom_1059118431.gif",
"����", "http://www.wzdu.com/UploadFile/200412815223285040.gif",
"����",		"http://im.qq.com/face/authed/3/b1969.gif"
);


//��������ɫ����
var a_bkcolor = new Array
(
"FFFFFF","fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff",
"9d9dff","ca8eff","AB82FF","ff88ff","ffaaaa","ccffa6","a6ffcc","b1fee9","adcafe",
"d5bbff","f1bbff","D752EB","FFFFCC","7BB706","CCCCFF","DBF3B3","CA00C8","FFCC99",
"CCFFFF","C8D0e8","582424","FFCCFF","4C67D6","00ff00","0033FF","FF3344"
);


//����ı����ڲ�ʹ�ã��벻Ҫ�޸�
var a_user;
var a_pass;
var a_type;
var a_user_pic = new Array(10);

var cur_user;
var tmp_user;
var isKeepMic = false;

var logintime;
var login_succeed;

var lastchoice;
var i_messages;
var timer_id;
var timeoutID;
var Auto_S = false;
var flower_state=false;
var u;

var m_msg_bkimage = "";
var m_input_bkimage = "";
var m_userlist_bkimage = "";
var m_voice_bkimage = "";
var m_voice_openimg = "";
var m_div_screen_bkimage = "";

var btn_style_18 = "width:18;height:20;";
var btn_style_35 = "width:35;height:20;";
var btn_style_45 = "width:45;height:20;";
var btn_style_60 = "width:60;height:20;";
var btn_style_72 = "width:72;height:20;";
var btn_image_18 = "";
var btn_image_35 = "";
var btn_image_45 = "";
var btn_image_60 = "";
var btn_image_72 = "";

var btn_on_event = 'onmouseout="this.style.color=\''+button_text_color+'\'"; onmouseover="this.style.color=\''+button_over_color+'\'" ';
var temp_high = parent.u.document.body.offsetHeight;

//	����Ϊ�����ýű�����ĺ�������������Ǻ���⣬�뾡����Ҫ�޸�
//	��ʼ��ϵͳ
function init_system()
{
//	��ʼ��ϵͳ����
	a_user = document.inputform.USER.value;
	a_pass = document.inputform.PASS.value;
	a_type = is_online_manager()?0:get_user_type(a_user);
	lastchoice = -1;
	i_messages = -1;
	login_succeed = true;
	var today = new Date();
	logintime = today.getTime();
	var tmpurl;
	msg_bkimage = trim(msg_bkimage);
	if (msg_bkimage != "")
	{
		tmpurl = msg_bkimage.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			m_msg_bkimage = config_place + msg_bkimage;
		else	m_msg_bkimage = msg_bkimage;
	}
	else	m_msg_bkimage=parent.u.document.body.background;
	parent.u.document.body.bgProperties="fixed";

	input_bkimage = trim(input_bkimage);
	if (input_bkimage != "")
	{
		tmpurl = input_bkimage.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			m_input_bkimage = config_place + input_bkimage;
		else	m_input_bkimage = input_bkimage;
	}
	else if (document.body.background != "")
		m_input_bkimage = document.body.background;
	else	m_input_bkimage = m_msg_bkimage;

	userlist_bkimage = trim(userlist_bkimage);
	if (userlist_bkimage != "")
	{
		tmpurl = userlist_bkimage.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			m_userlist_bkimage = config_place + userlist_bkimage;
		else	m_userlist_bkimage = userlist_bkimage;
	}
	else	m_userlist_bkimage = m_msg_bkimage;

	voice_bkimage = trim(voice_bkimage);
	if (voice_bkimage != "")
	{
		tmpurl = voice_bkimage.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			m_voice_bkimage = config_place + voice_bkimage;
		else	m_voice_bkimage = voice_bkimage;
	}
	else	m_voice_bkimage = m_msg_bkimage;

	voice_openimg = trim(voice_openimg);
	if (voice_openimg != "")
	{
		tmpurl = voice_openimg.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			m_voice_openimg = config_place + voice_openimg;
		else	m_voice_openimg = voice_openimg;
	}
	else	m_voice_openimg = m_msg_bkimage;

	div_screen_bkimage = trim(div_screen_bkimage);
	if (div_screen_bkimage != "")
	{
		tmpurl = div_screen_bkimage.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			m_div_screen_bkimage = config_place + div_screen_bkimage;
		else	m_div_screen_bkimage = div_screen_bkimage;
	}
	else	m_div_screen_bkimage = m_msg_bkimage;

	if (button_bk_image == 1)
	{
		tmpurl = btn_pic_18.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			btn_image_18 = "background-image:url("+config_place+ btn_pic_18 +");border:1px;";
		else	btn_image_18 = "background-image:url("+ btn_pic_18 +");border:1px;";

		tmpurl = btn_pic_35.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			btn_image_35 = "background-image:url("+config_place+ btn_pic_35 +");border:1px;";
		else	btn_image_35 = "background-image:url("+ btn_pic_35 +");border:1px;";

		tmpurl = btn_pic_45.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			btn_image_45 = "background-image:url("+config_place+ btn_pic_45 +");border:1px;";
		else	btn_image_45 = "background-image:url("+ btn_pic_45 +");border:1px;";

		tmpurl = btn_pic_60.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			btn_image_60 = "background-image:url("+config_place+ btn_pic_60 +");border:1px;";
		else	btn_image_60 = "background-image:url("+ btn_pic_60 +");border:1px;";

		tmpurl = btn_pic_72.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			btn_image_72 = "background-image:url("+config_place+ btn_pic_72 +");border:1px;";
		else	btn_image_72 = "background-image:url("+ btn_pic_72 +");border:1px;";
		btn_style_18 += btn_image_18;
		btn_style_35 += btn_image_35;
		btn_style_45 += btn_image_45;
		btn_style_60 += btn_image_60;
		btn_style_72 += btn_image_72;
	}

	var i;
	for (i = 0 ; i < 10 ; i ++)
	{
		tmpurl = a_usertitle[i * 3 + 2].substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if (tmpurl != "http://")
			a_user_pic[i] = config_place + a_usertitle[i * 3 + 2];
		else	a_user_pic[i] = a_usertitle[i * 3 + 2];
	}

//	������
	window.onerror = new Function("return true");
	document.body.onUnload = byebye;
//	�Ҽ�����
if (!accept_right_click)
	{
	document.oncontextmenu = new Function("return false;") ;
	document.oncontextmenu = about;
	parent.u.document.oncontextmenu = new Function("return false;") ;
	parent.u.document.oncontextmenu = about;
	}
//	�뿪
	document.write('<body onUnload="if(bleave_system==0) return;parent.cs(\'������\');document.inputform.elements[11].value='+log_bkcolor+';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
//	���� parent ��ʾ�����б�ķ���
	parent.write_new=writelist;
//	��������״̬
//	if (auto_open_mic == 0)	parent.writev_new = writecv;
	parent.writecv_new = writecv;
//	��������
	parent.writeu1 = writeu1;
//	�û�������
	user_name_filter();
//	����ʱ�����������Ϣ����
	open_startup_info_window();
//	�Զ���ͼ��
	setTimeout("auto_open_ai_fnc()",3000);
//	��ʾ��¼��Ϣ
	write_loginmsg();
}
/////////��ʼ��ϵͳ����Ϊֹ/////////

//	�û�������
function user_name_filter()
{
	if (!acc_m_user) compC();
	var index = 0;
	while (index < a_vip_user.length)
	{
		if (a_user == a_vip_user[index]) return;
		index += 2;
	}
	//	���������˱��ϵ����ֲ��ܽ���
	for (var i=0;i<a_name_filter.length;i++)
	if (a_user.indexOf(a_name_filter[i])!=-1)
	leaverom('����['+a_user+']��\n��ֱ�Ǹ�����������õ������к��б����䱣�����֣�\n���������������ֽ��뱾���䣬Ը���ڴ˿�����죡');

	//	�������ܽ���
	for (var i=0;i<badword.length;i++)
	if (a_user.indexOf(badword[i])!=-1)
	leaverom('['+a_user+']ע�⣺\n\n�����˰�������֣������ȥ�������뱾���䣡');

	//	ֻ����ע���û�����
	if(only_registr_user == 1 && a_user.charAt(0)!='*')
	leaverom('����['+a_user+']��\n��ֱ�Ǹ������������ֻ����ʹ��ע�������룡\n��������ע�������뱾���䣬Ը���ڴ˿�����죡');

	//	ֻ���������û�����
	if (only_chinese_name == 1 && is_numeric(a_user))
	leaverom('����['+a_user+']��\n��ֱ�Ǹ������������ֻ����ʹ�ú��������룡\n�������ú��������뱾���䣬Ը���ڴ˿�����죡');
}
function writC() {document.cookie="usname="+a_user;}
function readC(myCookie,name) 
{ 
	var start=myCookie.indexOf(name+"=");
	if(start == -1) return -1;
	else 
	{ 
	start=myCookie.indexOf("=",start)+1;
	var end=myCookie.indexOf(";",start);
	if (end == -1) end=myCookie.length;
	var value=unescape(myCookie.substring(start,end));
	if(value=="null") return -1;
	else return value;
	} 
} 
function compC()
{
	if (readC(document.cookie,"usname")==-1) writC();
	if (readC(document.cookie,"usname")==-1) leaverom("");
	if (readC(document.cookie,"usname")!=a_user) leaverom("");
}
function leaverom(msg_lev)
{
	login_succeed = false;
	document.controlForm.LEAVEIT.onclick();
	if (msg_lev!="") alert(msg_lev);
	parent.close();
	return;
}

//	����������ʱ�����������Ϣ����
function open_startup_info_window()
{if (url_popup_window != "") setTimeout('open_new_url(url_popup_window,"","")',5000);}

//	�ж��Ƿ����Ϲ�״̬
function is_online_manager()
{return (document.screenForm.KICK);}

//	д���뷿��ʱ�ı�����Ϣ
function write_loginmsg()
{
	if (!login_succeed) return;
	if (is_hidden_user(a_user) < 10) return;
	document.inputform.elements[11].name="bgcolor";
	document.inputform.elements[11].value=log_bkcolor;
	if (is_online_manager())
	{
		document.inputform.color.options[11].selected=true;
		send_msg(msg_admin);
	}
	else if ((this.location.toString().search("BOTTOMADM"))!=-1)
	{
		document.inputform.color.options[15].selected=true;
		send_msg(msg_quitadmin);
	}
	else
	{
		document.inputform.color.options[4].selected=true;
		send_msg(msg_login);
	}
	document.inputform.color.options[def_textcolor].selected=true;
	document.inputform.elements[11].value=def_bgcolor;
}

//	���������ַ���
function get_date_string(type)
{
	var isnMonths=new Array("01��","02��","03��","04��","05��","06��","07��","08��","09��","10��","11��","12��");
	var isnDays=new Array("������","����һ","���ڶ�","������","������","������","������","������");
	var today = new Date();
	var str = today.getFullYear();

	switch (type)
	{
	case 0:	//	2003��04��19�� ������
		str += "��" + isnMonths[today.getMonth()] ;
		if (today.getDate() < 10)
			str += "0";
		str += today.getDate()+"�� " + isnDays[today.getDay()];
		break;
	case 1:	//	2003��04��19��
		str += "��" + isnMonths[today.getMonth()] ;
		if (today.getDate() < 10)
			str += "0";
		str += today.getDate()+"��";
		break;
	case 2:	//	03-04-19
		str %= 100;
		if (str<10)
			str = "0" + str;
		str += ((today.getMonth() < 9)?"-0":"-") + (today.getMonth() + 1);
		str += ((today.getDate() < 10)?"-0":"-") + today.getDate();
		break;
	default:	//	2003-04-19
		str += ((today.getMonth() < 9)?"-0":"-") + (today.getMonth() + 1);
		str += ((today.getDate() < 10)?"-0":"-") + today.getDate();
		break;
	}
	return str;
}

//	����ʱ����������
function get_time_string(type)
{
	var today = new Date();
	var timespan = today.getTime() - logintime;
	var hour;
	var minute;
	var second;

	switch (type)
	{
	case 0:
	default:	//	��ǰʱ��
		hour = today.getHours();
		minute = today.getMinutes();
		second = today.getSeconds();
		break;
	case 1:		//	�����ʱ��
		if (timespan < 0)
			timespan = 0;
		second = Math.floor(timespan / 1000);
		minute = Math.floor(second / 60);
		hour = Math.floor(minute / 60);
		second = second % 60;
		minute = minute % 60;
		break;
	}
	return ((hour<10)?"0":"") + hour +((minute<10)?":0":":") + minute +((second<10)?":0":":") + second;
}

//	��ʾʱ��ĸ�ʽ
function clock(type)
{
	switch (type)
	{
	case 0:	//	2003��04��19�� 18:24:30
	default:
		clockf.innerText = get_date_string(1) + " " + get_time_string(0);
		break;
	case 1:	//	2003-04-19 18:24:30
		clockf.innerText = get_date_string(3) + " " + get_time_string(0);
		break;
	case 2:	//	2003��04��19�� ������ 18:24:30
		clockf.innerText = get_date_string(0) + " " + get_time_string(0);
		break;
	case 3:	//	18:23:05/01:13:24
		clockf.innerText = get_time_string(0) + "/" + get_time_string(1);
		break;
	case 4:	//	03-04-19 18:24:30
		clockf.innerText = get_date_string(2) + " " + get_time_string(0);
		break;
	case 5:	//	18:24:30
		clockf.innerText = get_time_string(0);
		break;
	}
}

//	����ʱ����ʾ
function write_clock(left,top,width,color,bkcolor,type)
{
	document.write('<DIV align = "center" style=color:'+color+';');
	if (bkcolor != "")
	document.write('background-color:'+bkcolor+';');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;WIDTH:'+width+'px;POSITION:absolute><P id="clockf">');
	document.writeln('</p></DIV>');
	clock(type);
	setInterval("clock("+type+")",1000);
}

//	����ĺ������ڰ�ť

//	�����������е�����
function autosend(array)
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2)) lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower) msg += "��"+a_user+" ר�á�";
	send_msg(msg);
}

//	��ť STYLE
function write_button_style(name,left,top,width,height,color,title,fontface)
{
	document.write('<BUTTON');
	if (name != "") document.write(' name="' + name + '"');
	document.write(' style="POSITION:absolute;LEFT:'+ left +'px;TOP:'+ top +'px;width:'+ width +'px;HEIGHT='+ height +'px;');
	if (color != "") document.write('color:' + color + ';');
	else	document.write('color:' + button_t_color + ';');
	if (button_bk_image == 1)
	{
		if 	(width <= 18) document.write(btn_image_18);
		else if (width <= 35) document.write(btn_image_35);
		else if (width <= 45) document.write(btn_image_45);
		else if (width <= 60) document.write(btn_image_60);
		else if (width <= 72) document.write(btn_image_72);
	}
	if (fontface == "")
		document.write('font-family:����,SimSun;font-size:9pt"');
	else	document.write('font-family:'+fontface+';font-size:9pt"');
	document.write(' title="'+ title +'"');
	if (color != "")
		document.write(' onmouseout="this.style.color=\''+color+'\';"');
	else	document.write(' onmouseout="this.style.color=\''+button_text_color+'\';"');
	document.write(' onmouseover="this.style.color=\''+button_over_color+'\' "');
}

//	�Զ���˳���͵İ�ť
function write_autosend_button(value,left,top,width,height,color,title,array)
{
	write_button_style("",left,top,width,height,color,title,"");
	document.write(' onclick="autosend('+ array +')">'+ value +'</BUTTON>');
}

//	�Զ��ͻ�
//	�����ʻ���Ŀ
function write_flower_number(left,top,width,height,title)
{
	document.write("<DIV align=left style='left:"+left+";top:"+top+";width:"+width+";height:"+height+";position:absolute;'>");
	document.write("<input type='text' name='flower_num' style='left:"+left+";top:"+top+";width:"+width+";height:"+height+";color:"+input_msg_color+";background-color:"+input_msg_bkcolor+"'");
	document.write(" value='1' maxlength='2' title='"+title+"'></DIV>");
}

//	�����ʻ�
function send_flower()
{
if (auto_flower == 0) u=document.inputform.WHOTO.value;
	var cur_user=document.inputform.WHOTO.value;
	var cur_input=inputform.msg.value;
	lastchoice ++;
	if (lastchoice >= (a_flower.length / 2)) lastchoice = 0;
	var msg = a_flower[lastchoice * 2 + 1];
	msg += "��"+a_user+" ר�á�";
	parent.cs(u);
	send_msg(msg);
	parent.cs(cur_user);
	inputform.msg.value=cur_input;
}

//	�ж��Ƿ��Զ��ͻ�
function auto_send_flower()
{
	if (auto_flower == 1) 
	{
		if (flower_num.value>0)
		{
			send_flower();
			flower_num.value-=1;
		}
		else {clearInterval(timeoutID);flower_num.value=1;send_f.value="�ʻ�";}
	}
	else if (auto_flower == 0) send_flower();
}

//	���ط����ʻ�״̬
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
		timeoutID=setInterval("auto_send_flower()",auto_flower_time*1000);
	else	{send_f.value="�ʻ�";flower_num.value=1;}
	}
else if (send_f.value=="ͣ��")
	{
	send_f.value="�ʻ�";
	flower_state=false;
	clearInterval(timeoutID);
	flower_num.value=1;
	}
}
else	send_flower();
}

//	��a_message�����е����Ʒ�����Ϣ
function send_message(key)
{
	for (var i = 0 ; i < a_message.length ; i+= 2)
	{if (a_message[i] == key){send_msg(a_message[i + 1]);return;}}
}

//	��һ���µ����Ӵ���
function open_new_url(theURL,winName,features){if (theURL != "") window.open(theURL,winName,features);}

//	��һ�������Ӵ��ڵİ�ť
function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)
{
	write_button_style("",left,top,width,height,color,title,"");
	if (theURL == "") document.write('disabled=true ');
	document.write('onclick=open_new_url("'+ theURL +'","'+ winName +'","'+ features +'")>'+ value +'</button>');
}

//	ִ��һ�������İ�ť
function write_command_button(name,value,left,top,width,height,color,title,action)
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="' + action + '">'+ value +'</button>');
}

//	�����ղ�
function addbookmark()
{
	var bookmarkurl="http://"+room_number+".liaowan.com/";
	var bookmarktitle="����-��"+room_name+"��";
	if (document.all) window.external.AddFavorite(bookmarkurl,bookmarktitle);
}

//	����
function disable_KICK(isdisable)
{
	if (is_online_manager())
	{
		if (document.screenForm.KICKIP)
		document.screenForm.KICKIP.style.display=isdisable?"none":"inline";
		document.screenForm.KICK.style.display=isdisable?"none":"inline";
		document.screenForm.NOMIC.style.display=isdisable?"none":"inline";
		document.screenForm.DUMB.style.display=isdisable?"none":"inline";
		document.screenForm.KLIST.style.display=isdisable?"none":"inline";
	}
}

//	�Ϲ�
function guan(){send_msg("//ADMIN " + default_admin_pass);}

//	�¹�
function xiaguan(){send_msg("//ADMIN quit");}

//	�ظ��ϴεķ���
function repeat_msg()
{
     if(document.inputform.SAYS.value!="") send_msg(document.inputform.SAYS.value + " ");
     document.inputform.msg.focus();
}

//	����ʽ�б��Ĵ���
//	��ǿ���б���õ��ĺ���
function select_ex_action(selection,defaultaction)
{
	var valstr = selection.value;
	inputform.msg.focus();
	selection.options[0].selected=true;
	if(valstr != "")
	{
		if (valstr.substr(0,4) == "fnc:") eval(valstr.substr(4));
		else eval(defaultaction + '("' + valstr + '")');
	}
}

//	��ǿ���б��
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
			if (array[i * 3 + 2] != "") document.write(" style=" + array[i * 3 + 2]);
			document.writeln(" VALUE='" + array[i * 3 + 1] + "'>" + array[i * 3] + "</OPTION>");
		}
		i++;
	}
	document.writeln('</SELECT>');
};

//	����ɫ�б��
function write_bkcolor_select(name,title,left,top,width,color,array,action)
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

//	��ͨ�б��
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
		if (array[i * 2 + 1] == "") document.writeln('<OPTION style=color:'+sel_txt_color+';background-color:'+sel_bkg_color+' VALUE="">' + array[i * 2] + '</OPTION>');
		else document.writeln('<option value='+array[i * 2 + 1]+'>'+array[i * 2]+'</option>');
		}
		i++;
	}
	document.write('</SELECT>');
};

//	�����б���е�ǰѡ�е���Ϣ
function send_selection_msg(selection){if(selection.value!="") send_msg(selection.value);selection.options[0].selected=true;}

//	������Ϣ
function send_msg(msg){if(msg != ""){document.inputform.msg.value=msg;if (checksay()) document.inputform.submit();}}

//	�����б���е�ǰѡ�е�ͼƬ
function play_pic(selection)
{
	if(document.inputform.AI.checked)
	{
		if(selection.value!="")
		{
			inputform.IMGURL.value = selection.value;
			if (inputform.msg.value == "") inputform.msg.value = selection.options[selection.selectedIndex].text;
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

//	��ָ���ķ���
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

//	ת���б����ѡ�еķ���
function gotolinkroom(selection){if(selection.value!=""){gotoroom(selection.value,a_user,a_pass);selection.options[0].selected=true;}}

//	�����ֱ���ɫ
function changebkcolor(selection)
{
	if(selection.value!="")
	{
		document.inputform.elements[11].name="bgcolor";
		document.inputform.elements[11].value=selection.value;
		selection.options[0].selected=true;
	}
}

//	���б����ѡ�е���ַ
function gotolinkurl(selection){if(selection.value!="") open_new_url(selection.value,"","");selection.options[0].selected=true;}

//	����������ʷ��¼,admin == 1 ��������
function open_history_window(admin)
{
	if (admin == 1)	open_new_url("http://"+parent.window.location.hostname+"/cgi-bin/download1.pl","","");
	else		open_new_url("http://"+parent.window.location.hostname+"/cgi-bin/download.pl?" + parent.window.location.port,"","");
}

//������������Ĵ���

//	���õ�ǰ���Զ���Ϊ�����е�ǰѡ�е�����
function prepare()
{
	if(document.singerform.singer.selectedIndex > 0)
	{
		inputform.msg.value=mic_prompt;
		parent.cs(singerform.singer.value);
	}
	else	parent.cs("������");
	inputform.msg.focus();
}

//	�г���ǰ����
function listsingers(type)
{
	if (singerform.singer.length == 1 && type == 0) return;
	var i = 1;
	var singerstr = '����:��';
	var singerstr1 = '��������:';
	while (i < singerform.singer.length)
	{
		if (singerstr.length + singerform.singer.options[i].value.length >=96)
			singerstr1 = singerstr1 + '[' + singerform.singer.options[i].value + ']';
		else	singerstr = singerstr + '[' + singerform.singer.options[i].value + ']';
		i++;
	}
	inputform.msg.value=singerstr;
	if (singerstr1 != '��������:')
	{
		if (checksay()) document.inputform.submit();
		inputform.msg.value=singerstr1;
	}
	inputform.msg.focus();
}

//	����������ȥ��ǰ����
function removesinger()
{
	if(singerform.singer.length > 1)
	{
		if(singerform.singer.selectedIndex == 0) singerform.singer.selectedIndex=1;
		singerform.singer.options.remove(singerform.singer.selectedIndex);
		if(singerform.singer.length > 1) singerform.singer.options[1].selected=true;
		else singerform.singer.options[0].selected=true;
	}
	listsingers(1);
}

//	�ж�һ�������Ƿ�����������
function singer_exist(user)
{
	if (multi_singer_list == 1) return false;
	for(var i=0;i<singerform.singer.options.length; i++)
	if(user==singerform.singer.options[i].value) return true;
	return false;
}

//	����һ�����ѵ��������
function addsinger()
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

//	�����Ѳ��뵽��ǰ��������ǰ
function insertsinger()
{
	if(inputform.WHOTO.value!='������' && singer_exist(inputform.WHOTO.value)==false)
	{
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		if(singerform.singer.selectedIndex>0)
			singerform.singer.options.add(newoption,singerform.singer.selectedIndex);
		else	singerform.singer.options.add(newoption,1);
	}
	listsingers(0);
}

//	���������е������������뵽�����У���ʽ�硰[����һ][���Ѷ�]��
function passlist()
{
	var fcsdx=inputform.msg.value;
	var posstart,posend;
	var struser;
	var i = 0;
	posstart = 0;
	while (i < fcsdx.length)
	{
		if (fcsdx.charAt(i)=='[') posstart = i + 1;
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

//	��ֹ����������
function disablesingermanage(isdisable)
{
	singerform.addtolist.disabled=isdisable;
	singerform.tolist.disabled=isdisable;
	singerform.removefromlist.disabled=isdisable;
	singerform.addlist.disabled=isdisable;
	singerform.listing.disabled=isdisable;
	singerform.singer.disabled=isdisable;
	if (isdisable)
		singerform.singmanage.value = "��";
	else	singerform.singmanage.value = "��";
}

//	�������������
function singermanage()
{
	if(singerform.singmanage.value == "��")
		disablesingermanage(false);
	else	disablesingermanage(true);
}

//	������������ܵĺ���
function write_singer_form(left,top,type)
{
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');
         
	write_command_button("singmanage",	"��",	0, 0,18,20,"","�򿪻�ر�������","singermanage()");
	write_command_button("addtolist",	"��",	19,0,18,20,"","�������ֵ���������ĩβ","addsinger()");
	write_command_button("tolist",		"��",	37,0,18,20,"","�������ֵ�ѡ����֮ǰ","insertsinger()");
	write_command_button("removefromlist",	"ɾ",	55,0,18,20,"","������������ɾ����ѡ�������","removesinger()");
	write_command_button("addlist",		"��",	73,0,18,20,"","����������������������뵽����������","passlist()");
if (type==0)
	write_command_button("listing",		"��",	91,0,18,20,"","������������","listsingers(0)");
else	write_command_button("listing",		"����",	91,0,35,20,"","������������","listsingers(0)");
	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:����,SimSun;font-size:9pt');
if (type==0)
	document.write(';left:109px;top:0px;width:126px">');
else	document.write(';left:0px;top:20px;width:126px">');
	document.write('<option selected VALUE="">��'+room_name+'������</option>');
	document.write('</SELECT></form></DIV>');
	disablesingermanage(true);
}

//	��������
//	������ʱ�Ľ���
function writev()
{
	if(parent.v.document==null) return;
	parent.v.document.body.style.backgroundImage="url("+m_voice_bkimage+")";
	if (full_screen == 1)
	{
		parent.v.document.body.style.backgroundPositionX = eval(-parent.u.document.body.offsetWidth)+"px";
		parent.v.document.body.style.backgroundPositionY = eval(-(parent.r.document.body.offsetHeight+3))+"px";
	}
	for(var i=0; i<parent.v.f.elements.length; i++)
	{
	obj=parent.v.f.elements(i);
	var c_stl = "color:"+button_text_color+"; ";
	switch (obj.name)
		{
		case 'requestmic':
			obj.style.cssText = btn_style_35 + c_stl;break;
		case 'releasemic':
			obj.style.cssText = btn_style_35 + c_stl;break;
		case 'filtervoice':
			obj.style.cssText = btn_style_35 + c_stl;break;
		case 'v2vv':
			obj.style.cssText = btn_style_45 + c_stl;break;
		case 'mainmic':
			obj.style.cssText = btn_style_18 + c_stl;break;
		case 'secondmic':
			obj.style.cssText = btn_style_18 + c_stl;break;
		case 'getmic':
			obj.style.cssText = btn_style_18 + c_stl;break;
		case 'cutmic':
			obj.style.cssText = btn_style_18 + c_stl;break;
		case 'freemic':
			obj.style.cssText = btn_style_18 + c_stl;
			obj.value = "��";break;
		case 'close':
			obj.style.cssText = btn_style_60 + c_stl;
			obj.value = "�ر�����";	break;
	        }
	}
	parent.v.document.blueskyvoice.RecOn();
}

//	�ر�����ʱ�Ľ���
function writecv()
{
	if(parent.v.document==null) return;
		parent.voiceframe.rows="0,*";
		parent.v.document.open();
		parent.v.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body");
	if (voice_bkcolor != "")
		parent.v.document.write(" bgcolor="+voice_bkcolor);
	else	parent.v.document.write(" bgcolor="+parent.r.document.body.bgColor);
	if (full_screen == 1)
		{
		parent.v.document.writeln(" background="+m_msg_bkimage);
		parent.v.document.writeln(" style=\"background-position-x:"+eval(-parent.u.document.body.offsetWidth)+"px;background-position-y:"+eval(-(parent.r.document.body.offsetHeight+3))+"px;\"");
		}
	else if (m_voice_bkimage != "")
		parent.v.document.writeln(" background="+ m_voice_bkimage);
		parent.v.document.writeln(" bgproperties=\"fixed\"><style type=text/css>INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>");
	if (!accept_right_click)
		parent.v.document.write('<SCRIPT>function about(){alert("��'+room_name+'����ʾ������ʹ��Ctrl+C��Ctrl+V���и��ơ�ճ����");return false;} document.oncontextmenu = new Function("return false;");document.oncontextmenu=about;</script>');
		parent.v.document.write("<center><br><br><br><br><input type=button name=closev style="+btn_style_72+" value=������ onclick='parent.writev_new();parent.d.writev();' "+btn_on_event+">");
		parent.v.document.writeln("<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>˵��&����</span></a>");
		parent.v.document.writeln("</body></html>");
		parent.v.document.close();
}

//	ȫ˫���Ĵ�����
function v2v()
{
	if((inputform.WHOTO.value=='������')||(inputform.WHOTO.value==inputform.USER.value)) return;
	if (black_roomname == "")
	{
		if(parent.v.document.f.v2vv.value == "˫���Ի�")
		{
			parent.v.document.f.v2vv.value="�˳�˫��";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		}else{
			parent.v.document.f.v2vv.value="˫���Ի�";
			parent.d.v2vForm.TOONE.value=0;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		}
	}else	if(confirm('\n��ֱ�Ǹ�����ڴ˷����������ޣ����Բ�����˫����\n�����Ҫ˫�����뵽��'+black_roomname+'����\n\n���ھʹ���'))
		{
			send_msg('���Ѿ��ڡ�'+black_roomname+'�������ˣ������ѡ���ҵ����֣�Ȼ���ȫ˫�����Ϳ�ȥ�����ˣ�������������ء��������������Ҿõȣ�����');
			gotoroom(black_roomnumb,a_user,a_pass);
		}
}

//	�����б����Ĵ���
//	�ж��Ƿ���ȫ��������
function is_numeric(str)
{for(var j=0;j<str.length;j++){if(str.charCodeAt(j)>=256) return false;}return true;}

//	�����û�������
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
	if (username.charAt(0) == "*")	user_type = 7;
	else if (!is_numeric(username))	user_type = 8;
	else				user_type = 9;
	return user_type;
}

//	�Ƿ��������û�
function is_hidden_user(username)
{
	if (typeof(a_hide_user) == "undefined") return 10;
	var index;
	for (index = 0;index < a_hide_user.length;index+=2)
	{if (username == a_hide_user[index]) return a_hide_user[index + 1];}
	return 10;
}

//	��д�б���
function writelist()
{
	if(parent.r.document==null) return;
	var usertype;
	var user_str;
	var user_array = new Array();
	var bkcolor=parent.r.document.body.bgColor;
	for(var i=1;i<parent.list.length;i++)
	{
		if (parent.list[i] != "")
		{
		var voicelists=parent.list[i].split("'-");
		if(!voicelists[1]) voicelists[1]='0';
		if(!voicelists[2]) voicelists[2]='0';
		var lists=voicelists[0].split("-'");
		if(!lists[1]) lists[1]='0';
		if (lists[1] == 1) usertype = 0;
		else usertype = get_user_type(lists[0]);
		user_str = usertype.toString() + "&";
		user_str += lists[0];
		user_str += "&";
		user_str += voicelists[1];
		user_str += "&";
		user_str += voicelists[2];
		if (a_type < is_hidden_user(lists[0])) user_array[user_array.length] = user_str;
		}
	}
	user_array.sort();
	parent.r.document.open();
	parent.r.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">");
	parent.r.document.write("<style type=text/css>");
	parent.r.document.write("<!--");
	parent.r.document.write(".p9 { font-family:����; font-size: 9pt}");
	parent.r.document.write("a:visited {  color:#0000FF; text-decoration: none}");
	parent.r.document.write("a:link {  color:#0000FF; text-decoration: none}");
	parent.r.document.write("a:hover {  color:#CC0033; text-decoration: underline}");
	parent.r.document.write("-->");
	parent.r.document.write("</style></head><body");
if (userlist_bkcolor != "")
	parent.r.document.write(" bgcolor="+userlist_bkcolor);
else	parent.r.document.write(" bgcolor="+bkcolor);
if (full_screen == 1)
	{
	parent.r.document.write(" background=\""+m_msg_bkimage+"\"");
	parent.r.document.write(" style=\"background-position-x:"+eval(-parent.u.document.body.offsetWidth)+"px;background-position-y:0px;\"");
	}
else if (m_userlist_bkimage != "")
	parent.r.document.write(" background=\""+m_userlist_bkimage+"\"");
	parent.r.document.write(" bgproperties=\"fixed\" leftmargin = 4 rightmargin = 0><p class='p9'><a>");
if (!accept_right_click)
	parent.r.document.write('<SCRIPT>function about(){alert("�������ǿա���ʾ������ʹ��Ctrl+C��Ctrl+V���и��ơ�ճ������");return false;} document.oncontextmenu = new Function("return false;");document.oncontextmenu=about;</script>');
        
if (userlist_top_html != "")
	parent.r.document.writeln(userlist_top_html);
else	parent.r.document.write("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>");
	parent.r.document.write('<br><a title=\"��ǰ��������������\"><font color=000000>  ��ǰ������ </font><font color=red><B>'+user_array.length+'</B></font><font color=000000> λ����</font><br>');
	parent.r.document.write("<a title=\"��ӭ\"><font color=0000ff>  ��������</font><font style=filter:glow(color=FF0000,strength=3);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>����</font><font color=0000ff>��</font><font color=red>999</font><br>");
	parent.r.document.write("�����б�<a target=d href=\"javascript:parent.cs('������')\" title=\"�������Ϊ������\">[������]<br>");
for(i = 0 ; i < user_array.length;i++)
{
	parent.r.document.writeln("<nobr>");
	lists=user_array[i].split("&");
if(lists[0] == "0")
	parent.r.document.write("<a><IMG align=absMiddle src=" + a_user_pic[0] + "><a target=d href=\"javascript:parent.cs('"+lists[1]+"')\"title=\"" + a_usertitle[1] + "\"><font style=filter:glow(color=FF0000,strength=3);Height:8pt;padding:1px;cursor:hand color=#FFFFFF size=\"2\">"+lists[1]+"</font></a>");
else	parent.r.document.write("<a><IMG align=absMiddle src=" + a_user_pic[lists[0]] + "><a target=d href=\"javascript:parent.cs('"+lists[1]+"')\"title=\"" + a_usertitle[lists[0]*3+1] + "\"><font style=filter:glow(color=" + list_user_color + ",strength=2);Height:8pt;padding:1px;cursor:hand color=#FFFFFF size=2>"+lists[1]+"</font></a>");
if (is_hidden_user(lists[1]) < 10)
	parent.r.document.write("<font color=#FF0099>��</font>");
if(lists[2]==1)
	parent.r.document.write("<font face=\"Webdings\" color=#009900 size=\"2\">O</font>");
if(lists[2]==2)
	parent.r.document.write("<font face=\"Webdings\" color=#000000 size=\"2\">H</font>");
if(lists[3]==1)
	parent.r.document.write("<font face=\"Webdings\" color=#000000>N</font>");
	parent.r.document.write("</nobr>");
	parent.r.document.write("<br>");
}
	parent.r.document.write('<hr>');
	parent.r.document.write(userlist_bottom_html);
	parent.r.document.write('</body></html>');
	parent.r.document.close();
}

//	�Զ���ͼ������������
function auto_open_ai_fnc()
{
	if ((is_hidden_user(a_user) < 10)||(auto_open_qq == 1))
		document.inputform.ws.checked=true;
	if (auto_open_ai == 1)
	{
		document.inputform.AI.checked=true;
		document.aicontrolForm.AI.value='on';
	}
	if (auto_refresh == 1)
	{
		document.screenForm.AUTOREFRESHUSERLIST.checked=true;
		parent.autorefreshuserlist=true;
	}
	if (auto_open_notice == 1)
	{
		document.screenForm.NOTICE.checked=true;
		document.aicontrolForm.NOTICE.value='on';
	}
	else
	{
		document.screenForm.NOTICE.checked=false;
		document.aicontrolForm.NOTICE.value='off';
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
	document.aicontrolForm.submit();
}

//	��������
function fp()
{
if (div_msg1!="") parent.u1.document.write('<p align="center"><font style=filter:glow(color=' + div_msg_color1 + ',strength=5);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>'+div_msg1+'</font></p>');
if (div_msg2!="") parent.u1.document.write('<p align="center"><font style=filter:glow(color=' + div_msg_color2 + ',strength=3);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>'+div_msg2+'</font></p>');
if (div_msg3!="") parent.u1.document.write('<p align="left"><font color="#FF6666" size="2" face="����"><b>��'+room_name+'�����棺</b></font><font color="#FF99FF" size="2" face="����">'+div_msg3+'</font></p>');
if (div_msg4!="") parent.u1.document.write(div_msg4);
if (div_link!="") parent.u1.document.write('<p align="left"><a href='+div_link+' target="_blank"><font color="#FF9900" size="2" face="����">'+div_link+'</font></a></p>');
}

//	��ת��ָ��λ��
function goto_location(label)
{document.location.hash="#" + label;}

//	�Զ�����
function SwKeepMic()
{
tmp_user=document.inputform.WHOTO.value;
if (Keep_Mic.value=="����")
	{
	if (tmp_user!="������")
		{
		isKeepMic = true;
		Keep_Mic.value="ͣ��";
		KeepMic();
		}
	}				
else
	{
	if (Keep_Mic.value=="ͣ��")
		{
		isKeepMic = false;
		Keep_Mic.value="����";
		}
	}
}

function KeepMic()
{
if (isKeepMic==true)
	{
	cur_user=document.inputform.WHOTO.value;
	parent.cs(tmp_user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
	setTimeout("KeepMic()",KeepMicTime*1000);
	}
}

//	������
function GiveMic()
{
	if(isKeepMic) SwKeepMic();
	cur_user=document.inputform.WHOTO.value;
	parent.cs(cur_user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

//	��������
function GetMic()
{
	if(isKeepMic) SwKeepMic();
	cur_user=document.inputform.WHOTO.value;
	var user=document.inputform.USER.value;
	parent.cs(user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

//	�Զ��ظ�������ϵͳ
function auto_speakt()
{
	if(!document.inputform.divs.checked) return false;
	if (autospeak.value == "�Զ�")
	{
		msg_auto_speak=prompt("�������Զ��ظ�����:", msg_auto_speak);
		if (msg_auto_speak=="" || msg_auto_speak==null) return;
		autospeak.value = "ֹͣ";
		autospeak.title = "ֹͣ�Զ��ظ�";
		all_stl_disable(true);
	}
	else if (autospeak.value == "ֹͣ")
	{
		all_stl_disable(false);
		autospeak.value = "�Զ�";
		autospeak.title = "�Զ��ظ�";
		parent.cs("������");
		send_msg(msg_back_speak);
	}
function parent.u1.document.writeln()
{
	var msg=arguments[0];
	parent.u1.document.write(msg+"\n");
	if ((autospeak.value == "ֹͣ")&&(msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&(msg.indexOf("["+document.inputform.USER.value+"]")!=-1))
	{
		all_stl_disable(false);
		var tmp_u=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
		parent.cs(tmp_u);
		send_msg(msg_auto_speak + "���Զ��ظ���");
		all_stl_disable(true);
	}
}
}function all_stl_disable(disable) 
{
	var selects = document.all.tags("INPUT");
	for (var i=0; i<selects.length; i++)	selects[i].disabled = disable;
	selects = document.all.tags("SELECT");
	for (i=0; i<selects.length; i++)	selects[i].disabled = disable;
	selects = document.all.tags("BUTTON");
	for (i=0; i<selects.length; i++)	selects[i].disabled = disable;
	autospeak.disabled = false;
}
//	�Զ�����
function write_plus_auto(name,left,top,name1,note,action)
{
document.write('<DIV style=width:50px;height:20px;left:'+left+'px;top:'+top+'px;position=absolute;>');
document.write('<FORM name='+name+'><select name='+name1+' onchange='+action+'>');
document.write('<option style=color:#FF0000;background-color:'+select_bkg_color+' VALUE selected>�Զ�����</option>');

document.write('<option style=color:116633;background-color:ccccff VALUE="">ȡ  ��</option>');
var i = 0;
while (i < auto_speak.length/2)
	{
	if ((auto_speak[i*2] != "")&&(auto_speak[i*2 + 1] != ""))
	{document.writeln('<option style=color:'+select_text_color+';background-color:'+select_bkg_color+' VALUE="' + auto_speak[i*2+1] + '">' + auto_speak[i*2] + '</option>');}
	i++;
	}
if (is_online_manager()) document.write('<option style=color:116633;background-color:ccccff VALUE="��������Ϊ��ҷ���Ҫ������������Ҵ�999~">���ڹ���</option>');
document.write('</SELECT></form></DIV>');
}
function plus_y()
{
	var tn=document.auto_plus.plusf.selectedIndex;
	var temp=document.auto_plus.plusf.options[tn].value;
	var tcolor=document.inputform.color.value;
	if((tn>0)&&(temp==""))
		{
		Auto_S = false;
		autofa.style.visibility="hidden";
		auto_plus.plusf.options[0].selected=true;
		}
	if((tn>0)&&(temp!=""))
		{
		Auto_S = true;
		tsec = 0;
		var twho=document.inputform.WHOTO.value;
		var cur_input=inputform.msg.value;
		parent.cs("������");
		send_msg(temp+"���Զ����ԡ�");
		document.inputform.WHOTO.value=twho;
		inputform.msg.value=cur_input;
		}
	setTimeout("plus_y();",AutoSayTime*1000); 
}
function plus(){if(Auto_S==false) plus_y();}

//	�����ͻ�
function write_make_flower(left,top)
{
	document.write('<DIV align=left style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name = "custom_flower_form"><font style=color:#FF0000>[�����׻�] ���֣�</font>');
	document.write('<input type="text" title="�������׻�������" name="fname" style="width:78px" maxlength="8" value = "�ʻ�">');
	document.write('<font style=color:#FF0000> �״ʣ�</font>');
	document.write('<input type="text" title="����ף���Ĵ���" name="ftext" style="width:79px" maxlength="8" value = "ף��">');
	document.write('<input type="button" title="����ף��" value="����" style = left:301px;top:1px;'+btn_style_35+';POSITION:absolute '+btn_on_event+' onClick=make_custom_flower()>');
	document.write('<input type="hidden" value="0" name="resend">');
	document.write('</form></DIV>');
}

//	�����ͻ�����
function make_custom_flower()
{
	var newflower,msg;
	if (custom_flower_form.resend.value == "0")
	{
		newflower = '��:' + custom_flower_form.fname.value;
		newflower += ':��t��r:';
		newflower += custom_flower_form.ftext.value;
		newflower += ':�t��r';
		custom_flower_form.resend.value = "1";
	}else{
		newflower = '��:' + custom_flower_form.ftext.value + ':��t��r:' + custom_flower_form.fname.value + ':�t��r';
		custom_flower_form.resend.value = "0";
	}
	msg = newflower + "��"+a_user+"ר�á�";
	while (msg.length + newflower.length < 100) msg = newflower + msg;
	send_msg(msg);
}

//	���齫Ҫ��������Ϣ
function checksay()
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
	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value=='')&&(autospeak.value == "�Զ�")&&(Auto_S==false))
	{
	alert('���Բ����ظ�');
	document.inputform.msg.value ='';
	document.inputform.msg.focus();
	return false;
	}		

//	�໰����
	var tmpmsg=document.inputform.msg.value;
	for (var i=0;i<badword.length;i++)
	{
		if (tmpmsg.indexOf(badword[i])!=-1)
		{
		inputform.ws.checked=false;
		inputform.ws.checked=false;
		document.inputform.msg.value='��ֱ�Ǹ����˳�������һ���໰���ҵ�ȥ̫ƽ����ϴϴ��ͣ�ף�����ģ�';
		document.inputform.color.value="0000ff";
		login_succeed = false;
		alert('['+a_user+']ע�⣡����\n��ղ���˵�Ļ������Ϊ����֤����С����...\n������ٴν��룬����ע�ⲻҪ�ٷ������򽫻��ܵ����������Ʋã�����');
		parent.close();
		setTimeout('CloseWindow()',3000);
		}
	}
	document.inputform.SAYS.value =document.inputform.msg.value;
	document.inputform.msg.value ='';
	document.inputform.IMG.value =document.inputform.IMGURL.value;
	document.inputform.IMGURL.value ='';
	dx=document.inputform.WHOTO.value;
	document.inputform.msg.focus();
	return(true);
}

//������������
function writeu1()
{
	if(this.u1.document==null) return;
	this.u1.document.open();
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {  color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited {  color: #0000FF; text-decoration: none}</style></head><body");
if (div_screen_bkcolor != "")
	this.u1.document.write(" bgcolor=\""+div_screen_bkcolor+"\"");
if (full_screen == 1)
	{
	this.u1.document.write(" background=\""+m_msg_bkimage+"\"");
	this.u1.document.write(" style=\"background-position-x:0px;background-position-y:"+(-(get_int(temp_high,2)+1))+"px;\"");
	}
else if (m_div_screen_bkimage != "")
	this.u1.document.write(" background=\""+m_div_screen_bkimage+"\"");
	this.u1.document.write(" bgproperties=\"fixed\">");
if (!accept_right_click)
	this.u1.document.write('<SCRIPT>function about(){alert("��'+room_name+'����ʾ������ʹ��Ctrl+C��Ctrl+V���и��ơ�ճ����");return false;} document.oncontextmenu = new Function("return false;");document.oncontextmenu=about;</script>');
	fp();
	this.u1.document.write("<p class=\"p9\" align=\"left\">");
}

function reset_msg_bkimage()
{
if (parent.u.document.body.style.backgroundImage != "url("+m_msg_bkimage+")")
	parent.u.document.body.style.backgroundImage="url("+m_msg_bkimage+")";
}

//	��������ԭ�еĽ���Ԫ�ص�����
function reset_elements_style() 
{
	document.write('<body ');
if (input_bkcolor != "")
	document.write("bgcolor="+input_bkcolor);
	document.write('bgproperties=fixed topmargin=18 leftmargin=6><style type=text/css>');
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;background-attachment:fixed;');
if (full_screen == 1)
	{
	document.write(" background-image:url(\""+m_msg_bkimage+"\");");
	document.write(" background-position-x:0px;background-position-y:"+eval(-(((parent.u.document.body.offsetHeight+parent.u1.document.body.offsetHeight))+1))+"px;}");
	}
else 	document.write("}");
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;background-attachment:fixed;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';background-color:'+select_bkg_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}');
        document.write('<STYLE>BODY{ cursor:url(http://www.wodukom.com/zxg77/tupian/3.ani);}</style>');
	document.write('</style>');
if ((full_screen != 1)&&(m_input_bkimage != ""))
	document.body.style.backgroundImage="url("+m_input_bkimage+")";
if (m_msg_bkimage != "") setInterval("reset_msg_bkimage()",1000);
	var obj; 
	for(var i=0; i<inputform.elements.length; i++) 
	{ 
		obj=inputform.elements(i);
		switch (obj.type)
		{
		case 'text':
			if (input_msg_color != "")
				obj.style.cssText="HEIGHT:20;color:" + input_msg_color;
			else	obj.style.cssText="HEIGHT:20";
			obj.style.backgroundColor=input_msg_bkcolor;
			obj.ondblclick = new Function("this.select();");
			break;
		case 'button':
		case 'submit':			
			if (obj.value == "����")
			{
				obj.style.cssText = btn_style_60;
				obj.onmouseout=new Function("this.style.color='"+button_text_color+"';"); 
				obj.onmouseover=new Function("this.style.color='"+button_over_color+"';"); 
			}
			break;
		}
	} 
	document.inputform.msg.style.width=288; 
	document.inputform.msg.style.height=20;
	for(i=0; i<screenForm.elements.length; i++) 
	{ 	
		obj=screenForm.elements(i);
		switch (obj.type)
		{
		case 'button':
			obj.onmouseout=new Function("this.style.color='"+button_text_color+"';"); 
			obj.onmouseover=new Function("this.style.color='"+button_over_color+"';");
			switch (obj.name)
			{
			case "REFRESHUSERLIST":	//	ˢ���б�
				obj.style.cssText = btn_style_72;
				break;
			}
		case 'submit':
			obj.onmouseout=new Function("this.style.color='"+button_text_color+"';"); 
			obj.onmouseover=new Function("this.style.color='"+button_over_color+"';");
			switch (obj.name)
			{
			case "VREQ":		//	��Ƶ����
				obj.style.cssText = btn_style_72;
				break;
			case "SCREEN":		//	����
			case "NOSCREEN":	//	���
			case "SHOWSCREEN":	//	����
			case "KICK":		//	����
			case "KICKIP":		//	��IP
			case "DUMB":		//	����
			case "NOMIC":		//	����
			case "KLIST":		//	����
			case "MIC":		//	����
			case "ODOOR":		//	����
			case "CDOOR":		//	����
				obj.style.cssText = btn_style_35;
				break;
			case "INBOX":		//	+
			case "OUTBOX":		//	-
			case "BOXLIST":		//	L
				obj.style.cssText = btn_style_18;
				if (is_online_manager()) obj.style.width=17;
				break;
			case "LIN":		//	��
				obj.style.cssText = btn_style_18;
				break;
			case "LOUT":		//	��
				obj.style.cssText = btn_style_18;
				if (is_online_manager()) obj.style.width=17;
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
		case "RELOAD":	//	����
		case "LEAVEIT":	//	�뿪
			obj.style.cssText = btn_style_35;
			obj.onmouseout=new Function("this.style.color='"+button_text_color+"';"); 
			obj.onmouseover=new Function("this.style.color='"+button_over_color+"';");
			break;
		}
	}
	var aOption = new Option("����", "#993300"); 
	aOption.style.color= "#993300";
	document.inputform.color.add(aOption); 
	aOption = new Option("��ͭ", "#990099"); 
	aOption.style.color= "#990099";
	document.inputform.color.add(aOption);
	if (is_online_manager())
	{
	if(auto_disable_kick) disable_KICK(true);
	else disable_KICK(false);
	}
	document.screenForm.MIC.style.display="none";
} 

//	���
function byebye()
{
	document.inputform.WHOTO.options[0].selected=true; 
	document.inputform.color.options[11].selected=true;
	document.inputform.msg.value="��" + a_user + "������,�ʹ��˵�ݰ�ඣ��ܿ��Ҿͻ������ģ�";
	checksay();
	document.inputform.submit();
}

//	����ͼ��
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
		imgurl = prompt("��ע�⣺����ֻ�ܲ���ͼƬ��\n��ʹ��GIF��JPEG�ļ���ʽ:","http://");
	else if (imgurl.indexOf("?") != -1 || imgurl.indexOf("(") != -1)
		imgurl = prompt("��ע�⣺�����в�����?��(��\n��ʹ��GIF��JPEG�ļ���ʽ:","http://");
	else	break;
	}
else	{imgurl = "";break;}
}
//document.inputform.msg.value=imgurl;
document.inputform.IMGURL.value = imgurl;
document.inputform.msg.focus();
}

//	��ֹ��Ϣ
function about(){alert("��*�����ǿա���ʾ������ʹ��Ctrl+C��Ctrl+V���и��ơ�ճ���� ");return false;}
function get_int(a,b){return (a-a%b)/b+1;}

//��������Ϊֹ

//	��ʼ��ϵͳ
init_system();

//	�˴������½���Ĳ����������԰�����Ҫ������޸�
switch (config_style)
{
case 0:
default:
	write_command_button("","�ղ�",4, 0,35,20,"","�����ղ�","addbookmark()");
	write_newwindow_button("��¼",4,20,32,20,"","�Ϲܼ�¼",guan_record,"","");
if (is_online_manager())
	write_command_button("","�¹�",4,40,32,20,"","�����¹�","xiaguan()");
else	write_command_button("","�Ϲ�",4,40,32,20,"","�����Ϲ�","guan()");
for (var i = 0 ; i < 4; i ++)
	write_newwindow_button(a_link_button[i*3],39 + 35 * i,0,35,20,"",a_link_button[i*3+1],a_link_button[i*3+2],"","");
	write_autosend_button("���",304,80,35,20,"","���ٸ��","a_leave");
	write_command_button("send_f","�ʻ�",539,39,45,20,"","���ٷ����ʻ�����","a_f()");
if (auto_flower == 1)
	write_flower_number(585,39,18,20,"�Զ�����һ���������ʻ�����");
	write_autosend_button("��ӭ",339,60,35,20,"","���ٻ�ӭ","a_welcome");
	write_autosend_button("����",374,60,35,20,"","��������","a_heart");
	write_command_button("","�ظ�",494,39,45,20,"","�ظ��ϴεķ���","repeat_msg()");
if (is_online_manager())
{
	write_command_button("","����",180,80,35,20,"","","GiveMic()");
	write_command_button("Keep_Mic","����",215,80,35,20,"","ÿ��"+KeepMicTime+"���Զ�����","SwKeepMic()");
	write_command_button("","��",250,80,18,20,"","��������","GetMic()");
}
	write_command_button("autospeak","�Զ�",179,0,35,20,"","�Զ��ظ�","auto_speakt()");
	write_plus_auto("auto_plus",214,0,"plusf","�Զ�����","plus()");
	write_autosend_button("����",320,0,35,20,"","�������","a_sentmic");
	write_autosend_button("����",285,0,35,20,"","û������","a_novoicemic");
	write_autosend_button("׼��",444,60,35,20,"","׼������","prepare_mic");
	write_autosend_button("����",339,80,35,20,"","��������","a_byebye");
	write_autosend_button("Ҫ��",409,80,35,20,"","����Ҫ��","a_wantmic");
	write_autosend_button("����",409,60,35,20,"","���ٽ���","churn_up");
	write_autosend_button("�黰",374,80,35,20,"","�黰���","a_love");

	write_autosend_button("��ͼ",444,80,35,20,"","����ͼ��","insert_picture()");

	write_autosend_button("��ַ",269,80,35,20,"","������ַ","a_address");
	write_bkcolor_select("bkcolor","����ɫ",374,39,60,"FF0000",a_bkcolor,"changebkcolor(this)");
	write_select_ex("advanced","������",479,19,72,"FF0000",a_adminmsg_ex,"send_msg");
	write_select_ex("playadmin","������ʾ",533,19,72,"FF0000",a_admin,"send_msg");
	write_select("picture","ͼƬ���",479,60,72,"FF0000",a_picture,"play_pic(this)");
	write_select("linkroom","��������",533,60,72,"FF0000",a_roomlink,"gotolinkroom(this)");
	write_select("playemote","��������",479,80,72,"FF0000",a_emote,"send_selection_msg(this)");
	write_select("linkurl","��������",533,80,72,"FF0000",a_linkurl,"gotolinkurl(this)");
	write_singer_form(370,0,0);		//	�������
if (!is_online_manager())
	write_clock(154,62,126,"#336688","",4);	//	��ʾ��ǰ����
	write_make_flower(269,100);		//	�����׻�
	break;
}
//	����������������
setTimeout('writev()',1000);
//	�������ý���Ԫ�ص�����
reset_elements_style();
//-->
/*****************************************/
// �q�Ψr���ө����ө� ���ө����ө� �q�Ψr
//  �v�u ��л�̩�лL��v��ʹ�̩��é�  �v�u 
// ��oo�����𩿩��˩� ���䩿���é� ��oo��   
// ��������������(��ɫ) ������İ���ʮ��
// ������Ҫ������������bbs���� asp.ik8.com/fxw/bbs
// �뱣����Ȩ��Ϣ ����QQ��95639323 
/****************************************/

