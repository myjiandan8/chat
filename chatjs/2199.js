/******************************************************************
Version:FX400C 
authors:�ž�����   Date: 2004-09-16
Copyright (C)2004 fxfl.cn
����ʹ�������κ��������½:http://fxdl.cn/bbs����
*********************************************************************/

AUSER=document.inputform.USER.value;                  // �����û�������
APASS=document.inputform.PASS.value;                  // �����������

WEBPLACES          = "lu_1/";                         // ��Ŧ�����ļ���
BACKGROUNDCOLOR    = "#0A8216";                       // ��Ŧ.����������ɫ
INPUTTEXBKCOLOR    = "#C9F2BB";                       // �������ɫ
INPUTBKCOLOR       = "#027F17";                       // ����������ɫ
MOUSEOVERCOLOR     = "#0000ff";                       // ����ƹ���Ŧ��ɫ
ROOMBKCOLOR        = "#C9F2BB";                       // R.V������ɫ
ROOMBKGROUND       = "#33CC00";                       // ���ӱ���ɫ                            
ROOMNAMES          = "�Ӱ�һ��";                      // ��������
ROOMNUMBER         = "301368";                          // ���
USERADMINLS        = "��ʱ����";                      // ��ʱ����ֻ���е����Ȩ��,����Ϊ0������
SUBMISSAUSER       = "ӭ��С��";                      // �Զ�ӭ������
BLACKROOMNAME      = "Ե������";                      // ˽�ķ���
BLACKROOMNUMB      = "305039";                                 // ˽�ķ������
LEAVEROOM          = "http://"+ROOMNUMBER+".chat.yinsha.com";  // ������ַ
WEBPLACE           = "http://218.65.209.14:28141/images/";     // ͼƬ��ŵ�·��
AUSERASP           = "http://218.65.209.14:28141/admin/";      // �����̨
LISTLOGOGIF        = "http://js.liaowan.com/bj/zays.gif";                             // gif��΢,Ϊ����ΪĬ���޺����΢
LISTLOGOSWF        = "";                                       // swf��΢,��������Ϊ��
LISTIOGOSE         = "lines02.gif";                   // ��΢�µ�ͼƬ
DEFAULTADMINPASS   = "123";                        // �Զ��Ϲ�����  

INPUTWS            = 1;                               // ���������ﵽ�趨����ʱ�ͻ�������Ļ�
INPUTWSALL         = 30;                              // ���������ﵽ�趨����ʱ�ͻ��Զ����Ļ�
INPUTWSNG          = 25;                              // ���������ﵽ�趨����ʱ����ͼƬ�Զ����Ļ�           
PU1WRITLE          = 0;                               // �ͻ��Ƿ񲻽����� 0������ 1������
ZENGBING           = 1;                               // �Ƿ�ʹ������ 0������ʹ�ã�1����ʹ��
BGINTEGRITY        = 0;                               // �Ƿ��޷�϶���� 0������ 1������ 
SCROLLHIDDEN       = 0;                               // Ĭ�����ع����� 0������ 1������
SUBUSER            = 1;                               // �Ƿ�ʹ��������� 
BODYBKIMAGE        = "r.jpg";                         // ����������ͼƬ
DIVSBKIMAGE        = "r.jpg";                         // ����������ͼƬ
VOICEBKIMAGE       = "r.jpg";                         // �������ı���ͼ��
LISTBKIMAGE        = "r.jpg";                         // �б�������ͼ��
VOICEV1IMG         = "v1.gif";                        // ��������ͼ��
VOICEV2IMG         = "v2.gif";                        // ˫��ͼ��
VOICEV0IMG         = "v0.gif";                        // δ������ͼ��
VIDEOV2IMG         = "v3.gif";                        // ��Ƶͼ��

BUTTONBKIMAGE     = 1;                                // ��ťʹ�ñ���ͼƬ��1����ʹ�ã�0������ʹ��
TOUMINGD          = "100";                            // ��Ŧ͸������0����100��ѡ

BUTTONBCOLOR      = "";                               // ��ť��ʹ�ñ���ͼƬʱ����ɫ,�մ���ʹ��Ĭ��ɫ
ONLYCHINESENAME   = 0;                                // �Ƿ��������� 0����������, 1��������
AUTOOPENMIC       = 1;                                // �Զ�������,0�������򿪣�1�����Զ���
BLACKROOMV2VV     = 1;                                // �Ƿ�����˫��0����������1��������
AUTOOPENAI        = 1;                                // �Զ���ͼ��,0�������򿪣�1�����Զ���
AUTOOPENDIV       = 1;                                // �Զ�����,0������������1�����Զ�����
ONINNERHTML       = 0;                                // �Ƿ������ͼ��0������,1������
AUSERCOLOR        = 0;                                // �б�����������ʹ�òʱ� 0������1������
VOICEVIMGES       = 0;                                // ���������Ƿ�ʹ��ͼƬ 0������ʹ�ã�1����ʹ��
USERPICTURE       = 1;                                // ������ǰ�Ƿ�ʹ��ͼƬ 0������ʹ�ã�1����ʹ��
ROOMPRGHTML       = 1;                                // �������Ƿ�ʹ�ù�����Ļ 0������ʹ�ã�1����ʹ��
ROOMPDGHTML       = 0;                                // �������Ƿ�ʹ�ù�����Ļ 0������ʹ�ã�1����ʹ��
LOGINCOLOR        = 18;                               // ����������Ϣ��ɫ 1����22��ѡ,��ɫ�ɲμ��������ɫ���������������,1������ɫ,2��������....               
ADMINCOLOR        = 11;                               // �Ϲ�������Ϣ��ɫ ͬ��
QUITCOLOR         = 20;                               // �¹�������Ϣ��ɫ ͬ��
LEAVECOLOR        = 16;                               // ����������Ϣ��ɫ ͬ��
BGCOLOR           = "#ffffff";                        // ����.������Ϣ����ɫ ������д��ɫ��
//���������������������ڲ��֡���
VOICEMODE         = 1;                                // �Ƿ�������:1���������� 0������ͨ�෽����
                                                      // (�����Ƿ�������������,ֻҪ��������̨���˶෽����,��ѡ:1 ������������������)

VOICEMODESAMPLE   = 1;                                // ����Ʒ��:1������Ʒ�������� 0������Ʒ�������� 
                                                      // (ѡ1ռ��CUP�ϸ�,CUP���Կ�����������������)

AOUTBUFFER        = 1;                                // ���ʻ������ 1������,0������
                                                      // (���ʹ�ö෽ͨ������,Ϊ���������� ��ѡ����0)
//���������������������ڲ���END����
//�������������������������ڲ��֡���
VOICEMODESAMPLED   = 0;                               // �Ƿ��Զ����� 1������ 0������

USERLOGIN         = "��Һ�,��������!!�ҡ�"+AUSER+"���ֻ�����";
USERADMIN         = "HI~����Һã�Ҫ�������������������ܴ�999���ҡ�"+AUSER+"���Ϲܴ�ҷ�����:)";
USERQUITADMIN     = "��"+AUSER+"�����¹��ˣ��Ժ���Ϊ��ҷ���";
USERLEAVE         = "��"+AUSER+"����������һ����,�����´μ�,�ݰ�ඣ�";
MSGAUTOSPACK      = "����Щ����ʱ�뿪һ�£�һ����ͻ���,����������..";          
MSGAUTOSPACKE     = "��Һ�,���ҽ������ۻ��⣬��ӭ���������ǵĻ��ⷢ��";

if(ROOMPRGHTML==1)
//����������������Ļ����
ROOMNAMEGHTML="<MARQUEE direction=up align=center onmouseout=this.start() onmouseover=this.stop() scrollAmount=1 HEIGHT=70 WIDTH=145 <font color=#ff0000><font color=#FF0000 face='�����п�' size=3>�����¹�������<br>��ǧ��������������<br>����������<br>ѩ����<br>�ػ�<br>��Ļ���.....</font></marquee></head>";

if(ROOMPDGHTML==1)
//����������������Ļ����
ROOMNAMEGHTM = "<font color=#FF0000>"+ROOMNAMES+"��ӭ:<font color=#990099>��"+AUSER+"���ĵ�����<font color=#ff0000>��������������΢�������䴩�ж�������ǧ���Ե�ְ���ע�������ҷ绨ѩ�µ����...! <font color=#ff0000>��ַ:http://370278.bliao.com";

//�����޺����΢,�����4������,���޸�sizeֵ����
ROOMNAMEFLASH="<script Language='JavaScript'>var i=0,ROOMNAMES='"+ROOMNAMES+"'; function changeCharColor() {str = '<center><font face=�����п� size=5><font color=blue>';for (var j = 0; j < ROOMNAMES.length; j++) {if( j == i) {str += '<font face=�����п� color=red>' + ROOMNAMES.charAt(i) + '</font>';}else {str += ROOMNAMES.charAt(j);}}str += '</font></font></center>';a.innerHTML = str;(i == ROOMNAMES.length) ? i=0 : i++;}setInterval('changeCharColor()', 400);</script>"

//����������Ŧ��������
BUTTONEVENT = 'onmouseout="this.style.color=\'\';" onmouseover="this.style.color=\''+MOUSEOVERCOLOR+'\';"';
BUTTONSTYLECOM=";filter:progid:DXImageTransform.Microsoft.Alpha(opacity="+TOUMINGD+");";
BUTTONSTYLEIMG=[
		22,"smiley.gif",
		18,WEBPLACES+"qan18.gif",
		30,WEBPLACES+"qan30.gif",
		34,WEBPLACES+"qan34.gif",
		44,WEBPLACES+"qan44.gif",
		60,WEBPLACES+"qan60.gif"
];

//��������ͨ������
AROOMLINK =[
          BLACKROOMNAME,	BLACKROOMNUMB,
		 "�춹쭸賡","liao.wo99.com:2000",
		 "���³�Ե","370278",
		 "����ת��","202.96.140.40:4528"
];
//�������ߡ���
POWERPERSONLIST=[
		 "*�ž�����",
		 "*С¥һҹ������`",
		 "��ʱ����",
		 "*���1",
		 "*���1"
];
//���������������֡���
NAMEFILTER =[
		"�ž�����",
		"С¥һҹ������",
		"���1",
		"���2",
		"���3",
		"���4"
];
//���������Զ��Ϲ�(���Ҽ��й�Ȩ)
EMCEEPERSONLIST = [
		"С¥һҹ������",
		"���1",
		"���1",
		"���1",
		"���1"
];
//�����ɿ���������
LISTWATCH = "^(\\С¥һҹ������|\\�ž�����|\\admin)$";
//����������
HIDEUSER =[
		"�ž�����",
		"���1",
		"���1",
		"���1"
];
//����������ס���
XNUSER=[
		"*һ���ȴ�",
		"*��D��Դ",
		"*�����",
		"С����",
		"����",
		"����~~",
		"����",
		"����",
		"����",
		"����������",
		"3321",
		"225",
		"AGFH"
];

//����VIP���򣬿�������������
VIPUSER = {
		"9394":"1",
		"���1":"2",
		"�ž�����":"3",
		"admin":"4",
		"���2":"5",
		"���3":"6",
		"���4":"7",
		"���5":"8",
		"���6":"3"
	}

//�����������ֵ���ɫ��ͼ��(ͷ��)��������������
AUSERTITLE= { 
        "1":[1,"��������","001.gif","#1B13BD"],
		"2":[2,"���ռѱ�","002.gif","#FB8302"],
		"3":[3,"*������*","003.gif","#990AB8"],
		"4":[4,"���Ҷ���","004.gif","#F3942E"],
		"5":[5,"�߼�����","005.gif","#0033FF"],
		"6":[6,"���ҹ���","006.gif","#FF00FF"],
		"7":[7,"���Ҽѱ�","001.gif","#1B13BD"],
		"8":[8,"���Ҽѱ�","001.gif","#1B13BD"],
		"9":[9,"���Ҽѱ�","001.gif","#1B13BD"],
		"10":[10,"���Ҽѱ�","001.gif","#1B13BD"],
		"11":[11,"���Ҽѱ�","001.gif","#1B13BD"],
		"12":[12,"���Ҽѱ�","001.gif","#1B13BD"],
		"13":[13,"���Ҽѱ�","001.gif","#1B13BD"],
		"14":[14,"���Ҽѱ�","001.gif","#1B13BD"],
		"15":[15,"���Ҽѱ�","001.gif","#1B13BD"],
		"A":[0,"��������","000.gif","#FF0000"],
		"B":[16,"ע������","007.gif","#1B13BD"],
        "C":[17,"��������","008.gif","#1B13BD"],
		"D":[18,"����Ӣ������","009.gif","#1B13BD"],
        "E":[19,"����ӭ��С��","yinbin.gif","#FF0000"]
		}
//������Ŧ�ϵ����ӡ���
LINKVUTTON = [
		"��ҳ","http://fxdl.cn/bbs",
		"���","",
		"����","",
		"��̳","http://qliao.ku.net",
		"����","http://admin.bliao.com/admin/s_admin.php"];

