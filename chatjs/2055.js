<!--
/***************************************************************************
	碧聊聊天室界面配置				
	作者：*建站セ纸鹤   改编:	*建站セ纸鹤				
	  修改2004-11-7
***************************************************************************/
var config_place = "http://www.sdtcbn.com/img/";
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
//屏蔽广告
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
		alert('小法['+a_user+']！\n这里不欢迎你，请你滚蛋');            
		parent.close();
		setTimeout('CloseWindow()',3000);
	}
flindex=flindex+2;
}

var room_owner="*冲浪≈室主╬龙浩楠";
var room_name="*建站セ纸鹤";
var room_adminname_head="";
var room_number="411147";
var room_link_url = "http://411147.chat.yinsha.com/";
var black_roomname="";
var black_roomnumb="";
var userlist_top_html = "<td align=middle><img src=http://www.sdtcbn.com/img/tb.gif><br>";
var userlist_bottom_html = "<p align='center' class='p9'><font color=#009900 >《鞍山897冲浪人俱乐部》<br>欢 迎 您</font>";
var gdwz ="聊天室属中年类型<br>文明温馨高雅特点<br>欢迎年轻朋友融入<br>30岁以下请勿申管<br>稳重幽默申管留言<br>感谢您的支持合作";
var userlist_bkcolor="#D6EDC8";//聊友列表区的背景色
var userlist_bkimage="";//聊友列表区的背景图，空串则使用输入区的图片
var voice_normal_color="#00D000";//正常打开语音时的图标颜色
var voice_v2v_color="#000000";//双工语音时的图标颜色
var voice_vr_color="#00D000";//有视频时的图标颜色
var full_screen_bkimage=1;//整体背景
var div_screen_bkcolor="#ECFCE7";//分屏背景色
var div_screen_bkimage="";//分屏背景图片	
var voice_bkcolor="#D6EFC5";//语音区的背景色
var voice_bkimage="";//语音区的背景图，空串则使用聊友区图片
var input_bkcolor="#D6EFC5";//输入区背景色
var input_bkimage="";//输入区背景图片
var input_msg_color="#214EFE";//输入区文字输入框文字色
var input_msg_bkcolor="#DCE0CF";//输入区文字输入框背景色
var body_text_color="#339900";//输入区文字色
var select_color="#339900";//列表框文字色
var select_text_color="#CC4499";//列表框内文字色
var button_text_color="#214EFE";//输入区按钮文字色
var button_bk_image=1;//按钮使用背景图片，1——使用，0——不使用
var button_bk_color = "";//输入区按钮不使用图片时背景色
var a_btn_pic = new Array
(
	17,"18.gif",
	18,"18.gif",
	19,"18.gif",
	35,"35.gif",
	46,"46.gif",
	70,"70.gif"
);
var url_popup_window = "";//进入聊天室时弹出的窗口
var only_registr_user=0;//只允许注册用户进入,0——不限制；1——限制
var only_chinese_name=1;//只允许汉字名用户进入,0——不限制；1——限制
var default_admin_pass="668668";//默认的管理员上管口令
var auto_open_ai=1;//自动打开图音,0——不打开；1——自动打开
var auto_open_mic=1;//自动打开语音,0——不打开；1——自动打开
var auto_open_div=1;//自动分屏,0——不分屏；1——自动分屏
var auto_ref=1;//自动刷新列表
var multi_singer_list=1;//是否允许重复排麦，0——不允许；1——允许
var msg_login="哈哈，〖"+a_user+"〗来了！！四周找个凳子坐，感受一下新疆风味~~";
var msg_admin="大家好，〖"+a_user+"〗上管了,由我来为大家服务:)";
var msg_quitadmin="〖"+a_user+"〗先下管了，谢谢大家对我的支持！！";
var msg_leave="各位：〖"+a_user+"〗先行一步了,下次再和大家聊！";
var msg_auto_spack="我有些事临时离开一下，一会儿就回来！！";
var msg_back_spack="大家好呀，我回来了！你们聊什么呢？让我也听听。。。。。";
var a_link_button = new Array
(
    "论坛",		"http://www.lmang.com//qfbs",
	"主页",		"http://www.lmang.com/",
	"留言",		"http://www.cainiao.com/gbook/index.asp?user=^_^*爱的路上我和你*^_^",
	"音樂",		"http://www.bucuo.net/",
	"百度",  	"http://www.baidu.com/",
	"配置资料",	"http://qq55.cn/?n=2069"
);
//	级别：1——室主；2——高级管理... 3——5 可供设置,其余已由内部使用
var a_vip_user = new Array
(  
	"*建站セ纸鹤",		1,
	"*",   	4,
	"*",		3,
	"*",	5,
	"*",		4,
	"*",        	4,
	"*",		5,
	"*",	4,
	"*ぺぺ天山虎悦ぺぺ",	4,
	"*ぺぺ天山寒松ぺぺ",	4,
	"*ぺぺ天山絮语ぺぺ",	4,
	"*ぺぺ天山文硕ぺぺ",	4,
	"*ぺぺ天山小桥ぺぺ",	4,
	"*ぺぺ天山海风ぺぺ",	4,
	"*ぺぺ天山久久ぺぺ",	4,
	"*ぺぺ天山雨若ぺぺ",	4,
	"*ぺぺ天山流云ぺぺ",	4,
	"*ぺぺ天山小雨ぺぺ",	4,
	"*ぺぺ天山雪峰ぺぺ",	4,
	"*ぺぺ天山有缘ぺぺ",	4,
	"*ぺぺ天山雪莲ぺぺ",	4,
	"*ぺぺ天山蝶舞ぺぺ",	4,
	"*ぺぺ天山之醉ぺぺ",	4,
	"*ぺぺ天山密瓜ぺぺ",	4,
	"*ぺぺ天山天天ぺぺ",	4,
	"*ぺぺ天山寒风ぺぺ",	4,
	"*ぺぺ天山炫彩ぺぺ",	4,
	"*ぺぺ天山绿茶ぺぺ",	4,
	"*ぺぺ天山墨玫ぺぺ",	4,
	"*ぺぺ天山小鱼ぺぺ",	4,
	"*ぺぺ天山一生ぺぺ",	4,
	"*ぺぺ天山灵儿ぺぺ",	4,
	"*ぺぺ天山琳娜ぺぺ",	4,
	"*ぺぺ天山森林ぺぺ",	4,
	"*ぺぺ天山震歌ぺぺ",	4
);
var a_name_filter = new Array
("天山星星","猩猩","老婆","老公","流氓","无赖","人渣","叫床","破鞋","王八","表子","靠你","插你","插死","干你","睾丸","包皮","奶子","做爱","作爱","上床","处女","打炮","乌龟","白痴","骚穴","操你","你娘的","滚开","傻B","靠你","插你","插死","干死","你妈","龟头","奶子","作爱","做爱","聪将","处女","打炮","我操","草你","傻比","署榕","白痴","鸡","猪","鸭","逼","婊","肏","龟","叼","腚","操","吊","淫","屌","奸","死","贱","尻","屎","屄","嫖","赌","泡妞","色魔","色鬼","贼色","色怪","痞");
var a_hide_user = new Array
("*讲文明", 0);
var bianyi = new Array
("*天山星星","*~天山琳娜","*天山七七");
var a_usertitle = new Array
(
	0,"主持","http://www.lmang.com/tp/000.gif","#FFc2e","#FFFFFF",
	1,"室主","http://www.lmang.com/tp/001.gif","#CF04DC","#FFFFFF",
	2,"副室","http://www.lmang.com/tp/002.gif","#3333FF","#FFFFFF",
	3,"巡视","http://www.lmang.com/tp/004.gif","#ff00ff","#FFFFFF",
	4,"网管","http://www.lmang.com/tp/003.gif","#ff00ff","#FFFFFF",
	5,"贵宾","http://www.lmang.com/tp/007.gif","#FF00FF","#FFFFFF",
	6,"嘉宾","http://www.lmang.com/tp/005.gif","#ff00ff","#FFFFFF",
	7,"嘉宾","http://www.lmang.com/tp/005.gif","#ff00ff","#FFFFFF",
	8,"嘉宾","http://www.lmang.com/tp/005.gif","#228B22","",
	9,"嘉宾","http://www.lmang.com/tp/005.gif","#228B22","");
