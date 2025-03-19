alert('即日起，因马甲密码设置过于简单《我们这里有管理密码存档，六位以下全数字密码视为简单》而造成马甲被盗的管理一律不再重新加管，加色。\n以上公告所指管理包括所有巡管，室主，普通管理\n                                                                2005.6.2\n');     
<!--
var a_user= document.inputform.USER.value;
var a_pass= document.inputform.PASS.value;
var config_place= "http://js.aliao.net/sb/"; //图片等的存放位置，请设定为您存放图片的位置。
var room_owner="情聊视频聊天网";
var room_name="流氓&美女";
var room_adminname_head="";
var room_number="2068";
var room_link_url="http://www.aliao.net/"+room_name+"";
var black_roomname="";
var black_roomnumb="";
var userlist_top_html="";//聊友列表区顶部HTML代码
var userlist_bottom_html="";//聊友列表区底部HTML代码
var userlist_bkcolor="#C9E2F8";//聊友列表区的背景色
var userlist_bkimage="";//聊友列表区的背景图，设置为空串则使用输入区的图片
var voice_normal_color="#00cc00";//正常打开语音时的图标颜色
var voice_v2v_color="black";//双工语音时的图标颜色
var voice_vr_color="#FF0000";//有视频时的图标颜色
var div_screen_bkcolor="";//分屏背景色
var div_screen_bkimage="";//分屏背景图片	
var voice_bkcolor="#E2ECF5";//语音区的背景色
var voice_bkimage="";//语音区的背景图，空串则使用聊友区图片
var input_bkcolor="#CDE4F3";//输入区背景色
var input_bkimage="";//输入区背景图片
var input_msg_color="#006699";//输入区文字输入框文字色
var input_msg_bkcolor="#DCE0CF";//输入区文字输入框背景色
var body_text_color= "#006699";//输入区文字色
var select_color= "#006699";//列表框文字色
var select_text_color="#006699";//列表框内文字色
var button_text_color="#EE1289";//输入区按钮文字色
var button_bk_image=1;//按钮使用背景图片，1——使用，0——不使用
var button_bk_color="";//输入区按钮不使用图片时背景色
var button_bk_image=1;//按钮使用背景图片，1——使用，0——不使用
var full_screen_bkimage	= 1;		//	是否使用整体背景图片0——不使用，1——使用
var auto_hide_scrollbar = 0;		//	整体背景时是否自动隐藏滚动条0——不隐藏，1——隐藏
var button_bk_color="";//输入区按钮不使用图片时背景色
var a_btn_pic= new Array//按钮背景图片  宽度,文件名
(17, "btn18.gif", 18, "btn18.gif", 19, "btn18.gif", 35, "btn35.gif", 46, "btn46.gif", 70, "btn70.gif");
var url_popup_window="http://bbs.51vip.net/mm.asp?get=95198";//进入聊天室时弹出的窗口，如果为空则不弹出
var only_registr_user=0;//只允许注册用户进入,0——不限制；1——只允许注册用户进入
var only_chinese_name=1;//只允许汉字名用户进入,0——不限制；1——只允许汉字名用户进入
var default_admin_pass="123";//	
var auto_open_ws= 0;//自动打开悄悄,0--不打开；1--自动打开
//document.inputform.ws.click();//      悄悄话
var auto_open_ai=0;//自动打开图音,0——不打开；1——自动打开
var auto_open_mic=1;//自动打开语音,0——不打开；1——自动打开
var auto_open_div=1;//自动分屏,0——不分屏；1——自动分屏
var multi_singer_list=0;//是否允许重复排麦，0——不允许；1——允许
//	分屏公告文字
var div_msg_color1 = "#FF0000";		//	分屏公告颜色
var div_msg_color2 = "#8800FF";		//	分屏公告颜色

var div_msg1 = "";
var div_msg2 = "";
var div_msg4 = "本房间招聘管理多名,请与室主或者在线管理联系";  //通知
var div_link = "";