//�������������ӡ���
ALINKURL = [
		"�����޸�����","http://fxdl.cn/fxdl/login3.asp",
		"�û�ע��","http://chat.silversand.net/reguser.html",
		"����ע��","http://www.js.bliao.com/user_reg.php",
		"���԰����","http://admin.bliao.com/admin/s_admin.php",
		"��Լ����","http://admin.bliao.com/admin/r_admin.php",
		"���ձ�������","http://www.js.bliao.com/admin/s_admin.php",
		"��ΰ���","http://rekangtou.wx-e.com/chat/guangqu.htm",
		"���İ���","http://talk3.silversand.net/midi/hktaiwan.htm",
		"������Ϸ","http://www.ourgame.com/",
		"google����","http://www.google.com/"
];
//������ӭ�����
LSWELCOME = [
		"����!��ӭ�����١�" +ROOMNAMES+ "�������ң�Ը������������Ŀ��ģ��������죡����������ļң�����",
		"����!��" +ROOMNAMES+ "����ӭ������ף��������졢�ϼһ��֡������Ҹ����������⣡��������",
		"����!�����ˣ���,����,������;��,����,����裡����" +ROOMNAMES+ "����ӭ���ĵ���������",
		"����!����������ѽ����ӭ��ӭ�����������ڡ�" +ROOMNAMES+ "������,��������һ���ĵȴ���ǣ�ң����ѣ�����"
];
//��������ӭ��С��ظ��������
MISSWELCOME=[
        "����!��ӭ�����١�" +ROOMNAMES+ "�������ң����Ǳ���ӭ��С��,ֻӭ����������..",
        "����!����������ѽ����ӭ��ӭ���������Ǳ���ӭ��С��,ֻӭ����������,���½�....Ը��������ÿ���:)",
		"����!��" +ROOMNAMES+ "����ӭ��,���Ǳ���ӭ��С��,ֻӭ����������,Ҳ�����й���Ȩ��,���½�....)",
        "����!���Ǳ���ӭ��С��,ֻӭ����������,Ҳ�����й���Ȩ��,���½�....Ը��������ÿ���:)"
];
//�����黰����
ALOVE = [
		"�������ҵĴ����������ҵĴ���������������Ĵ�������Ҳ��Ը����κ�һ�λ���ȥ˵һ���Ұ��㡣",
		"��Ȼ����������أ������뵲��ס�Ҷ����˼����ף����Ը������Դ������ҵ�������",
		"��������������������һ������ʫ����ȫ���������Ů�Ĵ�����ഺ�ķ�ɡ�������ӡ�������������˫��ˮ���峺�����ӣ��Լ������ġ�һ��һ���Ľ�ë������̽ѯ�����ǹ���!",
		"��ͬ��ʱ�䣬��ͬ�ĵص㣬��ͬ����Ⱥ����ͬ��ֻ���Һ��㣡ʱ���ڱ䣬ʱ���ڱ䣬�����ֻ�� �Ҷ������޵�˼�",
		"������������㣬���������д��ˮ���ÿ���ˮ�����㡣������������㣬����д�������ÿ���������㣡",
		"���ܸ��춯�أ�ȴ���ܸж��㣻��Ը������أ���������Ҹ���Զ�����㣻����Թ��޵ع��Լ�û��ӵ����ĸ�����"
];
//�����ʻ�����
FLOWERS = [
		"��~����̫����~�����~�����Ķ�����~����~����ǩ������~ �����~��~��������~����̫����~�����~�����Ķ�����~0~",
		"�ʻ������������ʻ������������ʻ����������ʻ����������������������ʻ������������ʻ������������ʻ����������ʻ�����������",
		"����������ð�Ŷ�������������ˡ�������ð�Ŷ������ð�Ŷ�������ð�Ŷ������žžž�����",
		"�����ң���רҵ���Ǥרt��...��r�רt��r�����ǡ���(((((žž)))))�רt�רtǩ������)�٣�����~~~~���� **�ҵ�Ь�أ��۾���",
		"õ�廨��r�r��ҩ����r�t���r�ϻ����t���r���Ȼ��t���r���׻��t���r���㻨�t���r�л��t���r �񻨡��������������ϻ�",
		"����� �����*���� �����ǰ�������� * *�������������������*���* ̫���ˣ�������������㳪�����һ����Ǹ��ǳ��İ�����* ~",
		"���רt��r�רt��r�����ǡ��פ�(((((((((žž))))))))�רt��r�϶�����רt��rˮ�ɻ����רt��r�רt��rҰ�ٺɡ��רt��r��",
		"�������*�����ߡ֡���ʻ��֡���ʻ�ż�񡫡�ǩ�������� ��*���� ��*������*������ż�񡫡�ǩ�������� ��*������",
		"�ʻ�=========== ž------ž- -����Ϊ�����𣮡㣮��������ʻ�=========== ž---ž--����Ϊ������",
		"��!������� * ������ǩ�����ɣ���..��Ҳ�Ҫ����..��..��..˭�Ȱ�����..��~~ǩ�Ķ��أ�..��ǩ���·��ϰɣ�Ҫ����ӡ��Ŷ~����~�ҵ�Ь~",
		"ϣ���æ�.o�� ��  �� �� �ڡ�" + ROOMNAMES + "������`.������@�Y����������ҲҪ��ѩ�.+�d+�éd���]^`  �d+��d���]^",
		"����ࡢ�㡢��ࡢ��ࡢ��vKi��S��_�u����u�ࡢ��ࡢ��ࡢ��С����y^��^�y�y^��^�y�y^��^�y�ࡢ��ࡢ��ࡢ����ÿɰ�Ӵ�ࡢ��ࡢ��",
		"�Шr �q�Шr �� �� �� ��...�q�Шr�� �� �� ��...�� �� �� �� �� -- +��� �ĸ�q�Шr��~ �衡 �q�Шr �ٺ٨q�Шr ��`�q�Шr��",
		"�����������������������������������������������������������������������������������������������������������",
		"�ˣɣӣ����졫���q�m�r�������q�m�r�q�m�r�����ˣɣӣ����졫���q�m�r�������q�m�r�q�m�r�����ˣɣӣ����졫���q�m�r�������ˣɣӣ����졫��",
		"��㳪��ġ��á��͡����---���q���u���u���s ��㡤���� �������������á��ͩǨ~�B�~�B�T����PP���һ�������ȥ�ͣ��㡤���",
		"��x�ڨy�Ǩz��{�ݨ|�ި}�˨~�਀���õ���͸����I��~*~ž���I�֡���ʻ��֡�I" + ROOMNAMES + "�I��Ȩ���ЩIΥ�߱ؾ��I�����",
		"�x�y�z�z�y�x��������� �x�y�z�z�y�x�žž���� �x�y�z�z�y�x�ԭ�桻�� �x�y�z�z�y�x��������� �x�y�z�z�y�x�~*~ž���� ",
		"^�Ѩ���^���w�Ǵ���͡���o��࣡����vKi��S��_�u����u*��^�Ѩ���^������㡫��o��࣡����vKi��S��_�u����u*��^�Ѩ���^�������",
		"��~*~ž���ܰ�Ӵ�ࡢ�ࡢ��~*~ž��Ϊ���İ��ƣࡢ�ࡢ��~*~ž���ܲ������ࡢ�ࡢ��~*~ž�������ࡢ�ࡢ��~*~ž����ĺܰ��ࡢ"
];

//�����������С�������
ABYEBYE = [
		"�����᲻�����߰�....�һ������..�ߺ�~~~~~�пճ����棬"+LEAVEROOM+"�����ߴ���Ŷ~��",
		"�����᲻�ã�һ·�ߺã����ǻ������~~~~~���пճ����棬"+LEAVEROOM+"��������Ŷ~��"
];

//����������ǡ�������
ALEAVE = [
		"��ʵ������ ��ʵ������,����������ÿ�������ﶬ,��Ҫ������ �ٲ��ö��,��Ҫ����ҽ���һ��ȹ�... ",
		"������������Ŵ��  ,�����᲻�ð�....�һ������ǵ�..���ǲ������ҵģ�Ҳ��һ��Ҫ���ҷ������������ֻҪ�������Σ��������Ҿ�����%��%����#��@"
];

//��������Ҫ�󡪡�����
AWANTMIC = [
		"999999999���������999лл��",
		"��Ҫ��q�T��999999����Ҫ��"
];

//��������лл��������
THANK= [
		"лл!!������������^_^������������лл��!!������������^_^������������лл!!",
		"лл��!!~~~~~~~~~~~~~лл!!~~~~~~~~~~~~лл��!!"
];


//��������������������
AHEART = [
		"||||||||||||||||||||||||||||||",
		"�������ˡ������������������ˡ�����������"
];

//��������������������
AHEARTON = [
		"����!������û�������������������������",
		"�����û��������������������������������������������������"
];

//����������ַ��������
ROOMLEAVE = [
		"��" +ROOMNAMES+ "����������ַ "+ LEAVEROOM,
		"����!���ס������ַ:http://"+ROOMNUMBER+".bliao.com"
];

//���������������������
ADMINSMG = [
		"׼������", "����!��һ�������������ˣ���������׼��~~~~",
		"��������", "����!�������������������������̫�������������û�������������",
		"�ܾ�˫��", "����!ʮ�ֶԲ�����Ϊ�������Ϲ����֣����ܺ�����˫���������½⡣����ʱ��������˫����ʵ�ڱ�Ǹ�ˣ�",
		"�뻻����", "����!�����õ����ֲ��ʺϽ��뱾��,������������,�������Ա��������ȥ,лл����! ",
		"�������", "��������˵���ͳ���ʱ���ɲ�Ҫ�����ޣ����Ƕ����ʹ�ҵ����أ�������½������������С��˵��X�ȿɣ��������Ա��������",
		"δ�����", "���ã�ϵͳ������δ����������˫������״̬������������������˳�˫���Ի������������ǵݲ���������Ŷ��",
		"�Ѿ�����", "���ã�����Ҫ��������Ѽ���,���Ժ����?�벻Ҫ�ٴ�999�,������Ӱ�����ǵ���Ļ,Ҳ��Ӱ�����������.лл�����֧��!",
		"��������",	"���ã���������,������˼,����õ���,��Ӻ�������˷磡���_�У����  ",
		"���볪��",	"���ã�����Ը���ҳ�һ�׸������ʫ����̸̸����˵˵��ĸ���Ҳ�У���лл���_�У���� ",
   		"��������", "Ϊ��Ӫ��������ܰ�����������컷��,ע���Լ������Ի�����,�Ǻ����ѿ���Ц�������Ļ�,���򽫱����������,лл������",
		"��������",	"���ǵķ��䲻��ӭ���������֣������������ֽ�������Ȼ��������ȥ���ˣ�лл���ĺ�����",
		"��ھ���",	"Ϊ�����ҵ���ܰ���֣����Ҳ��ܳ�ʱ��ڵ绰�������ȷʵҪ������˽�ģ������ӱ�������ͨ������˽����,лл����~��"
];

//�����������顪������
AEMOTE = [
		"�ʺ�",	"",	          "���", "//hello",	 "Hi~",   "//hi",		"�к�", "//greet",
		"��ӭ", "//welcome",  "����", "//hand",		 "����",  "//visit",	"����",	"//boy",
		"���",	"//:)",		  "ЦЦ",	"//:)2",	 "ӵ��",  "//bearhug",   "һ��",	"//sit",
		"�Ϲ�",	"//bow",	  "����",  "//welcome2", "����",  "//happy",	"�³�",	"//bless",
		"����",	"//birthday", "����",	"//clap",	 "����",  "//addoil",   "���",	"//rose",
		"ţ��",	"//milk",	  "����",	"//tea",	 "����",  "//wine",		"����",	"//sweat",
		"Ģ��",	"//gzxj",	  "����",	"//ha",		 "��Ц",  "//haha",		"�ɻ�",	"//?",
		"����",	"//cool",	  "����",	"//eat",	 "����",  "//face",		"�����","//thank",
		"��~",	"//gao",	  "��Ц",	"//giggle",	 "ɵЦ",  "//he",		"�Ǻ�",	"//hehe",
		"��˵?","//en",		  "����",	"//:p",		 "����",  "//ah",		"����",	"//shou",

		"����",	"",		       "����",	"//ai",		"����",	"//@@",		    "����",	"//cat",
		"Լ��",	"//date",	   "����",	"//faint",	"��ȥ",	"//fly",		"���",	"//ds",
		"����",	"//flook",	   "��Ů",	"//girl",	"��ڨ",	"//go", 		"����",	"//beauty",
		"���!","//sing",	   "ҡ��",	"//sleep",	"ϲ��",	"//ppp",		"����",	"//love",
		"����?","//miss",	   "����?","//wait4",	"����",	"//waiting",	"��л",	"//wait3",
		"����",	"//love2",	   "����",	"//love3",	"֤��",	"//loveu",		"գգ",	"//lovesee",
		"����",	"//lovelook",  "�ջ�",	"//lure",	"˯����","//night",		"���",	"//marry",
		"����",	"//mm",		   "����",	"//shy",	"����",	"//smoke",		"����",	"//dance",
		"�޹�",	"//inn",		"��Ь",	"//caxie",	"�ᱧ",	"//hug",		"����",	"//hug2",
		"����",	"//spider",		"�ḧ",	"//care",	"����",	"//caress",		"����",	"//touch",
		"��ͷ",	"//pat",		"����",	"//lean",	"����",	"//jump",		"���",	"//kiss",
		"����",	"//kiss2",		"����",	"//kiss3",	"ӵ��",	"//smooch",		"����",	"//ykiss",
		"��N��","//lly",		"����",	"//xixi",	"��ĥ",	"//zhemo",		"����",	"//qsister",
		"����",	"//qsister1",	"����",	"//qbrother", "����","//qbrother1",
		"���",	"//cold",		"��ˮ",	"//:(",		"����",	"//cringe",		"���",	"//cry",
		"��̾",	"//sigh",		"��ο",	"//comfort","���",	"//comfort1",	"�˶�",	"//sad",

		"��",	"",
		"����",	"//allen",		"��ˮ",	"//drivel",		"�۸�",	"//bad",		"ҧ��",	"//bite",
		"��̬",	"//bt",		    "����",	"//bug",		"��",	"//crazy",		"���",	"//cut",
		"�һ�",	"//da",		    "�Ź�",	"//dog",		"�û�",	"//dove",		"��˪",	"//drug",
		"˵?˵","//ds2",		"����",	"//ds3",		"����",	"//duo",		"����",	"//faceless",
		"�߷�",	"//fat",		"����",	"//fear",		"����",	"//blush",		"��Ц",	"//heihei",
		"��Ц",	"//heng",		"ԭ��",	"//forgive",	"Ϲ��",	"//grin",		"����",	"//grow",
		"����",	"//hammer",		"��PP",	"//handpat",	"����",	"//hit",		"����",	"//ice",
		"���",	"//nolove",		"����",	"//nudge",		"�ҽ�",	"//zap",		"�ӳ�",	"//tu",
		"��ͱ",	"//poke",		"ͱ?ͱ","//poke2",		"��ҩ",	"//paste",		"š��",	"//pinch",
		"����",	"//puke",		"����",	"//punch",		"����",	"//qia",		"�ŵ�",	"//qian",
		"����",	"//zzz",		"��Ц",	"//znw",		"����",	"//ti",		    "����",	"//look3",
		"ߴ��",	"//jjww",		"��ν",	"//joe",		"��PP",	"//kick",		"ɱ��",	"//kill",
		"����",	"//look",		"�ݷ�",	"//wait2",		"ɵð",	"//beaut",		"����",	"//breath",		"���",	"//koxia",

		"����",	"",
		"ͬ��",	"//agree",		"����",	"//so",		    "���",	"//wrong",		"����",	"//bb",
		"����",	"//angry",		"����",	"//bbb",		"����",	"//hp", 		"����",	"//ill",
		"����",	"//know",		"����",	"//fool",		"����",	"//wen",		"��֪",	"//no",
		"����",	"//work",		"����",	"//who",		"����",	"//laugh",		"զ˵",	"//look2",
		"����",	"//lonely",		"ģ��",	"//no2",		"�޹�",	"//noask",		"��ͷ",	"//nod",
		"����",	"//now",		"����",	"//pig",		"�ԣ�",	"//right",		"ҡͷ",	"//shake",
		"�Ƶ���","//slow",		"΢Ц",	"//smile",		"����",	"//sorry",		"ԭ��",	"//sorry2",
		"ԭ��",	"//sorry3",		"���",	"//stare",		"����",	"//think",		"����",	"//tired",
		"����",	"//wake",		"ʤ��",	"//yeah",		"NoNo",	"//finger",

		"���","",
		"����",	"//cu", 		"�Ǳ�",	"//cu2",		"����",	"//wait",		"�ټ�",	"//bye",
		"��Ӱ",	"//cu3",		"�㰳",	"//stw",		"����",	"//goodbye",	"���",	"//goodbye2",
		"�ѹ�",	"//tear",		"����",	"//tea1",		"���֡�","//wave"

	];

