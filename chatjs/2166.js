<!--

var a_user               = document.inputform.USER.value;

var a_pass               = document.inputform.PASS.value;

var userlist_top_html = "<table border=0 cellspacing=0><tr><td align=middle><img width=100% height=50 src=http://www.5iro.net/img/logo.gif></td></tr><tr><td align=middle><marquee scrollamount=2><font color=Olive><b>欢迎<font color=red><b>〖"+document.inputform.USER.value+"〗</b></font>来到<font color=red>5iRO</font><font color=red>要麦请打999</font></marquee></td></tr></table>";
var config_place= "http://vip.7sn.com/515029/wyx/tup/";

var userlist_bottom_html = "";//聊友列表区底部HTML代码
var room_owner           = "*黑咖啡☆真";            //室主名称
var room_name            = "5iro";		    //房间名称
var room_adminname_head  = "*黑咖啡☆真";	    //爱难管理名
var room_number          = "2166";			    //房间号
var room_link_url        = "http://2166.liaowan.com";	    //房间的地址
var black_roomname       = "";			            //双工房间名称
var black_roomnumb       = "";			            //双工房间号码
var userlist_bkcolor     = "#D9ECFB";	//聊友列表区的背景色
var userlist_bkimage     = "";		//聊友列表区的背景图，设置为空串则使用输入区的图片
var voice_normal_color   = "#33CC00";	//正常打开语音时的图标颜色
var voice_v2v_color      = "#BFBFBF";	//双工语音时的图标颜色
var voice_vr_color       = "#33CC00";	//有视频时的图标颜色
var div_screen_bkcolor   = "";		//分屏背景色
var div_screen_bkimage   = "";	        //分屏背景图片	
var voice_bkcolor        = "#D9ECFB";	//语音区的背景色
var voice_bkimage        = "";		//语音区的背景图，空串则使用聊友区图片
var input_bkcolor        = "#D9ECFB";	//输入区背景色
var input_bkimage        = "";		//输入区背景图片
var input_msg_color	 = "#FF00FF";	//输入区文字输入框文字色
var input_msg_bkcolor    = "#CCCCFF";	//输入区文字输入框背景色
var body_text_color	 = "#FF00FF";	//输入区文字色
var select_color         = "#FF00FF";	//列表框文字色
var select_text_color    = "#FF00FF";	//列表框内文字色
var button_text_color    = "#FF00FF";	//输入区按钮文字色
var button_over_color    = "#FF0099";   //输入区鼠标移过时按钮文字色
var button_bk_image	 = 1;		//按钮使用背景图片，1——使用，0——不使用
var button_bk_color      = "#CC00FF";	//输入区按钮不使用图片时背景色
var full_screen_bkimage  = 1;		//是否使用整体背景图片0——不使用，1——使用
var auto_hide_scrollbar  = 1;		//整体背景时是否自动隐藏滚动条0——不隐藏，1——隐藏
var disable_notice       = 0;		//是否屏蔽碧聊的那个提示声音0——不屏蔽，1——屏蔽
var url_popup_window     = "";		//进入聊天室时弹出的窗口，如果为空则不弹出
var only_registr_user    = 0;		//只允许注册用户进入,0——不限制；1——只允许注册用户进入
var only_chinese_name    = 0;		//只允许汉字名用户进入,0——不限制；1——只允许汉字名用户进入
var default_admin_pass   = "123";	//默认的管理员上管口令
var auto_open_ai         = 1;		//自动打开图音,0——不打开；1——自动打开
var auto_open_mic        = 1;		//自动打开语音,0——不打开；1——自动打开
var auto_open_div        = 1;		//自动分屏,0——不分屏；1——自动分屏
var multi_singer_list    = 0;		//是否允许重复排麦，0——不允许；1——允许
var msg_login		 =	        "是我〖"+a_user+"〗来了！《" + room_name + "》 无言的爱 无言的思念 无言的等待！";
var msg_admin		 =	        "";
var msg_quitadmin	 =	        "";
var msg_leave		 =	        "各位：〖"+a_user+"〗先行一步了,下次再和大家聊！";
//	按钮背景图片  宽度,文件名

var a_btn_pic = new Array

(
	17,		"http://vip.7sn.com/515029/wyx/tup/1.gif",
	18,		"http://vip.7sn.com/515029/wyx/tup/1.gif",
	19,		"http://vip.7sn.com/515029/wyx/tup/1.gif",
	35,		"http://vip.7sn.com/515029/wyx/tup/02.gif",
	46,		"http://vip.7sn.com/515029/wyx/tup/03.gif",
	70,		"http://vip.7sn.com/515029/wyx/tup/04.gif"
);

//	用于连接按钮

var a_link_button = new Array

(

        "5iro论坛",  "http://www.5iro.net/bbs",
        "5iro",  "http://www.5iro.net",
        "5iro留言",  "http://www.5iro.net/bbs",
        "5iro调麦",  "http://www.bliao.com/help/help53.htm",
        "5iro意见",  "http://www.5iro.net/bbs",
        "聊天注册",  "http://liaowan.com/USadmin/regadd.asp"
);

//	本室中的 VIP 聊友 

var a_vip_user = new Array

(
 "*黑咖啡☆真",1,
 "*",2,
 "*",4,
 "*",3,
 "*",1,
 "*",6,
 "*",1,
 "*",6,
 "*",1,
 "*",1,
 "*",1,
 "*",4,
 "*",2,
 "*",6,
 "*",5,
 "*",6,
 "*",2,
 "*",5,
 "*",6,
 "*",5,
 "*",5,
 "*",6,
 "*",		1,
 "*",	1,
 "*",		1,
 "*",	4,
 "*",	3,
 "*",		5,
 "*",	2,
 "*",		1
);
//      免踢
var wudimajia=new Array
(
 "*黑咖啡☆真",
 "*",
 "*",
 "*",
 "*",
 "*"
 );
//      便衣管理
var bianyi = new Array
(
     "*",
     "*",
     "*",
     "*",
     "*"
);
//      隐身人：名称，隐身等级。
var a_hide_user = new Array
(
        "*",     1,
	"*",     1,
	"*",             2,
	"*",             1,
	"*",	         1
);
//      在此修改聊友名字的颜色
var a_usertitle = new Array
(
   0,"RO主持",     "xdguanl.gif",	                "#FF0000","#FFFFFF",	
   1,"聊天站长",	"87383.gif",	                "#FF0880","#FFFFFF",	
   2,"聊天副站",	"369ai.gif",	"#9B439B","#FFFFFF", 	
   3,"RO室主",	"369ai.gif",	                "##FFc2e","",	
   4,"RO副室",	"369ai.gif",	        "#FFc2e","",	
   5,"RO督察",	"em40.gif",	                "#6D61C9","#FFFFFF",	
   6,"RO贵宾",	"h001.gif",	                "#0033FF","#FFFFFF",	
   7,"RO嘉宾",	"jb.gif ",	                "#008FEE","#EEF8FF",	
   8,"RO来宾",	"0005.gif",	                "#008FEE","#EEF8FF",
   9,"RO来宾",	"0005.gif",	                "#41ABF1","#FFFFFF"

);
//      房间走廊,请注意房间号的写法
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
	"",	"",
	"没有加入",	"",
	"没有加入",	"",
	"没有加入",	""
);

//      聊友名过滤

var a_name_filter = new Array

(

        "*挂机外出","棺","臭","鸡","鸭","死","亡","叔","爹","爸","妈","爷","死八公","老婆","老公","流氓","无赖","人渣","肚兜","变态","色狼","射精","傻逼","叫床","破鞋","王八","老豆","表子","瓜","靠你","插你","插死","干你","睾丸","包皮","奶子","做爱","作爱","上床","处女","打炮","乌龟","白痴","骚穴","操你","你娘的","滚开","傻B","靠你","插你","插死","干死","你妈","龟头","奶子","作爱","做爱","聪将","处女","打炮","我操","草你","傻比","署榕","绪榕","白痴","鸡","猪","鸭","坏","逼","婊","?","妣","肏","龟","叼","腚","操","吊","淫","屌","奸","死","贱","尻","屎","屄","嫖","赌","泡妞","色魔","色鬼","贼色","色怪主的爸","激情","恶男","第三者","同性恋","主的爸","死八公","老婆","老公","流氓","星桥","无赖","人渣","肚兜","变态","色狼","射精","傻逼","叫床","破鞋","王八","老豆","表子","靠你","插你","插死","干你","睾丸","包皮","奶子","做爱","作爱","上床","处女","打炮","乌龟","白痴","骚穴","操你","你娘的","滚开","傻B","靠你","插你","插死","干死","你妈","龟头","奶子","作爱","做爱","聪将","处女","打炮","我操","草你","傻比","署榕","绪榕","白痴","鸡","猪","鸭","坏","逼","婊","?","妣","肏","龟","叼","腚","操","吊","淫","屌","奸","死","贱","尻","屎","屄","嫖","赌","泡妞","色魔","色鬼","贼色","色怪","痞"

);



