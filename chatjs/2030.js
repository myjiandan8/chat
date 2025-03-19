//发言区拉动条设置    
document.write('<STYLE>BODY{scrollbar-face-color:#FCDEFC;scrollbar-highlight-color:#FFF0FF;scrollbar-shadow-color:#7F61FF;scrollbar-3dlight-color:#FFF0FF;scrollbar-arrow-color:#7F61FF;scrollbar-track-color:#fafdfd;scrollbar-darkshadow-color:#fafdfd;scrollbar-base-color:#FFF0FF;}</style>')


var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;

//	与本房间有关的参数设置，您必须按您的房间的具体情况重新进行设置

//	图片等的存放位置，请设定为您存放图片的位置
var config_place = "http://klyj.com/tupian/";

var room_owner="*ミ瓜瓜ミ";			//	室主名称
var room_name="秋葉飄香";			//	房间名称
var room_adminname_head="";			//	本室管理名
var room_number="2030";			//	房间号
var room_link_url = "http://2030.liaowan.com/秋叶飘香";	//	房间的地址
var black_roomname="私聊室";			//	双工房间名称
var black_roomnumb="369682";			//	双工房间号码
//var userlist_top_html ="<img src=http://mwzslbt.gif>";


var userlist_top_html = "<align=center><a><a><IMG align=center src=http://klyj.com/tupian/qypx.gif  width=136 height=38></a></a>";

var userlist_bottom_html = "<p align='center' class='p9'><font color=#009900 >《秋葉飄香》<br>欢 迎 您</font>";

var userlist_bkcolor = "#D4E6CC";	//	聊友列表区的背景色
var userlist_bkimage = "";			//	聊友列表区的背景图，设置为空串则使用输入区的图片
var voice_normal_color = "009900";	//	正常打开语音时的图标颜色
var voice_v2v_color = "#000000";	//	双工语音时的图标颜色
var voice_vr_color = "#00D000";		//	有视频时的图标颜色

var div_screen_bkcolor = "";		//	分屏背景色
var div_screen_bkimage = "";		//	分屏背景图片	

var voice_bkcolor = "#F0E6FE";		//	语音区的背景色
var voice_bkimage = "";				//	语音区的背景图，空串则使用聊友区图片

var input_bkcolor = "#FFAAAA";		//	输入区背景色
var input_bkimage = "";				//	输入区背景图片
var input_msg_color	= "#214EFE";	//	输入区文字输入框文字色
var input_msg_bkcolor = "#FFF0F5";	//	输入区文字输入框背景色

var body_text_color	= "#118800";	//	输入区文字色
var select_color = "#118800";		//	列表框文字色
var select_text_color = "#117D00";	//	列表框内文字色
var button_text_color = "#117D00";	//	输入区按钮文字色
var button_bk_image	= 1;			//	按钮使用背景图片，1——使用，0——不使用
var button_bk_color = "";			//	输入区按钮不使用图片时背景色

var full_screen_bkimage	= 1;		//	是否使用整体背景图片0——不使用，1——使用
var auto_hide_scrollbar = 0;		//	整体背景时是否自动隐藏滚动条0——不隐藏，1——隐藏
var disable_notice = 1;				//	是否屏蔽碧聊的那个提示声音0——不屏蔽，1——屏蔽

//	按钮背景图片  宽度,文件名
var a_btn_pic = new Array
(
17,"a18.gif",
18,"a18.gif",
19,"a18.gif",
35,"a36.gif",
46,"a44.gif",
70,"a64.gif"
);

var url_popup_window = "";	//	进入聊天室时弹出的窗口，如果为空则不弹出

var	only_registr_user = 0;			//	只允许注册用户进入,0——不限制；1——只允许注册用户进入
var	only_chinese_name = 0;			//	只允许汉字名用户进入,0——不限制；1——只允许汉字名用户进入
var default_admin_pass = "123";		//	默认的管理员上管口令

var auto_open_ai = 1;				//	自动打开图音,0——不打开；1——自动打开
var auto_open_mic = 0;				//	自动打开语音,0——不打开；1——自动打开
var auto_open_div = 1;				//	自动分屏,0——不分屏；1——自动分屏
var multi_singer_list = 1;			//	是否允许重复排麦，0——不允许；1——允许

var msg_login="是我〖"+a_user+"〗来了！！《" + room_name + "》欢迎您！^:^=^";

var msg_admin="大家好，〖"+a_user+"〗上管了,由我来为大家服务:)";
var msg_quitadmin="〖"+a_user+"〗先下管了，谢谢大家对我的支持！！";
var msg_leave="各位：〖"+a_user+"〗先行一步了,下次再和大家没完没了聊，哦~~~~~要想我呀！";
var msg_auto_spack="我有些事临时离开一下，一会儿就回来！！";
var msg_back_spack="大家好呀，我回来了！你们又唱又读聊侃的真过隐呢？让我也听听--过后我也来参与呀。。。。。";



var div_msg_color1 = "#FF0000";		
var div_msg_color2 = "#8800FF";	
var div_msg_color3 = "#117D00";		

var div_msg1 = "本站广招管理主持 请向在线管理咨询<a target=_blank href='http://www.liaowan.com/' title='聊湾欢迎您！'><IMG align=absMiddle src=http://www.liaowan.com/logo/logo.gif></a>";
var div_msg3 = "如果立体声语音不能正常运行，请点击下边帮助";
var div_msg2 = "室主：*ミ瓜瓜ミ*↘微⺷ǎ⺷雨↙欢迎您光临《秋葉飄香》语音聊天室！愿您在这里玩儿的开心！玩的愉快！这里就是您的家！！！";  
var div_msg4 = "";  
var div_link = "";




document.write('<DIV style=LEFT:480px;TOP:69px;POSITION:absolute>');
document.write('<img border="0" src="http://klyj.com/tupian/frog01.gif">');
document.write('</div>');


document.write('<DIV style=LEFT:520px;TOP:29px;POSITION:absolute>');
document.write('<img border="0" src="http://klyj.com/tupian/toro.gif">');
document.write('</div>');




//	用于连接按钮
var a_link_button = new Array
(      
        "流淌",	  "http://www.china918.org/ltsy/",
	"百度",	  "http://bar.baidu.com/mp3/list/a.htm",
	"主 页",      "http://qiuyepiaoxiang.home.sunbo.net/",
	"论 坛",      "http://www.tsyl.net/bbs1/Default.asp?id=4",
	"D J",       "http://www.dj99.net/",
	"留 言",      "http://bb.ancool.com/index.asp?user=hugua",
	"相册","http://photo.163.com/openalbum.php?username=dashao1978",
	"动画","http://flash.mmliao.com/",
	"说明","http://www.bliao.com/help/help17.htm"

);

//	本室中的 VIP 聊友
//	级别：1——室主；2——高级管理... 3——5 可供设置,其余已由内部使用
var a_vip_user = new Array
(     
        "*ミ瓜瓜ミ"       ,   1,
        "*" ,     1,
        "*ゞ灬聊湾╬微雨⺌o" ,     3,
        "*※雪龙※" ,     2,
        "*↘微⺷ǎ⺷雨↙"       ,   1,
        "* "       ,   11,
        "* "       ,   12,
        "*" ,     2,
        "*",        2
);
//——聊友名过滤，凡是名字中包含下面文字的聊友，只要不是上面的VIP聊友，不准进入房间——
var a_name_filter = new Array
(

"傻B","靠你","插你","插死","干死","你妈","龟头","奶子","作爱","做爱","聪将","处女","打炮","我操","草你","傻比","署榕","绪榕","白痴","鸡","猪","鸭","逼","婊","赑","妣","肏","龟","叼","腚","操","吊","淫","屌","奸","死","贱","尻","屎","屄","嫖","赌","泡妞","色魔","色鬼","贼色","色怪","痞"
);

//——隐身人：名称，隐身等级。下面的名字是可以隐身的，但级别等于隐身级别的聊友可以看到他的名字——
var a_hide_user = new Array
(
    "*",              0,
    "*",              1,
    "*",              1,
    "*",              1,
    "*",              1
);