//——用于连接按钮
var a_link_button = new Array
(
"首页", "http://www.aliao.net/",
"嗨曲","http://www.qqmc.com/",
"注册","http://www.aliao.net/regist.asp",
"管理","http://www.aliao.net/user_roomadmin.asp",
"音乐","http://www.d118.com/",
"论坛","http://bbs.aliao.net"
);
//——级别：1——室主；2——高级管理... 3——5 可供设置,其余已由内部使用
var a_vip_user = new Array
(
"*ゞ╲絕ぁ戀ぺ",1,
 "*凉风有信",1,
 "*幸运",1,
 "*〓华★仔〓",1,
"*紫色风铃",2,
"*!!小E",2,
"*無訫",10,
"*恋嘴",10,
"*為妳變壞",10,
 "*巡管1号",11,
 "*巡管2号",11,
 "*巡管3号",11,
 "*巡管4号",11,
 "*巡管5号",11,
 "*巡管6号",11,
 "*巡管7号",11,
 "*巡管8号",11,
 "*巡管9号",11,
 "*╂冷妮",  4,
"*o︷メ御风泡泡メ",5,
"*1234心碎",5,
"*℡情聊〆m尐紫光♀",    17,
"*℡情聊〆妖ル♀",    17,
"*℡情聊〆倾舞♀",    17,
"*℡情聊〆低調♀",   17,
"*℡情聊〆雪兒♀",17,
"*℡情聊〆寳唄♀",17,
"*℡情聊〆露儿♀",17,
"*℡情聊〆蝶儿♀",17,
"*℡情聊〆叮叮♀",17,
"*℡情聊〆柔情♀",17,
"*℡情聊〆利儿♀",17,
"*℡情聊〆變乖♀",17,
"*℡情聊〆梦梦♀",    17,
"*℡情聊〆冰心♀",    17,
"*℡情聊〆天使♀",    17,
"*℡情聊〆魅舞♀",    17,
"*℡情聊〆幽灵♀",17,
"*℡情聊〆情儿♀",17,
"*℡情聊〆圊圊♀",17,
"*℡情聊〆明明♀",17,
"*℡情聊〆叮当♀",17,
"*℡情聊〆茜ル♀",17,
"*℡情聊〆欣ル♀",17,
"*℡情聊〆乐ル♀",17,
"*℡情聊〆蕊ル♀",17,
"*℡情聊〆芊芊♀",17,
"*℡情聊〆碎儿♀",17,
"*",17,
"*℡情聊〆蝶舞♀",19,
"*℡情聊〆虫儿♀",19,
"*℡情聊〆坏小子♂",19,
"*℡情聊〆爱人♂",19,
"*℡情聊〆酷闹♂",19,
"*℡情聊〆遗忘♀",19,
"*℡情聊〆小舞♀",19,
"*℡情聊〆我亂我壞♂",19,
"*℡情聊〆水晶蝶韵♀",19,
"*℡情聊〆漫步♂",19,
"*",17,
"*↘宣传部☆嘴嘴",6,

"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*",16,
"*╰┯妖后㎜虹儿″",4,
"*←╬∞天空",4,
"*蒾伱dě宠儿",    6,
"*风雪夜归人",5,
"*↘宣传部☆冰鈊",6,
"*↘宣传部☆绿茶",6,
"*↘宣传部☆寳児",6,
"**↘宣传部☆嗨儛",6,
"*↘宣传部☆格格",6,
"*↘宣传部☆公主",6,
"*↘宣传部☆虎妹",6,
"*↘宣传部☆绿茶",6,
"*↘宣传部☆柔情",6,
"*↘宣传部☆舞魂",6,
"*↘宣传部☆雪儿",6,
"*↘宣传部☆燕子",6,
"*↘宣传部☆嘴儿",6,
"*↘宣传部☆哎呀",6,
"*↘宣传部☆拽猫",6,
"*↘宣传部☆疯婆",6,
"*↘宣传部☆蝴蝶",6,
"*↘宣传部☆乖乖",6,
"*↘宣传部☆冰冰",6,

"*↘宣传部☆變乖",6,
"*↘宣传部☆可欣",6,
"*↘宣传部☆夜舞",6,
"*↘宣传部☆彤彤",6,
"*↘宣传部☆枫叶",6,
"*↘宣传部☆冰霓",6,
"*↘宣传部☆尐紫琳",6,
"*↘宣传部☆镁少钕",6,
"*",6,
"*",6,
"*MC小杰",14,
"",6,
"*oOOo流氓㊣左翼oOOo",14,
"*oOOo美女㊣眉毛oOOo",14,
"*oOOo流氓㊣伊杨oOOo",14,
"*★ヅ龍唲ヅ☆",3,
"*★ヅ過唲ヅ☆",3,

 "*oOOo副室㊣可可oOOo",13,
"*oOOo流氓㊣卟兜oOOo",14,
"*oOOo美女㊣狐儿oOOo",14,
"*oOOo流氓㊣睡熊oOOo",14,
"*oOOo美女㊣红外线oOOo",14,
"*oOOo副室㊣狼孩oOOo",13,
"*!!!!℡绝侃",12,
 "*拽绣",12
);
//——聊友名过滤，凡是名字中包含下面文字的聊友，只要不是上面的VIP聊友，不准进入房间——
var a_name_filter = new Array
(
"q","Q","hao","好聊","碧聊","Q聊","妹妹聊","℡╭╯嗨麦╰╮","世纪聊","华聊","七聊","QQ聊","a聊","A聊","爱聊","聊聊","咪咪","MM","mm","拽拽","网魂","網魂",
"草你","督察","总督","巡","室主","总管","站长","╭ぶ☆晓轩☆ぶ╯","督查","℡钟哥℡","打炮","伟哥","老婆","老公","操","床上","上床","聊性","操","jj",
"鸡","做爱","一夜","作爱","阳具","奶","性交","射精","乳","晓轩","插","碧聊","日","淡","龙","你爷","监管","高管","冰影爷爷日","龍",
"◥","◣","◢","◤","媽","妈","JJ","官","裸","淫","射","干","草","龟","B","阴","性","想要","舔","靠","棍","嫖","爸"
);