//      房间链接

var a_linkurl = new Array

(
        "",  "",

        "",     "",

        "",     "",

        "爱E 奇迹",     "http://reg.playmu.com",

        "爱E 天使",     "http://www.ieplay.com",

        "动作表情",     "http://www.yinsha.com/chat/emote1.html",
	"",	"",
	"碧聊伴奏",     "http://talk3.silversand.net/midi/hktaiwan.htm", 
        "爱E 传奇",	"http://mir.ieplay.com/",
        "升级IE6",      "http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/CN/ie6setup.exe"

);

//      欢迎

var a_welcome = new Array

(

	"欢迎",	"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",

	"欢迎",	"^_^*《" + room_name + "》*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",

	"欢迎",	"无论您走到天涯海角。《" + room_name + "》永远欢迎您！永远等候您！永远陪伴着您！！！"

);

//      献花

var a_flower = new Array

(

	"醉倒",	"醉倒!★真好听 * ．给我签个名吧！哎..大家不要挤嘛..呦..呦..谁踩俺脚了..哎~~签哪儿呢？..就签俺衣服上吧！要带唇印的哦~保安~我的鞋~",

	"签名",	"■~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~ ～☆★☆～~哇~～！！～~唱的太棒了~～☆★☆～~我听的都醉了~0~",

	"醉了",	"哗啦啦---下雨拉｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、鲜花｀、｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀",

	"迷人",	"¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤好棒哦¤¤¤¤¤好棒哦¤¤¤¤¤¤好棒哦¤¤¤¤¤啪啪啪¤¤¤¤",

	"歌星",	"艺术家！！专业歌星~~~~ぷ╰哗...☆╮ぷ╰☆╮满天星★☆ぷ(((((啪啪)))))ぷ╰ぷ╰签名！签名！)嘿！哥们~~~~别挤嘛 **我的鞋呢？眼镜？ ",

	"玫瑰",	"玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰☆☆╮爆米花╰☆☆╮鱿鱼花╰☆☆╮葱花╰☆☆╮ 礼花～～腰花～～杠上花",

	"歌星",	"☆★．°■ ．☆°*°●★ ．歌星啊！真好听 * *．★☆多美妙的声音啊★*°☆* 太棒了！∴°★★°真的是你唱的吗？我怀疑是歌星唱的啊！！* ~",

	"偶像",	"☆☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～～签名～～～ ∵*☆★∵ ∵*☆★∴☆∵*☆★∴☆∵偶像～～签名～～～ ∵*☆★∴☆∵",

	"百荷",	"★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮野百荷★☆ぷ╰☆╮ぷ",

	"真棒",	"唱的真棒~~╰☆☆╮茉莉花╰☆☆鼓掌（（（PA PA）））玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉╰☆☆╮还有一枝勿忘我－紫风铃",

	"郁金",	":→◥◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★℡↘*郁金香∴→◥◣★☆★◢◤★ ↘ *郁金香∴→◥◣★☆★◢◤★↘",

	"啪啪",	"*^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^* *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*",

	"水仙",	"玫瑰花★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷ╰☆╮ぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮ぷぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮",

	"牡丹",	"* *．°牡丹★·。 *菊花∴ * *夜来香∴°一筐一筐又一筐∴牡丹★·。 *菊花∴ * *夜来香∴°★·君子兰* *．°一筐一筐又一筐∴"

);
//      答谢

var a_lleave = new Array

(

	"答谢",	"〖"+document.inputform.USER.value+"〗衷心感谢"+room_name+"朋友们送的鲜花!!!!!!!!!!",

	"谢谢",	"〖"+document.inputform.USER.value+"〗谢谢"+room_name+"朋友们的掌声和鼓励!!!!!!!!!!",

	"再谢",	"〖"+document.inputform.USER.value+"〗衷心感谢"+room_name+"朋友们的热情!!!!!!!!!!"

);

//      抓你

var a_catch = new Array

(

	"抓你","我抓111111111抓你是疼你111111111抓你是爱你1111111111111111111",

	"抓你","我抓1111111111111111111111疼你才抓你1111111111111111111111111",

	"抓你","我抓111111111我抓11111111111抓你是爱你11111111111111111111111",

	"抓你","我抓11111111我抓1111111111111抓你是疼你1111111111111111111111",

	"抓你","我抓111111111111111抓你没商量111111111111111111不许跑11111111"

);
//      告辞
var a_leave = new Array
(
        "想留", "其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信我 再不用多久,我要你和我今生一起度过... ",
        "后会", "青山不改，绿水常流！不用等到寒月冷日，雪雨风飘时，有缘的你我一定会在《"+room_name+"》再次相会！"
);

//      送行

var a_byebye = new Array

(

	"不舍","真是舍不得你走啊....我会想你的..走好~~~~~有空常来玩，"+ room_link_url +"，别忘了哦~！",

	"走好","走好呀，天黑了，留神脚底下。有时间一定再来《"+ room_name +"》串串门好吗！！"

);

//      要麦

var a_wantmic = new Array

(

	"要麦",	"我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀",

	"唱歌",	"我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999 "

);

//      听见

var a_heart = new Array

(

	"听见",	"听见啦~~~111111111111111听见啦~~~111111111111111111",

	"听见",	"【听见了】【听见了】【听见了】【听见了】【听见了】",

	"听见",	"好清楚▲▲▲听见了▲▲▲▲▲听见了，好清楚▲▲▲▲▲"

);

//	管理专用

var a_admin = new Array

(

	"请您准备",	"您好，欢迎来到《爱一个人好难吗？》,下一个就是您的麦了,请准备好!!!","",

	"拒绝双工",	"您好!十分对不起，我现在不能和您双工，请您谅解。 ","color:#6600ff",

	"已经排麦",	"您好!我已为您排麦,请您耐心待等候!","",

	"请您接麦",	"您好!请您接麦,不好意思,让您久等了,请接好您的麦克风!","",

	"请您关麦",	"朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","",

	"请开语音",	"您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦!!","",

	"文明聊天",	"提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","",

	"打黑警告",	"打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！","",

	"请您换名",	"我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作。","",

	"您麦不好",	"您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢.","",

	"麦无声音",	"您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗?",""

);