//——聊友说明，在此修改聊友名字的颜色——
var a_usertitle = new Array
(
	0,"在线主持",                "0002.gif width=20 height=20","#FF0000","#FFFFE0 ",
	1,"本室室主",                "shizhu.gif width=20 height=20","#EE00EE","#FFFFE0",
	2,"本室副室",                "00222.gif width=20 height=20","#0000FF","#FFFFE0 ",
	3,"本室高管",                "gaoguan.gif width=20 height=20","#a000a0","#FFFFE0 ",
	4,"本室女管",                "vvvvvv.gif width=20 height=20","#0000FF","#FFFFE0 ",
	5,"本室歌手",                "guanli.gif width=20 height=20","#FF9900","#FFFFE0 ",
	6,"本室特邀",                "02.gif width=20 height=20","#65bc34","#FFFFE0 ",
        7,"本室贵宾",                "tx01.gif  width=20 height=20","#8800FF","#E0FFFF",
        8,"本室嘉宾",                "tx02.gif  width=20 height=20","#8800FF","#E0FFFF",
        9,"本室嘉宾",                "h001.gif  width=20 height=20","#8800FF","#E0FFFF"
);

//——房间走廊,请注意房间号的写法——
//	"大观园房间",		"123456",
//	"特约房间",			"202.96.140.44:1234",
//	"江苏分站房间",		"2345.js",
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
        "人间天堂",	"2004",
	"风中尘缘",	"2042",
	"桃花深处",	"2037",
	"天静月圆",	"2015",
	"相约梦里",	"2036",
	"创新天堂",	"2032",
	"绿色情结",	"2021",
	"如此家园",	"2014",
	"开心小屋",	"2045",
	"成人随想",	"2017",
	"阳光中年",	"2033",
	"三十有约",	"2009",
	"浪漫小屋",	"2011",
	"玫瑰恋人",	"2002",
	"青春飞扬",	"2044",
	"飛天漫舞",	"2028",
	"心情驿站",	"2013",
	"悠悠往事",	"2040",
	"红颜知己",	"2012",
	"四十情缘",	"2022",
	"杰伦联盟",	"2027",
	"心梦情缘",	"2043",
	"音乐之声",	"2000",
	"梦想心情",	"2005",
	"靓女视舞",	"2041",
	"立新世纪",	"2018",
	"老Ａ的窝",	"2031",
	"动力电台",	"2024",
	"宁梦情缘",	"2029",
	"空间随想",	"2006",
	"世纪网恋",	"2035",
	"上海情缘",	"2010",
	"超级女声",	"2034",
	"轻敲三十",	"2019",
	"梦 语 居",	"2001",
	"欢乐今霄",	"2020",
	"碧海清风",	"2038",
	"一劔情缘",	"2023",
	"漂泊飞雪",	"2016",
	"我心飞扬",	"2026",
	"美丽家园",	"2008",
	"星夜心情",	"2025",
	"聊湾会所",	"2046",
	"等您加入",	""
);
//——房间链接——
var a_linkurl = new Array
(
 "房间配置", "http://admin.bliao.com/admin/s_doadmintor.php",
 "管理配置", "#RoomManageForm",
 "换名马甲", "#ChangeNameForm",
 "碧聊排行", "http://admin.bliao.com/admin/sighttop.php",
 "语音试麦", "http://chat.yinsha.com/voice.htm",
 "光驱伴奏", "http://rekangtou.wx-e.com/chat/guangqu.htm",
 "影碟伴奏", "http://rekangtou.wx-e.com/chat/vcd.htm",
 "用户注册", "http://admin.bliao.com/user/login.htm",
 "用户指南", "http://www.bliao.com/help/help51.htm",
 "语音插件", "http://cncsg.nease.net/blueskyvoice.zip",
 "聊室查询", "http://admin.bliao.com/admin/s_dwhere.php",
 "临时扩容", "http://202.96.140.82/party.phtml"
);

//——欢迎——
var a_welcome = new Array
(
	"欢迎",	"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
	"欢迎",	"^_^*《" + room_name + "》*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",
	"欢迎",	"无论您走到天涯海角。《" + room_name + "》永远欢迎您！永远等候您！永远陪伴着您！！！",
	"欢迎",	"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩的开心！聊的开心！唱的开心！！！",
	"欢迎",	"你终于来了呀！欢迎欢迎！！！我在《" + room_name + "》等你,你是我一生的等待和牵挂！朋友！！！"
);

//——献花——
var a_flower = new Array
(

	"醉了",	"哗啦啦---下雨拉｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、｀",
	"迷人",	"¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤好棒哦¤¤¤¤¤好棒哦¤¤¤¤¤¤好棒哦¤¤¤¤",
	"不游","≈小鱼儿都听呆了，不游了ゅ。ゅ≈≈≈oゅ。小鸟儿都听呆了,不飞了ゅ≈≈≈ゅゅ叶儿也听呆了，永远青青了ゅゅ 真动听^^U^^@",
        "好听","声音好听--------------------------太好听了-------------------------------绝了",
	"醉了","■~唱的太棒了~～☆★☆～~我都醉了~～☆★～~给我签个名吧~ ～☆★☆～~哇~～！！～唱的太棒了~～☆★☆～~我听的都醉了~0~",
	"掌声","鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～",
	"鲜花","* *．°牡丹★·。 *菊花∴ * *夜来香∴°一筐一筐又一筐∴牡丹★·。 *菊花∴ * *来香∴°★·君子兰* *．°一筐一筐又一筐∴",
        "听呆","听呆了-------------------要回放--------怎么这么好听呀---------秋叶飘香有你更精彩",
	"玫瑰",	"玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰╮ 礼花～～",
	"棒棒",	"棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒★",
	"歌星",	"☆★．°■ ．☆°*°●★ ．名星啊！真好听 * *．★☆多美妙的声音啊★*°* ~",
	"偶像",	"☆☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～～签名～～～ ∵∵",
	"呱唧",	"哇晒！！好~!~吧唧吧唧!!~!~!~呱唧呱唧呱唧~!!~!~!~!~呱唧呱唧呱唧~!!",
	"百荷",	"★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷぷ仙花★☆ぷ╰☆╮ぷ╰☆╮ぷ",
	"好听",	"▇▆▅▄▃▂▁读得好！▁▂▃▄▅▆▇▇▆▅▄▃▂▁▁",
	"加油",	"加油加油！为你加油！╮满天星★☆╮ぷ",
        "美文", "好歌呀-------------------你的歌真的好棒呀--------怎么这么好听呀",
	"真棒",	"真棒~~╰☆☆╮茉莉花╰☆☆☆☆╮还有一枝勿忘我－紫风铃",
	"郁金",	":→◥◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★℡★↘",
	"花掌",	"鲜花～掌声～～鲜花～掌声～～鲜花～～掌声～～鲜花～～",
	"啪啪",	"*^_^*《啪》 *^_^*《啪》 *^_^*《啪》*",
	"水仙",	"玫瑰花★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷ╰☆ぷぷ╰ぷ╰☆╮",
	"牡丹",	"* *．°牡丹★·。 *菊花∴ * *夜来香∴°君子兰* *．°一筐一筐又一筐∴"

);


//——送行——
var a_byebye = new Array
(
	"不舍","真是舍不得你走啊....我会想你的..走好~~~~~有空常来玩，"+ room_link_url +"，别忘了哦~！",
	"走好","走好呀，天黑了，留神脚底下。有时间一定再来《"+ room_name +"》串串门好吗！！"
);

//——告辞——
var a_leave = new Array
(
	"想留",	"其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信我 再不用多久,我要你和我今生一起度过... ",
	"告别",	"长叹一声,凄婉地说道:▅█拜拜●了█▅一曲离歌泪千行,不知何日再逢君.我这就去了,大家多保重▅█拜拜●了█▅··有红包收吗，有的话，可以再多留三秒······",
	"后会",	"青山不改，绿水常流，山高水长，后会有期！不用等到江寒月冷日，雪雨风飘时，有缘的你我一定会在《"+room_name+"》再次相会！"
);

//——要麦——
var a_wantmic = new Array
(
	"要麦",	"我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999",
	"要麦",	"〖"+document.inputform.USER.value+"〗要麦╭═⊕999--999请帮我排个麦，谢谢!!!",

	"唱歌",	"我要朗诵呀9999999 ☆★☆★我要唱歌呀99999999999我要读东东呀9999999 ☆★☆★我要麦呀99999999999"
);

//——听见——
var a_heart = new Array
(
	"听见",	"11111111111111111111111111111111111111111111",
	"听见",	"【听见了】【听见了】【听见了】【听见了】【听见了】【听见了】【听见了】",
	"听见",	"听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲"
);