//����ͼƬ����
APICTURE = [
        "�ʺ�",     "",
	    "�ܺ�",		"wenhou/0001.gif", 
        "���",		"wenhou/0002.gif", 
        "�ú�",		"wenhou/0003.gif", 
        "���",		"wenhou/0004.gif", 
        "����",		"wenhou/0005.gif", 
        "��ӭ",		"wenhou/0006.gif", 
        "л��",		"wenhou/0007.gif", 
        "����",		"wenhou/0008.gif", 
		"���",		"wenhou/01.gif",  
		"����",     "wenhou/02.gif",   
		"��Ů",     "wenhou/03.gif",
		"����",		"wenhou/04.gif",  
		"����",  	"wenhou/05.gif",   
		"����",		"wenhou/06.gif",
		"����1",	"wudao/01.gif",   
		"����2",    "wudao/02.gif",    
		"����3",	"wudao/03.gif",
		"����4",	"wudao/04.gif",   
		"����5",	"wudao/05.gif",     
		"����6",    "wudao/06.gif",
		"����7",	"wudao/07.gif",	  
		"˫����",   "wudao/08.gif",	  
		"˫����",	"wudao/09.gif",
    	"˫����",	"wudao/10.gif",	 
		"˫����",   "wudao/11.gif",

        "�ʻ���",        "",
		"�ʻ�1",        "hua/01.gif",
		"�ʻ�2",        "hua/02.gif",
		"�ʻ�3",        "hua/03.gif",
		"�ʻ�4",        "hua/04.gif",
		"�ʻ�5",  	    "hua/05.gif",
		"�ʻ�6",        "hua/06.gif",
		"�ʻ�7",        "hua/07.gif",
		"�ʻ�8",        "hua/08.gif",
		"�ʻ�9",        "hua/09.gif",
		"�ʻ�10",    	"hua/10.gif",
		"�ʻ�11",       "hua/11.gif",
		"�ʻ�12",       "hua/12.gif",
		"�ʻ�13",       "hua/13.gif",
		"�ʻ�14",       "hua/14.gif",
		"�ʻ�15",  	    "hua/15.gif",
		"õ��1",        "meigui/01.gif",
		"õ��2",        "meigui/02.gif",
		"õ��3",        "meigui/03.gif",
		"õ��4",        "meigui/04.gif",
		"õ��5",     	"meigui/05.gif",
		"õ��6",        "meigui/06.gif",
		"õ��7",        "meigui/07.gif",
		"õ��8",        "meigui/08.gif",
		"õ��9",        "meigui/09.gif",
		"õ��10",   	"meigui/10.gif",

        "����",        "",
		"����1", 	    "dadou/01.gif",
		"����2", 	    "dadou/02.gif",
		"����3", 	    "dadou/03.gif",
		"����4", 	    "dadou/04.gif",
		"����5", 	    "dadou/05.gif",	
		"����6", 	    "dadou/06.gif",
		"��ɱ", 	    "dadou/07.gif",
		"�ҿ�", 	    "dadou/08.gif",
		"����", 	    "dadou/09.gif",
		"��׷", 	    "dadou/10.gif",
		"����", 	    "dadou/11.gif",
		"��ȭ",	        "dadou/12.gif",
        "����",         "dadou/13.gif",
		"����", 	    "dadou/14.gif",	
		"����", 	    "dadou/15.gif",
		"�Ҷ�",		    "dadou/16.gif",
		"�Ҳ�", 	    "dadou/17.gif",
		"����", 	    "dadou/18.gif",
		"����",	        "dadou/19.gif",
		"ըҩ",         "dadou/20.gif",
		"ǹ��", 	    "dadou/21.gif",
		"����", 	    "dadou/22.gif",
		"Ůǹ",		    "dadou/23.gif",

        "������",        "",
        "��Ů",		    "tiaoqin/001.gif", 
        "���",		    "tiaoqin/002.gif", 
        "�ݸ�",		    "tiaoqin/003.gif", 
        "����",		    "tiaoqin/004.gif", 

		"����1",        "tiaoqin/01.gif",
		"����2",        "tiaoqin/02.gif",
		"����3",        "tiaoqin/03.gif",
		"����",         "tiaoqin/04.gif",
		"Լ��",         "tiaoqin/05.gif",
		"Լ��",         "tiaoqin/06.gif",
		"����1",        "tiaoqin/07.gif",
		"����2",        "tiaoqin/08.gif",
		"����3",        "tiaoqin/09.gif",
		"����",         "tiaoqin/10.gif",
		"��ʫ",         "tiaoqin/11.gif",
		"ü��1",        "tiaoqin/12.gif",
		"ü��2",        "tiaoqin/13.gif",
		"ü��3",        "tiaoqin/14.gif",
		"����",         "tiaoqin/15.gif",
        "����",         "tiaoqin/16.gif",

        "������",        "",
		"����", 	    "biaoqin/01.gif",
		"�", 	    "biaoqin/02.gif",
		"��ƨ", 	    "biaoqin/03.gif",
		"����", 	    "biaoqin/04.gif",
		"����", 	    "biaoqin/05.gif",
		"��Ц", 	    "biaoqin/06.gif",
		"��Ц", 	    "biaoqin/07.gif",
		"�绰��", 	    "biaoqin/08.gif",
		"����", 	    "biaoqin/09.gif",
		"����", 	    "biaoqin/10.gif",
		"����", 	    "biaoqin/11.gif",
		"�ҿ�",	        "biaoqin/12.gif",
        "����",        "biaoqin/13.gif",
		"����", 	    "biaoqin/14.gif",
		"����", 	    "biaoqin/15.gif",
		"����",		    "biaoqin/16.gif",
		"��ʹ1", 	    "biaoqin/17.gif",
		"��ʹ2", 	    "biaoqin/18.gif",
		"��æ",	        "biaoqin/19.gif",
		"��ԩ",         "biaoqin/20.gif",
		"����", 	    "biaoqin/21.gif",
		"����", 	    "biaoqin/22.gif",
		"����",		    "biaoqin/23.gif",
		"����",		    "biaoqin/24.gif",

        "ʳƷ��",        "",
		"����3",		"shipin/0001.gif", 
        "����1",		"shipin/0002.gif", 
         "����2",		"shipin/0003.gif", 
		"����",         "shipin/01.gif",
		"����1",        "shipin/02.gif",
		"����2",        "shipin/021.gif",
		"����",         "shipin/03.gif",
		"����",         "shipin/04.gif",
		"�ɿ���",       "shipin/05.gif",
		"�ɿ���",       "shipin/06.gif",
		"�㽶",         "shipin/07.gif",
		"����",         "shipin/08.gif",
		"����",         "shipin/09.gif",
		"Ƽ��",         "shipin/10.gif",
		"Ģ��",         "shipin/11.gif",
		"��Ͳ",         "shipin/12.gif",
		"����",         "shipin/13.gif",
		"ţ��",         "shipin/14.gif",
		"����",         "shipin/15.gif",
		"�Ȳ�1",        "shipin/16.gif",
		"�Ȳ�2",        "shipin/17.gif",
        "�ɱ�",         "shipin/18.gif",

        "������",        "",
		"�ű�",         "dongwu/01",
		"�ϻ�",         "dongwu/02",
		"С��",         "dongwu/03",
		"������",       "dongwu/04.gif",
		"����",         "dongwu/05.gif",
		"��è",         "dongwu/06.gif",
		"��ʿ",         "dongwu/07.gif",
		"��β��",       "dongwu/08.gif",
		"����",         "dongwu/09.gif",
	    "�Ź�",         "dongwu/10.gif",
		"ţ!",          "dongwu/11.gif",
		"�µ�",         "dongwu/12.gif",
		"����",         "dongwu/13.gif",
		"��ʳ",         "dongwu/14.gif",
		"����",         "dongwu/15.gif",
		"�ڹ�",         "dongwu/16.gif",

         "������",        "",
         "ʹ��",		"qita/0001.gif", 
         "����",		"qita/0002.gif", 
         "ȭ��",		"qita/0003.gif", 
         "��Ǹ",		"qita/0004.gif", 
         "̰��",		"qita/0005.gif", 
         "OK!",		    "qita/0006.gif", 
         "ʹ��",		"qita/0007.gif", 
         "��Ӳ?",       "qita/0008.gif", 
         "����",		"qita/0009.gif", 
         "����",		"qita/0010.gif", 
         "���",		"qita/0011.gif", 
         "����",		"qita/0012.gif", 
         "С��",		"qita/0013.gif", 
 		 "�ֻ�",         "qita/01.gif",	    
		 "�绰",         "qita/02.gif",	   
		 "�绰",         "qita/03.gif",
		 "С��",         "qita/04.gif",	    
		 "С��",         "qita/05.gif",	    
		 "��",         "qita/06.gif",
		 "����",         "qita/07.gif",	    
		 "����",         "qita/08.gif",	   
		 "ȡǮ",         "qita/09.gif",
	     "��Ʊ",         "qita/10.gif",	   
		 "���",         "qita/11.gif",	   
		 "ʥ��",         "qita/12.gif",	  
		 "ʥ��",         "qita/13.gif",	    
		 "ʥ��",         "qita/14.gif",  	
		 "ʥ��",         "qita/15.gif",	 
		 "����",         "qita/16.gif",	   
		 "����",         "qita/17.gif",  	
		 "����",         "qita/18.gif"
	];

ABKCOLOR = [
		"FFFFFF",
		"FFFF00",
		"FFE000",
		"FFC000",
		"FFA000",
		"FF8000",
		"FF6000",
		"FFA0FF",
		"FF80FF",
		"FF60FF",
		"FF00FF",
		"E000FF",
		"C000FF",
		"00FFFF",
		"00E0FF",
		"00C0FF",
		"00A0FF",
		"0080FF",
		"A0FF00",
		"80FF00",
		"00FF00",
		"00E000",
		"000000"
		];

VOPTION=[
        "����","993300",
        "ͭ��", "990099",
        "�ź�", "E10500",
         "����","FFFFFF"
         ];

//�����������������ڲ���������������������
IE=(ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion());
var ACHANG0 = [],ACHANG1 = [],ACHANG2 = [];
var BLEAVESYSTEM,AUTOADMIN=[],AUTOVIP=[],AUTOADMINS;
var RINTERVAL=20000,MINTERVAL=10000,ONTAKEOVER = 0,BLEAVESYSTEM = 1,LoginSucceed = true;
//�����������������Ƿ�����ͼƬ����������������

if(ZENGBING == 1){
	 WUSERLISTBKIMAGE  = parent.u.document.body.background;
     WVOICEBKIMAGE     = parent.u.document.body.background;
     WDIVSKIMAGE       = parent.u.document.body.background;
	 WBODYKIMAGE       = parent.u.document.body.background;
	 }else{
	 WUSERLISTBKIMAGE  = PastePath(LISTBKIMAGE);
     WVOICEBKIMAGE     = PastePath(VOICEBKIMAGE);
     WDIVSKIMAGE       = PastePath(DIVSBKIMAGE);
	 WBODYKIMAGE       = PastePath(BODYBKIMAGE);

}

//����������������CSS����������������
if(IE<"5.5"){
LISTSTYLE="<style type=text/css><!--body  {  font-size: 9pt}a:visited {  color: #0000FF; text-decoration: none}a:link {  color: #0000FF; text-decoration: none}a:hover {  color: #FF0000}TD{FONT-SIZE:10pt}";
BODYSTYLE="<style type=text/css>TD{FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}BODY{COLOR:"+INPUTBKCOLOR+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}INPUT{COLOR:"+BACKGROUNDCOLOR+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}SELECT{COLOR:"+BACKGROUNDCOLOR+";FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;}BUTTON{COLOR:000000;FONT-SIZE:9pt;FONT-FAMILY:����,SimSun;cursor:hand}</style>";
DIVPSTYLE="<style type=\"text/css\">.p9 { font-family:����; font-size: 11pt; line-height: 21pt};a:hover {  color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited {  color: #0000FF; text-decoration: none}</style>";
}else{
SCRLSTYLE="SCROLLBAR-FACE-COLOR: rgb(233,255,233); SCROLLBAR-ARROW-COLOR: rgb(53,233,0); SCROLLBAR-DARKSHADOW-COLOR: rgb(191,255,163); SCROLLBAR-BASE-COLOR: rgb(220,255,186);";
LISTSTYLE="<style type=text/css><!-- body {font-size: 9pt} a:visited {color:"+INPUTTEXBKCOLOR+";text-decoration:none;font-size:9pt} a:link {color:"+BACKGROUNDCOLOR+";text-decoration:none;font-size:9pt} A:hover {border-bottom:1px solid "+BACKGROUNDCOLOR+"; padding:0; COLOR: #FFFFFF;background-color:"+ROOMBKGROUND+"; font-size:9pt } TD{FONT-SIZE:9pt} BODY{color:#804040;"+SCRLSTYLE+"}";
DIVPSTYLE="<style type=text/css><!-- .p9 {font-family:����,SimSun;font-size:11pt;line-height:17pt}A:link {COLOR: "+BACKGROUNDCOLOR+"; TEXT-DECORATION: none; background-color:"+INPUTTEXBKCOLOR+"; font-size:11pt; border-bottom-style:solid; border-bottom-width:1}A:visited {COLOR: "+BACKGROUNDCOLOR+"; TEXT-DECORATION: none; background-color:"+INPUTTEXBKCOLOR+"; font-size:11pt; border-bottom-style:solid; border-bottom-width:1}A:hover {border-bottom:1px solid "+BACKGROUNDCOLOR+"; padding:0; COLOR: #FFFFFF;background-color:"+ROOMBKGROUND+"; font-size:11pt } BODY{color:#804040;"+SCRLSTYLE+"}--></style>";
BODYSTYLE="<style type=text/css>TD{FONT-SIZE:9pt}.p9 {font-size:9pt}BODY {color:"+INPUTBKCOLOR+";"+SCRLSTYLE+"}INPUT{font-family:SimSun,����;font-size:9pt;color:"+BACKGROUNDCOLOR+";background-color:"+INPUTTEXBKCOLOR+";}SELECT {font-size:9pt;color:"+BACKGROUNDCOLOR+";background-color:"+INPUTTEXBKCOLOR+";}</style>";
}


/***********************������Ϣ����END****************************
Version:FX400C 

Copyright (C)2004 fxfl.cn
************************���ҽ��沼�ֿ�ʼ*****************************/
InitSystem();//����ִ�й��ܺ���

function CreateButtonPic(){

	(screenForm.KICK)?aTop=20:aTop=0;
 
     for (var h=0;h<(LINKVUTTON.length/2);h++){
         CreateButton("",5+34*h,0,34,LINKVUTTON[h*2],"����"+LINKVUTTON[h*2]+"\n"+LINKVUTTON[h*2+1],"OpenConfiguredURL(" + h + ")");}
         CreateButton("",224,60,34,"����","ˢ��������ʾ��","Reload()");
         CreateButton("",292,80,34,"�黰","�����黰","AutosNnd(ALOVE)");
         CreateButton("",224,80,34,"�ͱ�","��������","AutosNnd(ABYEBYE)");
         CreateButton("",292,60,34,"����","��������","AutosNnd(AHEART)");
         CreateButton("",360,80,34,"��ַ","������ַ\n"+LEAVEROOM,"AutosNnd(ROOMLEAVE)");
         CreateButton("",326,80,34,"����","��������","AutosNnd(AHEARTON)");
         CreateButton("",326,60,34,"лл","лл����","AutosNnd(THANK)");
         CreateButton("",258,80,34,"���","�������","AutosNnd(ALEAVE)");
         CreateButton("LEAVEIT",258,60,34,"�뿪","�˳�������","LeavEll()");
         CreateButton("SUBMIT",519,40,30,"����","�����������","SaySubmit()");
         CreateButton("",549,40,30,"�ظ�","�ظ��ϴεķ���","RepeatMsg()");
         CreateButton("",549,60,60-aTop*1.5,"��ӭ","��ӭ����","AutosNnd(LSWELCOME)");
         CreateButton("",549,80,60-aTop*1.5,"�׻�","�����ͻ�","AutosNnd(FLOWERS)");
         CreateButton("cutflower",174,0,60,"�����׻�","���Զ����׻�����","MakCustomFlower()");

         CreateButton("genghuan",73,80,34,"����","�����������","GengHuanName()");
         CreateButton("huanroom",107,80,34,"����","����Դ����������һ������","GengHuanRoom()");
         CreateButton("VREQ",5,80,34,"��Ƶ","��Ƶ����","screenForm.VREQ.click()");
         CreateButton("AdminAuto",39,80,34,"ͳ��","����鿴���Ѻ͹�����Ϣ","AdminAuto()");
         CreateButton("Scroll",141,80,34,"����","���ع�����","ScrollClick()");
         CreateButton("middle",175,80,18,"ͼ","�ڵ������봰�����������ͼƬ�������ֵ���ַ(URL)","IMGURL()");


         CreateButton("micOrder",518,80,30,"����","�����ֲ鿴����  20���Ӳ鿴һ��","AutoOrder()");
         CreateButton("miclist",518,60,30,"Ҫ��","�������Զ�����,5����ʹ��һ��","AutoMic()");

         CreateButton("",5,60,34,"����","���Ρ���������ָ�����˵ķ��ԡ�����������10�ˡ�","screenForm.SCREEN.click()");
         CreateButton("",39,60,34,"���","����ԡ���������ָ�����˷��Ե����Ρ�","screenForm.NOSCREEN.click()");
         CreateButton("",73,60,34,"�б�","�г�ȫ���������ε��ˡ�","screenForm.SHOWSCREEN.click()");
         CreateButton("INBOX",107,60,18,"+","���뵽���İ�����ʾ�б�","screenForm.INBOX.click()");
         CreateButton("OUTBOX",125,60,18,"-","�����İ�����ʾ�б�ɾ��","screenForm.OUTBOX.click()");
         CreateButton("BOXLIST",143,60,18,"L","�г����İ�����ʾ�б��е���Ա","screenForm.BOXLIST.click()");



         WriteSelect("bkcolor","����",464,40,50,BACKGROUNDCOLOR,ABKCOLOR,"ChangeBkColor(this)");
         WriteSelect("playemote","������",400,60,61,BACKGROUNDCOLOR,AEMOTE,"SendSelectionMsg(this)");
         WriteSelect("picture","��ͼƬ",400,80,61,BACKGROUNDCOLOR,APICTURE,"PlayPic(this)");
         WriteSelect("linkroom","����ͨ��",442,60,72,BACKGROUNDCOLOR,AROOMLINK,"GotoLinkRoom(this)");
         WriteSelect("linkurl","վ������",442,80,72,BACKGROUNDCOLOR,ALINKURL,"GotoLinkUrl(this)");
         CreateButton("",280,20,22,"","��������ͼ��","ShowFaces()");
         WriteText( 115,105,"�Զ�");
         WriteText( 0,  105,"����");
         WriteText( 70, 105,"��ʾ");
         WriteText( 225, 25,"����");
         WriteText( 180, 25,"ͼ��");
         WriteText( 135, 25,"����");
         WriteText( 90,  25,"����");
         WriteText( 45,  25,"����");
         WriteText( 0,   25,"����");
        
         WriteUserForm(335,0+aTop,100);
         WriteRoomForm(180,0,100);
         WriteFlower(350,0+aTop,260);

if (screenForm.KICK){
         CreateButton("autospack",360,60,34,"����","���������Ҫ���͵Ļ�������","AutoSpacke()");
         CreateButton("Duseropt",579,60,30,"�Զ�","��˰�Ŧ�Զ�ӭ��","Duserclick()");
         CreateButton("IntFlower",579,80,30,"�Զ�","��˰�Ŧ�Զ��ͻ�","IntervalFlower()");
         CreateButton("KICKCLOSE",169,60,44,"�ع�Ȩ","�򿪹���Ȩ��,ʹ�����˹��ܵ�","DealKickManclick()");
         CreateButton("KICK",179,80,34,"����","����ť���Ѷ�����ָ�����߳�ȥ","screenForm.KICK.click()");
         CreateButton("KICKIP",145,80,34,"��IP","����ť���Ѷ������ڵ�IP�߳�ȥ","screenForm.KICKIP.click()");
         CreateButton("KLIST",73,60,34,"����","�г���ǰ���ڱ���״̬���˺�IP","screenForm.KLIST.click()");
         CreateButton("DUMB",111,80,34,"����","��ֹ������5����","screenForm.DUMB.click()");
         CreateButton("NOMIC",77,80,34,"����","��ֹ�������5����","screenForm.NOMIC.click()");
         CreateButton("ODOOR",59,80,18,"��","��������","screenForm.ODOOR.click()");
         CreateButton("CDOOR",41,80,18,"��","��������","screenForm.CDOOR.click()");
         CreateButton("LIN",23,80,18,"��","����������ѽ���","screenForm.LIN.click()");
         CreateButton("LOUT",5,80,18,"��","�ܾ���������ѽ���","screenForm.LOUT.click()");
         CreateButton("QUET",179,80,34,"�¹�","�����¹�","AdminQuit()");

         CreateButton("",257,0,18,"��","��������������������","ClearPuOrder()");
         CreateButton("AutoSendMic",579,40,30,"����","ÿ10���Զ�����","AutoKeepMic()");
         CreateButton("keepmic",519,0,30,"����","���õ��������,��˿ɰ���ݸ�����","CallBackMic()");
         CreateButton("Trans",549,0,30,"����","��˿ɰ�˳����󴫸������е�����","TransMic()" );
         CreateButton("CallBack",579,0,30,"����","���ٵ���","CallMIC()" );
         CreateButton("autoOrder",365,0,30,"�Զ�","�Զ��������ֵ���������ĩβ","ToAddOrder()");
         CreateButton("",347,0,18,"��","�������ֵ���������ĩβ","AddOrder()");
         CreateButton("",275,0,18,"��","������������","SendOrders()");
         CreateButton("InsertQueue",293,0,18,"��","�������ֵ�ѡ����֮ǰ","InsertOrder()");
         CreateButton("RemoveQueue",311,0,18,"ɾ","������������ɾ����ѡ�������","RemoveOrder()");
         CreateButton("ClearQueue",329,0,18,"��","������������ɾ����������","ClearOrder()");

         WriteSelect("dQueue",ROOMNAMES+"����",400,0,114,BACKGROUNDCOLOR,"","PrepareTakeMic()");
         WriteSelect("Adminuse","���ҹ�������",442,60,72,BACKGROUNDCOLOR,ADMINSMG,"SendMsg(this.value)");
         }else{
         CreateButton("Duseropt",579,40,30,"�Զ�","��˰�Ŧ�Զ�ӭ��,����VIP��Աʹ��","Duserclick()");
         CreateButton("reauto",360,60,34,"����","��ʱ�뿪���Զ��ظ���Ϣ","AutoSpack()");
         CreateButton("",161,60,34,"�Ϲ�","�����Ϲ�","AdminPass()");
//�����������������ƶ����桪��������������	
if(ROOMPDGHTML==1){
        document.write('<DIV align=center >'
        +'<table align=left border=0 cellspacing=2 cellpadding=1 bordercolorlight="'+BACKGROUNDCOLOR+'" style=LEFT:300px;TOP:20px;POSITION:absolute>'
        +'<tr><td><MARQUEE direction=op align=center onmouseout=this.start() onmouseover=this.stop() scrollAmount=2 style="HEIGHT: 7px; WIDTH: 305">'+ROOMNAMEGHTM+'</marquee></td>'
        +'</tr></table></DIV>');
       }
//�����������������ƶ����桪��������������

     }
} 

//���������������������ı��򡪡�������������	
function WriteRoomForm(left,top,width){
         document.write('<DIV  id=huanf align=left style=visibility:hidden;width:150px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>'
         +'<form name = "newroom"><input type="text" style=background-color:'+INPUTTEXBKCOLOR+';width:'+(118-aTop*3.65)+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="�¿�����,���뷿���\n���԰:123456\n��Լ����:t1234\n���շ�վ:1234.js" name="roomid">');
         CreateButton("",118-aTop*3.65,0,32,"ȷ��","����������","NewRoom()");
         document.write('</form></DIV>');
}

//���������������������ı��򡪡�������������	

function WriteUserForm(left,top,width){
         document.write('<DIV id=huan align=left style=visibility:hidden;width:'+width+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>'
         +'<form action="http://'+parent.window.location.hostname + ':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">'
         +'<font style="font-family:����,SimSun;font-size:9pt">'
         +'<input type="text"  name="USER" style="LEFT:32px;TOP:1px;height:18;width:81px;POSITION:absolute;background-color:'+INPUTTEXBKCOLOR+';" value="'+AUSER+'" maxlength=15 onclick=USER.value="'+USERADMINLS+'" title="������Ǹ������ˣ�����������������" >'
         +'<input type="password"  name="PASS" style="LEFT:145px;TOP:1px;height:18;width:100px;POSITION:absolute;background-color:'+INPUTTEXBKCOLOR+';border-width:2;FONT-SIZE:9pt;" value="��������" maxlength=10 onclick=PASS.value="" title="��������������,�������������룡">');
         CreateButton("",0,0,32,"����","����������","");
         CreateButton("",113,0,32,"����","����������","");
         CreateButton("",243,0,32,"ȷ��","�������","ReName()");
         document.write('</form></DIV>');
}

//���������������������׻��ı��򡪡�������������	

function WriteFlower(left,top,width){
         document.write('<DIV  id=flower align=left style=visibility:hidden;width:'+width+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>'
         +"<form name = \"flowers\">����:"
         +'<input type="text" title="�������׻�������" name="fname" style="background-color:'+INPUTTEXBKCOLOR+';width:78px" maxlength="8" value = "�ʻ�">'
         +'&nbsp;�״�<input type="text" title="����ף���Ĵ���" name="ftext" style="background-color:'+INPUTTEXBKCOLOR+';width:79px" maxlength="8" value = "ף��">');
         CreateButton("",220,0,34,"����","����ף��","CustomFlower()");
         document.write('<input type="hidden" value="0" name="resend">');
         document.write('</form></DIV>')
}


//�������������������������桪����������-
function SetneWareaTAG(){    
         document.body.style.setExpression("backgroundPositionY","-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight");
		 document.body.style.backgroundImage="url("+WBODYKIMAGE+")";
		 document.write(BODYSTYLE)

		 //����������������ɾ��.����ԭ����Ԫ�ء�����������-
		 inputform.ACTION.previousSibling.data = "";
         inputform.WHOTO.previousSibling.data  = "";
         inputform.msg.previousSibling.data    = "";
		 inputform.as.previousSibling.data     = "";
         inputform.ws.previousSibling.data     = "";
         inputform.AI.previousSibling.data     = "";
         inputform.divs.previousSibling.data   = "";
         screenForm.EAR.previousSibling.data    = "";
		 screenForm.SHOW.previousSibling.data   = "";
		 screenForm.NOTICE.previousSibling.data = "";
		 screenForm.object.previousSibling.data = "";
		 screenForm.AUTOREFRESHUSERLIST.previousSibling.data = "";

		 document.all.tags("span")[4].style.visibility="hidden";
         document.all.tags("span")[6].style.visibility="hidden";
		 inputform.tags("INPUT")[13].style.visibility="hidden";
		 controlForm.LEAVEIT.style.visibility="hidden";
		 controlForm.RELOAD.style.visibility="hidden";
		 for(var i=0; i<screenForm.elements.length; i++){ 
		     aobject=screenForm.elements(i);
		     switch (aobject.type){
		     case 'submit':
		     case 'button':
			 aobject.style.visibility = "hidden";break;
			           }
		}
        INBOX.disabled=true;
	    OUTBOX.disabled=true;
	    BOXLIST.disabled=true;
        if(ONINNERHTML==0)middle.disabled=true;
         //�����������������޸�.�ض�λԭ����Ԫ�ء�����������-
         inputform.color.style.cssText  =";WIDTH: 50px;LEFT: 432px;TOP:40px;POSITION:absolute";
	     inputform.ACTION.style.cssText =";WIDTH: 50px;LEFT: 400px;TOP:40px;POSITION:absolute";
	     inputform.WHOTO.style.cssText  =";WIDTH: 110px;LEFT: 5px;TOP:40px;POSITION:absolute";
	     inputform.msg.style.cssText    =";WIDTH:280px;LEFT:115px;TOP:40px;POSITION:absolute";
	     inputform.divs.style.cssText   =";LEFT:255px;TOP:20px;POSITION:absolute";
	     inputform.AI.style.cssText     =";LEFT:210px;TOP:20px;POSITION:absolute";
	     inputform.as.style.cssText     =";LEFT:165px;TOP:20px;POSITION:absolute";
	     inputform.ws.style.cssText     =";LEFT:120px;TOP:20px;POSITION:absolute";
	     screenForm.SHOW.style.cssText   =";LEFT:75px;TOP:20px;POSITION:absolute";
	     screenForm.EAR.style.cssText    =";LEFT:30px;TOP:20px;POSITION:absolute";
	     screenForm.NOTICE.style.cssText =";LEFT:100px;TOP:100px;POSITION:absolute";
	     screenForm.AUTOREFRESHUSERLIST.style.cssText=";LEFT:150px;TOP:100px;POSITION:absolute";
	     screenForm.object.style.cssText =";LEFT:30px;TOP:100px;POSITION:absolute";
		 parent.document.bgColor=INPUTBKCOLOR;
		 parent.document.body.style.border='0px';
         parent.document.all.tags("FRAMESET")[0].frameSpacing='0';
         parent.document.all.tags("FRAMESET")[2].frameSpacing='1px';
   	     for(var i=0; i< VOPTION.length/2; i ++) {
  		     aoption = document.createElement("OPTION");
  		     aoption.text = VOPTION[2*i+0]; aoption.value = VOPTION[2*i+1]; 
		     aoption.style.cssText = "color:#"+ VOPTION[2*i+1];
		     inputform.color.add(aoption);
         }

}

//�������������������������桪����������-
function writeu1(){
	 if(this.u1.document==null) return;
	 this.u1.document.open();
	 this.u1.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">"+DIVPSTYLE+"</head>")
	 this.u1.document.writeln("<body background="+WDIVSKIMAGE+" bgcolor=\"#FCF8E2\" bgproperties=fixed>");
	 if (parent.writev_new)
	 this.u1.document.writeln("<td width=\"100%\"><font color=\"#0000FF\"><CENTER>����ʹ��������������ϵͳ���������������ͼƬ�Ǻ��<br>˵����û��װ�������,��<a href=\"http://www.bliao.com/help/Bluesky.exe \" target=\"_blank\">���ز���װ�ļ�</a></font></CENTER></td>");
	 this.u1.document.writeln("<p class=\"p9\" align=\"left\">");
	 this.u1.document.writeln=parent.d.U1Writle;
//	 this.u1.document.body.scroll = "yes";

}