//——EMOTE——
var a_emote = new Array
(
	"He你好",		"//hello",
	"Hi你好！",		"//hi",
	"愉快招呼",		"//greet",
	"热烈欢迎",		"//welcome",
	"握手",			"//hand",
        "愉快表情",		"//:)",
	"对他笑笑",		"//:)2",
	"热情拥抱",		"//bearhug",
	"坐在一起",		"//sit",
	"弯腰鞠躬",		"//bow",
	"你太客气",		"//welcome2",
	"生日快乐",		"//birthday",
	"热烈鼓掌",		"//clap",
        "献朵玟瑰",		"//rose",
	"热的牛奶",		"//milk",
	"热茶包子",		"//tea",
	"喝了再说",		"//wine",
	"替您擦汗",		"//sweat",
	"小蘑菇吃",		"//gzxj",
        "哈哈大笑",		"//haha",
	"疑惑看着",		"//?",
	"壮士过奖",		"//cool",
	"做鬼鬼脸",		"//face",
	"你真好",		"//thank",
	"高实在高",		"//gao",
        "☆☆☆",		"",
	"发誓爱你",		"//ai",
	"天真望著",		"//@@",
	"昏倒怀抱",		"//faint",
	"飞了过去",		"//fly",
        "我在等你",		"//waiting",
	"等的花谢",		"//wait3",
	"含宝脉脉",		"//love3",
        "轻轻拥抱",		"//hug",
        "轻轻拍头",		"//pat",
	"依偎怀里",		"//lean",
	"跳入怀里",		"//jump",
	"啵亲一下",		"//kiss",
        "苦水倒出",		"//:(",
        "在肩上哭",		"//cry",
        "☆☆☆",		"",
	"用铁锤敲",		"//hammer",
	"拎耳扔出",		"//tu",
	"拧得发青",		"//pinch",
	"吐你满身",		"//puke",
	"狠揍一顿",		"//punch",
        "☆☆☆",		"",
	"完全同意",		"//agree",
        "懒得理你",		"//angry",
        "我不知道",		"//no",
        "跟我无关",		"//noask",
        "比猪还慢",		"//pig",
        "摇了摇头",		"//shake",
	"愉快微笑",		"//smile",
	"赔礼道歉",		"//sorry",
        "真的好累",		"//tired",
	"猪起来啦",		"//wake",
        "☆☆☆",		"",
	"后会有期",		"//cu",
        "有事隐退",		"//wait",
        "望着背影",		"//cu3",
	"再陪陪俺",		"//stw",
	"请保重！",		"//goodbye",
        "难过要哭",		"//tear",
        "挥挥手。",		"//wave"
);
//——图片——
var a_picture = new Array
(
"欢迎光临",    "",
"欢迎光临!请坐!请上坐!!!",         "003.gif",
"欢迎光临!请坐!请上坐!!!",         "004.gif",
"欢迎光临!请坐!请上坐!!!",         "005.gif",
"欢迎光临!请坐!请上坐!!!",         "006.gif",
"欢迎光临!请坐!请上坐!!!",         "007.gif",
"抛开烦心事!开心一笑^_^",         "008.gif",
"无论天涯海角我们都是好兄弟",     "009.gif",
"快快请坐!先歇一会儿!!",         "010.gif",
"请你喝酒小姐快上菜~~~",         "011.gif",
"来咱碰杯,干了再说...",         "012.gif",
"接着来~~继续干杯",         "013.gif",
"我还没醉啊一会儿接着来~",        "014.gif",
"我还没醉一会儿接着来~~",        "015.gif",
"快请喝茶上好的龙井",         "016.gif",
"请喝咖啡进口的哦",         "017.gif",
"请喝咖啡",         "018.gif",
"请您喝茶",   "",
"请您抽烟",   "", 
"拥抱一个",   "",             
"玫瑰送你",   "",
"蝴蝶情缘",   "",
"邀请歌手",   "",       
"吵死了丫",	"",
"缘分有吗?它该来的时候,怎么都挡不住...", "http://dadao.net/htm/wlwx/2002/0708/3322.jpg",
"相隔十万八千里，也是沐浴在同一片月光下。让这棵心送去我的祝福：快乐每一天！ ","",
"我曾有数不清的梦，每个梦都有你；~@~","",
"砸你的头，看你以后还敢不敢...负手而立，凝望远山,只觉得天下英雄舍我其谁...",  "http://v58v.51.net/tupian/0038.gif",
"您快请坐","http://218.14.151.133/friend/photo/2390313527.gif", 
"我去钓鱼", "http://218.14.151.133/friend/photo/2390313618.gif", 
"夜浓四外静，凭窗人犹醒。虫声透碧纱，孤独不忍听。无意苦争春，入骨岂觉冷。但墨染风知，勿复惊君梦。","http://218.14.151.133/friend/photo/2390315744.gif",
"感恩的心","http://home.91i.net/bjlx/li/pai.gif", 
"爱难仙茶", "http://218.14.151.133/friend/photo/2390314270.jpg", 
"您想看书","http://218.14.151.133/friend/photo/2390313528.gif", 
"宝贝怎么还没有回家丫茶都凉了~呜.........","http://218.14.151.133/friend/photo/2390313526.gif",
"兔宝贝迈着娴熟的猫步轻轻飘飘的踏进仙境","http://218.14.151.133/friend/photo/2390313521.gif", 
"天各一方思念之苦，既无奈又甜蜜的凄美,好歌每当一个静静的听的时候，总让我感动似乎又让我想起了许多的往事总有许多的无奈！","http://218.14.151.133/friend/photo/2390313355.gif", 
"下雨了天气预报：今天白天有点想你，下午转大至暴想，心情将由此降低五度，受此低情绪影响，预计此类天气将持续到见到你为止。","http://218.14.151.133/friend/photo/2390314520.gif",
"宝贝带你去玩","http://218.14.151.133/friend/photo/2390314519.gif",  
"情有独钟，你是唯一",	"http://www.bjflower.com/img/1-586.gif",
"不惹我~撇了撇嘴,眼含泪水:你不记得我 55","http://218.14.151.133/friend/photo/2390313519.gif",  
"今夜让我一个人静静的想“你”", "http://218.14.151.133/friend/photo/2390315578.gif",
"花自飘零水自流 一种相思 两处闲愁 此情无计可消除 才下眉头 却上心头 亲爱的你在忙什么？","http://218.14.151.133/friend/photo/2390313517.gif", 
"蝴蝶情缘",	"http://218.14.151.133/friend/photo/2390315743.gif",
"请你抽烟泰山一只笔要什么???",         "019.gif",
        "来根过隐的雪茄怎么样??",         "020.gif",
        "请你吃真正的热狗^_^",       "021.gif",
        "鼓掌!鼓掌!!热烈鼓掌!!!",         "022.gif",
        "为你请来乐队伴奏",         "023.gif",
        "好听!好听!太好听了",         "024.gif",
        "好听S了赛过歌星",          "025.gif",
        "真好听啊歌星该去该行了",         "026.gif",
        "为你加油~友谊第一",         "027.gif",
        "加油~加油~~比赛第二",      "028.gif",
        "我们相信你是最棒的",       "029.gif",
        "花串!花串!!串花花",         "030.gif",
        "花串!花串!!串花花",         "031.gif",
        "五彩玫瑰",         "032.gif",
        "盛开玫瑰",         "033.gif",
        "爱情玫瑰",         "034.gif",
        "送你玫瑰",         "035.gif",
        "送你芙蓉",         "036.gif",
        "送你荷花",         "037.gif",
        "送你桃花",         "038.gif",
        "再送人民币",       "039.gif",
        "快乐天使",         "040.gif",
        "快乐天使",         "041.gif",
        "为你祈祷",         "042.gif",
        "为你祈祷",         "043.gif",
        "我来也~~",         "044.gif",
        "我来也~~",         "045.gif",
        "你晕我啊~",        "046.gif",
        "别抢我镜头~",      "047.gif",
        "大吃一惊",         "048.gif",
        "我好失望",         "049.gif",
        "非礼勿视",         "050.gif",
        "这你怎么解释",     "051.gif",
        "快说他爸是谁??",   "052.gif",
        "逗你开心",         "053.gif",
        "领你去逛街",       "054.gif",
        "封你的嘴",         "087.gif",
        "我跟你拼命",       "088.gif",
        "我投降了",         "089.gif",
        "跟你和好",         "090.gif",
        "我快跑",           "091.gif",
        "俺把心都给你了",   "112.gif",
        "想你的人是我",     "113.gif",
        "心心相印",         "114.gif",
        "飞鸽传情",         "115.gif",
        "特别的爱",         "116.gif",
        "真心爱你",         "117.gif",
        "嫁给我吧",         "118.gif",
        "我真爱你",         "119.gif",
        "爱你的心",         "120.gif",
        "西西羞羞",         "121.gif",
        "是我伤了你的心",   "122.gif",
        "再见了啊",         "123.gif",
        "生日快乐",         "135.gif",
        "生日快乐",         "141.gif",
        "圣诞节快乐",       "142.gif",
        "恭喜发财",         "143.gif"
);

//      背景色

var a_bkcolor = new Array

( 

        "FFFFFF","FFFF00","FFE000","FFC000","FFA000","FF8000","FF6000","FF4000","FF0000","FFA0FF",

        "FF80FF","FF60FF","FF00FF","E000FF","C000FF","A000FF","8000FF","00FFFF","00E0FF","00C0FF",

        "00A0FF","0080FF","0060FF","0000FF","A0FF00","80FF00","00FF00","00E000","00C000","00A000",

        "fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff","9d9dff","ca8eff",

        "AB82FF","ff88ff","ffaaaa","ccffa6","a6ffcc","b1fee9","adcafe","d5bbff","f1bbff","D752EB",

        "FFFFCC","7BB706","CCCCFF","DBF3B3","CA00C8","FFCC99","CCFFFF","C8D0e8","582424","FFCCFF",

        "4C67D6","00ff00","0033FF","FF3344"

);

//      下面的变量内部使用，请不要删改

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

//      加入新的界面元素

function add_new_element()