//——情話——
var a_love = new Array
(
	"爱错",	"如果我能拥有这份荣幸，〖"+document.inputform.USER.value+"〗愿终身陪伴着你，一年四季陪伴着你",
	"旧梦",	"春天，〖"+document.inputform.USER.value+"〗陪你轻轻漫步在盛开的百花之间；",
	"网情",	"夏天，〖"+document.inputform.USER.value+"〗陪你奔跑在欢乐的小河之畔",
	"讨好",	"秋天，〖"+document.inputform.USER.value+"〗陪你倘徉在火红的枫林之下；",
	"思念",	"冬天，〖"+document.inputform.USER.value+"〗陪你围坐在炽热的火炉旁边",
	"错号",	"〖"+document.inputform.USER.value+"〗为你愿意化作一杯黄土，这黄土上长出的青草也是为你而绿，开出的黄花也是为你而香；",
	"想你",	"如果有一天，〖"+document.inputform.USER.value+"〗化作了一溪清泉，这清泉里翩跹游摆的鱼儿也是为你而舞，那叮咚的泉响也是为你而唱。请允许我，允许〖"+document.inputform.USER.value+"〗说-我爱你!",
	"没缘",	"我爱你，以昔日的剧痛和童年的忠诚；我爱你，以我的眼泪和笑声；我爱你，以我的双臂和肩膀，以及我全部的力量。",
	"四季",	"你象一股暖暖的春风，漾起了我心海里爱的波澜；你象一片轻柔的云彩，缚获住我多情的视线；",
	"红颜",	"你是那样的美，美得象席慕容的一首抒情诗，你是那样的纯，纯得象一块冰莹剔透的水晶石。",
	"开心",	"你清丽秀雅的脸上始终荡漾着春天般美丽的笑容，在你那流转顾盼的眼睛里，〖"+document.inputform.USER.value+"〗总能捕捉到你的宁静，你的热烈，你的敏感，你的聪颖",
	"想你",	"想你的时候是清风拂过睡莲的幽香,念你的时候歌声越过晚霞的飘渺.你知道〖"+document.inputform.USER.value+"〗在想你吗? ",
	"网恋",	"倘若西子再世，见到你她也会自惭形秽，无颜见人，唯有投水自溺；假如昭君复生，在你面前也会黯然失色，自叹弗如，只能远避边塞，从此不敢再回中原",
	"魅力",	"给〖"+document.inputform.USER.value+"〗一个微笑就够了，如薄酒一杯，像柔风一缕，这就是一篇最动人的宣言呵，仿佛春天，温馨又飘逸。",
	"爱错",	"〖"+document.inputform.USER.value+"〗深深地恳求你；不要把我逐出你的爱门之外，我一分一秒也不能缺少你的爱。只有赢得你的爱，我的生命才有光彩。",
	"旧梦",	"你像那沾满露珠的花瓣，给我带来一室芳香；你像那划过蓝天的鸽哨，给我带来心灵的静远和追求",
	"网情",	"〖"+document.inputform.USER.value+"〗每时每刻都在思恋的“苦刑”下熬煎，不知你何日方能赐恩，减轻我的这种苦刑！",
	"讨好",	"不知为什么，只要有你在我身边，〖"+document.inputform.USER.value+"〗的心便不再惶惶不安。",
	"想你",	"〖"+document.inputform.USER.value+"〗只能从你甜蜜的微笑中感受你的声音, 我时时注意着你, 我不愿错过一丝机会, 心儿徘徊在夜阑人静时, 我幻觉着你甜蜜的声音把我唤醒",
	"四季",	"继续爱我吧 －－决不要冤枉你所爱的那颗最忠诚的心。永远是你的 永远是你的 永远是彼此的",
	"唯一",	"啊，我究竟在何处？是否和你在一起？为了你和我，〖"+document.inputform.USER.value+"〗要努力工作。只有这样，才能和你共同生活。那时是多么美好的生活",
	"红颜",	"没有你，别人的关怀，都是徒然的。对于这些关怀，〖"+document.inputform.USER.value+"〗无意接受，也没有资格接受",
	"开心",	"我爱你！我真的爱你！我真的好爱你！〖"+document.inputform.USER.value+"〗 love you！〖"+document.inputform.USER.value+"〗 love you so much！",
	"想你",	"认识你以后我脑海里挂着的一切都消失得无影无踪，取而代之的是我两在一起的欢乐时光"
);



//自动迎宾
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
           if (y_exchange[j].substring(0,y_exchange[j].length-12)==y_exchange1[i].substring(0,y_exchange1[i].length-12)) 
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
   cs_name=c1[new_men_num1-new_men_num].substring(0,c1[new_men_num1-new_men_num].length-12)
   cs_ys=inputform.WHOTO.value
   parent.cs(cs_name)
   document.inputform.msg.value="欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩的开心！玩的愉快！这里就是您魂牵梦系的家！！！"
   checksay()
   document.inputform.submit()
   c1[new_men_num1-new_men_num]=""
   new_men_num=new_men_num-1
   parent.cs(cs_ys)
   }
}

function Az_yys(){
if (Az_y.value=="关闭"){
WELCOME_y()
setTimeout("Az_yys()",30000)
 }
}
function Az_yy(){
if (Az_y.value=="迎宾"){
Az_y.value="关闭"
Az_yys()
} else if(Az_y.value=="关闭"){
Az_y.value="迎宾"
}
}

//——搅拌——
var a_yao = new Array
(  
"搅拌", "嘿嘿，我〖"+a_user+"〗想搅拌这首歌呀，九九九九九九九九九九九给我麦呀~^_^^_^^_^",
"搅拌", "【领导可以搅伴吗??】",
"搅拌", "【我要麦，我要搅拌这个!!】【我要麦，我要搅拌这首歌!!!】",
"搅拌", "99999999999999999哈~〖"+a_user+"〗我要搅拌刚唱的歌呀!"
);


//——准备——
var a_yao1 = new Array
(
"准备",	"您好!下一位该您的麦序了.谢谢您的耐心等待，請您做好接麦准备!.謝謝! ",
"准备",	"您好!下一位该您的麦序了.谢谢您等待，請您做好接麦准备!.謝謝! "
);



//——急麦——
var a_yao2 = new Array
(
"急麦",	"我有急事，我有急事，请管理马上给我麦119~~~~119!.謝謝! ",
	"急麦",	"〖"+document.inputform.USER.value+"〗╭═●119急麦,╭═●119--119,请先给我麦，谢谢!!!",
"急麦",	"请管理速递给我麦.急事，请后边麦序的朋友，谅解!急麦~~~~~~119.謝謝! "
);


//——赞美——
var a_yao3 = new Array
(
"赞美",	"您的声音怎么、这么好听呢!! ",
"赞美",	"真的是精彩呀~~~~~~~动听!贺彩! ",
"赞美",	"继续继续再要麦好吗~~~~~~~好听~~~真棒!! ",
"赞美",	".俺好嘻欢听呀! 多多送鲜花掌声呀"
);

//——谢谢——
var a_yao4 = new Array
(
"谢谢",	"谢谢朋友!! ",
"再谢",	"〖"+document.inputform.USER.value+"〗衷心感谢朋友们的热情!!!",
"谢谢",	".朋友们的鲜花、掌声是给我的鼓励!再一次谢谢"
);


//——试麦——
var a_yao5 = new Array
(
	"试麦",	"〖"+document.inputform.USER.value+"〗我要试麦444--444~~,请帮我试个麦，谢谢!!!",
    
	"试唱",	"〖"+document.inputform.USER.value+"〗╭═●试麦,╭═●444--444,请帮我试个麦，谢谢!!!"
);

//——无音——
var a_yao6 = new Array
(
	"无音",	"没有听见呀------N0n0n0n0~~您打开麦呀~~_____n0N0N0-------无声音呀--------急死了--------你在重新打开麦克!!",
	"无音",	"无声音~~~~~~~~~没有听见-------好想听到你的声音呀~~~~~~~~~~~~~~无音呀----请继续调好麦克呀！!!",
	"无音",	"我们在耐心等待您，甜美的声音------好想好想-----听到你的声音呀~~~----可惜无声音呀-------再重新调麦克----上ONON=======ON!!",
    
	"无音",	"没有听见你的声音呀------无声音_____n0N0N0----请你在重新试试拿麦-------多急死人呀--------你在重新打开麦克吧--也没音乐声--等您!!"
);


//——邀请——
var a_yao7 = new Array
(
	"邀请",	"请您打~~酒酒酒~~~~`为朋友来个节目好吗？!!!",
	"邀请",	"您的到来使我们聊室增辉添彩!为我们朋友来一个节目~~~~~朗诵~~~唱歌~~~~说个小段子。。。!",
	"邀请",	"多希望听到您的美声!!!好想再听听您的声音!",
    	"邀请",	"朋友您好，请您走猫步上台为朋友表演拿手好戏。。。嘻嘻嘿!~~~别~~~别扭扭的不好意思!~~打酒酒酒上来哟"
);