var a_roomlink = new Array
(black_roomname,	black_roomnumb,
    "玫瑰园休闲屋",  "382378",
    "等您加入","");
var a_linkurl = new Array
(
	"带词伴奏",		"http://61.177.188.19/HJY/WLOK/WLOK.htm",
   	"碧聊贺卡",		"http://card.silversand.net/",
	"碧聊伴奏",		"http://talk3.silversand.net/midi/hktaiwan.htm"
);
var a_welcome = new Array
(
	"欢迎",	"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
	"欢迎",	"^_^*《" + room_name + "》*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",
	"欢迎",	"无论您走到天涯海角。《" + room_name + "》永远欢迎您！永远等候您！永远陪伴着您！！！",
	"欢迎",	"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩的开心！聊的开心！唱的开心！！！",
	"欢迎",	"你终于来了呀！欢迎欢迎！！！我在《" + room_name + "》等你,你是我一生的等待和牵挂！朋友！！！"
);

var a_flower = new Array
(
	"醉倒",	"醉倒![[33]]★真好听 *给我签个名吧！哎..大家不要挤嘛,呦..谁踩俺脚了..哎~~签哪儿呢？就签俺衣服上吧！要带唇印的哦~~",
	"签名",	"■~唱的太棒了~～☆★☆～~我听的都醉了~[[30]]～☆★～~给我签名吧~ ～☆★☆～~哇~～！！～☆★☆～~我听的都醉了~",
	"醉了",	"哗啦啦---下雨拉｀、｀、｀、｀鲜花｀、｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、",
	"迷人",	"¤¤¤¤¤¤¤¤¤好棒¤¤¤¤¤好棒哦[[33]]¤¤¤¤¤啪啪啪¤¤¤¤",
	"歌星",	"艺术家！！专业歌星~~~~ぷ╰哗...☆╮ぷ(((((啪啪)))))ぷ╰ぷ╰签名！签名！)嘿！哥们~~~~别挤嘛 **我的鞋呢？眼镜？ ",
	"玫瑰",	"玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰☆☆╮爆米花╰☆☆╮鱿鱼花╰☆☆╮葱花╰☆☆╮ 礼花～～腰花",
	"歌星",	"☆★．°■ ．☆°*°●★ ．歌星啊！真好听 * *．★☆多美妙的声音啊★*°☆* 太棒了！∴°★★°真的是你唱的吗？ ~",
	"偶像",	"☆☆★∴☆∵*☆★∴☆∵[[23]]☆￡鲜花≈☆￡鲜花 ☆∵*☆★∴☆∵偶像～～签名～～～ ∵*☆★∴☆∵",
	"百荷",	"★☆ぷ╰☆╮ぷ╰☆╮满天星★[[30]][[30]]紫丁香★☆ぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮野百荷★☆ぷ╰☆╮ぷ",
	"真棒",	"唱的真棒~~╰☆☆╮茉莉花╰☆☆鼓掌玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉╰☆☆╮还有一枝勿忘我－紫风铃",
	"郁金",	"◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★*郁金香∴→◥◣★☆★◢◤★ ↘ *郁金香∴→◥◣★☆★◢◤★↘",
	"啪啪",	"*^_^*《啪》 *^_^*《啪》 [[22]]*^_^*《啪》 *^_^* *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*",
	"水仙",	"玫瑰花★☆ぷ╰☆╮☆╮满天星★☆ぷ╰☆╮ぷ╰☆╮紫丁香★☆ぷ╰☆╮ぷぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮",
	"牡丹",	"* *．°牡丹★·。 [[30]]*菊花∴ * *夜来香∴°一筐一筐又一筐∴牡丹★·。 *菊花∴ * *夜来香∴°★·君子兰* *．"
);