{
	write_button("","收藏",0,60,40,20,"","将本室加入收藏","addbookmark(0)");

	write_button("","直达",0,80,40,20,"","将当前的名字加入收藏","addbookmark(1)");

	for (var i = 0 ; i < 6 ; i ++)

	write_newwindow_button(a_link_button[i*2],70 + 70 * i,0,70,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");


        write_button("","疼你抓你",0,40,70,20,"","快速抓人","autosend(a_catch)");

	write_button("","重复",303,80,35,20,"","重复上次的发言","repeat_msg()");

	write_button("","送行",338,80,35,20,"","快速送行","autosend(a_byebye)");

	write_button("","送花",373,60,35,20,"","发送鲜花掌声","autosend(a_flower)");

	write_button("","要麦",373,80,35,20,"","快速要麦","autosend(a_wantmic)");

        write_button("","答谢",408,60,35,20,"","答谢朋友","autosend(a_lleave)");

	write_button("","听见",408,80,35,20,"","快速听见","autosend(a_heart)");

	write_button("","欢迎",443,60,35,20,"","快速欢迎","autosend(a_welcome)");

	write_button("","插图",478,60,35,20,"","输入图片","insert_picture()");

	write_button("","网址",478,80,35,20,"","本室网址\n"+room_link_url,"send_msg('聊天室网址："+room_link_url+"')");
	write_select("picture","图片快递",513,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","动作表情",513,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","爱E 链接",569,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_bkcolor_select("bkcolor","背景色",408,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_singer_form(513,20,select_color);	//	麦序
	write_changeroom_form(0,100,160);	//	换房 	
        write_changeuser_form(161,100,243);	//	换名 	        
        write_make_flower(432,100);	        //	自制献花 	
        if (is_online_manager())

{

	write_button("","退出管理",0,0,70,20,"","快速下管","xiaguan()");

        write_button("","准备",443,80,35,20,"","准备接麦","send_msg('您好!下一位到您接麦了,请您做好准备~~!谢谢! ')");

        write_button("","自动语句",640,0,70,20,"","间隔30秒自动发送","autofff()");
        write_button("","递出麦克",640,20,70,20,"","把麦克风递给对象","document.screenForm.MIC.click()"); 

        write_button("","收回麦克",640,40,70,20,"","麦克收给自己","document.screenForm.GETMIC.onclick()"); 

        write_button("","快踢卡名",640,60,70,20,"","快踢卡名","quick_kick()");

	write_button("switchkick","启用踢人",640,80,70,20,"","启用踢人功能","switch_kick()");

        write_select_ex("playadmin","管理专用",569,60,72,select_color,a_admin,"send_msg");

//	自动护麦及收麦

if (document.screenForm.LOUT)

	document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=启用护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");

	else

	document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=启用护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");

	document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=收麦 title='将麦克递给自己' onclick=\"keep_mic_fnc('"+a_user+"');\">");

}

	else

{

	write_button("","进入管理",0,0,70,20,"","快速上管","guan()");

	write_button("autospack","自动",443,80,35,20,"","自动发言","auto_spack()");
        write_button("gongkai","公开悄悄Ｘ",110,80,65,20,"","公开/隐藏悄悄话","gongkaiqq()");
        write_button("jieshou","接受悄悄√",175,80,64,20,"","接受/拒绝悄悄话","jieshouqq()");
        write_button("Anottces","声音提示Ｘ",239,80,64,20,"","控制是否设置声音提示","Anottce()");
	write_select("linkroom","房间走廊",569,60,72,select_color,a_roomlink,"gotolinkroom(this)");
        write_button("reauto","自动回复",198,60,105,20,"","请输入您的自动回复","reauto()");

}
}
//      聊友在线列表
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
        HTMLstr += "<font color=#FF0099>隐</font>";
        if(lists[2]==1)
	HTMLstr += ("<font face=\"Wingdings\" color="+voice_normal_color+">(</font>");
        if(lists[2]==2)
        HTMLstr += ("<img src=http://www.cnjwedu.net/~lxr/y2.gif border=0>");
        if(lists[3]==1)
        HTMLstr += ("<img src=http://202.96.140.88/eye.gif width=20 height=10 border=0>");
        HTMLstr += "</div>";
}
        parent.r.listhtml.innerHTML = HTMLstr;
        parent.r.usercount.innerText = user_array.length;	
}

//      初始化

function init_system()

{

	var i;

	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");

	a_type = is_online_manager()?0:get_user_type(a_user);

	lastchoice = -1;

	bleave_system = 1;

	login_succeed = true;

//	过滤用户名

user_name_filter();

	m_input_bkimage = paste_path(input_bkimage,document.body.background);

	m_userlist_bkimage = paste_path(userlist_bkimage,m_input_bkimage);

	m_voice_bkimage = paste_path(voice_bkimage,m_userlist_bkimage);

	m_div_screen_bkimage = paste_path(div_screen_bkimage,"");

//	处理按钮背景图片地址

	if (button_bk_image == 1)

	for (i = 1 ; i < a_btn_pic.length ; i+=2)

	a_btn_pic[i] = paste_path(a_btn_pic[i],"");

//	处理聊友名前面的图标地址

	for (i = 0 ; i < 10 ; i ++)

	a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");

//	错误处理

	window.onerror = new Function("return true");

//	离开

	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'所有人\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');

//	重新聊友列表

	parent.write_new=writelist;

//	重写语音区代码

	parent.writecv = (auto_open_mic == 1)?writev:writecv;

//	重写分屏区

	parent.writeu1 = writeu1;

//	弹出窗口

	open_startup_info_window();

//	自动开图音、自动分屏

	setTimeout("auto_open_ai_fnc()",3000);

//	如果是隐身，则自动设置悄悄话

	if (is_hidden_user(a_user) < 10)

	document.inputform.ws.checked=true;

//	报到信息

	write_loginmsg();

}

//      重新设置原有界面元素的样式

function reset_elements_style()