//——EMOTE——
var a_emote = new Array
(
	"☆问候☆",		"",
	"He你好",		"//hello",
	"Hi你好！",		"//hi",
	"愉快招呼",		"//greet",
	"热烈欢迎",		"//welcome",
	"握手",			"//hand",
	"请多关照",		"//visit",
	"公子有礼",		"//boy",
	"愉快表情",		"//:)",
	"对他笑笑",		"//:)2",
	"热情拥抱",		"//bearhug",
	"坐在一起",		"//sit",
	"弯腰鞠躬",		"//bow",
	"你太客气",		"//welcome2",
	"生日快乐",		"//birthday",
	"热烈鼓掌",		"//clap",
	"大喊加油",		"//addoil",
	"献朵玟瑰",		"//rose",
	"热的牛奶",		"//milk",
	"热茶包子",		"//tea",
	"喝了再说",		"//wine",
	"替您擦汗",		"//sweat",
	"小蘑菇吃",		"//gzxj",
	"打哈哈",		"//ha",
	"哈哈大笑",		"//haha",
	"疑惑看着",		"//?",
	"壮士过奖",		"//cool",
	"做鬼鬼脸",		"//face",
	"你真好",		"//thank",
	"高实在高",		"//gao",
	"傻笑几声",		"//he",
	"想说什么",		"//en",
	"吐舌头",		"//:p",

	"☆调情☆",		"",
	"发誓爱你",		"//ai",
	"天真望著",		"//@@",
	"昏倒怀抱",		"//faint",
	"飞了过去",		"//fly",
	"嘴巴堵你",		"//ds",
	"这个女人",		"//girl",
	"过去答讪",		"//go",
	"好喜欢你",		"//ppp",
	"我爱上你",		"//love",
	"真的是你",		"//miss",
	"真的是你",		"//wait4",
	"我在等你",		"//waiting",
	"等的花谢",		"//wait3",
	"含宝脉脉",		"//love3",
	"眼眸眨眨",		"//lovesee",
	"含情脉脉",		"//lovelook",
	"撩人诱惑",		"//lure",
	"向你求婚",		"//marry",
	"好象见过",		"//mm",
	"脸好热热",		"//shy",
	"飘飘欲仙",		"//smoke",
	"陶醉跳舞",		"//dance",
	"无辜望著",		"//inn",
	"轻轻拥抱",		"//hug",
	"轻轻抚摸",		"//care",
	"抚摸对方",		"//caress",
	"爱怜抚摸",		"//touch",
	"轻轻拍头",		"//pat",
	"依偎怀里",		"//lean",
	"跳入怀里",		"//jump",
	"啵亲一下",		"//kiss",
	"热情拥吻",		"//smooch",
	"亲了N口",		"//lly",
	"疯吻对象",		"//xixi",
	"用爱折磨",		"//zhemo",
	"做我姐姐",		"//qsister",
	"做我妹妹",		"//qsister1",
	"做我弟弟",		"//qbrother",
	"做我哥哥",		"//qbrother1",
	"鸡皮疙瘩",		"//cold",
	"苦水倒出",		"//:(",
	"乞求怜悯",		"//cringe",
	"在肩上哭",		"//cry",
	"唉叹口气",		"//sigh",

	"☆打斗☆",		"",
	"将蛋扔去",		"//allen",
	"流口水",		"//drivel",
	"坏欺负人",		"//bad",
	"咬他哇叫",		"//bite",
	"你这变态",		"//bt",
	"恶毒看着",		"//crazy",
	"剁成小块",		"//cut",
	"满脸桃花",		"//da",
	"落闸放狗",		"//dog",
	"你喝砒霜",		"//drug",
	"你说不说",		"//ds2",
	"喷嚏过去",		"//ds3",
	"躲远烦你",		"//duo",
	"催肥大法",		"//fat",
	"怕了吧！",		"//fear",
	"羞羞脸！",		"//blush",
	"奸笑几声",		"//heihei",
	"冷笑一声",		"//heng",
	"原谅对方",		"//forgive",
	"用铁锤敲",		"//hammer",
	"打屁屁",		"//handpat",
	"正中红心",		"//hit",
	"吹成冰雕",		"//ice",
	"顶你肚子",		"//nudge",
	"化为灰烬",		"//zap",
	"拎耳扔出",		"//tu",
	"用手捅捅",		"//poke",
	"狗皮膏药",		"//paste",
	"拧得发青",		"//pinch",
	"吐你满身",		"//puke",
	"狠揍一顿",		"//punch",
	"手起刀落",		"//qia",
	"一枪放倒",		"//qian",
	"对他狂笑",		"//znw",
	"不怀好意",		"//look3",
	"叽叽歪歪",		"//jjww",
	"踢屁屁",		"//kick",
	"考虑杀死",		"//kill",
	"打馊主意",		"//look",
	"小的拜服",		"//wait2",
	"一大傻冒",		"//beaut",
	"人工呼吸",		"//breath",
	"篮球扣下",		"//koxia",

	"☆其他☆",		"",
	"完全同意",		"//agree",
	"这么定了",		"//so",
	"你吃蛋糕",		"//bb",
	"懒得理你",		"//angry",
	"不舒服了",		"//ill",
	"我很出名",		"//know",
	"我不知道",		"//no",
	"我苦出身",		"//work",
	"谁不知晓",		"//who",
	"捧腹大笑",		"//laugh",
	"跟我无关",		"//noask",
	"点头称是",		"//nod",
	"言归正传",		"//now",
	"比猪还慢",		"//pig",
	"说的对！",		"//right",
	"摇了摇头",		"//shake",
	"愉快微笑",		"//smile",
	"赔礼道歉",		"//sorry",
	"请求原谅",		"//sorry2",
	"原谅对象",		"//sorry3",
	"奇怪眼神",		"//stare",
	"想破脑袋",		"//think",
	"真的好累",		"//tired",
	"猪起来啦",		"//wake",
	"胜利手势",		"//yeah",
	"NoNo",			"//finger",

	"☆告别☆",		"",
	"后会有期",		"//cu",
	"吻别再见",		"//cu2",
	"有事隐退",		"//wait",
	"跟你再见",		"//bye",
	"望着背影",		"//cu3",
	"再陪陪俺",		"//stw",
	"请保重！",		"//goodbye",
	"会后有期",		"//goodbye2",
	"难过要哭",		"//tear",
	"留路上吃",		"//tea1",
	"挥挥手。",		"//wave"
);

//	管理专用
var a_admin = new Array
(

"本室地址",	"http://2030.liaowan.com/秋叶飘香","color:#6600ff",
"已经排麦",	"您好!您的要麦的名单已经记下了,请您稍后,也请您调试一下你的麦,谢谢您光临本聊天室,"+a_user+"祝你玩得开心玩得快乐!","color:#6600ff",
"关麦方法",	"新来的朋友！为了能够尊重别人的说话和唱歌，请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","color:#FF0000",
	"希望参与",	"欢迎您来到“《" + room_name + "》”，希望您多多参与的娱乐活动，给管理员打999，管理员会把麦交到您手上的，祝您在这里玩的开心：）","",
	"激情演出",	"您好!亲爱的朋友,欢迎您的到来,您可以给大家唱一首歌吗，说说话吗？：）谢谢☆⌒_⌒．☆° ．","",
	"感谢朗诵",	"!谢谢您为大家献上的精彩朗诵,是非常的动听,如果有时间再为大家献上一篇美文吧，我们再一次感谢您美声!!","",
	"感谢唱歌",	"您好!谢谢您为大家献上的歌曲,是非常的动听,如果有时间再为大家献上一曲吧,我们感谢您..同时也欢迎您常来!!","",
	"请您稍候",	"您好!您的要麦的名单已经记下了,请您稍后,也请您调试一下您的麦,谢谢您光临本聊天室,祝您玩得开心玩得快乐! ","",
	"您麦不好",	"您好!可能是您的麦有问题或是网速太慢,我们递麦给您,听到的却是断断续续的声音,请您再调试一下再打999,好吗?谢谢.","",
	"麦无声音",	"您好!亲爱的朋友,可能是您的麦有问题或是网速太慢,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们打999好吗?","",
	"要麦守则",	"大家好，欢迎来到“《" + room_name + "》”，要麦的朋友请给在线管理员打9999报名!切记三遍以内,否则按刷屏处理!我们会为您排好顺序!","",
"抢麦要求",	"您可以自由抢麦！但有一个小小的要求：当其他人说话和唱歌时您可不要断麦噢！因为这是对您和大家的尊重！理解万岁！网速慢的朋友不要着急！请您打出9999，请大家相互支持！","color:#009900",
"开麦关麦",	"★打开语音就是广播方式，该方式下同时只能有一人使用麦克风；点击语音区“全双工对话”可和网友私聊；点击上面的小话筒出现红叉后，就是关麦，再点击去掉红叉就是开麦","color:#009900",
"请开语音",	"您好!系统：“您”尚未打开语音或处于双工语音状态,请你打开语音或是退全双工对话,"+a_user+"递不了麦给你.谢谢支持与理解!!","color:#6600ff",
"文明聊天",	"提醒**请文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","color:#FF0000",
"打黑警告",	"〖"+a_user+"〗打黑啦...打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！）","color:#6600ff",
"请你换名",	"〖"+a_user+"〗提醒您，请您换个名字进来，好吗？谢谢您的合作。）））","color:#009900",
"邀请唱歌",	"您好!亲爱的朋友,欢迎你的到来,你可以给大家唱一首歌吗？？？）〖"+a_user+"〗谢谢你啦☆⌒_⌒．☆° ．","color:#009900",
"请您稍后",	"您好!您的要麦的名单已经记下了,请您稍后,也请您调试一下你的麦,〖"+a_user+"〗谢谢您光临本聊天室,祝你玩得开心玩得快乐! ","color:#6600ff",
"网速太慢",	"您好!可能是您的麦有问题或是网速太慢,〖"+a_user+"〗递麦给您,听到的却是断断续续的声音,请你再调试一下再打999,好吗?谢谢.","color:#009900",
	"本室网址",	"聊天室网址 "+ room_link_url ,"color:#009900",
	"禁用踢人",	"fnc:disable_KICK(true)","color:#0000FF;background-color:#CCFFCC",
	"快踢卡名",	"fnc:quick_kick()","color:#FF0000;background-color:#FFFF99",
	"启用踢人",	"fnc:disable_KICK(false)","color:#0000FF;background-color:#CCFFCC"

);