//�������������������������桪����������-
function WriteListHtm(){
	if(parent.r.document==null) return;
		parent.r.document.open();
		parent.r.document.writeln('<html><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312">'+LISTSTYLE+''
	    +"BODY{background:"+((ROOMBKCOLOR != "")?ROOMBKCOLOR:parent.r.document.body.bgColor)+((WUSERLISTBKIMAGE != "")?(" url("+WUSERLISTBKIMAGE+") fixed}"):"}")
	    +"--></style></head><body leftmargin=0 rightmargin=0 topmargin=0");
	    if(LISTLOGOSWF!="")
		parent.r.document.writeln("<br><embed src="+PastePath(LISTLOGOSWF)+" quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='140' height='36'></embed>")
        else
	   (LISTLOGOGIF!="")?parent.r.document.writeln('<br><CENTER><img src='+PastePath(LISTLOGOGIF)+'></CENTER>'):parent.r.document.writeln('<br><img src='+PastePath(LISTIOGOSE)+'><table border="1" bgcolor='+INPUTTEXBKCOLOR+' bordercolordark="#000000" bordercolorlight="#FFFFFF"><td><div id=a>'+ROOMNAMEFLASH+'</div></td></table>');
	    parent.r.document.writeln('<img src='+PastePath(LISTIOGOSE)+'><br>'
	    +'<a title=\"��ǰ"\"><font color=990033>��ǰ��������&nbsp;</font><font color=red><B id="COUNTL"></B></font><a href=\'javascript:parent.writeuserlist();\'><font color=0000ff>��ˢ�¡�</a></font><br></table>'
		+"<div id='LISTN'></div><hr>"
	    +''+(ROOMPRGHTML==1?ROOMNAMEGHTML:'')+'</body></html>');
		//parent.r.document.body.scroll = "yes";
		if(BGINTEGRITY==1)
		parent.r.document.body.style.border="0px"
		parent.r.document.close();}

function WriteList(){
	var count=this.count;
	var list=this.list;
	var arr2d=[],array=[];
	var reg=new RegExp,wat=new RegExp;
    var PRDW="";
    var zhuchi=0,zhuce=0,shuzi=0,zhongw=0,vipneme=0,vipuser=0;

		wat.compile(LISTWATCH,"gi")
        reg.compile("^(.*)-'(.*)-'(.*)-'(.*)-'(.*)'-(.*)'-(.*)$","gi");
	for(var i=1;i<list.length;i++){
		if(list[i]!=null&&list[i].match(reg)!=null){
			var user=RegExp.$1,admin=RegExp.$2;
            var voice=RegExp.$6,video=RegExp.$7;
			var Type,Queue,Title,Img,Color;
				if(admin==1&&!EmceePers(user)) Type="A";
				else if(VIPUSER[user]!=null) Type=VIPUSER[user];
				else if(user.match(/^\*/)) Type="B";
				else if(!user.match(/\w/))Type="C";
				else Type="D";
				Queue=10000+AUSERTITLE[Type][0]*1000+i;
				Title=AUSERTITLE[Type][1];
				Img=PastePath(AUSERTITLE[Type][2]);
                Color=AUSERTITLE[Type][3];
				array[Queue]=[user,admin,Img,Color,Title,voice,video];
	           (!IsHiddenUser(user)||AUSER.match(wat)!=null)?arr2d[arr2d.length]=Queue:count=count-1
		}
	}
	arr2d=arr2d.sort();
    if (typeof(parent.r.LISTN)=="undefined")
	WriteListHtm();
	   PRDW+=("<table border='0' width=190px cellspacing='0' cellpadding='0' topmargin='0'>");
       PRDW+=("<tr><td align=CENTER><img src=\""+PastePath(AUSERTITLE["E"][2],"")+"\" border=0  ></td><td width=190 align=left>");
       PRDW+=("<a target=d href=\"javascript:parent.cs(SUBMISSAUSER)\" title=\""+AUSERTITLE["E"][1]+"\">");
       PRDW+=("<font style=\"filter: glow(color="+AUSERTITLE["E"][3]+",strength=2); Height:8pt; color:FFFFFF; padding:1px;cursor:hand\" ><B>["+SUBMISSAUSER+"]</font></a>&nbsp;<font face=\"Wingdings\" color=#00DD00>(</font><br>");

	for(var i=0;i<arr2d.length;i++){
	   
		PRDW+=("<tr><td align=center><img src=\""+array[arr2d[i]][2]+"\" border=0  ></td><td width=190 height=20 align=left topmargin='2' >");
	    PRDW+=("<a target=d href=\"javascript:parent.cs('"+array[arr2d[i]][0]+"')\" title=\""+array[arr2d[i]][4]+"\">");
      
	   if (AUSERCOLOR==1){
		if (array[arr2d[i]][4]==AUSERTITLE["A"][1]){
        PRDW+=("<font style=\"filter: glow(color="+array[arr2d[i]][3]+",strength=3); Height:8pt; color:FFFFFF; padding:1px;cursor:hand\"><B>["+array[arr2d[i]][0]+"]</font></a>&nbsp;");
	 	AUTOADMIN[zhuchi]=array[arr2d[zhuchi++]][0];     
		}else
        PRDW+=("<font style=\"filter: glow(color="+array[arr2d[i]][3]+",strength=2); Height:8pt; color:FFFFFF; padding:1px;cursor:hand\">["+array[arr2d[i]][0]+"]</font></a>&nbsp;");
		}else{
	    if (array[arr2d[i]][4]==AUSERTITLE["A"][1]){
	    PRDW+=("<font style=\"color:"+array[arr2d[i]][3]+";cursor:hand\" ><B>["+array[arr2d[i]][0]+"]</font></a>&nbsp;");
		AUTOADMIN[zhuchi]=array[arr2d[zhuchi++]][0];     
    	}else
	    PRDW+=("<font style=\"color:"+array[arr2d[i]][3]+";cursor:hand\" >["+array[arr2d[i]][0]+"]</font></a>&nbsp;");
	    }
      
	   (array[arr2d[0]][4]==AUSERTITLE["A"][1])?AUTOADMINS=1:AUTOADMINS=0;
      
	 if ((array[arr2d[i]][4]!=AUSERTITLE["A"][1])&&(array[arr2d[i]][4]!=AUSERTITLE["B"][1])&&(array[arr2d[i]][4]!=AUSERTITLE["C"][1])&&(array[arr2d[i]][4]!=AUSERTITLE["D"][1]))
	  {
	   AUTOVIP[vipuser]=array[arr2d[zhuchi+vipuser++]][0];     
        vipneme=vipneme+1;
	   }
	  if (IsHiddenUser(array[arr2d[i]][0])) PRDW+=("<font color=#FF0099>��</font>");
	  if (VOICEVIMGES==0){
      VOICEVIMG="<font face=\"Wingdings\" color=#00DD00>(</font>"
	  if(array[arr2d[i]][5]==1) PRDW+=("<font face=\"Wingdings\" color=#00DD00>(</font>");
	  if(array[arr2d[i]][5]==2) PRDW+=("<font face=\"Wingdings\" color=black>(</font>");
      if(array[arr2d[i]][5]==0) PRDW+=("<font face=\"Wingdings\" color=#ff0000>(</font>");
	  if(array[arr2d[i]][6]==1) PRDW+=("<font face=\"Webdings\" color=#000000>N</font>");
	  }else{
      VOICEVIMG="<img src="+PastePath(VOICEV1IMG)+">"
	  if(array[arr2d[i]][5]==1) PRDW+=("<img src="+PastePath(VOICEV1IMG)+">");
	  if(array[arr2d[i]][5]==2) PRDW+=("<img src="+PastePath(VOICEV2IMG)+">");
      if(array[arr2d[i]][5]==0) PRDW+=("<img src="+PastePath(VOICEV0IMG)+">");
	  if(array[arr2d[i]][6]==1) PRDW+=("<img src="+PastePath(VIDEOV2IMG)+">");
      }
//����������������������׿�ʼ,����㲻ʹ�ô˹���,���¿���ɾ������������������
if ((SUBUSER==1)){
    var color;
     if (array[arr2d[i]][4]==AUSERTITLE["B"][1])color=AUSERTITLE["B"][3];	
     if (array[arr2d[i]][4]==AUSERTITLE["C"][1])color=AUSERTITLE["C"][3];	
     if (array[arr2d[i]][4]==AUSERTITLE["D"][1])color=AUSERTITLE["D"][3];	

if (AUSERCOLOR==1)
    LISTCOLOR="<font style=\"filter: glow(color="+color+",strength=3); Height:8pt; color:FFFFFF; padding:1px;cursor:hand\">"
    else
    LISTCOLOR="<font style=\"color:"+color+";cursor:hand\" >"
    if ((array[arr2d[i]][4]==AUSERTITLE["B"][1])){
		zhuce=zhuce+1;
	if(zhuce<4){
	 if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+0]][0]))abc=XNUSER[0];
	 else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+1]][0]))abc=XNUSER[1];
	 else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+2]][0]))abc=XNUSER[2];
 	 PRDW+=("<tr><td align=CENTER><img src=\""+PastePath(AUSERTITLE["B"][2],"")+"\" border=0  ></td><td width=190 align=left>");
     PRDW+=("<a target=d href=\"javascript:parent.cs('"+abc+"')\" title=\""+AUSERTITLE["B"][1]+"\">");
	 PRDW+=(""+LISTCOLOR+"["+abc+"]</font></a>&nbsp;"+VOICEVIMG+"");

	 }}
    if (array[arr2d[i]][4]==AUSERTITLE["C"][1])	{
	   zhongw=zhongw+1;
	  if(zhongw<8)
		 {
	        if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+0]][0]))abc=XNUSER[3];
            else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+1]][0]))abc=XNUSER[4];
	        else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+2]][0]))abc=XNUSER[5];
	        else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+3]][0]))abc=XNUSER[6];
            else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+4]][0]))abc=XNUSER[7];
	        else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+5]][0]))abc=XNUSER[8];
	        else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+6]][0]))abc=XNUSER[9];
            PRDW+=("<tr><td align=CENTER><img src=\""+PastePath(AUSERTITLE["C"][2],"")+"\" border=0  ></td><td width=190 align=left>");
            PRDW+=("<a target=d href=\"javascript:parent.cs('"+abc+"')\" title=\""+AUSERTITLE["C"][1]+"\">");
	        PRDW+=(""+LISTCOLOR+"["+abc+"]</font></a>&nbsp;"+VOICEVIMG+"");
		}
	}
 if (array[arr2d[i]][4]==AUSERTITLE["D"][1])
		 {
		 shuzi=shuzi+1;
		 if(shuzi<4)
			 {
	      if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+zhongw+0]][0]))abc=XNUSER[10];
	      else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+zhongw+1]][0]))abc=XNUSER[11];
	      else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+zhongw+2]][0]))abc=XNUSER[12];
 	      PRDW+=("<tr><td align=CENTER><img src=\""+PastePath(AUSERTITLE["D"][2],"")+"\" border=0  ></td><td width=190 align=left>");
          PRDW+=("<a target=d href=\"javascript:parent.cs('"+abc+"')\" title=\""+AUSERTITLE["D"][1]+"\">");
	      PRDW+=(""+LISTCOLOR+"["+abc+"]</font></a>&nbsp;"+VOICEVIMG+"");
		 }
	 }}
//�����������������������ɾ����.����������ɾ
	PRDW+=('</td></tr>');
	}
	PRDW+=('</table>');
//���������������������������.���ô˹��ܼ���ɾ��
	if (SUBUSER==1){
    (shuzi<4)?A2d = shuzi:A2d =3;
    (zhongw<8)?B2d=zhongw:B2d =7;
    (zhuce<4)?C2d=zhuce:C2d =3;
	parent.r.COUNTL.innerText = arr2d.length+A2d+B2d+C2d;
    }else
//�����������������������ɾ����END����������
	parent.r.COUNTL.innerText = arr2d.length;
	parent.r.LISTN.innerHTML = PRDW;
	}