{

	if (full_screen_bkimage == 1)

{

	document.write('<body bgproperties=fixed topmargin=19 leftmargin=40 style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');

	if (auto_hide_scrollbar == 1)

	document.write(' onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'');

	document.write('><style type=text/css>');
}

	else

{

	document.write('<body bgproperties=fixed topmargin=19 leftmargin=40><style type=text/css>');

	document.write("BODY{background:"+((input_bkcolor != "")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
}

	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');

	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
        document.write('BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#B0E8F8;scrollbar-face-Color:#B0E8F8;scrollbar-3dlight-Color:#B0E8F8;scrollbar-darkshadow-color:#d69284;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#008000;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');

	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');

	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>');

	document.write('<SCRIPT>');

	document.write("function Click(){alert('欢迎您光临《"+room_name+"》语音聊天室!请使用 Ctrl+C 复制、 Ctrl+V 粘贴! 谢谢!!!  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");

	document.write('</script>');
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

	if (obj.value == "发送")

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

	var aOption = new Option("咖啡", "#993300"); 

	aOption.style.color= "#993300";

	document.inputform.color.add(aOption); 

	aOption = new Option("紫铜", "#990099"); 

	aOption.style.color= "#990099";

	document.inputform.color.add(aOption);

	document.all.tags("TABLE")[0].cells(2).innerHTML="&nbsp;";

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

//      重写聊友列表区

function writelistbase()

{

	if(parent.r.document==null)

	return;

	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";

	HTMLstr += "<style type=text/css><!--body {font-size: 9pt;color:#000000} td {font-size: 9pt;color:#000000} ";

	HTMLstr += "a:visited {color:#00FFFF; text-decoration: none} ";

	HTMLstr += "a:link {color:#CC3366; text-decoration: none} ";

	HTMLstr += "a:hover {color:#CC0033; text-decoration: none} ";

        HTMLstr += ('BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#B0E8F8;scrollbar-face-Color:#B0E8F8;scrollbar-3dlight-Color:#B0E8F8;scrollbar-darkshadow-color:#d69284;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#008000;}');
	if (full_screen_bkimage == 1)

{

	HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:0px;\"";

	if (auto_hide_scrollbar == 1)

	HTMLstr += " onmousemove=\"if (document.body.clientWidth-event.x<=0) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'";
}

	else

{

	HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
	HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
}

        HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#cc00ff><big><B>  "+room_name+"</B></big></font>"));
        HTMLstr += ('<SCRIPT>');
        HTMLstr += ("function Click(){alert('配置制作：*无法考证)\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
        HTMLstr += ('</script>');
	HTMLstr += "<br><a title='当前聊天室在线人数'><font color=#027F17> 当前爱E有 </font><font color=red><B id='usercount'>0</B></font><font color=#027F17> 位朋友</font></a><br>";
        HTMLstr += "<a title='在线朋友名单'><font color=#027F17> <b>在线列表:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">[所有人]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
        HTMLstr += "<br><br><a target=_blank href='http://515029.7sn.com/'title='脚本设计：*无法考证'><img src=http://mzyn.9523.com/mzyn/cvc.gif border=0><br></a><br><font color=#FF0000 >配置：*黑咖啡☆真<br>QQ：566764</font></body></html>";
        HTMLstr += userlist_bottom_html;
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.close();
}
//      处理图片地址

function paste_path(imagename,defaultimage)

{

	imagename = trim(imagename);

	return  (imagename != "")?((imagename.substr(0,7).toLowerCase() != "http://")?config_place+imagename:imagename):defaultimage;

}

//      返回聊友类型

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

//      是否是隐身用户

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

//      聊友名过滤

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

			alert('您好['+a_user+']！\n万分抱歉，您现在所用的名字中含有本房间保留文字！\n我们请您换用其它名字进入本房间，愿您在此开心愉快！');

			parent.close();

			return;

		}



	if(only_registr_user == 1 && a_user.charAt(0)!='*')

	{

		login_succeed = false;

		document.controlForm.LEAVEIT.onclick();

		alert('您好['+a_user+']！\n万分抱歉，本房间现在只允许使用注册名进入！\n请用您的注册名进入本房间，愿您在此开心愉快！');

		parent.close();

	}



	if (only_chinese_name == 1 && is_numeric(a_user))

	{

		login_succeed = false;

		document.controlForm.LEAVEIT.onclick();

		alert('您好['+a_user+']！\n万分抱歉，本房间现在只允许使用汉字名进入！\n请您换用汉字名进入本房间，愿您在此开心愉快！');

		parent.close();

	}

}

//      打开弹出窗口

function open_startup_info_window()

{

	if (url_popup_window != "")

	setTimeout('open_new_url(url_popup_window,"","")',1000);

}

//      是否是在线管理

function is_online_manager()

{

	return (document.screenForm.KICK);

}

//      报到信息

function write_loginmsg()

{

	if (!login_succeed)	return;

	if (is_hidden_user(a_user) < 10) return;

	var color,msg;

//	报到信息文字色在此修改

	if (is_online_manager())

	color = 11,	msg = msg_admin;

	else if ((this.location.toString().search("BOTTOMADM"))!=-1)

	color = 15,	msg = msg_quitadmin;

	else

	color = 18,	msg = msg_login;

	document.inputform.bgcolor.value="#FFFFCC";

	document.inputform.color.options[color].selected=true;

	send_msg(msg);

//	默认的发言文字色和背景色

	document.inputform.color.options[6].selected=true;

	document.inputform.bgcolor.value="CCCCFF";

}

//      自动发送 array 中的一句话

function autosend(array)

{

	lastchoice ++;

	if (lastchoice >= (array.length / 2))

	lastchoice = 0;

	var msg = array[lastchoice * 2 + 1];

	if (array == a_flower)

	msg += "【"+a_user+" 专送】";

	send_msg(msg);

}

//      重新设定按钮样式

function reset_btn_style(btn,width)

{

	var style = "width:"+width+";height:20;";

	if (button_bk_image == 1)

	style += "background-image:url("+get_btn_pic(width)+");border:1px;";

	else if (button_bk_color != "")

	style += "background:"+button_bk_color+";";

	btn.style.cssText = style;

}

//      取得宽度最适合的按钮图片

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

//      按钮的样式

function write_button_style(name,left,top,width,height,color,title,fontface)

{

	var HTMLstr = (name != "")?('<BUTTON name="'+ name +'"'):"<BUTTON";

	HTMLstr += (' style="POSITION:absolute;LEFT:'+ left +'px;TOP:'+ top +'px;width:'+ width +'px;HEIGHT='+ height +';');

	HTMLstr += ((color != "")?('color:' + color + ';'):"");

	HTMLstr += ((button_bk_image == 1)?("background-image:url("+get_btn_pic(width)+");border:1px;"):((button_bk_color != "")?("background:"+button_bk_color+";"):""));

	HTMLstr += ((fontface == "")?('font-family:宋体,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));

	HTMLstr += (' title="'+ title +'"');

	document.write(HTMLstr);

}

//      打开新的URL

function open_new_url(theURL,winName,features)

{

	if (theURL != "")

	window.open(theURL,winName,features);

}

//      加入打开新URL的按钮

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)

{

	write_button_style("",left,top,width,height,color,title,"");

	if (theURL == "")

	document.write('disabled=true ');

	document.write('onclick=open_new_url("'+ theURL +'","'+ winName +'","'+ features +'")>'+ value +'</button>');

}

//      加入执行一个函数的按钮

function write_button(name,value,left,top,width,height,color,title,action)

{

	write_button_style(name,left,top,width,height,color,title,"");

	document.write(' onclick="' + action + '">'+ value +'</button>');

}

//      加入收藏

function addbookmark(type)

{

	var bookmarkurl;

	var bookmarktitle;

	switch (type)

	{

	case 0:

	default:

		bookmarkurl = room_link_url;

		bookmarktitle="碧聊 -《"+room_name+"》";

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

		bookmarktitle="碧聊 -《"+room_name+"》- ["+a_user+"]";

	break;

	}

	if (document.all)

	window.external.AddFavorite(bookmarkurl,bookmarktitle)

}

//      上管

function guan()

{

	if (!is_online_manager())

	bleave_system = 0,send_msg("//ADMIN " + default_admin_pass);

}

//      下管

function xiaguan()

{

	if (is_online_manager())

	bleave_system = 0,send_msg("//ADMIN quit");

}

//      重复上次的发言

function repeat_msg()

{

	if(document.inputform.SAYS.value!="")

	document.inputform.msg.value = document.inputform.SAYS.value + " 〖重复〗";

	document.inputform.msg.focus();

}

//      禁用踢人等

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

	reset_btn_style(document.screenForm.MIC,isdisable?70:35);

	reset_btn_style(document.screenForm.KEEPMIC,isdisable?70:35);

	reset_btn_style(document.screenForm.GETMIC,isdisable?35:17);

	document.screenForm.GETMIC.value=isdisable?"收麦":"收";

}

}

//      切换踢人功能

function switch_kick()

{

	if (switchkick.value=="启用踢人")

{

	disable_KICK(false);

	switchkick.value="禁用踢人";

	switchkick.title="禁用踢人功能";

}

	else

{

	disable_KICK(true);

	switchkick.value="启用踢人";

	switchkick.title="启用踢人功能";

}

	document.inputform.msg.focus();

}

//      增强型列表框的响应函数

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

//      增强型列表框（可以执行函数）

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

//      背景色

function write_bkcolor_select(name,title,left,top,width,color,array,action)

{

	document.write('<SELECT NAME="' + name + '" style=width:' + width + 'px;');

	document.write('LEFT:' + left + 'px;TOP:' + top + 'px;POSITION:absolute onchange="' +action+ '">');

	document.write('<OPTION selected style=color:' + color + ' VALUE="">'+title+'</OPTION>');

	document.write('<OPTION VALUE="NONE">无色</OPTION>')



	var i = 0;

	while (i < array.length)

	{

		document.write('<option style="BACKGROUND-COLOR:'+array[i]+'; COLOR:'+array[i]+'" value="'+array[i]+'">   </OPTION>');

		i++;

	}

	document.write('</SELECT>');

};

//      列表框

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

//      发送列表框中的话

function send_selection_msg(selection)

{

	if(selection.value!="")

	send_msg(selection.value);

	selection.options[0].selected=true;

}

//      发言

function send_msg(msg)

{

	if(msg != "")

{

	inputform.msg.value=msg;

	if (checksay())

	document.inputform.submit();

}

}

//      插入图片

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

		alert('请先选择图音!');

		selection.options[0].selected=true;

	}

}

//      是否是数字

function is_digit(str)

{

	var digitstr = "0123456789";

	for(var i=0;i<str.length;i++)

		if (digitstr.indexOf(str.charAt(i)) == -1)

			return false;

	return true;

}

//      房间的类型——大观园、特约或江苏分站的房间

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

//      打开并进入一个新的房间

function gotoroom(roomid,user,pass)

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

//      进入selection中选中的新房间

function gotolinkroom(selection)

{

	if(selection.value!="")

{

	gotoroom(selection.value,a_user,a_pass);

	selection.options[0].selected=true;

}

}

//      改变发言背景色

function changebkcolor(selection)