//——图片——
var a_picture = new Array
(
     "您好 ",       "http://www.mwzs.com/bfly/images/upfile/200461422444.jpg",
     "您好",        "http://www.mwzs.com/bfly/images/upfile/2004617141236.GIF",
     "欢迎光临",    "http://www.mwzs.com/bfly/images/upfile/2004621164743.gif",
     "欢迎光临",    "http://www.mwzs.com/bfly/images/upfile/2004621164840.gif",
     "握  手",      "http://www.mwzs.com/bfly/images/upfile/2004624162829.gif",
     "请上坐",	      "http://www.mwzs.com/bfly/images/upfile/2004614222645.jpg",
     "请喝茶",      "http://www.mwzs.com/bfly/images/upfile/2004621164412.gif",
     "冰糖茶",      "http://www.mwzs.com/bfly/images/upfile/2004621164623.jpg",
     "红茶",        "http://www.mwzs.com/bfly/images/upfile/2004614223432.jpg",
     "请喝咖啡",    "http://www.mwzs.com/bfly/images/upfile/2004614222956.jpg",
     "蓝山咖啡",    "http://www.mwzs.com/bfly/images/upfile/200462117030.jpg",
     "请喝饮料",    "http://www.mwzs.com/bfly/images/upfile/200461422103.jpg",
     "鲜鲜果汁",    "http://www.mwzs.com/bfly/images/upfile/200462413589.GIF",
     "请 抽 烟",    "http://www.mwzs.com/bfly/images/upfile/2004621164453.gif",
     "哥哥好",      "http://www.mwzs.com/bfly/images/upfile/2004624153523.gif",
     "弟弟好",      "http://www.mwzs.com/bfly/images/upfile/200462415366.gif",
     "姐姐好",      "http://www.mwzs.com/bfly/images/upfile/2004624153646.gif",
     "妹妹好",      "http://www.mwzs.com/bfly/images/upfile/2004624153717.gif",
     "鼓掌",        "http://www.mwzs.com/bfly/images/upfile/200461422346.jpg",
     "鼓掌啊",      "http://www.mwzs.com/bfly/images/upfile/200461422321.jpg",
     "好听",        "http://www.mwzs.com/bfly/images/upfile/200462416740.gif",          
     "美元",	      "http://www.mwzs.com/bfly/images/upfile/2004624153917.gif",
     "出场费",      "http://www.mwzs.com/bfly/images/upfile/2004624154237.GIF",
     "送名车",      "http://www.mwzs.com/bfly/images/upfile/2004614215850.jpg",
     "耶",          "http://www.mwzs.com/bfly/images/upfile/2004617141258.JPG",
     "谢谢",        "http://www.mwzs.com/bfly/images/upfile/2004617141049.GIF",
     "嘿嘿",        "http://www.mwzs.com/bfly/images/upfile/2004617141413.GIF",
     "花儿笑了",    "http://www.mwzs.com/bfly/images/upfile/2004614222712.jpg",
     "天使醉了",    "http://www.mwzs.com/bfly/images/upfile/2004614185736.jpg",
     "为你伴奏",    "http://www.mwzs.com/bfly/images/upfile/2004624155526.gif",
     "为你伴舞",    "http://www.mwzs.com/bfly/images/upfile/2004624162519.gif",
     "伴舞",        "http://www.mwzs.com/bfly/images/upfile/200461422314.jpg",
     "哇好听！",    "http://www.mwzs.com/bfly/images/upfile/200461422417.jpg",
     "太好听了",    "http://www.mwzs.com/bfly/images/upfile/200461422513.jpg",
     "小鱼听呆了",  "http://www.mwzs.com/bfly/images/upfile/200461422312.jpg",
     "开心",        "http://www.mwzs.com/bfly/images/upfile/2004624145210.GIF",
     "我听呆了",    "http://www.mwzs.com/bfly/images/upfile/2004624155436.gif", 
     "加入吧",      "http://www.mwzs.com/bfly/images/upfile/2004624155339.bmp",
     "邀请唱歌",    "http://www.mwzs.com/bfly/images/upfile/20046241642.gif",
  "☆鲜花类☆","", 	 
    "玫瑰金花",    "http://www.lndd.org/button/guniang.gif",
    "鲜花",       "http://www.mwzs.com/bfly/images/upfile/2004624162650.jpg",
    "一束花",	    "http://www.sz.zghc.net/images/gnsh/xh110.jpg",
    "一把花",	    "http://www.trdflower.com.cn/product/image/big/trd0283.jpg",
    "玫瑰心",     "http://www.mwzs.com/bfly/images/upfile/2004614221234.jpg", 
    "蝶恋花",     "http://www.mwzs.com/bfly/images/upfile/2004614223135.jpg", 
    "玫瑰",       "http://www.mwzs.com/bfly/images/upfile/2004614223630.jpg",
    "月季",       "http://www.mwzs.com/bfly/images/upfile/200461422379.jpg",
    "红玫瑰",     "http://www.mwzs.com/bfly/images/upfile/2004617192731.JPG",
    "彩蝶起舞",   "http://www.mwzs.com/bfly/images/upfile/2004617192819.png",
    "蓝玫瑰",     "http://www.mwzs.com/bfly/images/upfile/2004617193657.GIF",
    "献花",       "http://www.mwzs.com/bfly/images/upfile/2004523144013.jpg", 
    "一枝玫",     "http://www.mwzs.com/bfly/images/upfile/2004624151214.GIF",
    "小花",       "http://www.mwzs.com/bfly/images/upfile/20046211724.jpg",
    "一槛花",     "http://www.mwzs.com/bfly/images/upfile/2004624151021.JPG",
    "花王",      "http://www.mwzs.com/bfly/images/upfile/2004624151513.JPG",
    "心意",      "http://www.mwzs.com/bfly/images/upfile/200452314453.jpg",
    "鲜花",      "http://www.mwzs.com/bfly/images/upfile/200452315821.jpg",
    "鲜花",      "http://www.mwzs.com/bfly/images/upfile/2004523143326.jpg",
  "☆情感类☆","",
    "在一起",	    "http://www.mwzs.com/bfly/images/upfile/200461422541.jpg",
    "宝石心",	    "http://www.mwzs.com/bfly/images/upfile/2004614223338.jpg",
    "我爱你",       "http://www.mwzs.com/bfly/images/upfile/200461714838.JPG",
    "月亮代表我的心 ","http://www.mwzs.com/bfly/images/upfile/2004614215720.jpg", 
    "我漂亮吗",       "http://www.mwzs.com/bfly/images/upfile/200461422342.jpg",
    "想你 ",       "http://www.mwzs.com/bfly/images/upfile/2004617141126.GIF",
    "约会",	     "http://www.mwzs.com/bfly/images/upfile/200461714816.GIF",
    "打开你的心",      "http://www.mwzs.com/bfly/images/upfile/2004614221354.jpg",
    "水晶心",          "http://www.mwzs.com/bfly/images/upfile/2004614223226.jpg",
    "飞出的心",       "http://www.mwzs.com/bfly/images/upfile/2004617192642.GIF",
    "蝴蝶心",         "http://www.mwzs.com/bfly/images/upfile/2004614223254.jpg",
    "一箭穿心",       "http://www.mwzs.com/bfly/images/upfile/2004614223316.jpg",
    "一生抱你",       "http://www.mwzs.com/bfly/images/upfile/200462415264.JPG",
    "媚眼儿",       "http://www.mwzs.com/bfly/images/upfile/200461714747.GIF",
    "吻你没商量",      "http://www.mwzs.com/bfly/images/upfile/2004624152735.GIF",
    "热吻",           "http://www.mwzs.com/bfly/images/upfile/2004624152422.JPG",
    "吻",             "http://www.mwzs.com/bfly/images/upfile/2004617141834.GIF",
    "亲吻",           "http://www.mwzs.com/bfly/images/upfile/200462415231.GIF",
    "心语",           "http://www.mwzs.com/bfly/images/upfile/2004614223818.jpg",
    "kiss",           "http://www.mwzs.com/bfly/images/upfile/200461422366.jpg",
    "吻",       "http://www.mwzs.com/bfly/images/upfile/200462415314.GIF",
    "媚妹",       "http://www.mwzs.com/bfly/images/upfile/200462415320.GIF",
    "追你",      "http://www.mwzs.com/bfly/images/upfile/2004624154030.JPG",  	
 "☆祝福☆","",
    "生日快乐",       "http://www.mwzs.com/bfly/images/upfile/20046142290.jpg",
    "生日快乐",       "http://www.mwzs.com/bfly/images/upfile/2004617192426.gif",
    "生日蛋糕",       "http://www.trdflowers.com/product/image/big/TRDF009-9.jpg",
    "生日蛋糕",       "http://www.trdflowers.com/product/image/big/TRDF012-9.jpg",
    "生日蛋糕",       "http://www.trdflowers.com/product/image/big/trdf036-9.jpg",
    "生日蛋糕",       "http://www.mwzs.com/bfly/images/upfile/200462116533.gif",
    "请吃寿面",       "http://www.mwzs.com/bfly/images/upfile/200461422922.jpg",
     "寿面",	       "http://www.mwzs.com/bfly/images/upfile/2004621165222.gif",
  "圣诞树",      "http://www.mwzs.com/bfly/images/upfile/200461422756.jpg",
  "一帆风顺",	 "http://www.mwzs.com/bfly/images/upfile/2004614222736.jpg",
"☆食 品☆","",
   "西餐",	"http://www.mwzs.com/bfly/images/upfile/200461422296.jpg",
   "晚茶",	"http://www.mwzs.com/bfly/images/upfile/2004614223015.jpg",
   "草莓",	"http://www.mwzs.com/bfly/images/upfile/2004617193232.GIF",
   "烤鸡",	"http://www.mwzs.com/bfly/images/upfile/2004621164930.gif",
   "鲜奶",	"http://www.mwzs.com/bfly/images/upfile/2004621165030.gif",
   "冰淇凌",	"http://www.mwzs.com/bfly/images/upfile/2004621165123.gif",
  "请吃葡萄",	"http://www.mwzs.com/bfly/images/upfile/2004624135330.GIF",
  "送西瓜",	"http://www.mwzs.com/bfly/images/upfile/2004624135037.GIF",
  "吃西瓜",	"http://www.mwzs.com/bfly/images/upfile/2004614221030.jpg",
  "请吃西瓜",   "http://www.mwzs.com/bfly/images/upfile/200461422713.jpg",
   "干杯",     "http://www.mwzs.com/bfly/images/upfile/200461422639.jpg",
  "小糕点",	"http://www.mwzs.com/bfly/images/upfile/2004617141521.GIF",
"☆其它☆","",
  "我会想你的",   "http://www.mwzs.com/bfly/images/upfile/200461422823.jpg",
 "听话",	"http://www.mwzs.com/bfly/images/upfile/200461714108.GIF",
 "你不乖",	"http://www.mwzs.com/bfly/images/upfile/2004617141212.GIF",
 "气死你",	"http://www.mwzs.com/bfly/images/upfile/200461714946.GIF",
 "你真笨",	"http://www.mwzs.com/bfly/images/upfile/2004617141457.JPG",
"我错了",	"http://www.mwzs.com/bfly/images/upfile/2004624153358.GIF",
 "晚安",	"http://www.mwzs.com/bfly/images/upfile/20046171490.GIF",
"拜拜",       "http://www.mwzs.com/bfly/images/upfile/2004617141030.GIF"
);
//——背景色——
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