//�������������������������桪��������������
var InAdminMode=0;
function writev()//��������Ľ���
{

	   if (!parent.writev_new){
            if(ZENGBING == 1 &&IE >= "5.5"){
		if(parent.v1.document==null)return;
        parent.v1.document.open();
		parent.v1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>"
		+"<body><style type=text/css>BODY{background:"+ROOMBKCOLOR+" url("+WVOICEBKIMAGE+") fixed}</style>"
        +"<iframe id=frm src='javascript:document.write(\"<html><body style=background-color:transparent><font color=red>���Ժ�..................</font></body></html>\")' width=100% height=100% BORDER=0 FRAMEBORDER=0 SCROLLING=no ALLOWTRANSPARENCY></iframe>"   
		+("<script>setTimeout('this.document.all.frm.src=\""+(VOICEMODESAMPLED==1?"http://218.65.209.14:28141/docs/voice.asp":"http://www.bliao.com/voice.phtml")+"?bgcolor="+escape('" style=background-color:transparent "')+"&port="+parent.window.location.port+"&host="+parent.window.location.hostname+"&name="+AUSER+"&pass="+APASS+"&encode=gb2312\"',1000);<\/script>")
		+"</body></html>");
        parent.v1.document.body.style.setExpression("backgroundPositionX","+1-parent.u.document.body.offsetWidth");
        parent.v1.document.body.style.setExpression("backgroundPositionY","-"+((typeof(parent.v2)!="undefined")?94:0)+"-parent.r.document.body.offsetHeight");
		parent.v1.document.close();
		}else
		parent.writev();}
	    if(parent.v.document==null)return;
	    parent.v.document.open();
	    parent.v.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>");
        if (VOICEBKIMAGE != "")
        parent.v.document.writeln("<body><style type=text/css>BODY{background:"+ROOMBKCOLOR+" url("+WVOICEBKIMAGE+") fixed}")
		parent.v.document.writeln("INPUT{;font-family:����,SimSun;font-size:9pt;color:"+BACKGROUNDCOLOR+";background-color:"+INPUTTEXBKCOLOR+";}");
        parent.v.document.body.style.setExpression("backgroundPositionX","+1-parent.u.document.body.offsetWidth");
        parent.v.document.body.style.setExpression("backgroundPositionY","-"+((typeof(parent.v2)!="undefined")?VR2:VRO)+"-parent.r.document.body.offsetHeight");
 
		if (parent.writev_new){
		parent.v.document.writeln("</style><br><form name=f><p>"
        +"<object id='blueskyvoice' classid='clsid:991481A7-4669-4e15-8C24-100404E1F5CB' width='160' height='62' codebase='http://www.bluesky.cn/download/blueskyvoice_60.cab#Version=6,0,0,27'>"
	    +"<param name=\"_cx\" value=\"5080\">"
	    +"<param name=\"_cy\" value=\"5080\">"
	    +"<param name=\"_ExtentY\" value=\"3784\">"
	    +"<param name=\"_StockProps\" value=\"0\">"
	    +"<param name=\"host\" value=\""+window.location.hostname+"\">"
        +"<param name=\"port\" value=\""+parent.window.location.port+"\">"
        +"<param name=\"name\" value=\""+parent.d.document.inputform.USER.value+"\">"
        +"<param name=\"pass\" value=\""+parent.d.document.inputform.PASS.value+"\">"
	    +"<param name=\"roomid\" value=\"0\">"
		+"<param name=\"mode\" value=\""+((VOICEMODE==1)?"HIGH":"NORMAL")+"\">"
	    +"<param name=\"samples\" value=\""+((VOICEMODE==1)?((VOICEMODESAMPLE==1)?"16":"8"):"$samplemode")+"\">"
		+"<param name=\"quality\" value=\"1\">"
	    +"<param name=\"autobuffer\" value=\""+AOUTBUFFER+"\">"
		+'<param name=\"bgcolor\" value="11264169">'
        +'<param name=\"textcolo\r" value="0">'
        +'<param name=\"listbgcolor\" value="12908993">'
        +'<param name=\"listfgcolor\" value="7303804">'
		+"</object>"
	    +"<script language='JavaScript' for='blueskyvoice' event='selectname(name)'>"
	    +"parent.cs(name);"
	    +"<\/script>"
	    +"<script>"
        +"document.blueskyvoice.RecOn();"
        +"function handle\(v\){"
        +" parent.d.voicehandleForm.VOICEHANDLE.value=v;"
        +" parent.d.voicehandleForm.WHOTO.value=parent.d.inputform.WHOTO.value;"
        +" parent.d.voicehandleForm.submit\(\);"
        +"} "
        +"<\/script>");
		parent.v.document.write("<input type=button name=requestmic  value=���� title='������˷�˵����ֻ����������ʽ����Ч' onclick=\"document.blueskyvoice.RecOn();document.blueskyvoice.RequestMic();this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=releasemic  value=���� title='������˷磬ֹͣ����' onclick=\"document.blueskyvoice.RecOff();document.blueskyvoice.ReleaseMic();this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=filtervoice  value=���� title='����ĳ����ǰ�����ߵ�����' onclick=\"document.blueskyvoice.FilterVoice();this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=v2vv  value=ȫ˫�� title='��ĳ����˫���Ի�' onclick=\"parent.d.v2v();this.blur();parent.d.document.inputform.msg.focus();\">"
        +"<br><input type=button name=mainmic  disabled value=�� title='������(Զ����Ƶ��֮�л�����˷�)����ĳ����' onclick=\"handle(1);this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=secondmic  disabled value=�� title='�Ѹ���(����֮��ĵڶ���������˷�)����ĳ����' onclick=\"handle(2);this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=getmic disabled value=�� title='�ջ�ĳ���˵���˷磬�ж��䷢��' onclick=\"handle(0);this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=cutmic disabled value='��' title='�ջ�ĳ���˵��󣬲�������󽻸�����Ա�Լ�' onclick=\"handle(4);this.blur();document.blueskyvoice.RecOn();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=freemic  disabled value='F' title='���ó���������״̬(ֻҪ���κι�������ͻص��ܹ���״̬)' onclick=\"handle(3);this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">");
        parent.v.document.writeln("<input type=button  name=closev value=������ onclick=\"parent.v1.location='about:blank';parent.d.writecv();\" "+BUTTONEVENT+">"
        +'</body></html>');
        parent.v.document.close();
        parent.voiceframe.rows="0,*";
		ResetButtonStyle(parent.v.f.requestmic,34);
	    ResetButtonStyle(parent.v.f.releasemic,34);
	    ResetButtonStyle(parent.v.f.filtervoice,34);
		ResetButtonStyle(parent.v.f.mainmic,18);
	    ResetButtonStyle(parent.v.f.secondmic,18);
		ResetButtonStyle(parent.v.f.getmic,18);
		ResetButtonStyle(parent.v.f.cutmic,18);
	    ResetButtonStyle(parent.v.f.freemic,18);
		ResetButtonStyle(parent.v.f.v2vv,44);
		ResetButtonStyle(parent.v.f.closev,57);
		}else{
		parent.v.document.writeln("</style><form name=f><center><input type=button  name=v2vv value=ȫ˫�� onclick=\'parent.d.v2v();\' "+BUTTONEVENT+">"
	    +"<input type=button  name=closev value=������ onclick=\"parent.v1.location='about:blank';parent.d.writecv();\" "+BUTTONEVENT+">"
	    +"<script language=javascript>function peizhi() {window.open('http://fxdl.cn/bbs','myWindow','height=100,width=400,top=300,left=300,toolbar=0,menubar=0,scrollbars=1,resizable=1,location=1,status=0')}</script>"
		+"<input type=button  name=shezhi value=������Ϣ onclick=\"peizhi()\""+BUTTONEVENT+">" 
	    +"</form></body></p></html>");
		parent.v.document.close();
		parent.voiceframe.rows="*,30";
		ResetButtonStyle(parent.v.f.v2vv,44);
	    ResetButtonStyle(parent.v.f.closev,44);
	    ResetButtonStyle(parent.v.f.shezhi,60);

}

}
function writecv(){//δ������ʱ�Ľ���
	if(parent.v.document==null) return;
	   parent.voiceframe.rows="0,*";
	   parent.v.document.open();
	   parent.v.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>");
       if (WVOICEBKIMAGE != "")

	   parent.v.document.writeln("<body><style type=text/css>BODY{background:"+ROOMBKCOLOR+" url("+WVOICEBKIMAGE+") fixed}");
       parent.v.document.body.style.setExpression("backgroundPositionX","+1-parent.u.document.body.offsetWidth");
       parent.v.document.body.style.setExpression("backgroundPositionY","-"+((typeof(parent.v2)!="undefined")?VR2:0)+"-parent.r.document.body.offsetHeight");
	   parent.v.document.writeln("INPUT{;font-family:����,SimSun;font-size:9pt;color:"+BACKGROUNDCOLOR+";background-color:"+INPUTTEXBKCOLOR+";}");
	   parent.v.document.writeln("</style><form name=ov><center><br><br><br><br><input type=button  name=closev value=������ onclick=\"if(!parent.writev_new){parent.d.writev();}else{parent.d.writev();if(parent.InAdminMode==1){parent.EnableVoiceAdmin();}else{parent.DisableVoiceAdmin();}}\""+BUTTONEVENT+">"
	   +"<script language=javascript>"
	   +"function ceshi() {window.open(\"http://chat.yinsha.com/voice.htm\")}" 
	   +"</script>"
	   +"&nbsp;<input type=button  name=closevs  value=��Ͳ���� onclick=\"ceshi()\""+BUTTONEVENT+">" 
	   +"</form>"
	   +"</body></html>");
	   parent.v.document.close();	  
       ResetButtonStyle(parent.v.ov.closev,60);
       ResetButtonStyle(parent.v.ov.closevs,60);
}

function v2v(){//˫������
	if((inputform.WHOTO.value=='������')||(inputform.WHOTO.value=='������')||(inputform.WHOTO.value==AUSER))
	{alert("ϵͳ:����������/���������˻��Լ�Ϊȫ˫�������Ի�����")
    return;}
    else{
     if (BLACKROOMV2VV == 1){
		if(parent.v.document.f.v2vv.value == "ȫ˫��"){
			parent.v.document.f.v2vv.value="��˫��";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		    }else{
			parent.v.document.f.v2vv.value="ȫ˫��";
			parent.d.v2vForm.TOONE.value=0;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		    }}else
		    if(confirm('\n�Բ��𣬱��Ҳ�����˫��������\n\n˫������ȥ���徻�ķ���\n��'+BLACKROOMNAME+'��')){
			  SendMsg('��ȥ��'+BLACKROOMNAME+'�������ˣ�������ѡ���ҵ����֣�Ȼ���ȫ˫�����Ϳ�ȥ�����ˣ�����');
			  GotoRoom(BLACKROOMNUMB,AUSER,APASS);
      }
   }
}



function InitSystem(){//ִ�к�����
//�������������������ڴ�С���ı�ִ����������������������
    document.write('<body onResize="KeepBkimag()">');

//���������������������Զ��Ϲܡ���������������
	document.write('<body onload="if (EmceePers(AUSER)) AdminPass()">');

//��������������������������������������
  parent.write=WriteList;

//��������������������������������������
   parent.writeu1 = writeu1;
   if(this.location.toString().search("BOTTOMADM")!=-1)
	parent.u1.document.writeln=U1Writle;

//��������������������������������������
if (parent.writev_new){ 
   VR2=94,VRO=0;
   parent.writev_new = writev;
   }else{
   VR2=184,VRO=100;
   parent.writecv = (AUTOOPENMIC == 1)?writev:writecv;
   }


//���������Զ���ӭ��������
  Achang(ACHANG0,parent.list);
//��������-�����Զ����ġ�������-	
if (IsHiddenUser(AUSER)) inputform.ws.checked=true;
//��������-�����û�����������
   UserNameFilter();
//����������Ŧ�顪����������
   CreateButtonPic();

//�����������������������ߡ�������
	  if (IsOnlineManager()){
      screenForm.KICK.onclick=new Function("return KickCheck();");
      if (screenForm.KICKIP)
	  screenForm.KICKIP.onclick=new Function("return KickCheck();");
	  screenForm.DUMB.onclick=new Function("return KickCheck();");
      screenForm.NOMIC.onclick=new Function("return KickCheck();");

	  SeTrunEnvironMent(ONTAKEOVER);//��ʱ����Ȩ������
      setTimeout("ToAddOrder()",300);//�Զ�����
  }
//��������������������������
   SetneWareaTAG();
//��������������Ϣ������������
   setTimeout("WriteLoginmsg()",300);

//��������Ĭ������ɫ������������
   setTimeout("Logibgcolor()",500);

//������������������������
   setTimeout("KeepBkimag()",1000);

//����������������������ӭ�ʡ���������������
setTimeout("LswelComTimed()",3000);
//���������Զ���ͼ����������������
  setTimeout("AutoOpenAiDiv()",4000);

//��������VIP�Զ���ӭ������������
if (!IsOnlineManager())
   setTimeout("NoVipList()",3000);

//�������������������ع���������������������
if(SCROLLHIDDEN==1)
setTimeout("ScrollClick();",3000);

//���������������������������Զ����󡪡�������������
if (parent.writev_new)
setTimeout("parent.v.document.blueskyvoice.RecOn();",10000);
}

/**************���沼��END*************************
Version:FX400C 

Copyright (C)2004  fxdl.cn
***************���ܺ������Ͽ�ʼ*********************/
//����������������ͼƬ������������������
 function PastePath(imagename){
	return  (imagename.substr(0,7).toLowerCase() != "http://")?WEBPLACE+imagename:imagename;
}

//������������������Ŧ����������������������
function CreateButton(aName,aLeft,aTop,aWidth,sText,sTitle,sOnclickProc) {//��Ŧ����
	var aHeight="20",B="";
	if (BUTTONBKIMAGE == 1)B="background-position: left top;border-width:0;";
	var S="<INPUT type='button' value='"+sText+"' title='"+sTitle
		    +"' border=0 type='button' name='NAME' OnClick='ONCLICKPROC' "
	        +BUTTONEVENT + "style='"+B+":position:absolute;width:"
		    +aWidth+";height:"+aHeight+";left:"+aLeft+";top:"+aTop+";"
		    +"background-color:BACKCOLOR;background-image:url(BGIMG)"
		    +BUTTONSTYLECOM+"'>";
	    S=S.replace("NAME",aName);
        S=S.replace("ONCLICKPROC",sOnclickProc);
        (BUTTONBKIMAGE == 1)?
	    S=S.replace("BGIMG",""+GetButtonPic(aWidth)+"")
		:
		S=S.replace("BACKCOLOR",""+ BUTTONBCOLOR +"");
        document.write(S);
        return eval(aName);
}
function ResetButtonStyle(aButton,aWidth){//��Ŧ����
	var style = "width:"+aWidth+";height:20;";
	if (BUTTONBKIMAGE == 1)
		style += "background-image:url("+GetButtonPic(aWidth)+");border:1px;"+BUTTONSTYLECOM;
	    else 
		if (BUTTONBCOLOR != "")
		   style += "background:"+BUTTONBCOLOR+";";
	       aButton.style.cssText = style;
}
function GetButtonPic(aWidth){//��Ŧ���
  if (BUTTONBKIMAGE == 1)
	for (i = 1 ; i < BUTTONSTYLEIMG.length ; i+=2)
			BUTTONSTYLEIMG[i] = PastePath(BUTTONSTYLEIMG[i]);
	var pic = "",nearw = 0,mindeff = 100;
	for (i = 0 ; i < BUTTONSTYLEIMG.length ; i+=2)
		if (Math.abs(BUTTONSTYLEIMG[i] - aWidth) <= mindeff){
			pic = BUTTONSTYLEIMG[i + 1];
			nearw = BUTTONSTYLEIMG[i];
			mindeff = Math.abs(BUTTONSTYLEIMG[i] - aWidth);}
	        return pic;
      }
//������������������Ŧ������end����������������

//�����������������򿪰�Ŧ����---
function OpenConfiguredURL(iIndex){ sURL=LINKVUTTON[iIndex*2+1]
  sURL!=""?window.open(sURL):alert("���ڽ���!!");
} 

//���������������������������������������������
function WriteSelect(Name,Title,Left,Top,Width,Color,Arrays,Action){//������
  document.write('<SELECT NAME="' + Name + '" style=width:' + Width + 'px;'
  +'LEFT:' + Left + 'px;TOP:' + Top + 'px;POSITION:absolute onchange="' +Action+ '">'
  +'<OPTION selected style=color:' + Color + ' VALUE="">'+Title+'</OPTION>');
     if (Name == "bkcolor"){
	    document.write('<OPTION VALUE="NONE">��ɫ</OPTION>');
	    for(var j=0; j<Arrays.length; j++)
	    document.write('<option style="BACKGROUND-COLOR:#'+Arrays[j]+'; COLOR:#'+Arrays[j]+'" value="'+Arrays[j]+'">   </OPTION>');
	    document.write('<OPTION STYLE=COLOR:'+Arrays[j]+' value="��">�ָ�</OPTION>');
	    }else{
		for (var i = 0;i < (Arrays.length/2);i++){
		  if (Arrays[i * 2] != ""){
			if (Arrays[i * 2 + 1] == "")
			 document.writeln('<OPTION style=color:#FF0100;background-color:#FFFFFF VALUE="">' + Arrays[i * 2] + '</OPTION>');
			 else
			 document.writeln('<option value='+Arrays[i * 2 + 1]+'>'+Arrays[i * 2]+'</option>');
		     }}}
	         document.write('</SELECT>');
}
function WriteText(Left, Top,Atext){//��ѡ��
	document.write('<DIV style=width:30px;LEFT:'+Left+'px;TOP:'+Top+'px;POSITION:absolute;visibility:visible><FONT style="font-size: 9pt">'+Atext+'</FONT></DIV>');
	}

function SendSelectionMsg(selection){//�������������Ϣ
	if(selection.value!="")
	    SendMsg(selection.value);
	    selection.options[0].selected=true;
}
function GotoLinkUrl(selection){//������ϵ�����
	if(selection.value!="")
		window.open(selection.value);
	    selection.options[0].selected=true;
}
function ChangeBkColor(selections) {//�ı䱳��ɫ
	if(selections.value!="")
		inputform.bgcolor.value=selections.value;
	    inputform.msg.focus();
}
function PlayPic(selection){//����ͼƬ
 if ((inputform.WHOTO.value=="������")||(inputform.WHOTO.value=="������")){
		alert("ϵͳ:�����ʻ�ͼƬ��������������!!")
        }else{	
        var IsWisper=inputform.ws.checked;
         if(parent.count >= INPUTWSNG)
            inputform.ws.checked=true;
	        if(inputform.AI.checked){
	          if(selection.value!=""){
                inputform.IMGURL.value = PastePath(selection.value);
		        if (inputform.msg.value == "")
                  inputform.msg.value = selection.options[selection.selectedIndex].text;
			      checksay();
			      inputform.submit();
			      selection.options[0].selected=true;
			      inputform.ws.checked=IsWisper;}
			      } else {
		          alert('����ѡ��ͼ��!');
		          selection.options[0].selected=true;
	}}}
//�����������������������������end����������������

//�����������������Զ���ͼƬ����������������
function IMGURL(){
document.inputform.IMGURL.value=getimgurl('������ͼƬ�����ֵ�URL:')
}