{

	if(selection.value!="")

	{

		document.inputform.bgcolor.value=selection.value;

		selection.options[0].selected=true;

	}

}

//      打开selection选中的链接地址

function gotolinkurl(selection)

{

	if(selection.value!="")

		open_new_url(selection.value,"","");

	selection.options[0].selected=true;

}

//      递表

function keep_mic_fnc(user)

{

	var cur_user=document.inputform.WHOTO.value;

	parent.cs(user);

	document.screenForm.MIC.click();

	parent.cs(cur_user);

}

//      结束自动护麦

function end_keep_mic()

{

	if (keep_mic_user!="" && keep_mic_user!=document.inputform.WHOTO.value)

{

	window.clearInterval(timer_id);

	document.screenForm.KEEPMIC.value = "护麦";

	document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";

	keep_mic_user = "";

}

}

//      自动护表

function auto_keep_mic()

{

	window.clearInterval(timer_id);

	if(keep_mic_user == "" && document.inputform.WHOTO.value != "所有人")

{

	document.screenForm.KEEPMIC.value = "护麦";

	document.screenForm.KEEPMIC.title = "护麦中";

	keep_mic_user=document.inputform.WHOTO.value;

	keep_mic_fnc(keep_mic_user);

	timer_id = window.setInterval("keep_mic_fnc('"+keep_mic_user+"')", 6000);

}

	else

{

	document.screenForm.KEEPMIC.value = "护麦";

	document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";

	keep_mic_user = "";

}

}

//      自动发言处理函数

function auto_spack_fnc()

{

	auto_spack_input(false);

	auto_spack_count ++;

	var msg = msg_auto_spack + "【自动发言 "+auto_spack_count+"】";

	send_msg(msg);

	auto_spack_input(true);

}

//      切换自动发言功能

function auto_spack()

{

	window.clearInterval(timer_id);

	if (autospack.value == "自动")

	{

		var msg = prompt('请输入自动发言内容(自动发言时间间隔为一分钟):',msg_auto_spack);

		if (msg=="" || msg==null)

			return;

		else

			msg_auto_spack = msg;

		auto_spack_count = 0;

		autospack.value = "停止";

		autospack.title = "停止自动发言"

		parent.cs("所有人");

		auto_spack_fnc();

		timer_id = window.setInterval("auto_spack_fnc()", 60000);

		auto_spack_input(true);

	}

	else

	{

		autospack.value = "自动";

		autospack.title = "自动发言"

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

//      准备发言

function prepare()

{

	if(document.singerform.singer.selectedIndex > 0)

{

	inputform.msg.value="谢谢您的耐心等待，请准备接麦~~";

	parent.cs(singerform.singer.value);

}

	else

	parent.cs("所有人");

	inputform.msg.focus();

}

//      列麦序

function listsingers(type)

{

	if (singerform.singer.length == 1 && type == 0)

	return;

	var i = 1;

	var singerstr = '麦序:→';

	var singerstr1 = '→续麦序:';

	while (i < singerform.singer.length)

{

	if (singerstr.length + singerform.singer.options[i].value.length >=96)

	singerstr1 = singerstr1 + '[' + singerform.singer.options[i].value + ']';

	else

	singerstr = singerstr + '[' + singerform.singer.options[i].value + ']';

	i++;

}

	inputform.msg.value=singerstr;

	if (singerstr1 != '→续麦序:')

{

	if (checksay())

	document.inputform.submit();

	inputform.msg.value=singerstr1;

}

	inputform.msg.focus();

}

//      删除一个麦序

function remove_singer()

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

//      聊友是否存在

function singer_exist(user)

{

	if (multi_singer_list == 1)

	return false;

	for(var i=0;i<singerform.singer.options.length; i++)

	if(user==singerform.singer.options[i].value)

	return true;

	return false;

}

//      加到麦序最后

function addsinger()

{

	if(inputform.WHOTO.value!='所有人' && singer_exist(inputform.WHOTO.value)==false)

	{

		newoption=document.createElement('option');

		newoption.value=inputform.WHOTO.value;

		newoption.text=inputform.WHOTO.value;

		singerform.singer.options.add(newoption);

	}

	listsingers(0);

}

//      插入麦序

function insertsinger()

{

	if(inputform.WHOTO.value!='所有人' && singer_exist(inputform.WHOTO.value)==false)

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

//      批量加入麦序

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

//      开关麦序管理

function disablesingermanage(isdisable)


{

	singerform.addtolist.disabled=isdisable;

	singerform.tolist.disabled=isdisable;

	singerform.removefromlist.disabled=isdisable;

	singerform.addlist.disabled=isdisable;

	singerform.listing.disabled=isdisable;

	singerform.singer.disabled=isdisable;

	if (isdisable)

	singerform.singmanage.value = "开";

	else

	singerform.singmanage.value = "关";

}

//      切换麦序管理

function singermanage()

{

	if(singerform.singmanage.value == "开")

	disablesingermanage(false);

	else

	disablesingermanage(true);

}

//      加入麦序管理

function write_singer_form(left,top,color)

{

	var ll,bw;

	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');

	document.write('<FORM name="singerform">');

	write_button("singmanage","开",1,0,19,20,"","打开或关闭排麦功能","singermanage()");

	write_button("addtolist","增",20,0,18,20,"","加入名字到麦序末尾","addsinger()");

	write_button("tolist","插",	38,0,18,20,"","插入名字到选定人之前","insertsinger()");

	write_button("removefromlist","删",56,0,18,20,"","从名单中删除所选择的名字","remove_singer()");

	write_button("addlist","批",74,0,18,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");

	write_button("listing","麦序",92,0,35,20,"","公布名单排序","listsingers(0)");

	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');

	document.write(';left:0px;top:20px;width:128px">');

	document.write('<option selected style=color:'+color+' VALUE="" >¤-爱e-**-麦序-¤</option>');

	document.write('</SELECT></form></DIV>');

	disablesingermanage(true);

}

//      是否是合法的聊友名

function validname(username)

{

	if (username.length < 1)

	return false;

	if(username.search("#") != -1 || username.search('&') != -1)

{

	alert("名字中不能包含特殊字符: # & ");

	return false;

}

	return true;

}
//      加入换房间功能

function write_changeroom_form(left,top,width)

{

	var w = width;

	if (w < 80)	w = 80;

	var l = w - 35;

	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');

	document.write('<form name = "change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="新开房间,输入房间号\n大观园:123456\n特约房间:t1234\n江苏分站:1234.js" name="roomid">');

	write_button("","快速换房",90,0,70,20,"","进其它房间","new_room()");

	document.writeln('</form></DIV>');

}

//      新开房间

function new_room()

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

	roomurl = prompt("请输入 "+roomid+" 房间的IP(202.96.140.XX)和端口:","202.96.140.66:" + roomid.substr(1));

	break;

	case 3:

	roomurl = roomid;

	break;

	default:

	alert("请输入一个合法的房间号码！！");

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
//      换名

function rename()

{

	if(validname(document.changeuserform.USER.value))

	document.changeuserform.submit();

}

//      加入换名功能

function write_changeuser_form(left,top,width)

{

	var w = width;

	if (w < 100) w = 100;

	var wn =( w - 30 ) / 2;

	var wp = w - wn - 35;

	var l = w - 35;

	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>');

	document.write('<form action="http://'+parent.window.location.hostname + ':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">');

	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="输入新名字" name="USER">');

	document.write('<input type="password"  style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="输入密码" name="PASS">');

	write_button("","快速换名",200,0,70,20,"","换个名字进来","rename()");

	document.write('</form></DIV>');

}
//      加入自制献花功能

function write_make_flower(left,top)

{

	document.write('<DIV align=left style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');

	document.write("<form name = \"custom_flower_form\"><font style=color:#0000FF></font>");

	document.write('<input type="text" title="这里是献花的名字" name="fname" style="width:70px" maxlength="8" value = "花的名字">');

	document.write("<font style=color:#0000FF></font>");

	document.write('<input type="text" title="打上祝福的词语" name="ftext" style="width:70px" maxlength="8" value = "祝福词语">');

	write_button("","自制发送",139,0,70,20,"","发送祝词","make_custom_flower()");

	document.write('<input type="hidden" value="0" name="resend">');

	document.write('</form></DIV>')

}

//      自制献花

function make_custom_flower()

{

	var newflower,msg;

	if (custom_flower_form.resend.value == "0")

{

	newflower = '★:' + custom_flower_form.fname.value;

	newflower += ':★╰☆╮:';

	newflower += custom_flower_form.ftext.value;

	newflower += ':╰☆╮';

	custom_flower_form.resend.value = "1";

}

	else

{

	newflower = '★:' + custom_flower_form.ftext.value + ':★╰☆╮:' + custom_flower_form.fname.value + ':╰☆╮';

	custom_flower_form.resend.value = "0";

}



	msg = newflower + "【"+a_user+"】献给【"+inputform.WHOTO.value+"】";

	while (msg.length + newflower.length < 100)

	msg = newflower + msg;

	send_msg(msg);

}
//      打开语音后的界面

function writev()

{

	var HTMLstr;

	if (full_screen_bkimage == 1 && (ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion()) >= "5.0")

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

	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");	

	HTMLstr += '</style><form name=f><center><input type=button name=v2vv value=双工对话 onclick=\'parent.d.v2v();\'>';

	HTMLstr += "<input type=button name=closev value=关闭语音 onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
        HTMLstr += ('<SCRIPT>');

        HTMLstr += ("function Click(){alert('欢迎您光临《"+room_name+"》语音聊天室!请使用 Ctrl+C 复制、 Ctrl+V 粘贴! 谢谢!!!  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");

        HTMLstr += ('</script>');

	parent.v.document.open();

	parent.v.document.write(HTMLstr);

	parent.v.document.close();

	parent.voiceframe.rows="*,30";

	reset_btn_style(parent.v.f.v2vv,70);

	reset_btn_style(parent.v.f.closev,70);

}

//      未开语音时的界面

function writecv()

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

	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");

	HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=打开语音 onclick=\"parent.d.writev();\">";

	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#FF00FF; text-decoration: none'>说明&测试</span></a></body></html>";

        HTMLstr += ('<SCRIPT>');

        HTMLstr += ("function Click(){alert('欢迎您光临《"+room_name+"》语音聊天室!请使用 Ctrl+C 复制、 Ctrl+V 粘贴! 谢谢!!!  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");

        HTMLstr += ('</script>');

	parent.voiceframe.rows="0,*";

	parent.v.document.open();

	parent.v.document.write(HTMLstr);

	parent.v.document.close();

	reset_btn_style(parent.v.closev,70);

}

//      双工处理

function v2v()

{

	if(inputform.WHOTO.value=='所有人')	return;

	if (black_roomname == "")

{

	if(parent.v.document.f.v2vv.value == "双工对话")

{

	parent.v.document.f.v2vv.value="退出双工";

	parent.d.v2vForm.TOONE.value=1;

	parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;

	parent.d.v2vForm.submit();

}

	else

{

	parent.v.document.f.v2vv.value="双工对话";

	parent.d.v2vForm.TOONE.value=0;

	parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;

	parent.d.v2vForm.submit();

}

}

	else

	if(confirm('\n万分对不起，由于此房间容量有限，故此房\n间不允许双工！！！\n\n如果您想和您朋友双工聊天，我门请您去更清\n净的房间“'+black_roomname+'”。\n\n如果想去那里请从通道走\n\n谢谢您的合作！！！'))

{

	send_msg('有事情找您谈，我去“'+black_roomname+'”等您了，您可以选择我的名字，然后点全双工，就可去那里了，我在那里等您呢。快来啊，别让我久等！！！');

	gotoroom(black_roomnumb,a_user,a_pass);

}

}

//      是否是数字或字母

function is_numeric(str)

{

	for(var j=0;j<str.length;j++)

{

	if(str.charCodeAt(j)>=256)

	return false;

}

	return true;

}

//      自动打开图音、自动分屏

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

	if (disable_notice == 1 && document.screenForm.NOTICE)

{

	document.inputform.msg.onblur=new Function("return false");

	document.screenForm.NOTICE.checked=false;

	document.aicontrolForm.NOTICE.value='off';

}

	if (auto_open_ai == 1 || auto_open_div == 1 || disable_notice == 1)

	document.aicontrolForm.submit();

}

//      检验发言

function checksay()

{

	str1=document.inputform.msg.value.toString();

	if(str1.length>=100)

{

	alert('发言请勿太长(不超过100字)，谢谢！');

	document.inputform.msg.value ='';

	document.inputform.msg.focus();

	return false;

}

	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))

{

	alert('发言内容不能为空');

	document.inputform.msg.focus();

	return false;

}

	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))