//下面的变量内部使用，请不要删改
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

//	下面这个函数您可在理解的前提下按需修改
function add_new_element()//加入新的界面元素
{


	for (var i = 0 ; i < 9 ; i ++)
		write_newwindow_button(a_link_button[i*2],5 + 35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","送花",374,60,35,20,"","发送鲜花掌声","autosend(a_flower)");
	write_button("","欢迎",409,60,35,20,"","快速欢迎","autosend(a_welcome)");
	write_button("","插图",339,100,35,20,"","输入图片","insert_picture()");
	write_button("","重复",269,80,35,20,"","重复上次的发言","repeat_msg()");
	write_button("","送行",304,80,35,20,"","快速送行","autosend(a_byebye)");
	write_button("","要麦",339,80,35,20,"","快速要麦","autosend(a_wantmic)");
	write_button("","听见",374,80,35,20,"","快速听见","autosend(a_heart)");
        write_button("","情话",269,100,35,20,"","情话快递","autosend(a_love)");
        write_button("","搅拌",444,60,35,20,"","我要搅拌","autosend(a_yao)");
        write_button("","准备",374,100,35,20,"","准备接麦","autosend(a_yao1)"); 
        write_button("","急麦",409,100,35,20,"","急事要麦","autosend(a_yao2)"); 
        write_button("","赞美",444,100,35,20,"","赞美朋友","autosend(a_yao3)");
        write_button("","谢谢",479,100,35,20,"","感谢大家","autosend(a_yao4)"); 
        write_button("","试麦",512,100,32,20,"","试麦试麦","autosend(a_yao5)");
        write_button("","无音",544,100,30,20,"","没有声音","autosend(a_yao6)"); 
        write_button("","邀请",573,100,30,20,"","邀请诵歌","autosend(a_yao7)");    

 write_button("Az_y","迎宾",304,100,35,20,"","点开这里，系统会自动欢迎刚进来的朋友","Az_yy()");
	write_button("","网址",444,80,35,20,"","本室网址\n"+room_link_url,"send_msg('聊天室网址："+room_link_url+"')");
	write_bkcolor_select("bkcolor","背景",357,39,52,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","图片快递",504,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","动作表情",504,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","本室链接",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
        if (is_online_manager())
	write_singer_form(479,20,select_color);	//	麦序
	write_changeroom_form(269,123,126);	//	换房间
	write_changeuser_form(397,123,208);	//	换名
	//write_make_flower(269,120);	//	自制献花

	if (is_online_manager())
	{       
		write_button("","下管",3,40,35,20,"","快速下管","xiaguan()");
		write_button("switchkick","准踢",339,60,35,20,"","启用踢人功能","switch_kick()");
		write_button("","准备",409,80,35,20,"","准备接麦","send_msg('您好!下一位到您接麦了,请您做好准备~~!谢谢! ')");
		write_select_ex("playadmin","管理专用",533,60,72,select_color,a_admin,"send_msg");
		//	自动护麦及收麦
		if (document.screenForm.LOUT)

document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=收麦 title='将麦克递给自己' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","上管",3,40,35,20,"","快速上管","guan()");
		write_button("autospack","自动",409,80,35,20,"","自动发言","auto_spack()");
		write_button("","告辞",339,60,35,20,"","快速告辞","autosend(a_leave)");
		write_select("linkroom","房间走廊",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}

//////////////////////////////////////////////////////////////

alert('   \n\b       ╭╧╮╭╧╮╭╧╮╭╧╮╭╧╮╭╧╮╭╧╮       \n\b       ║欢│║★│║迎│║★│║光│║★│║临│       \n\b       ╚～╝╚～╝╚～╝╚～╝╚～╝╚～╝╚～╝   \n\b       ╭╧╮╭╧╮╭╧╮╭╧╮╭╧╮╭╧╮╭╧╮       \n\b       ║秋│║★│║叶│║★│║飘│║★│║香│       \n\b       ╚～╝╚～╝╚～╝╚～╝╚～╝╚～╝╚～╝\n\n\b\b\b 欢迎您进入『秋葉飄香』，室主：*ミ瓜瓜ミ     \n\n    希望您在这里能够玩的愉快开心！\n\n\b\b\b 本室欢迎有能力的朋友，加盟本室管理队伍\n\n    有意者请联系室主QQ:4088119！\n\n\b\b\b\ 谢谢您的支持！欢迎你的加入！！')
function writelist()//聊友在线列表
{
	if (typeof(parent.r.listhtml)=="undefined")
		writelistbase();

	var usertype;
	var user_str;
	var user_array = new Array();

//	对聊友重新排序
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
			if (lists[1] == 1)
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
			HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 3]+" style=\"cursor:hand\" >["+lists[1]+"]</font></a>");
		else
			HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">["+lists[1]+"]</font></a>");

		if (is_hidden_user(lists[1]) < 10)
			HTMLstr += "<font color=#FF0099>隐</font>";
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

function init_system()//初始化
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
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'所有人\');document.inputform.bgcolor.value=\'#FE82EE\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
//	重新聊友列表
	parent.write_new=writelist;
//	重写语音区代码
	parent.writecv_new=writecv;
       setTimeout('decoratev()',4000);
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

function reset_elements_style()//重新设置原有界面元素的样式
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
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>');

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
				reset_btn_style(obj,36);
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

function writelistbase()//重写聊友列表区
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

	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("><font color=#ff0000><big><B>&nbsp;&nbsp;"+room_name+"</B></big></font>"));
	HTMLstr += "<a title='当前聊天室在线人数'>[<font color=000000>&nbsp;&nbsp;&nbsp;当前本室有&nbsp;</font>]<font color=red><B id='usercount'>0</B></font><font color=#E300FF>&nbsp;位朋友</font></a><br>";

	HTMLstr += "<a title='在线朋友名单'><font color=#3A9F06>&nbsp;<b>列表:</b></font></a>";
	HTMLstr += "&nbsp;&nbsp;&nbsp;&nbsp;<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">[所有人]<a href=javascript:history.go(0);>[<font color=FF01C0>请刷新</font>]</font></a><br>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr += userlist_bottom_html;
	HTMLstr += ("<br><a title=\"自己现在使用的名字\"><font color=#FF0000 >[" + a_user + "]</font></a>");
	HTMLstr += "<BR><IMG align=absMiddle src=http://www.liaowan.com/logo/logo.gif></a>";
        HTMLstr += "<tr><td colspan=3 align=center><table width='60' border='7' cellspacing='3' cellpadding='3' bordercolordark='red' bordercolorlight='yellow' height='3'><tr><td  colspan=3 width='3' align='center'><span style='font-size: 8.7pt;COLOR:red'><marquee direction=up height=70 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=100 crolldelay=50><center>〓★室主★〓<BR>*ミ瓜瓜ミ<BR>*↘微⺷ǎ⺷雨↙<BR>〓★副室主★〓<BR>*空缺<Br>〓◆配置◆〓<Br>★*ミ瓜瓜ミ</marquee></font></SPAN></td></tr></table></td></tr>";
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.close();
}