// 第一步　添加便衣马甲数组
//      便衣马甲
     var bianyi = new Array
     ("*拽绣",
"*!!!!℡绝侃",
"*oOOo副室㊣可可oOOo",
     "*〓华★仔〓",
     "*凉风有信",
     "*無訫。",
     "*9394",
     "*為妳變壞",
     "*秋枫",
     "*★☆思念☆★",
     "*幸运",
     "*ゞ╲絕ぁ戀ぺ"
      );

//——聊友说明，在此修改聊友名字的颜色——

var a_usertitle = new Array
(
            0,	"在线主持、别看，要麦打99",	"tb/op.gif",	   "#FF0000",	"#FFFFFF",
1,	"情聊站长",      "tb/zhanzhang.gif",               "#ff0000",	"#ffff00",
2,	"站长助理",	"tb/aza.gif",	"#ffffff",	"#2ff0A0",
3,	"我们是情侣哦，妒忌吧！嘻嘻！！",	"http://  width=16 height=19",	"#ffffff",	"#8800ff",
4,	"情聊VIP最特别贵宾,免踢,妒忌吧！嘻嘻！！",	"tb/meinv.jpg",	    "#00ff99",	"#FFffff",
5,   "情聊VIP特别贵宾",      "tb/wuyuan.gif",       "#00ff99",      "FFFFFF",
6,   "情聊贵宾",      "tb/meinv.jpg",       "#7FFF00",        "#FFFFFF",
7,	"本室的嘉宾哦，常来玩哦,就可以有漂亮的图标哦",	"",	"#2000A0",	"#ffffff",
8,	"本室的客人，下次用注册名哦，大家好记着你",	"",	"#2000A0",	"#ffffff",
9,   "肯定是游泳高手啊，潜水凉快哦，嘿嘿.....",	"",	"#ffffff",	"#2000A0",
10,   "情聊副站",      "tb/fuzhan.gif",      "#ff6600",      "#ffffff"	,
11,   "情聊巡管",      "tb/xunguan.gif",      "#ff3399",      "#ffffff",	
12,   "本室室长",      "tb/shizhu.gif",       "#ff00ff",      "#FFffFF",
13,   "本室副室",      "tb/fushi.gif",         "#00ff00",      "#FFFFFF",
14,   "本室高管",      "tb/gaoguan.gif",	"#cc00ff",      "#FFFFFF",
15,   "情聊宝贝领队",      "tb/guanli.gif",       "#00ffff",      "#FFFFFF",
16,    "MC喊麦",      "tb/zhu.gif",                   "#CC33ff",   "#ffffff",
17,   "情聊宝贝",      "tb/baobei.gif",        "#ff6633",       "#FFFFFF",
18,	"MC喊麦领队",	"tb/meinv.gif",	"#ff4000","#FFffff",
19,   "情聊歌手",      "tb/zhixing.gif",       "#ff0066",      "#FFFFFF" 
);

var a_roomlink = new Array
(black_roomname,	black_roomnumb,	"等您加入",	"",	"等您加入",	"");
//——房间链接——
var a_linkurl = new Array
(

	"情聊",	"http://www.aliao.net"
);
document.write("<script src=\"http://js.aliao.net/js/369.js\"></script>")