{

	alert('发言不能重复');

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

//      插图

function insert_picture()

{

	var imgurl = "";

	var tmpurl;

	imgurl = prompt('请输入图片的URL:','');

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

	imgurl = prompt("特别提示：本室只可插入图片！\n请输入文件扩展名为'gif'、'jpg'之类的URL:","");

	else if (imgurl.indexOf("?") != -1 || imgurl.indexOf("(") != -1)

	imgurl = prompt("特别提示：本室只可插入图片！且名称中不能有“?”和“(”！\n请输入文件扩展名为'gif'、'jpg'之类的URL:","");

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

//      重写分屏区

function writeu1()

{

	if(this.u1.document==null)

	return;

	this.u1.document.open();
	this.u1.document.write('<SCRIPT>');

	this.u1.document.write("function Click(){alert('欢迎您光临《"+room_name+"》语音聊天室!请使用 Ctrl+C 复制、 Ctrl+V 粘贴! 谢谢!!!  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");

	this.u1.document.write('</script>');

	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">BODY{FONT-FAMILY: 宋体; FONT-SIZE: 9pt; CURSOR: url(''); p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if (full_screen_bkimage == 1)

{

	this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");

	if (auto_hide_scrollbar == 1)

	this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
	this.u1.document.write("><p class=\"p9\" align=\"left\">");

        this.u1.document.write('<STYLE>BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#B0E8F8;scrollbar-face-Color:#B0E8F8;scrollbar-3dlight-Color:#B0E8F8;scrollbar-darkshadow-color:#d69284;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#008000;}</style>');
}

	else

{

	this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
	this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");

}

}

//      自动登录后台管理

function auto_log_func()

{

	setTimeout("login_form.submit();",20000);

}

//      允许后台管理

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

	login_form.submit();

	autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);

}

}

function quick_kick()

{

	if (!is_online_manager())

	return;



//	获取卡名字符

var km_name_lead = document.inputform.WHOTO.value;



	km_name_lead = prompt("请输入卡名者名字中共有的字符串：",km_name_lead);

	if (km_name_lead==null || km_name_lead=="")

	return;

	var user_array= new Array();

//	建议卡名者数组

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

	switchkick.value="禁踢";

	switchkick.title="禁用踢人功能";

	var cur_user=document.inputform.WHOTO.value;

	for(i=0;i<user_array.length;i++)

{

	if (confirm("是否踢掉〖 " + user_array[i] + " 〗？ ("+(i+1)+"/"+user_array.length+")"))

{

	parent.cs(user_array[i]);

	document.screenForm.KICK.click();

}

}

	parent.cs(cur_user);

}

//      脏话过滤

function CloseWindow(){parent.document.parentWindow.close();}

function checksay( ){

  str1=document.inputform.msg.value.toString();

  if(str1.length>=100){

  alert('万分抱歉 ! 发言请勿太长(不超过100字)，谢谢！');

  document.inputform.msg.focus();

  return false;

}

  if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value=='')){

  alert('万分抱歉 ! 发言内容不能为空');

  document.inputform.msg.focus();

  return false;

}

  if((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value=='')){

  alert('万分抱歉 ! 发言不能重复');

  document.inputform.msg.focus();

  return false;

}

  var tmpmsg=document.inputform.msg.value;

  var badword = new Array("wang ba","园梦","园梦-","绿州","恶心","419756","勾引","死人","ta ma de","§聚寶閣","大屁股","射精","傻逼","叫床","去死","破鞋","破 鞋","吃屎","我操","色情狂","变态","色情","操你","干死你","王八","贱人","婊子","表子","婊","婊·子","婊$子","靠你","插你","插死","干死","日死","鸡巴","睾丸","包皮","奶子","尻","做爱","鸡八","处女","打炮","叼你","草你","狗屎","鸡·巴","大便","操 你 妈","死公","fuck","cao","逼","我 操","老 逼","狗男女","叫床","叫春","泡妹","靠","我靠");

  for (var i=0;i<badword.length;i++){

//if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){

  if (tmpmsg.indexOf(badword[i])!=-1){

  inputform.ws.checked=false;

  inputform.ws.checked=false;

  document.inputform.msg.value='这里的警察真厉害，我只说了一句脏话网络警察就从天而降，把我扔出了爱e~~~';              

  document.inputform.color.value="ff00ff";

  login_succeed = false;

  document.controlForm.LEAVEIT.onclick();

  alert('您好['+a_user+']!!\n\n万分抱歉，您现在所发的话中含有不雅的文字！你已被请出聊天室      \n\n如你再次进入，请你注意不要说脏话，愿您在此开心愉快!!!');		

  parent.close();

  setTimeout('CloseWindow()',3000);

}

}

  document.inputform.SAYS.value =document.inputform.msg.value;

  document.inputform.msg.value ='';

  document.inputform.IMG.value =document.inputform.IMGURL.value;

  document.inputform.IMGURL.value='';

  dx=document.inputform.WHOTO.value;

  document.inputform.msg.focus();

  return(true);

}
//      刷卡
var roomnameK="爱e奇迹";