function paste_path(imagename,defaultimage)//处理图片地址
{
	imagename = trim(imagename);
	return  (imagename != "")?((imagename.substr(0,7).toLowerCase() != "http://")?config_place+imagename:imagename):defaultimage;
}

function get_user_type(username)//返回聊友类型
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

function is_hidden_user(username)//是否是隐身用户
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

function user_name_filter()//聊友名过滤
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

function open_startup_info_window()//打开弹出窗口
{
	if (url_popup_window != "")
		setTimeout('open_new_url(url_popup_window,"","")',1000);
}

function is_online_manager()//是否是在线管理
{
	return (document.screenForm.KICK);
}

function write_loginmsg()//报到信息
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
	document.inputform.bgcolor.value="#FFDDBB";
	document.inputform.color.options[color].selected=true;
	send_msg(msg);
//	默认的发言文字色和背景色
	document.inputform.color.options[4].selected=true;
	document.inputform.bgcolor.value="";
}

function autosend(array)//自动发送 array 中的一句话
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		msg += "【"+a_user+" 专用】";
	send_msg(msg);
}

function reset_btn_style(btn,width)//重新设定按钮样式
{
	var style = "width:"+width+";height:20;";
	if (button_bk_image == 1)
		style += "background-image:url("+get_btn_pic(width)+");border:1px;";
	else if (button_bk_color != "")
		style += "background:"+button_bk_color+";";
	btn.style.cssText = style;
}

function get_btn_pic(width)//取得宽度最适合的按钮图片
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

function write_button_style(name,left,top,width,height,color,title,fontface)//按钮的样式
{
	var HTMLstr = (name != "")?('<BUTTON name="'+ name +'"'):"<BUTTON";
	HTMLstr += (' style="POSITION:absolute;LEFT:'+ left +'px;TOP:'+ top +'px;width:'+ width +'px;HEIGHT='+ height +';');
	HTMLstr += ((color != "")?('color:' + color + ';'):"");
	HTMLstr += ((button_bk_image == 1)?("background-image:url("+get_btn_pic(width)+");border:1px;"):((button_bk_color != "")?("background:"+button_bk_color+";"):""));
	HTMLstr += ((fontface == "")?('font-family:宋体,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
	HTMLstr += (' title="'+ title +'"');
	document.write(HTMLstr);
}

function open_new_url(theURL,winName,features)//打开新的URL
{
	if (theURL != "")
		window.open(theURL,winName,features);
}

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)//加入打开新URL的按钮
{
	write_button_style("",left,top,width,height,color,title,"");
	if (theURL == "")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+ theURL +'","'+ winName +'","'+ features +'")>'+ value +'</button>');
}

function write_button(name,value,left,top,width,height,color,title,action)//加入执行一个函数的按钮
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="' + action + '">'+ value +'</button>');
}

function addbookmark(type)//加入收藏
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

function guan()//上管
{
	if (!is_online_manager())
		bleave_system = 0,send_msg("//ADMIN " + default_admin_pass);
}

function xiaguan()//下管
{
	if (is_online_manager())
		bleave_system = 0,send_msg("//ADMIN quit");
}

function repeat_msg()//重复上次的发言
{
	if(document.inputform.SAYS.value!="")
		document.inputform.msg.value = document.inputform.SAYS.value + " 〖重复〗";
	document.inputform.msg.focus();
}

function disable_KICK(isdisable)//禁用踢人等
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

function switch_kick()//切换踢人功能
{
	if (switchkick.value=="准踢")
	{
		disable_KICK(false);
		switchkick.value="禁踢";
		switchkick.title="禁用踢人功能";
	}
	else
	{
		disable_KICK(true);
		switchkick.value="准踢";
		switchkick.title="启用踢人功能";
	}
	document.inputform.msg.focus();
}

function select_ex_action(selection,defaultaction)//增强型列表框的响应函数
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

function write_select_ex(name,title,left,top,width,color,array,defaultaction)//增强型列表框（可以执行函数）
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

function write_bkcolor_select(name,title,left,top,width,color,array,action)//背景色
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

function write_select(name,title,left,top,width,color,array,action)//列表框
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

function send_selection_msg(selection)//发送列表框中的话
{
	if(selection.value!="")
		send_msg(selection.value);
	selection.options[0].selected=true;
}

function send_msg(msg)//发言
{
	if(msg != "")
	{
		inputform.msg.value=msg;
		if (checksay())
			document.inputform.submit();
	}
}

function play_pic(selection)//插入图片
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

function is_digit(str)//是否是数字
{
	var digitstr = "0123456789";
	for(var i=0;i<str.length;i++)
		if (digitstr.indexOf(str.charAt(i)) == -1)
			return false;
	return true;
}

function get_room_type(roomid)//房间的类型——大观园、特约或江苏分站的房间
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

function gotoroom(roomid,user,pass)//打开并进入一个新的房间
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

function gotolinkroom(selection)//进入selection中选中的新房间
{
	if(selection.value!="")
	{
		gotoroom(selection.value,a_user,a_pass);
		selection.options[0].selected=true;
	}
}

function changebkcolor(selection)//改变发言背景色
{
	if(selection.value!="")
	{
		document.inputform.bgcolor.value=selection.value;
		selection.options[0].selected=true;
	}
}

function gotolinkurl(selection)//打开selection选中的链接地址
{
	if(selection.value!="")
		open_new_url(selection.value,"","");
	selection.options[0].selected=true;
}