var a_byebye = new Array
(
	"不舍","真是舍不得你走啊....∮"+room_name+"∮会想你的..走好~~~~~有空常来玩，"+ room_link_url +"，别走错了哦~！〖"+a_user+"送客啦〗",
	"走好","一路走好.留下痛苦.带走快乐.我会想你的.有空常来玩."+room_link_url +".记住∮"+room_name+"∮哦~.〖"+a_user+"送客啦〗"
);

var a_leave = new Array
(
	"告别",	"∮"+room_name+"∮的朋友，告辞了。（长叹一声,凄婉地说道:拜拜●了。一曲离歌泪千行,不知何日再逢君.我这就去了,大家多保重拜拜了//////////〖"+a_user+"告别语〗","后会","青山不改，绿水常流，山高水长，后会有期！不用等到寒月冷日，雪雨风飘时，有缘的你我一定会在《"+room_name+"》再次相会！"
);

var a_love = new Array
(
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
var a_emote = new Array
(
	"☆问候☆","","He你好","//hello","热烈欢迎","//welcome","招呼","//greet","愉快","//:)","握手","//hand",
	"热情拥抱","//bearhug","坐在一起","//sit","献朵玟瑰","//rose","打哈哈","//ha","你太客气","//welcome2","对他笑笑","//:)2","你真好","//thank","热的牛奶","//milk","热茶包子","//tea","喝了再说","//wine","替您擦汗","//sweat","小蘑菇吃","//gzxj",
	"哈哈大笑","//haha","疑惑看着","//?","傻傻呆笑","//giggle","傻笑几声","//he","生日快乐","//birthday","热烈鼓掌","//clap","大喊加油","//addoil",
	"呵呵傻笑","//hehe","☆调情☆","","发誓爱你","//ai","天真望著","//@@","昏倒怀抱","//faint","嘴巴堵你","//ds","我爱上你","//love","含宝脉脉","//love3","轻轻拥抱","//hug","紧紧拥抱","//hug2","紧紧缠住","//spider","轻轻抚摸","//care","抚摸对方","//caress","爱怜抚摸","//touch","啵亲一下","//kiss","额上吻你","//kiss2",
	"脸上吻你","//kiss3","热情拥吻","//smooch","轻吻嘴角","//ykiss","亲了N口","//lly","疯吻对象","//xixi","用爱折磨","//zhemo","☆打斗☆","","将蛋扔去","//allen","流口水","//drivel","咬他哇叫","//bite","你这臭虫","//bug",
	"恶毒看着","//crazy","剁成小块","//cut","落闸放狗","//dog","用铁锤敲","//hammer","打屁屁","//handpat","正中红心","//hit","吹成冰雕","//ice",
	"顶你肚子","//nudge","化为灰烬","//zap","拎耳扔出","//tu","狗皮膏药","//paste",
	"拧得发青","//pinch","吐你满身","//puke","狠揍一顿","//punch","手起刀落","//qia","一枪放倒","//qian","对他狂笑","//znw","踢屁屁","//kick","考虑杀死","//kill","人工呼吸","//breath","篮球扣下","//koxia","☆其他☆","", "吻别再见","//cu2","跟你再见","//bye","望着背影","//cu3","难过要哭","//tear","挥挥手。","//wave" 
);
var a_admin = new Array
(
	"上管拒黑",	"您好!十分对不起，因为"+a_user+"正在上管主持，不能和聊友双工，请您谅解。 ","color:#6600ff",
	"已经排麦",	"您好!您的要麦的名单已经记下了,请您稍后,也请您调试一下你的麦,谢谢您光临本聊天室,"+a_user+"祝你玩得开心玩得快乐!","color:#6600ff",
	"关麦方法",	"新来的朋友！为了能够尊重别人的说话和唱歌，请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","color:#FF0000",
	"抢麦要求",	"您可以自由抢麦！但有一个小小的要求：当其他人说话和唱歌时您可不要断麦噢！因为这是对您和大家的尊重！理解万岁！网速慢的朋友不要着急！请您打出9999，请大家相互支持！","color:#009900",
	"开麦关麦",	"★打开语音就是广播方式，该方式下同时只能有一人使用麦克风；点击语音区“全双工对话”可和网友私聊；点击上面的小话筒出现红叉后，就是关麦，再点击去掉红叉就是开麦","color:#009900",
	"请开语音",	"您好!系统：“您”尚未打开语音或处于双工语音状态,请你打开语音或是退全双工对话,"+a_user+"递不了麦给你.谢谢支持与理解!!","color:#6600ff",
	"文明聊天",	"提醒**请文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","color:#FF0000",
	"打黑警告",	"〖"+a_user+"〗打黑啦...打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！）","color:#6600ff",
	"请你换名",	"〖"+a_user+"〗提醒您，请您换个名字进来，好吗？谢谢您的合作。）））","color:#009900",
	"请您稍后",	"您好!您的要麦的名单已经记下了,请您稍后,也请您调试一下你的麦,〖"+a_user+"〗谢谢您光临本聊天室,祝你玩得开心玩得快乐! ","color:#6600ff",
	"申管方法",	"您要申请网管在留言簿上给室主留言就行了，〖"+a_user+"〗谢谢您的参与。","color:#6600cc"
);
var a_yao = new Array
(  
	"搅拌", "嘿嘿，我〖"+a_user+"〗想搅拌这首歌呀，九九给我麦呀~^_^^_^^_^",
	"搅拌", "999999999哈~〖"+a_user+"〗我要搅拌刚唱的歌呀!"
);
var a_lleave = new Array
(	"答谢",	"〖"+document.inputform.USER.value+"〗多谢多谢!!谢谢您!!!!",
	"谢谢",	"〖"+document.inputform.USER.value+"〗谢谢您的鲜花,掌声和鼓励!!!",
	"再谢",	"〖"+document.inputform.USER.value+"〗衷心感谢朋友们的热情!!!");
var a_picture = new Array
(
	"★祝福★","",
	
	"你好","mg001.gif",
	"欢迎光临","81.gif",
	"作揖","065.gif",
	"谢谢你","mg004.gif",
	"请喝茶","mg005.gif",
	"请喝咖啡","mg006.gif",
	"请抽烟","mg007.gif",
	"请坐","mg008.gif",
	"握手","mg009.gif",
	"听众鼓掌","gu.gif",
	"吻你","0105.gif",
	"好听","mg016.gif",
	"我来伴奏","84.gif",
	"掌声欢迎","mg019.gif",
	"双手鼓掌","02.gif",
	"送你彩灯","http://www.gwzj.net/bj3/67.gif",
	"真好听","mg017.gif",
	"开心","f04.gif",
	"棒","p026.gif",
	"歌声妙","dmm.gif",
	"跳得开心","http://www.gwzj.net/bj3/tw2.gif",
        "独舞","p035.gif",
	"猫和我舞","mg044.gif",
	"★过节★","",
	"恭喜发财","mg010.gif",
	"祝贺新禧","mg011.gif",
	"玫瑰金花","http://nwpj.nease.net/bj1/qn.gif",
	"天天开心","mgy001.gif",
	"天天快乐","mgy003.gif",
	"万事如意","mgy004.gif",
	"心想事成","mgy005.gif",
	"心心相印","mgy008.gif",
	"锦绣前程","mgy007.gif",
	"平安喜乐","mgy010.gif",
	"幸福美满","mgy009.gif",
	"永远幸福","mgy011.gif",
	"生日快乐","mg028.gif",
	"快快乐乐","mgy018.gif",
	"纯洁友情","mgy016.gif",
	"平平安安","mgy013.gif",
	"四喜开泰","mgy014.gif",
	"六六大顺","mgy016.gif",
	"鲜花美酒","mgy017.gif",
	"大吉大力","mg032.gif",
	"福星高照","mg033.gif",
	"越赚越多","mg034.gif",
	"哈哈","mg041.gif",
	"看我开心","mg042.gif",
	"美女","http://img.mms.sohu.com/mms/1084/94/17294/p1.gif",
	"★鲜花★","",
	"鸟吻","mg054.gif",
	"月亮","84.gif",
	"花之吻","mg021.gif",
	"玫瑰花蕊","mg022.gif",
	"红玫瑰","mgy019.gif",
	"妹妹上花轿","mg029.gif",
	"小狗吹喇叭","mg030.gif",
	"做梦","mg027.gif",
	"小狗","mg051.gif",
	"小猫","mao001.gif",
	"一起去","mao002.gif",
	"新发现","mao003.gif",
	"刻的字","mao004.gif",
	"不好意思","mao005.gif",
	"喝吧","mao006.gif",
	"上树","mao007.gif",
	"有口水","mao008.gif",
	"少喝一点","mao009.gif",
	"不许乱望","http://vip.aofa.cn/ftp/w883/01/306.gif",
	"醒来了","mao012.gif",
	"这样才能睡","mao013.gif",
	"给你按摩","mao014.gif",
	"我哭哦","p003.gif",
	"不要哭","http://www.gwzj.net/bj3/0111.gif",
        "对不起","31.gif",
	"★打斗★","",
	"踢你","mg052.gif",
	"吹喇叭","p008.gif",
	"不要哦","p009.gif",
	"别啊","p010.gif",
	"踢飞你","p013.gif",
	"封你嘴","p014.gif",
	"发功","mg053.gif",
	"看拳","p016.gif",
	"踩你","p017.gif",
	"打pp","p018.gif",
	"顶你","p019.gif",
	"晕倒","p020.gif",
	"开心","p022.gif",
	"自我介绍","mg058.gif",
	"气s我了","p023.gif",
	"送花","p024.gif",
	"勾手指","p025.gif",
	"亲你","p027.gif",
	"埋你","p029.gif",
	"小偷","p030.gif",
	"天使","p032.gif",
	"对不起","p036.gif",
	"拜拜","mg056.gif",
	"一帆风顺","mg057.gif"
);
var a_bkcolor = new Array
(
	"CCCCFF","99FFCC","FD4D3E","B877DB","FFFFFF","FFCC99","CCFFFF","FFCCFF","FFFFD3","F7E6FF","D3D3FF","ffaaaa","ccffa6","b1fee9","adcafe","d5bbff","f1bbff","D752EB","7BB706","DBF3B3","FFCC99","C8D0e8","582424","4C67D6","0033ff","00ff00"
);
var a_wantmic = new Array
(
	"要麦",	"〖"+a_user+"〗要麦啦99999999999999999",
	"唱歌",	"〖"+a_user+"〗要唱歌啦9999999 ☆★☆★☆★"
);
var a_wantmix = new Array
(
	"感谢",	"您好!〖"+a_user+"〗谢谢您为大家献上的歌曲,非常的动听,如果有时间再为大家献上一曲吧,我们感谢您..同时也欢迎您常来!!"
);
var a_wantmir = new Array
(
	"邀请",	"您好!亲爱的朋友,欢迎你的到来,你可以给大家唱一首歌吗？？？）〖"+a_user+"〗谢谢你啦☆⌒_⌒．☆° ．"
);
var a_heart = new Array
(
	"听见",	"111111111111〖"+a_user+"〗【听见了】【听见了】",
	"听见",	"〖"+a_user+"〗听见了，好清楚11111111111111"
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
var auto_welcomer="大厅迎宾礼仪";
var m_fullscreen_bgimage=parent.u.document.body.background;
m_full_screen_bkimage_d = m_full_screen_bkimage_r =  m_full_screen_bkimage_u1 = false;

//	下面这个函数您可在理解的前提下按需修改
function add_new_element()
{
	write_button("","收藏",5, 0,35,20,"","将本室加入收藏","addbookmark(0)");
	for (var i = 0 ; i < 5 ; i ++)
		write_newwindow_button(a_link_button[i*2],41 + 46 * i,0,46,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_newwindow_button(a_link_button[10],41 + 46 * 5,0,70,20,"",a_link_button[10] + "\n" + a_link_button[11],a_link_button[11],"","");
	write_button("","献花",374,60,35,20,"","发送鲜花掌声","autosend(a_flower)");
	write_button("","欢迎",409,60,35,20,"","快速欢迎","autosend(a_welcome)");
	write_button("","插图",444,60,35,20,"","输入图片","insert_picture()");
	write_button("","重复",478,39,35,20,"","重复上次的发言","repeat_msg()");
	write_button("","送行",304,80,35,20,"","快速送行","autosend(a_byebye)");
	write_button("","要麦",339,80,35,20,"","快速要麦","autosend(a_wantmic)");
	write_button("","听见",374,80,35,20,"","快速听见","autosend(a_heart)");
	write_button("","答谢",444,0,35,20,"","答谢朋友","autosend(a_lleave)");
	write_button("","网址",444,80,35,20,"","本室网址\n"+room_link_url,"send_msg('聊天室网址："+room_link_url+"')");
	write_bkcolor_select("bkcolor","背景色",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","友情图片",479,60,72,select_color,a_picture,"play_pic(this)");
	write_button("","搅拌",558,39,45,20,"","要搅拌点这里","autosend(a_yao)");
	write_button("","情话",269,80,35,20,"","情话快递","autosend(a_love)");
	write_select("playemote","表情动作",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","本室链接",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_singer_form(479,0,select_color);
	write_changeuser_form(397,100,208);
	if (is_online_manager())
	{
		write_button("IntFlower","送花",339,0,35,20,"#ff69b4","快速送花","IntervalFlower()");
		write_button("","邀请",374,0,35,20,"","邀请唱歌","autosend(a_wantmir)");
		write_button("","谢歌",409,0,35,20,"","快速谢歌","autosend(a_wantmix)");
		write_button("","下管",0,40,35,20,"","快速下管","xiaguan()");
		document.write("<scri"+"pt src=\"http://www.sdtcbn.com/img/pobot.js\"></scri"+"pt>");
		write_button("switchkick","准踢",339,60,35,20,"","启用踢人功能","switch_kick()");
		write_button("","准备",409,80,35,20,"","准备接麦","send_msg('您好!下一位到您接麦了,请您做好准备~~!谢谢! ')");
		write_select_ex("playadmin","管理专用",533,60,72,select_color,a_admin,"send_msg");
		document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每10秒自动护麦' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=收麦 title='将麦克递给自己' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","上管",5,40,35,20,"","快速上管","guan()");
		write_button("","告辞",339,60,35,20,"","快速告辞","autosend(a_leave)");
		write_select("linkroom","房间走廊",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
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
			HTMLstr += "<font color=#FF0099>隐</font>";
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

function init_system()//系统初始
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
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'所有人\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
	parent.write=writelist;
	parent.writecv = (auto_open_mic ==1)?writev:writecv;
	parent.writeu1 = writeu1;
	open_startup_info_window();
	setTimeout("auto_open_ai_fnc()",3000);
	if (is_hidden_user(a_user) < 10)
		document.inputform.ws.checked=true;
	setTimeout("write_loginmsg()",2500);
}

function reset_elements_style()//重设界面
{
	document.write('<body bgproperties=fixed topmargin=19 leftmargin=6')
	if (m_full_screen_bkimage_d)
		document.write(' style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');
	document.write('><style type=text/css>TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write("BODY{background:"+((input_bkcolor != "")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
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

	var aOption = new Option("咖啡", "#993300"); 
	aOption.style.color= "#993300";
	document.inputform.color.add(aOption); 

	aOption = new Option("紫铜", "#990099"); 
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
	HTMLstr += "<br><a title=\"请您注意\"><marquee scrollamount=4 scrolldelay=300 bgcolor=><strong><font color=0033ff>欢迎<font color=red>【"+document.inputform.USER.value+"】<font color=0033ff>来到<font color=red>≮天山情缘≯</font>语音视频聊天室。<font color=0033ff>要麦请向</font><font color=red>本室红衣管理</font><font color=0033ff>打</font><font color=red>999~<font color=0033ff>！！！</font></strong></marquee></b>";
	HTMLstr += "<br><br><a title='当前聊天室在线人数'><font color=000000> 当前本室有 </font><font color=red><B id='usercount'>0</B></font><font color=000000> 位朋友</font></a><br>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">[所有人]</a>";
	HTMLstr += "</font><a title='刷新聊友列表' href=\'javascript:parent.writeuserlist();\'><font color=0000ff>【刷新】</a></font>";
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
	if (typeof(a_hide_user) == "大厅迎宾礼仪")
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
        if (a_user.length < 2)
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('您好!\n万分抱歉，马甲名太短!\n哈哈,笑死我了');
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
	document.inputform.color.options[4].selected=true;//设默认字色
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
	HTMLstr += ((fontface == "")?('font-family:宋体,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
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
		document.screenForm.GETMIC.value=isdisable?"收麦":"收";
	}
}

function switch_kick()
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
var IFlowerInteval=0;//自动献花
var CFlowerToWho="";
function IntervalFlower() 
{
	if ((document.inputform.WHOTO.value!= "所有人")&&(document.inputform.WHOTO.value!="朋友们"))
		{
			CFlowerToWho=document.inputform.WHOTO.value;
				if (IntFlower.value=="送花") 
				{
					IntFlower.value="停止";
					CFlowerToWho=document.inputform.WHOTO.value;
					IFlowerInteval=setInterval("AutoFlowerHelper()",6000); 
				}
				else 
					if (IntFlower.value=="停止") {IntFlower.value="送花";
				clearInterval (IFlowerInteval);CFlowerToWho="" }
		}
		else 
			alert("系统:送花图片不可以向所有人!!") 
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
		alert('请先选择图音!');
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
		document.screenForm.KEEPMIC.value = "护麦";
		document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";
		keep_mic_user = "";
	}
}

function auto_keep_mic()
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

var user_b;
var reautoyn=0;
var reautowordb="我不在，一会回来!!!【自动回复】";
var reautoword=reautowordb;
function reauto(){
     if(!document.inputform.divs.checked){
           alert("请先打开分屏,保证您回来时候能看到朋友的留言!!");
           return false;
     }
     if(!reautoyn){
           reautoword = prompt("请输入您的自动回复:", reautoword);
     if (!reautoword)
           reautoword=reautowordb;
     reautoyn=1;
     document.all.reauto.value="回来";
     }else{
     document.all.reauto.value="自动";
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
document.writeln("<div id='autore' style='position:absolute; left:409px; top:80px;'><input style='background-image:url(http://www.sdtcbn.com/img/35.gif);border:1px;width:35;height:20;' name='reauto' type='button' value='自动' onclick='reauto();'></div>");

function prepare()
{
	if(document.singerform.singer.selectedIndex > 0)
	{
	  parent.cs(singerform.singer.value);	
      	}
	else
		parent.cs("所有人");
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
     if(who!="所有人" && !existSinger(who)){
           opt=document.createElement("option");
           opt.value=who;
           opt.text=who;
           sel.options.add(opt);
           sel.selectedIndex=1;
           sendMsg("感谢您的999，您的麦序是第【"+(sel.length-1)+"】位，请稍候……很快就到您了！");
     }
     document.inputform.msg.focus();
}
function insertSinger(){//插入一个麦序
     var who,opt,sel;
     who=document.inputform.WHOTO.value;
     sel=singerform.singer;
     if(who!="所有人" && !existSinger(who)){
           opt=document.createElement("option");
           opt.value=who;
           opt.text=who;
           if(sel.selectedIndex>0){
                 sel.options.add(opt,sel.selectedIndex);
                 sendMsg("感谢您的999，您当前的麦序是第【"+(sel.selectedIndex-1)+"】位，请您耐心等待!");
                 sel.selectedIndex=1;
           }else{
                 sel.options.add(opt);
                 sel.selectedIndex=1;
                 sendMsg("您当前的麦序是第【"+(sel.length-1)+"】位，很快就到您了！");
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
     if(sel.length>1 && confirm("警告:本操作无法恢复！\n您确定要清空列表吗？")){
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
     s="谢谢您的耐心等待，下一位该是您的了，请准备接好您的麦克风~~";
     sel=singerform.singer;      
     var dxvalues=document.inputform.WHOTO.value;
     if (sel.options[1].value!=""){
           parent.cs(sel.options[1].value);
                 send_msg(s);
                 parent.cs(dxvalues);}
}

function transSinger(){
     var sel,d,
     d="您好，到您的麦序了，请接好麦克风，谢谢！。。。";
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
function dragSinger(){//智能导麦
     var s,re,a,k,j=0,who,opt;
     sel=singerform.singer;
     s=parent.u.document.selection.createRange().text;
     if(s=="") s=parent.u1.document.selection.createRange().text;
     if(s=="") s=parent.r.document.selection.createRange().text;
     if(s=="") s=document.selection.createRange().text;
     if(s=="") alert("请选中麦序再导入!");
     else{
           re=new RegExp("\\[.*?\\]","g");
           a=s.match(re);
           if(a!=null){
                 for(k=1;k<a.length;k++){
                       who=a[k].substring(1,a[k].length-1);
                       if(who!="所有人" && !existSinger(who)){
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
           if(j>0) alert("成功导入"+j+"个麦序!");
           else alert("没有导入任何麦序!");
     }
     document.inputform.msg.focus();
}
function listSinger(){
     var sel=document.singerform.singer;
     var ma=new Array();
     var mx=85;
     for(var n=1;n<sel.options.length;n++) ma[ma.length]="["+sel.options[n].value+"]";
     var ms=ma.join("");
     if(ma.length==0) sendMsg("麦序:(空)");
     else if(ms.length<mx) sendMsg("麦序:"+ms);
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
           for(var k=0;k<mc.length;k++) setTimeout("sendMsg('"+"麦序("+k+"):"+mc[k].join("")+"')",k*1800);
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
     write_button("addtolist","加",0,0,18,20,"","加入名字到名单排序末尾","addSinger()");
     write_button("tolist","插",18,0,18,20,"","插入名字到选定人之前","insertSinger()");
     write_button("removefromlist","删",36,0,18,20,"","从名单排序中删除所选择的名字","removeSinger()")
     write_button("clearlist","清",54,0,18,20,"","清除所有的麦序","clearSinger()");
     write_button("addlist","批",72,0,18,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");
     write_button("listing","序",90,0,18,20,"","公布名单排序象","listSinger()");
     write_button("translist","传",108,0,18,20,"","将麦传给第一位麦序后并删除其麦序","transSinger()");
     	document.write('<select name="singer"  onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >¤-本室-*-麦序-¤</option>');
	document.write('</SELECT></form></DIV>');
}

function validname(username)
{
	if (username.length < 2)
	{
		alert("请选用两个中文字符以上的名字!")
		return false;
	}
	if(username.search("#") != -1 || username.search('&') != -1)
	{
		alert("名字中不能包含特殊字符: # & ");
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
	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="输入新名字" name="USER">');
	document.write('<input type="password"  style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="输入密码" name="PASS">');
	write_button("","换名",l, 0,35,20,"","换个名字进来","rename()");
	document.write('</form></DIV>');
}

////////////////////////////////
//	语音部分
function writev()//打开语音后的界面
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
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");	
	HTMLstr += '</style><form name=f><center><input type=button name=v2vv value=双工对话 onclick=\'parent.d.v2v();\'>';
	HTMLstr += "<input type=button name=closev value=关闭语音 onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	parent.voiceframe.rows="*,30";
	reset_btn_style(parent.v.f.v2vv,70);
	reset_btn_style(parent.v.f.closev,70);
}

function writecv()//未开语音时的界面
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
	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>说明&测试</span></a></body></html>";
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
		alert('字多啦，哈~');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('懒虫，打几个字哦~');
		document.inputform.msg.focus();
		return false;
	}
	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('嘿嘿，按重复键啦~');
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
			if(tmpurl != ".gif" && tmpurl != ".jpg") 
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

function writeu1()
{
	if(this.u1.document==null)
		return;
	this.u1.document.open();
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
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
	parent.u1.document.write('<font color=#ff0000>【公告】：<font color=#009933>本聊天室宗旨是欢乐、文明、团结、友谊语音平台。凡是闲话是非、诈骗钱财、误见网友、发布不良语言图片造成损失或触犯法律法规者，本室概不负责。</font><br>');
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

function auto_welcome()//自动迎宾函数
{
	var welcomer_color="#ff00ff",welcomer_after_color="green",welcome_backcolor="",welcome_color="red";

	var welcome_words="<span style=\"background-color:"+welcome_backcolor+" ; color:"+welcome_color+";font-family:宋体;\">《"+room_name+"》聊天室欢迎【"+a_user+"】的到来,希望你在此:"+room_link_url+"玩的开心! </span>";
	var mydate=new Date();
	var hour=mydate.getHours();
	var minute=mydate.getMinutes();
	var second=mydate.getSeconds();
	var timee=((hour<10)?"0":"") + hour +((minute<10)?":0":":") + minute +((second<10)?":0":":") + second;
	var welcome11="<span class='p9'>("+timee+")<a href=\"javascript:parent.cs(\'"+auto_welcomer+"\');\" target=d><font color="+welcomer_color+">"+auto_welcomer+"</font></a><font color="+welcomer_after_color+">热情握住<a href=\"javascript:parent.cs(\'"+a_user+"\');\" target=d>"+a_user+"</a>的手,微笑地说:</font>"+welcome_words;
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
//初始化
init_system();
add_new_element();
reset_elements_style();
//-->