var admin=0;var time=0;

function change()

{

        time++;if(document.saveform.show.value=="管理记录")document.saveform.show.value="上管刷卡";else document.saveform.show.value="管理记录";if((time==600)&& (admin==1))savetime();if((time==600)&& (admin==0))time=0;

} 

        function savetime()

{

        if(admin==1)window.open("","save","top=100,left=100,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=150,height=100");document.saveform.timesave.value=time;time=0;document.saveform.submit();

}

        document.write('<DIV align=center style=width:0px;LEFT:0px;TOP:20px;POSITION:absolute>');

        document.write('<form name=saveform action=http://www.fs169.net/chat/savetime.php method=post target=save style="MARGIN: 0px">');

        document.write('<input type="button" name=show value="上管刷卡" style="width:70px;height:20;background-image:url(http://vip.7sn.com/515029/wyx/tup/04.gif);border:1px" onclick=window.open("http://www.fs169.net/chat/admin.php?room='+roomnameK+'")>');

        document.write('<input type="hidden" name=roomname value="'+roomnameK+'">');

        document.write('<input type="hidden" name=timesave>');

        document.write('<input type=hidden name=chatnick value='+document.inputform.USER.value+'>');

        document.write('<input type="hidden" name=timer value=0 onclick=savetime()>');

        document.write('</form>');

        if(document.screenForm.KICK)

{ 

        admin=1;setTimeout("document.saveform.timer.click();",500);

}

        setInterval('change()', 1000);

        document.write('</DIV>');
//      声音提示

function Anottce()
{

	if (Anottces.value=="声音提示√")
{

	document.screenForm.NOTICE.checked=false;

	document.aicontrolForm.NOTICE.value='off';

	Anottces.value="声音提示Ｘ";
}
        else if(Anottces.value=="声音提示Ｘ")
{

	document.screenForm.NOTICE.checked=true;

	document.aicontrolForm.NOTICE.value='on';

	Anottces.value="声音提示√"; 
}

	document.aicontrolForm.submit();

}

//      公开悄悄

function gongkaiqq()
{

	if (gongkai.value=="公开悄悄Ｘ")
{

	document.screenForm.SHOW.checked=true;

	document.aicontrolForm.SHOW.value='on';

	gongkai.value="公开悄悄√";

}       else if(gongkai.value=="公开悄悄√")
{

	document.screenForm.SHOW.checked=false;

	document.aicontrolForm.SHOW.value='off';

	gongkai.value="公开悄悄Ｘ"; 
}

	document.aicontrolForm.submit();

}

//      接受悄悄

function jieshouqq()
{

	if (jieshou.value=="接受悄悄√")
{

	document.screenForm.EAR.checked=false;

	document.aicontrolForm.EAR.value='off';

	jieshou.value="接受悄悄Ｘ";

}       
        else if(jieshou.value=="接受悄悄Ｘ")
{

	document.screenForm.EAR.checked=true;

	document.aicontrolForm.EAR.value='on';

	jieshou.value="接受悄悄√"; 
}

	document.aicontrolForm.submit();

}


//      免踢属性设置

function buketi()

{

        for (i=0;i<wudimajia.length;i++)

{

        if (document.inputform.WHOTO.value==wudimajia[i])



{
        alert('想动我?? 万分抱歉, 你还不够级哦, 慢慢熬吧, 嘎嘎嘎~~~~~~~~~~');

        return(false);

}

}

        return(true);

}

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

        break; 
}

}
//      自动回复开始
        var user_b;
        var reautoyn=0;
        var reautowordb="您好，我不在电脑边，这里可留言，请在哔一声后留下你要说的话，我会很快和你联系，~（2分钟后）~我就不哔，我急S你！呵呵！";
        var reautoword=reautowordb;
//      自动回复开始
function reauto()
{
        if(!document.inputform.divs.checked)
{
        alert("请先打开分屏,保证您回来时候能看到朋友的留言!!");
        return false;
}
        if(!reautoyn)
{
        reautoword = prompt("请输入您的自动回复:", reautoword);
        if (!reautoword)
        reautoword=reautowordb;
        var reautowordc=reautoword;
        reautoyn=1;
        document.all.reauto.value="取消回复";
}
        else
{
        document.all.reauto.value="自动回复";
        reautoyn=0;
}
function parent.u1.document.writeln()
{
        var msg=arguments[0];
        parent.u1.document.write(msg+"\n");
        if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+document.inputform.USER.value+"]")+1&&reautoyn==1){
        user_b=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
        if(!document.inputform.WHOTO.value==user_b||reautoword==reautowordc+"　"){
        reautoword=reautowordc;
}
        else
{
        reautoword+="　";
}
        parent.cs(user_b);
        document.inputform.msg.value=reautoword;
        checksay();
        document.inputform.submit();
}
}
}
//      自动发言
function autofff(){alert("您已经选择自动发言\n\n请在下拉表单中选择你需要的语句\n\n系统将自动将您选择的语句每隔30秒发送一次。\n\n如要停止，请选择“取消自动”选项。");autofa.style.visibility="visible"}
document.write('<DIV id=autofa align=center style=visibility:hidden;width:76px;left:640px;top:0px;height:20;position=absolute;>');
document.write('<FORM name="singerform1"><select name="plusf" onchange="plus(t)">');
document.write('<option  VALUE selected>自 动</option>')
document.write('<option value="现在由我为大家排麦，请要麦的朋友直接给我打999999!!!">排 麦</option>')
document.write('<OPTION VALUE="我正在忙家务，请呆会与我联系，或者给我QQ留言，我会及时与你联系，请多多谅解!!!">家 务</OPTION>') 
document.write('<option value="现在由我为大家主持，要麦请先向排麦的管理员打999，此处不收999!!!">不 排</option>')
document.write('<option value="我饭饭去了，等吃饱了回来和你聊个够!!!">吃 饭</option>')
document.write('<option value="我现在有事在忙，不看屏幕,暂时不能回复你，请有事在语音对我说!!!">不 看</option>')
document.write('<option value="我现在有事不在，暂时不能回复你，请多多谅解!!!">离 开</option>')
document.write('<option value="我现在正上班，不能回复你，请多多谅解!!!">上 班</option>')
document.write('<OPTION VALUE="本室以诚交友，唱歌为主，心与心的交流能让您在这里感觉到家的温馨，这里是心灵的领域，是您网上的家园,真诚欢迎您的加入!!!"></OPTION>')
document.write('<option style=color:red value="">取 消</option>')
document.write('</select>')
document.write('</form></div>')
tsec=0;
idt1=setTimeout("plus();",10);
function plus(t){
tsec++;
var tn=document.singerform1.plusf.selectedIndex;
var temp=document.singerform1.plusf.options[tn].value;
var tcolor=document.inputform.color.value;
if((tn>0)&&(temp=="")){autofa.style.visibility="hidden";singerform1.plusf.options[0].selected=true;}
if ((tsec==50)&&(tn>0)&&(temp!="")){
document.inputform.color.value="009900";
var twho=document.inputform.WHOTO.value
parent.cs("所有人");
document.inputform.SAYS.value=temp+"。";
document.inputform.submit();
document.inputform.color.value=tcolor;
document.inputform.WHOTO.value=twho;
}
if(tsec==100){tsec=0;}
idt1=setTimeout("plus();",500); }//}
//      自动欢迎
function fp()
{
        parent.u1.document.write('<body bgproperties=fixed>');
        parent.u1.document.write('(00:00:00)<font color="#9900FF">波利看着你:</font><font color=#ff00ff>扑扑, 喜欢雷神要带吗？？？ </font><br>');
}
        function fpbg()
{
        setTimeout("fp()",5000);
}
        fpbg();
//      是否法便衣管理
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

init_system();

add_new_element();

reset_elements_style();