function keep_mic_fnc(user)//递表
{
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

function end_keep_mic()//结束自动护麦
{
	if (keep_mic_user!="" && keep_mic_user!=document.inputform.WHOTO.value)
	{
		window.clearInterval(timer_id);
		document.screenForm.KEEPMIC.value = "护麦";
		document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";
		keep_mic_user = "";
	}
}

function auto_keep_mic()//自动护表
{
	window.clearInterval(timer_id);
	if(keep_mic_user == "" && document.inputform.WHOTO.value != "所有人")
	{
		document.screenForm.KEEPMIC.value = "护麦中";
		document.screenForm.KEEPMIC.title = "停止自动护麦";
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

function auto_spack_fnc()//自动发言处理函数
{
	auto_spack_input(false);
	auto_spack_count ++;
	var msg = msg_auto_spack + "【自动发言 "+auto_spack_count+"】";
	send_msg(msg);
	auto_spack_input(true);
}

function auto_spack()//切换自动发言功能
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

function prepare()//准备发言
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

function listsingers(type)//列麦序
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

function remove_singer()//删除一个麦序
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

function singer_exist(user)//聊友是否存在
{
	if (multi_singer_list == 1)
		return false;
	for(var i=0;i<singerform.singer.options.length; i++)
		if(user==singerform.singer.options[i].value)
			return true;
	return false;
}

function addsinger()//加到麦序最后
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

function insertsinger()//插入麦序
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

function passlist()//批量加入麦序
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

function disablesingermanage(isdisable)//开关麦序管理
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

function singermanage()//切换麦序管理
{
	if(singerform.singmanage.value == "开")
		disablesingermanage(false);
	else
		disablesingermanage(true);
}

function write_singer_form(left,top,color)//加入麦序管理
{
	var ll,bw;
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');

	write_button("singmanage","开",0,0,19,20,"","打开或关闭排麦功能","singermanage()");
	write_button("addtolist","增",19,0,18,20,"","加入名字到麦序末尾","addsinger()");
	write_button("tolist","插",	37,0,18,20,"","插入名字到选定人之前","insertsinger()");
	write_button("removefromlist","删",55,0,18,20,"","从名单中删除所选择的名字","remove_singer()");
	write_button("addlist","批",73,0,18,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");
	write_button("listing","麦序",91,0,35,20,"","公布名单排序","listsingers(0)");

	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >¤-本室-*-麦序-¤</option>');
	document.write('</SELECT></form></DIV>');

	disablesingermanage(true);
}

function validname(username)//是否是合法的聊友名
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

function rename()//换名
{
	if(validname(document.changeuserform.USER.value))
		document.changeuserform.submit();
}

function write_changeroom_form(left,top,width)//加入换房间功能
{
	var w = width;

	if (w < 80)	w = 80;
	var l = w - 35;
	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name = "change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="新开房间,输入房间号\n大观园:123456\n特约房间:t1234\n江苏分站:1234.js" name="roomid">');
	write_button("","换房",l, 0,35,20,"","进其它房间","new_room()");
	document.writeln('</form></DIV>');
}

function new_room()//新开房间
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

function write_changeuser_form(left,top,width)//加入换名功能
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
	write_button("","换名",l, 0,35,20,"","换个名字进来","rename()");
	document.write('</form></DIV>');
}

function writev()//打开语音后的界面
{
	parent.writev();
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");	
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_fullscreen_bgimage != "")?(" url("+m_fullscreen_bgimage+") fixed}"):"}"));
	HTMLstr += '</style><form name=f><center><input type=button name=v2vv value=双工对话 onclick=\'parent.d.v2v();\'>';
	HTMLstr += "<input type=button name=closev value=关闭语音 onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	parent.voiceframe.rows="*,30";
	reset_btn_style(parent.v.f.v2vv,70);
	reset_btn_style(parent.v.f.closev,70);
}
function decoratev()//打开语音后的界面
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
function writecv()//未开语音时的界面
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_fullscreen_bgimage != "")?(" url("+m_fullscreen_bgimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><font face=楷体_GB2312><font size=2 color=#874D01><center><u><b>配置：*瓜瓜</b></u></center></font></font><center><br><input type=button name=closev value=不开就飞 onclick=\"{parent.writev_new();parent.d.decoratev();}\">";
	HTMLstr += "<br><br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>说明&测试<br>聊湾0408版</span></a></body></html>";
	parent.voiceframe.rows="0,*";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	reset_btn_style(parent.v.closev,70);
}

function v2v()//双工处理
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

function is_numeric(str)//是否是数字或字母
{
	for(var j=0;j<str.length;j++)
	{
		if(str.charCodeAt(j)>=256)
			return false;
	}
	return true;
}

function auto_open_ai_fnc()//自动打开图音、自动分屏
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



function check_say_fnc(msg)//过滤发言
{
	return msg;
}

function checksay()//检验发言
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

function insert_picture()//插图
{
	var imgurl = "";
	var tmpurl;

	imgurl = prompt('请输入图片的URL:','http://');
	while (1)
	{
		imgurl=trim(imgurl);

		tmpurl = imgurl.substr(0,7);
		tmpurl = tmpurl.toLowerCase();
		if(tmpurl == "http://" && imgurl.length > 11)
		{
			tmpurl = imgurl.substr(imgurl.length - 4,4);
			tmpurl = tmpurl.toLowerCase();
			if(tmpurl != ".gif" && tmpurl != ".jpg" && tmpurl != ".mid") 
				imgurl = prompt("特别提示：本室只可插入图片！\n请输入文件扩展名为'gif'、'jpg'之类的URL:","http://");
			else if (imgurl.indexOf("?") != -1 || imgurl.indexOf("(") != -1)
				imgurl = prompt("特别提示：本室只可插入图片！且名称中不能有“?”和“(”！\n请输入文件扩展名为'gif'、'jpg'之类的URL:","http://");
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

function writeu1()//重写分屏区
{
	if(this.u1.document==null)
		return;
	this.u1.document.open();
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
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
      if (div_msg3!="") parent.u1.document.write('<p align="center"><font style=filter:glow(color=' + div_msg_color3 + ',strength=3);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>'+div_msg3+'</font></p>');
      if (div_msg4!="") parent.u1.document.write('<p align="left"><font color="#FF6666" size="2" face="宋体"><b>〖'+room_name+'〗公告：</b></font><font color="#blue" size="3" face="宋体">'+div_msg4+'</font></p>');
       if (div_link!="") parent.u1.document.write('<p align="left"><a href='+div_link+' target="_blank"><font color="#FF9900" size="2" face="宋体">'+div_link+'</font></a></p>');
	this.u1.document.write("<p class=\"p9\" align=\"left\">");



}
function auto_log_func()//自动登录后台管理
{
	setTimeout("login_form.submit();",20000);
}

function enable_auto_log(action)//允许后台管理
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

init_system();
add_new_element();
reset_elements_style();

//房间不可踢属性设置，代码开始

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
//房间不能踢的人员设置,函数开始

function buketi()
{

for (i=0;i<wudimajia.length;i++)
{
if (document.inputform.WHOTO.value==wudimajia[i])

{alert('◆||此为高级管理员||切勿再试||◆');
return(false);
}
}
return(true);
}

//////刷卡////////
var roomnameK="秋叶飘香";
var admin=0;var time=0;
function change(){time++;if(document.saveform.show.value=="记录")document.saveform.show.value="管理";else document.saveform.show.value="记录";if((time==600)&& (admin==1))savetime();if((time==600)&& (admin==0))time=0;} 
function savetime(){if(admin==1)window.open("","save","top=20,left=500,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=150,height=100");document.saveform.timesave.value=time;time=0;document.saveform.submit();}
document.write('<DIV align=center style=width:0px;LEFT:4px;TOP:20px;POSITION:absolute>');
document.write('<form name=saveform action=http://www.fs169.net/chat/savetime.php method=post target=save style="MARGIN: 0px">');
document.write('<input type="button" name=show value="管理" style="width:35px;height:18;background-image:url(http://klyj.com/tupian/a36.gif);border:1px" onclick=window.open("http://www.fs169.net/chat/admin.php?room=秋叶飘香")>');
document.write('<input type="hidden" name=roomname value="'+roomnameK+'">');
document.write('<input type="hidden" name=timesave>');
document.write('<input type=hidden name=chatnick value='+document.inputform.USER.value+'>');
document.write('<input type="hidden" name=timer value=0 onclick=savetime()>');
document.write('</form>');
if(document.screenForm.KICK){admin=1;setTimeout("document.saveform.timer.click();",500);}
setInterval('change()', 1000);
document.write('</DIV>');
var guest="<img src= height=1 width=1>" 
document.write(guest) 

//-->