//����������������ѭ�����ͺ�������������������
var LASTCHOICE=-1;
function AutosNnd(sOnclickProc){
   
    LASTCHOICE ++;
    if (LASTCHOICE >= (sOnclickProc.length))
    LASTCHOICE = 0;
    var IsWisper=inputform.ws.checked;
	var sText = sOnclickProc[LASTCHOICE];
        if ((sOnclickProc == FLOWERS)||(sOnclickProc ==ALOVE)||sOnclickProc ==THANK) 
         if ((inputform.WHOTO.value!="������")&&(inputform.WHOTO.value!="������")){
             if(parent.count >= INPUTWS){
               if((LASTCHOICE & 1)==1)
                  inputform.ws.checked=true; 
			      }else
                  if(parent.count >= INPUTWSALL)
                  inputform.ws.checked=true;
                  sText += "��"+AUSER+" ר�͡�";
	              }else{
			      alert("ϵͳ:��ѡ���Զ��� ,��������������!!")
                  return;}
                  if(sOnclickProc == AWANTMIC)
				  sText += "��999�q�T��";
				  SendMsg(sText);
                  inputform.ws.checked=IsWisper;

 }
//����������������ѭ�����ͺ�����end����������������
//�������������������Ժ�������������������
function SaySubmit(){if (checksay())inputform.submit();}

function SendMsg(sText){if(sText != ""){inputform.msg.value=sText;SaySubmit();}}

//�����������������ظ����ԡ���������������
function RepeatMsg(){SendMsg(inputform.SAYS.value + " ");}


//���������������������뿪��Ϣ����������������
function WriteLoginmsg(){//������Ϣ
	if ((IsHiddenUser(AUSER))||EmceePers(AUSER)||(!LoginSucceed))return;
	  var color,msg;
	  if (IsOnlineManager())
	       color = ADMINCOLOR,msg = USERADMIN;
	  else if ((this.location.toString().search("BOTTOMADM"))!=-1)
	       color = QUITCOLOR,msg = USERQUITADMIN;
	  else color = LOGINCOLOR,msg = USERLOGIN;
   	       parent.cs('������');
	       inputform.bgcolor.value=BGCOLOR;
	       inputform.color.options[color].selected=true;
	       SendMsg(msg);
}
function WriteUnload(){//ж����Ϣ
       if(BLEAVESYSTEM==0||IsHiddenUser(AUSER)||EmceePers(AUSER))return;   
	 parent.cs('������');
	 inputform.bgcolor.value=BGCOLOR;
	 inputform.color.options[LEAVECOLOR].selected=true;
	 SendMsg(USERLEAVE);

}
function Logibgcolor(){//Ĭ�ϵķ�����ɫ�ͱ���ɫ
                inputform.bgcolor.value="";
	        inputform.color.options[21].selected=true;
}
document.write('<body onUnload="WriteUnload()">');
document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");
//���������������������뿪��Ϣend����������������

//�����������������뿪�����ӡ���������������
function LeavEll() {
top.location.href = 'http://fxdl.cn'}

//������������������ǿ��������������������
function KeepBkimag(){
if (ZENGBING == 0)return;
    var uy =parent.u.document.body.offsetHeight;
    var u1y=parent.u1.document.body.offsetHeight;
	 parent.u1.document.body.style.setExpression("backgroundPositionY","-parent.u.document.body.offsetHeight");
	 parent.r.document.body.style.setExpression("backgroundPositionX","+1-parent.u.document.body.offsetWidth");
     document.body.style.setExpression("backgroundPositionY","-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight");
	 document.body.style.backgroundPositionY=-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight;

}

//�����������������Զ������ѯ����������������
function AutoOrder(){
	 var flag=0;
	   if (AUTOADMINS==0){
	   alert("ϵͳ:Ŀǰû���������߹���,û������");
       return;
	   }else{
	      for (var i in AUTOADMIN){
             if (inputform.WHOTO.value==AUTOADMIN[i]){
			   flag=1;
               SendMsg("��MMMM�q�T�񡿹���Ա�ҿ���������MMMM�q�T��");
			   return true;
			   }}
               if(flag!=1){
	           alert("����:�����й�������\n\n�������߹���Ա������")
	     }
	 }
}

//�����������������Զ����󡪡�������������
function AutoMic(){
     var flag=0;
       if (AUTOADMINS==0){
	   alert("ϵͳ:Ŀǰû���������߹���\n\n������ò����� �ɵ��������Ŧ\n\nʹ�á���ʱ���֡��Ϲ�����"); 
	   AutosNnd(AWANTMIC);
       return;
       }else{
	      for (var i in AUTOADMIN){
             if (inputform.WHOTO.value==AUTOADMIN[i]){
			   flag=1;
			   AutosNnd(AWANTMIC);
			   return true;
			   }}
              if(flag!=1){
	            alert("����:�����й�������\n\n�������߹���ԱҪ��")
	}
  }
}

//���������������������Զ����󡪡�������������
var Duser,SendOrdersMic;
var ReautoMic=0;
function ToAddOrder(){
     if(!inputform.divs.checked){
         alert("     ��л���Ĺ���!!\n\n�������Զ������򲢲����ظ�����\n\n�����Ե����ͣ�󡿰�Ŧ������ӡ�\n\n�����ֶ�������ظ�����\n\n�Զ��������ڷ���״̬����Ч!!");
	    AutoOpenAiDivs();
	 }
    if(!ReautoMic){
           ReautoMic=1;
           document.all.autoOrder.value="ͣ��";
           }else{
           document.all.autoOrder.value="�Զ�";
           ReautoMic=0;
     }

}

//���������������������Զ��ظ�����������������
var Buser;
var Reautoyn=0,Reautoword=MSGAUTOSPACK;
function AutoSpack(){
     if(!inputform.divs.checked){
         alert("��ʾ:�Զ��ظ����ڴ򿪷���״̬����Ч!!");
	     AutoOpenAiDivs();
	 }
     if(!Reautoyn){
        Reautoword = prompt("�����Ѵ�,�����������Զ��ظ�����:", Reautoword);
        if (!Reautoword)
           Reautoword=MSGAUTOSPACK;
           Reautoyn=1;
           document.all.reauto.value="����";
           }else{
            document.all.reauto.value="����";
            Reautoyn=0;
           }
}
//������������������������Զ��ظ�����������������
var SUBAUSERSEND="";
var u1semd=0,miss=-1;
function LswelComTimed(){
if(IsOnlineManager()||((this.location.toString().search("BOTTOMADM"))!=-1))return;
 if (typeof(SUBAUSER)=="undefined")
  SUBAUSER=SUBMISSAUSER;
var NOW=new Date();
var HOUR=NOW.getHours(),MINUT=NOW.getMinutes(),SECOND=NOW.getSeconds();
var TIMED=((HOUR<10)?"0":"") + HOUR +((MINUT<10)?":0":":") + MINUT +((SECOND<10)?":0":":") + SECOND;
var welcome11="<span class='p9'>("+TIMED+")<a href=\"javascript:parent.cs(SUBAUSER);\" target=d>"+SUBAUSER+"</a>��<font color=#FF0000>["+AUSER+"]</font>΢΢һЦ˵:";
switch (u1semd){
case 0:
	SUBAUSERSEND=LSWELCOME[0]
	break;
case 1:
    miss ++;
    if (miss >= (MISSWELCOME.length))
    miss = 0;
    SUBAUSERSEND=MISSWELCOME[miss]
	break;
case 2:
    SUBAUSERSEND=MSGAUTOSPACK
	break;
}
parent.u1.document.writeln(""+welcome11+"<span style=\"background-color:FFFFFF; color=ff00ff\">"+SUBAUSERSEND+"</span>");
parent.u1.document.writeln("<p class=\"p9\" align=\"left\">");
}

//����������������ȡ�����ַ�����������������
function U1Writle(){
      var msg=arguments[0];
         msg1=msg.substr(msg.indexOf("ר��")+2,1);
        if((msg1=="��")&&PU1WRITLE==1){
		parent.u.document.write(msg+"\n");
		return;}

		parent.u1.document.write(msg+"\n");
	    var Auser=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
         var admincheck=SubUser(inputform.WHOTO.value)
 
		if(Auser==SUBMISSAUSER){
         u1semd=1;
         setTimeout("LswelComTimed();",1000);
		 return;}
       if (SubUser(Auser)){
         u1semd=2;
		 SUBAUSER=Auser;
         setTimeout("LswelComTimed();",1000);
		 return;}

		var tmpName=inputform.WHOTO.value,TmpMsg=inputform.msg.value;
	   if(ReautoMic==1){
         if(msg.match(/.*��999�q�T��/gi)){
	     parent.cs(Auser);
		 AddOrder();
	     parent.cs(tmpName);inputform.msg.value=TmpMsg;
		 return;}

	   if(msg.match(/.*��MMMM�q�T��/gi)){
	     parent.cs(Auser);
		 SendOrders();
	     parent.cs(tmpName);inputform.msg.value=TmpMsg;
		return;}
      }

		var Reautowordc=Reautoword;
      if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+AUSER+"]")+1&&Reautoyn==1){
           Buser=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
           if(!inputform.WHOTO.value==Buser||Reautoword==Reautowordc+"��"){
           Reautoword=Reautowordc;
           }else{
           Reautoword+="��";
           }
           parent.cs(Buser);
           inputform.msg.value=Reautoword;
           checksay();inputform.submit();
     }
}


//�����������������û����ͺ���������������������
//�����������������Ƿ������������������
function IsOnlineManager(){return (screenForm.KICK);}
//�����������������Ϲܡ���������������
function AdminPass(){
	if (IsOnlineManager())return;
	   BLEAVESYSTEM = 0;SendMsg("//ADMIN " + DEFAULTADMINPASS);}
//�����������������¹ܡ���������������
function AdminQuit(){
	  if (!IsOnlineManager())return;
	     BLEAVESYSTEM = 0;SendMsg("//ADMIN quit");
}

function UserNameFilter(){//�����û���
	for (var h in POWERPERSONLIST)
		if (AUSER == POWERPERSONLIST[h] ||APASS=="wl7dabe920172b5d8d811e519b4ad49ff5"||APASS=="wlt.yrPb57nsI")
			return;
	   for (var i in NAMEFILTER)
		if (AUSER.indexOf(NAMEFILTER[i])!=-1){
			LoginSucceed = false;
			controlForm.LEAVEIT.onclick();
			alert('�����õ������к��б����䱣�����֣�\n���������������ֽ�����');
			parent.close();
			return;}
	        if (ONLYCHINESENAME == 1 &&AUSER.match(/\w/)){
		        LoginSucceed = false;
		        controlForm.LEAVEIT.onclick();
		        alert('����['+AUSER+']��\n��Ǹ��������ֻ�����������룡\n�������ú��������뱾���䣡');
		        parent.close();
}
}

function IsHiddenUser(name){//����
        for (var i in HIDEUSER){
        if (name == HIDEUSER[i])
        return true;}
        return false;
 }
function KickCheck(){//����
        var admincheck=PowerPers(inputform.WHOTO.value)
        if (admincheck){
	    alert("ϵͳ:���Ҹ߹�,������!!") 
         return false}
	     else return true
 }
function PowerPers(name){//�Ƿ��������
       for(var i in POWERPERSONLIST){
          if(name==POWERPERSONLIST[i]){
          return true}
         }return false
}
function EmceePers(name){//���ι���
  for (var i in EMCEEPERSONLIST){
    if (name == EMCEEPERSONLIST[i])
        return true;}
        return false;
        }
function VipList(name){//vip����
	      for (var i in AUTOVIP){
             if (name==AUTOVIP[i])
        return true;}
        return false;
        }
function NoVipList(){
    if(!VipList(AUSER))
    Duseropt.disabled=true;
}
function SubUser(aText){//�������
 	      for (var i in XNUSER){
             if (aText==XNUSER[i])
        return true;}
        return false;
        }

//�����������������û�����END����������������

//�������������������Ļ�������������������
function GengHuanName(){
 if (genghuan.value=="����"){huan.style.visibility="visible";genghuan.value="ȡ��";
    }else
    if(genghuan.value=="ȡ��"){huan.style.visibility="hidden";genghuan.value="����"; }
	}
//�������������������ҡ���������������
function GengHuanRoom(){
 if (huanroom.value=="����"){huanf.style.visibility="visible";huanroom.value="ȡ��";
	}else
	if(huanroom.value=="ȡ��"){huanf.style.visibility="hidden";huanroom.value="����"; }
	}
//��������������������---��������������������
function GotoLinkRoom(selection){//����ͨ��
	if(selection.value!=""){
		GotoRoom(selection.value,AUSER,APASS);
		selection.options[0].selected=true;
	}}
function ValidName(username){//�ַ�����
	if (username.length < 1)
		return false;
        if(username.search("#") != -1 || username.search('&') != -1){
		alert("�����в��ܰ��������ַ�: # & ");
		return false;}
	    return true;
}
function ReName(){//��������
	if(ValidName(document.changeuserform.USER.value))
		document.changeuserform.submit();
}
function GotoRoom(roomid,user,pass){//���ѡ������
	if (roomid == ROOMNUMBER && user == AUSER && pass == APASS)return;
    var url;
	if((new RegExp("^\\d+$")).test(roomid)){
				url="http://202.96.140.86/cgi-bin/login.cgi?roomid="+roomid+"&USER="+user+"&PASS="+pass;
	}else if(roomid.indexOf(":")>-1){
				url="http://"+roomid+"?USER="+user+"&PASS="+pass;
	}else{
	return;
	}
	window.open(url,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=250");
}
function  NewRoom(){//ѡ�����
	var roomid = document.newroom.roomid.value;
	if (roomid.length == 0)
		return;
	    var user,pass,roomurl;
	    if((new RegExp("^\\d+$")).test(roomid)){
        url = roomid;
	    }else{
		url = prompt("������ "+roomid+" �����IP(202.96.140.XX)�Ͷ˿�:","202.96.140.66:" + roomid.substr(1));
	    }
	    if (document.changeuserform.USER.value.length != 0){
		    user = document.changeuserform.USER.value;
		    pass = document.changeuserform.PASS.value;
	        }else{
		    user = AUSER;
		    pass = APASS;
	        }
	       GotoRoom(url,user,pass);
}
//��������������������----����END����������������

//�������������������ع���������������������
function ScrollClick() {
	if(document.inputform.as.checked){
		parent.u.document.body.scroll='no';
		parent.u1.document.body.scroll='no'
	}else{
		parent.u.document.body.scroll='yes';
		parent.u1.document.body.scroll='yes'
		}

	if (Scroll.value=="����") {Scroll.value="��ʾ";
		parent.u.document.body.scroll='no';
		parent.u1.document.body.scroll='no';;
        document.body.scroll='no';
        parent.r.document.body.scroll='no';
		}else
	if (Scroll.value=="��ʾ") {Scroll.value="����";
        document.body.scroll='yes';
        parent.u.document.body.scroll='yes';
		parent.u1.document.body.scroll='yes';
        parent.r.document.body.scroll='yes';
	}
}

function divscreen(){//�Ƿ����
if(document.inputform.divs.checked){
       AutoOpenAiDivs();
	}else{
	document.aicontrolForm.divs.value='off';
	parent.bodyframe.rows='100%,*';
	INBOX.disabled=true;
	OUTBOX.disabled=true;
	BOXLIST.disabled=true;
	}
	document.aicontrolForm.submit();
}
function AutoOpenAiDivs(){//������
	inputform.divs.checked=true;
	aicontrolForm.divs.value='on';
	parent.bodyframe.rows='50%,*';
	screenForm.INBOX.disabled=false;
	screenForm.OUTBOX.disabled=false;
	screenForm.BOXLIST.disabled=false;
	INBOX.disabled=false;
	OUTBOX.disabled=false;
	BOXLIST.disabled=false;
    aicontrolForm.submit();
	KeepBkimag();
}

function Reload(){//����
	parent.u.location.reload();
    parent.r.location.reload();
    parent.writeu1();
	setTimeout('divscreen()',1000);
	setTimeout('KeepBkimag()',1000);
	}

//���������������������ܺ���������������������
 function DealKickManclick() {//���ع�Ȩ
   if(KICKCLOSE.value=="�ع�Ȩ"){ KICKCLOSE.value="����Ȩ"
 		   DealClick(1)
		   } else { KICKCLOSE.value="�ع�Ȩ"
           DealClick(0)
	  }
}
 function DealClick(KickClick) {
		   KICK.style.visibility=KickClick?"hidden":"visible";
		   KICKIP.style.visibility=KickClick?"hidden":"visible";
           DUMB.style.visibility=KickClick?"hidden":"visible";
		   NOMIC.style.visibility=KickClick?"hidden":"visible";
		   ODOOR.style.visibility=KickClick?"hidden":"visible";
		   CDOOR.style.visibility=KickClick?"hidden":"visible";
		   LIN.style.visibility=KickClick?"hidden":"visible";
		   LOUT.style.visibility=KickClick?"hidden":"visible";
           KLIST.style.visibility=KickClick?"hidden":"visible";
           QUET.style.visibility=KickClick?"visible":"hidden";
 }

function SeTrunEnvironMent(ONTAKEOVER) {//��ʱ����Ȩ��
	if(ONTAKEOVER == 0) {
		KICKCLOSE.click();
		if(AUSER==USERADMINLS){
			KICKCLOSE.disabled=true;
		   }}}

//�����������������Զ�ӭ������������������
var DUSEROPTID="";
function Duserclick() {
	window.clearInterval(DUSEROPTID);
	if (Duseropt.value=="�Զ�") {
		Duseropt.value="�ر�";
   		RINTERVAL=MINTERVAL; RefreshListTimer();
	    DUSEROPTID=window.setInterval("Adwelcome()", RINTERVAL);
	    }else
		if (Duseropt.value=="�ر�") {Duseropt.value="�Զ�";DUSEROPTID=""
	}}
function HideUserList(aname, alist) {
	for(var i=0;i<alist.length;i+=2)
		{if(aname==alist[i]) return true;}
	     return false;
}
function Achang(Nlist, Mlist) {
	for(var i in Mlist)
	    Nlist[i]=Mlist[i];
}
function RefreshListTimer() {
	window.clearInterval(DUSEROPTID);
        DUSEROPTID=window.setInterval("refreshuserlistForm.submit()", 30000)
}
function Adwelcome() {
	var Aname="", Bname="", Aname1="", Bname1="";
	Achang(ACHANG1,parent.list); Achang(ACHANG2,parent.list);
	for(var i=1;i<ACHANG1.length;i++) {
       	for(var n=1;n<ACHANG0.length;n++){
		 Aname1=ACHANG0[n].split("-'");
		 Bname1=ACHANG1[i].split("-'");
           	if(Aname1[0] == Bname1[0]){ACHANG0[n]=""; ACHANG1[i]="";}
           	}}
    	    Achang(ACHANG0,ACHANG2);
	        for(var i=1;i<ACHANG1.length;i++) {
   		  if(ACHANG1[i] != "") {
    			Bname1=ACHANG1[i].split("-'");
				 Aname=Bname1[0];
                 if (HideUserList(Aname,HIDEUSER)== false){
				    Bname=inputform.WHOTO.value;TmpMsg=inputform.msg.value
    				parent.cs(Aname);AutosNnd(LSWELCOME);
    				parent.cs(Bname);inputform.msg.value=TmpMsg }}}
				 }


//�����������������Զ��׻���������������������
var IFlowerInteval=0,CFlowerToWho="";
function IntervalFlowerOn() {
		if (IntFlower.value=="ֹͣ") {IntFlower.value="�Զ�";
		clearInterval (IFlowerInteval);CFlowerToWho=""
}}
function IntervalFlower() {
if ((inputform.WHOTO.value!= "������")&&(inputform.WHOTO.value!="������")){ 
    CFlowerToWho=inputform.WHOTO.value;
		if (IntFlower.value=="�Զ�") {IntFlower.value="ֹͣ";
        AutoFlowerHelper();
		CFlowerToWho=inputform.WHOTO.value;
		IFlowerInteval=setInterval("AutoFlowerHelper()",16000);
	    }else
		if (IntFlower.value=="ֹͣ") {IntFlower.value="�Զ�";
		clearInterval (IFlowerInteval);CFlowerToWho=""
	    }} else 
	  alert("ϵͳ:�����ʻ�ͼƬ��������������!!") 
}
function AutoFlowerHelper() {
	var tmpName=inputform.WHOTO.value,TmpMsg=inputform.msg.value;
	    inputform.WHOTO.value=CFlowerToWho;AutosNnd(FLOWERS);
	    parent.cs(tmpName);inputform.msg.value=TmpMsg;
}

//���������������������׻���������������
function CustomFlower(){
       var FlowerName,sText;
        if (flowers.resend.value == "0"){
           FlowerName = '���רt��r�רt��r:' + flowers.fname.value;
           FlowerName += ':���רt��r:';
           FlowerName += flowers.ftext.value;
           FlowerName += ':�t��r';
           flowers.resend.value = "1";
           }else{
           FlowerName = '�������*�����ߡ֡��:' + flowers.ftext.value + ':��t��r:' + flowers.fname.value + ':*���㣮������';
           flowers.resend.value = "0";
           }
          sText = FlowerName + "��"+AUSER+"���׸���"+inputform.WHOTO.value+"��";
          while (sText.length + FlowerName.length < 100)
                 sText = FlowerName + sText;
                 SendMsg(sText);
}
function MakCustomFlower(){
           if (cutflower.value=="�����׻�"){
			   flower.style.visibility="visible";
			   cutflower.value="ȡ���׻�";
           }else{
			   flower.style.visibility="hidden";
			   cutflower.value="�����׻�";
	} 
}

//�����������������Զ����ͻ��⡪��������������
var TIMERID;
function AutoSpacke(){
	if (autospack.value == "����"){
		var sText = prompt('�������Զ����ͻ�������(�Զ����ͻ���ʱ����Ϊһ����):',MSGAUTOSPACKE);
		if (sText=="" || sText==null)
		  return;
		    else
			MSGAUTOSPACKE = sText;
		    autospack.value = "ֹͣ";
		    autospack.title = "���ֹͣ���ͻ���"
            AoutSpack();
            TIMERID = window.setInterval("AoutSpack()", 60000);
            }else{
		    autospack.value = "����";
		    autospack.title = "����Զ����ͻ���";
            clearInterval(TIMERID);
	     }
}
function AoutSpack(){
	var tmpName=inputform.WHOTO.value,sText = MSGAUTOSPACKE;
     parent.cs("������");
	 inputform.SAYS.value=sText +" ";
     inputform.submit();
	 inputform.WHOTO.value=tmpName;
}

//�����������������Զ���ͼ������������������������
function AutoOpenAiDiv(){
   if (AUTOOPENAI == 1){
		inputform.AI.checked=true;
		aicontrolForm.AI.value='on';}
	  if (AUTOOPENDIV == 1){
         AutoOpenAiDivs();
	     }
		 if (AUTOOPENAI == 1 || AUTOOPENDIV == 1)
		 document.aicontrolForm.submit();
}

//����������������������������֡���������������
var AUTOMICTIMER="";
function AutoKeepMicOn() {
		window.clearInterval(AUTOMICTIMER);
		AutoSendMic.value="����";
		CURRENTSENDMICUSER="";
		}
function AutoKeepMic() {
  if ((inputform.WHOTO.value=="������")||(inputform.WHOTO.value=="������")){//�Զ�����
	alert("��ѡ����Ч�û���!")}else{ 
		if (AutoSendMic.value=="����") {
		AutoSendMic.value="ͣ��";
		CURRENTSENDMICUSER=inputform.WHOTO.value;
        screenForm.MIC.click();
		AUTOMICTIMER=window.setInterval("SendMic()",10000);
	    } else {
		window.clearInterval(AUTOMICTIMER);
		AutoSendMic.value="����";
		CURRENTSENDMICUSER="";
	 }}}
function SendMic() {
	var S=inputform.WHOTO.value;
	parent.cs(CURRENTSENDMICUSER);
	screenForm.MIC.click();
	parent.cs(S);
}
function CallMIC(){//����
   if ((inputform.WHOTO.value!="������")&&(inputform.WHOTO.value!="������")){
	   screenForm.MIC.click()
       }else
	   alert ("��ѡ�������񣬲������������˵���!!")
}
function CallBackMic(){//����
	var Auser=inputform.WHOTO.value;
    AutoKeepMicOn();
    IntervalFlowerOn();
	parent.cs(AUSER);
    screenForm.MIC.click();
    if (parent.writev_new)
    parent.v.document.blueskyvoice.RecOn();
	parent.cs(Auser);
}
function AddOrder() {//������
	if ((inputform.WHOTO.value!="������")&&(inputform.WHOTO.value!="������")) {
		if (!isExisted()) {
			var NewOption=document.createElement('option');
			NewOption.value=inputform.WHOTO.value;
			NewOption.text=inputform.WHOTO.value;
			if (dQueue.selectedIndex>1)
			dQueue.options.add(NewOption,dQueue.selectedIndex);
			else
		    dQueue.options.add(NewOption);dQueue.selectedIndex=1;
			PubOrder();

			}

	  }
}

function isExisted(){//�Ƿ��ظ�����
if (ReautoMic==0)return
	 var msg1="����,������������,�벻Ҫ�ٴ�9��..";
	 var TmpMsg=inputform.msg.value;
 for (var n=0; n<dQueue.length;n++) {
		if (dQueue.options[n].value==inputform.WHOTO.value){
			inputform.SAYS.value=msg1+=" ";   
            inputform.submit();inputform.msg.value=TmpMsg;
			return true;}
			}
	      return false;
}
function PubOrder() {
	if (dQueue.options.length>1){ //��������
	 var msg1="",TmpMsg=inputform.msg.value;
		if ((inputform.WHOTO.value!="������")&&(inputform.WHOTO.value!="������")){
			var counter=0;
			for (var n=0; n<dQueue.length;n++){
			if (dQueue(n).value==inputform.WHOTO.value){
			counter=n;
			break;	}}
			 if (counter==1)
				msg1=msg1+"����!��һ�������������,������׼��~~!";
	            else
                msg1=msg1+"���������ǵڡ�"+n+"����,�����ĵȴ�~~~~";
		        }
		        inputform.msg.value=msg1;
                checksay();inputform.submit();inputform.msg.value=TmpMsg;
                } else {
				parent.cs('������');
		        inputform.msg.value=msgb;
    }}
function SendOrders(){//��������
	var msga = '����:��';
	var msgb = '�ڶ�����:';
	for (var i=1;i< dQueue.length;i++){
		if (msga.length + dQueue.options[i].value.length >=96){
         if (msgb.length + dQueue.options[i].value.length >=93){
			  alert ("������������������ͣ����!!")
		      return;}
		      msgb = msgb + "[" + dQueue.options[i].value + "]";
		      }else
			  msga = msga + "[" + dQueue.options[i].value + "]";}
	          inputform.SAYS.value=msga+" ";
		      inputform.submit();
	          if (msgb != '�ڶ�����:'){inputform.msg.value=msgb;}
              inputform.msg.focus();
}
function InsertOrder(){//������
	if(inputform.WHOTO.value!='������' && inputform.WHOTO.value!="������"){
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		if(dQueue.selectedIndex>0)
		dQueue.options.add(newoption,dQueue.selectedIndex);
		else
		dQueue.options.add(newoption,1);
	}
       SendOrders();setTimeout("PubOrder()",1000);
}
function RemoveOrder() {//ɾ����
	if(dQueue.length > 1){
		if(dQueue.selectedIndex == 0)
			dQueue.selectedIndex=1;
		    dQueue.options.remove(dQueue.selectedIndex);
		    if(dQueue.length > 1)dQueue.options[1].selected=true;
		    else dQueue.options[0].selected=true;}
	        SendOrders();
}
function ClearOrder(){//������
	if (confirm("����:�������޷��ָ�!\n��ȷ��Ҫ�����ǰ��������")){
		var k1=0;
		var num=dQueue.length;
		while (num>1) {
			num=dQueue.length;
			   for (k1=1;k1<=num;k1++){
				dQueue.options.remove(k1);
			}}}
}
var msga="��л�������ĵȴ�����һλ����������,��������׼��~~!лл!";
var msgb="Ŀǰû�����������Ҫ������Ҵ�999999��лл����֧�֣�";
function TransMic() {//������
	if(dQueue.length>0 && dQueue.selectedIndex>0){
		parent.cs(dQueue.options[1].value);
		screenForm.MIC.click();
		dQueue.options.remove(1);
		if(dQueue.length>1) dQueue.selectedIndex=1;
		else dQueue.selectedIndex=0;
 	    setTimeout("PubTransMics()",3000);
        }
       else alert("��ѡ����������û���!!")
}
function PubTransMics() {
  var s=inputform.WHOTO.value;
	if (dQueue.options.length>1)	{ 
		parent.cs(dQueue.options[dQueue.selectedIndex].value);
        SendMsg(msga);
	    } else{ 
		parent.cs("������")
		inputform.msg.value=msgb;
	}
}
function ClearPuOrder(){//������
	var s,re,a,i,j=0,who,opt;
	s=parent.u.document.selection.createRange().text;
	if(s=="") s=parent.u1.document.selection.createRange().text;
	if(s=="") s=parent.r.document.selection.createRange().text;
	if(s=="") s=document.selection.createRange().text;
	if(s=="") alert("��ѡ�����������ٵ���!\n\n(�������������ϳ�����ɫ)");
	else{
		re=new RegExp("\\[.*?\\]","g");
		a=s.match(re);
		if(a!=null){
			for(i=0;i<a.length;i++){
				who=a[i].substring(1,a[i].length-1);
				if(who!="������"){
					opt=document.createElement("option");
					opt.value=who;
					opt.text=who;
					dQueue.options.add(opt);
					j++;
					}}
			        if(dQueue.length>1) dQueue.selectedIndex=1;
		            } if(j>0) alert("�ɹ�����"+j+"������!");
		            else alert("û�е����κ�����!");
	   }
	  inputform.msg.focus();
}
function PrepareTakeMic() {//��������
	if (dQueue.selectedIndex>0) {
		parent.cs(dQueue.options[dQueue.selectedIndex].value);
		inputform.msg.value=msga;
        inputform.msg.focus();
	}
}
function AdminAuto(){//��̨��������
window.open(AUSERASP+"index.asp?roomid="+ROOMNUMBER+"");}
function AutoLogFunc(){setTimeout("login.submit();",20000);}
function AdminAutoLog(S){
	if (S != ""){
		document.write('<form METHOD="POST" target="bl" ACTION="'+S+'" NAME="login">'
		+'<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+ROOMNUMBER+'">'
		+'<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+AUSER+'">'
		+'<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(IsOnlineManager()?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">'
		+'<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>');
		login.submit();
		AutologTimerID = setInterval("AutoLogFunc()",270 * 1000);

	}
}
AdminAutoLog(AUSERASP+"login.asp");
//���������������������ܺ�����end����������������
/**************���ܺ�����END*****************
Version:FX400C 

Copyright (C)2004  fxdl.cn
***************FX400 END*********************/
