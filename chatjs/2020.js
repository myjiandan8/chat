
alert("《欢乐今霄》欢迎您.   本聊天室招管理员若干：需有一定文化水平，有

管理经验");

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
var room_name="欢乐今霄";			//	
var room_adminname_head="*";			//
var room_number="2020";			//
var room_link_url = "http://2020.liaowan.com";	//	
var black_roomname="";			//	
var black_roomnumb="";			//	

//var userlist_top_html = "<B>  <font color=#0000FF size=4>欢乐今霄

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

width=100 crolldelay=50><center>欢迎光临<Br>《" + room_name + "》<Br>室

主：<Br>配置提

供:<Br><Br></marquee></font></SPAN></td></tr></table></td></tr>";

var userlist_bkcolor = "#E8F4E0";	//	聊友列表区的背景色
var userlist_bkimage = "";	//	聊友列表区的背景图，设置为空串

则使用输入区的图片
var voice_normal_color = "#00D000";	//	正常打开语音时的图标颜

色
var voice_v2v_color = "#00EE00";	//	双工语音时的图标颜色
var voice_vr_color = "#00D000";		//	有视频时的图标颜色

var div_screen_bkcolor = "#F8F7E8";		//分屏背景色	
var div_screen_bkimage = "d.jpg";		//分屏背景图片		

var voice_bkcolor = "";		//语音区的背景色	
var voice_bkimage = "";		//语音区的背景图，空串则使用聊友区图片	

var input_bkcolor = "#E8F4E0";		//输入区背景色	
var input_bkimage = "";		//输入区背景图片	
var input_msg_color	= "#117D00";	//	输入区文字输入框背景色
var input_msg_bkcolor = "";	//	输入区文字色

var body_text_color	= "#339900";	//	列表框文字色
var select_color = "#339900";		//	列表框内文字色
var select_text_color = "#CC4499";	//      输入区按钮文字色	
var button_text_color = "#339900";	//	输入区按钮不使用图片时

背景色	
var button_bk_image = "1";		//	按钮使用背景图片，1——

使用，0——不使用	
var button_bk_color = "#339900";	//	输入区按钮不使用图片时

背景色

var full_screen_bkimage	= 1;		//	是否使用整体背景图片0—

—不使用，1——使用	

//	按钮背景图片  宽度,文件名
var a_btn_pic = new Array
(
	17,		"18.gif",
	18,		"18.gif",
	19,		"18.gif",
	35,		"36.gif",
        46,		"44.gif",
	70,		"71.gif"
);

var url_popup_window = "";			//	进入聊天室时弹

出的窗口，如果为空则不弹出
var	only_registr_user = 0;			//	只允许注册用户

进入,0——不限制；1——只允许注册用户进入
var	only_chinese_name = 0;			//	只允许汉字名用

户进入,0——不限制；1——只允许汉字名用户进入
var default_admin_pass = "123";		//	默认的管理员上管口令	

var auto_open_ai = 1;				//	自动打开图音,0

——不打开；1——自动打开
var auto_open_mic = 1;				//	自动打开语音,0

——不打开；1——自动打开	
var auto_open_div = 1;				//	自动分屏,0——

不分屏；1——自动分屏	
var multi_singer_list = 0;			//	是否允许重复排

麦，0——不允许；1——允许

var msg_login		=	"是我[[30]]〖"+a_user+"〗来了！！《" + 

room_name + "》[[22]]是我真正的家~~~";
var msg_admin		=	"大家好，[[33]]〖"+a_user+"〗上管了,

[[22]]由我来为大家服务:)";
var msg_quitadmin	=	"〖"+a_user+"〗先下管了，[[33]]谢谢大家

对我的支持！！";
var msg_leave		=	"各位：〖"+a_user+"〗先行一步了,下次再

和大家聊！";
var msg_auto_spack	=	"我有些事临时离开一下，一会儿就回来！！

！";
var msg_back_spack	=	"大家好呀，[[30]]我回来了！你们聊什么呢

？[[33]]让我也听听...";

////分屏公告//////////////////////
function fp(){
parent.u1.document.write('<body bgproperties=fixed>');
parent.u1.document.write('<font face=楷体_GB2312><font 

color=#ff1710><b>【迎宾小姐】：</font><font color=#009933>欢迎您光临

<b><u><i><font color=#ff1710 size=4>欢</font></i><font color=#0000FF 

size=4>乐</font><font color=#FF00FF size=4>今</font><font color=#0000FF 

size=4>霄</font></u></b>，欢迎您^_^这里就是您的家!<font size=3 

color=#ff1710><b><u>http://2020.liaowan.com!

</u></b></font></b></font></font><br>');

}
function fpbg(){
setTimeout("fp()",2000);}
fpbg();

//	
var a_link_button = new Array
(
      
	
	"本室论坛","http://www.liaowan.com/bbs/index.asp",
         "本室留言","http://2029.liaowan.com"
        
);

//	本室中的 VIP 聊友
//	级别：1——室主；2——高级管理... 3——5 可供设置,其余已由内部

使用	
var a_vip_user = new Array
(
       "*",		1,
        "*",		2,
	"*",		1,
	"*",		5,
        "*",	        3
);
//——聊友名过滤，凡是名字中包含下面文字的聊友，只要不是上面的VIP聊友，

不准进入房间——
var a_name_filter = new Array
(
	"棺","臭","鸡","鸭","死","亡","叔","爹","爸","妈","爷","激情","

恶男","第三者","同性恋","主的爸","死八公","老婆","老公","流氓","无赖","

渣","肚兜","变态","色狼","射精","傻逼","叫床","破鞋","王八","老豆","表

子","瓜","靠你","插你","插死","干你","睾丸","包皮","奶子","做爱","作

爱","上床","处女","打炮","乌龟","白痴","骚穴","操你","你娘的","滚开","

傻B","靠你","插你","插死","干死","你妈","龟头","奶子","作爱","做爱","聪

将","处女","打炮","我操","草你","傻比","署榕","绪榕","白痴","鸡","猪","

鸭","坏","逼","婊","赑","妣","肏","龟","叼","腚","操","吊","淫","屌","

奸","死","贱","尻","天屎","屄","嫖","赌","泡妞","色魔","色鬼","贼色","

色怪主的爸","冥王星","踢"
);
//      便衣马甲
     var bianyi = new Array
    ("*", 1,"*",  1,"*", 1,"*", 1,"", 1,"", 1,"", 1,"", 1,"", 1,"", 

1,"", 1,"", 1,"", 1
    );


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

//——隐身人：名称，隐身等级。下面的名字是可以隐身的，但级别等于隐身级

别的聊友可以看到他的名字
var a_hide_user = new Array
 ("*兜兜小屋", 1,"*",  1,"*", 1,"*", 1,"", 1,"", 1,"", 1,"", 1,"", 

1,"", 1,"", 1,"", 1,"", 1
    );

//——聊友说明，在此修改聊友名字的颜色——
var a_usertitle = new Array
(
	0,	"主持","http://shiyu.myrice.com/2032/0.gif",	        

                        "#FFc2e","#FFFFFF",
	1,	"室主","http://shiyu.myrice.com/2032/1.gif",	        

                        "#960480","#FFFFFF",
	2,	"副室","http://shiyu.myrice.com/2032/2.gif",            

"#BD1AE6","#FFFFFF",
	3,	"歌手","http://shiyu.myrice.com/2032/3.gif",	        

"#F40BF7","#FFFFFF",
	4,	"配置","http://shiyu.myrice.com/2032/4.gif",            

"#FF00FF","#FFFFFF",
	5,	"高管","http://shiyu.myrice.com/2032/5.gif",            

"#021945","#FFFFFF",
	6,	"管理","http://shiyu.myrice.com/2032/6.gif",            

"#6903fe","#FFFFFF",
	7,	"贵宾","http://shiyu.myrice.com/2032/7.gif",	        

"#0033CC","#FFFFFF",
	8,	"嘉宾","http://shiyu.myrice.com/2032/8.gif",	        

"#6903fe","#FFFFFF",
	9,	"客人","http://shiyu.myrice.com/2032/9.gif",	        

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
	"等您加入",	  ""
);

//——房间链接——
var a_linkurl = new Array
(
    
    "天气预报", 	"http://www.cma.gov.cn/qx/qxshow.php",
    "火车查询", 	

"http://cctv.ctrip.com/supermarket/train/trainsearch_1.asp",
    "百度搜索" ,	"http://baidu.com/",
    "用户注册", 	"http://admin.bliao.com/user/reguser.htm",
    "江苏注册",     "http://www.js.bliao.com/user_reg.php",
    "大观园配置",   "http://admin.bliao.com/admin/s_admin.php",
    "特约配置",     "http://admin.bliao.com/admin/r_admin.php",
    "江苏配置",     "http://www.js.bliao.com/admin/s_admin.php",
    "设置管理员",   "http://admin.bliao.com/admin/s_admintor.php",
    "赞美大全",	    "http://www.oicq88.com/chat/zm.htm",
    "网页图片",	    "http://www.4gee.com/",
    "歌词搜索",  	"http://music.qu-zhou.com/geci/main.htm",
    "雅虎中文",	    "http://cn.yahoo.com/"
);
//——枪炮——
var a_pictures = new Array
(
	
        "炸你",      "http://www.lndd.org/button/0_11.gif",
        "平射",      "http://www.w555.com/pc/img/gif/bar/3/3.gif",
        "打你",      "http://www.w555.com/pc/img/gif/bar/3/0.gif",  
        "刺你",      "http://www.w555.com/pc/img/gif/bar/3/7.gif"
        
);
//——欢迎——
var a_welcome = new Array
(
	"欢迎",	"欢迎您光临"+room_name+"语音聊天

室!"+document.inputform.USER.value+"愿您在这里玩儿的开心！玩儿的愉快！

这里就是您的家！！！"+document.inputform.USER.value+"迎接你",
	"欢迎",	"欢迎您光临"+room_name+"语音聊天室！愿您在这里玩的开心

！聊的开心！唱的开心！"+document.inputform.USER.value+"迎接你！！！",
	"欢迎",	"你终于来了呀！欢迎欢迎！！！

〖"+document.inputform.USER.value+"〗在"+room_name+"等着你,你是我一生的

等待和牵挂！朋友！哈哈！"+document.inputform.USER.value+"迎接你"
);

//——献花——
var a_flower = new Array
(
	"醉倒",	"真好听!给我签个名吧！哎.大家不要挤嘛.谁踩俺脚了.哎~签

哪儿呢？就签俺衣服上吧！",
	"签名",	"■~唱的太棒了☆★☆给我签个名吧 ～哇～！唱的太棒了~～

☆～我听的都醉了~0~",
	"醉了",	"好听｀给你雨伞、迷死了｀、鲜花｀、｀、好听｀给你雨伞、

迷死了!!",
	"迷人",	"好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤好棒哦¤¤¤¤

¤",
	"歌星",	"艺术家！！专业歌星~~~╰签名！签名嘿！哥们~~~~别挤嘛 **

我的鞋呢？眼镜？ ",
	"玫瑰",	"玫瑰花☆╮╮芍药花☆╮╰☆╮合欢花╰☆╮喇叭花╰☆╮礼

花～～杠上花",
	"棒棒",	"棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒

〓★〓棒棒棒〓★",
	"歌星",	"真好听☆多美妙的声音啊★*太棒了!真的是你唱的吗？我怀疑

是歌星唱的啊！！",
	"偶像",	"≈☆￡鲜花≈☆￡鲜花偶像～～签名～ *☆★∴☆∵偶像～～

签名～～～ ∵*",
	"呱唧",	"哇晒！！好~!~吧唧吧唧!!~!~!~呱唧呱唧呱唧~!!~吧唧吧唧

~!!!~呱唧呱唧呱唧~!!",
	"百荷",	"满天星★☆ぷぷぷ╰☆╮紫丁香╰☆╮水仙花★☆ぷ╰☆╮野

百荷★☆ぷ╰☆╮ぷ",
	"好听",	"唱得好！▁▂▃▄▅▆▇▇▆▅▄▃▂▁啪啪啪▁▂▃▄▅▆

▇▇▆▅▄▃▂▁",
	"加油",	"加油加油！为你加油！你唱的真好哦！瑰花★☆ぷ╰☆╮满天

星★☆╮ぷ",
	"真棒",	"唱的真棒~~╰☆☆╮茉莉花╰☆玫瑰╰☆╮百合╰☆☆╮牡丹

╰☆╮－紫风铃",
	"郁金",	":→*郁金香∴→◥◣★☆★◢◤★℡↘*郁金香∴→◥◣★☆

★◢◤★ ↘ ",
	"花掌",	"鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～

鲜花～掌声～～",
	"啪啪",	"*^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^* 《啪》 *^_^

《啪》 *^_^**",
	"水仙",	"玫瑰花★☆ぷ╰☆满天星★☆ぷぷ╰☆╮紫丁香★☆ぷ╰☆╮

水仙花★☆ぷ╰",
	"牡丹",	"*牡丹★*菊花∴夜来香∴牡丹★*菊花∴夜来香∴★君子兰* 

一筐一筐又一筐*∴*"
);
//——情话——
var a_love = new Array
(
	"爱错",	"如果我能拥有这份荣幸，

〖"+document.inputform.USER.value+"〗愿终身陪伴着你，一年四季陪伴着你",
	"旧梦",	"春天，〖"+document.inputform.USER.value+"〗陪你轻轻漫

步在盛开的百花之间！！！",
	"网情",	"夏天，〖"+document.inputform.USER.value+"〗陪你奔跑在

欢乐的小河之畔！！！",
	"讨好",	"秋天，〖"+document.inputform.USER.value+"〗陪你倘徉在

火红的枫林之下！！！",
	"思念",	"冬天，〖"+document.inputform.USER.value+"〗陪你围坐在

炽热的火炉旁边！！！",
	"错号",	"〖"+document.inputform.USER.value+"〗为你愿意化作一杯

黄土，这黄土上长出的青草也是为你而绿，开出的黄花也是为你而香；",
	"想你",	"如果有一天，〖"+document.inputform.USER.value+"〗化作

了一溪清泉，这清泉里翩跹游摆的鱼儿也是为你而舞，那叮咚的泉响也是为你而

唱。请允许我，允许〖"+document.inputform.USER.value+"〗说-我爱你!",
	"没缘",	"我爱你，以昔日的剧痛和童年的忠诚；我爱你，以我的眼泪和

笑声；我爱你，以我的双臂和肩膀，以及我全部的力量。",
	"四季",	"你象一股暖暖的春风，漾起了我心海里爱的波澜；你象一片轻

柔的云彩，缚获住我多情的视线；",
	"红颜",	"你是那样的美，美得象席慕容的一首抒情诗，你是那样的纯，

纯得象一块冰莹剔透的水晶石。",
	"开心",	"你清丽秀雅的脸上始终荡漾着春天般美丽的笑容，在你那流转

顾盼的眼睛里，〖"+document.inputform.USER.value+"〗总能捕捉到你的宁静，

你的热烈，你的敏感，你的聪颖",
	"想你",	"想你的时候是清风拂过睡莲的幽香,念你的时候歌声越过晚霞

的飘渺.你知道〖"+document.inputform.USER.value+"〗在想你吗? ",
	"网恋",	"倘若西子再世，见到你她也会自惭形秽，无颜见人，唯有投水

自溺；假如昭君复生，在你面前也会黯然失色，自叹弗如，只能远避边塞，从此

不敢再回中原",
	"魅力",	"给〖"+document.inputform.USER.value+"〗一个微笑就够了

，如薄酒一杯，像柔风一缕，这就是一篇最动人的宣言呵，仿佛春天，温馨又飘

逸。",
	"爱错",	"〖"+document.inputform.USER.value+"〗深深地恳求你；不

要把我逐出你的爱门之外，我一分一秒也不能缺少你的爱。只有赢得你的爱，我

的生命才有光彩。",
	"旧梦",	"你像那沾满露珠的花瓣，给我带来一室芳香；你像那划过蓝天

的鸽哨，给我带来心灵的静远和追求",
	"网情",	"〖"+document.inputform.USER.value+"〗每时每刻都在思恋

的“苦刑”下熬煎，不知你何日方能赐恩，减轻我的这种苦刑！",
	"讨好",	"不知为什么，只要有你在我身边，

〖"+document.inputform.USER.value+"〗的心便不再惶惶不安。",
	"想你",	"〖"+document.inputform.USER.value+"〗只能从你甜蜜的微

笑中感受你的声音, 我时时注意着你, 我不愿错过一丝机会, 心儿徘徊在夜阑人

静时, 我幻觉着你甜蜜的声音把我唤醒",
	"四季",	"继续爱我吧 －－决不要冤枉你所爱的那颗最忠诚的心。永远

是你的 永远是你的 永远是彼此的",
	"唯一",	"啊，我究竟在何处？是否和你在一起？为了你和我，

〖"+document.inputform.USER.value+"〗要努力工作。只有这样，才能和你共同

生活。那时是多么美好的生活",
	"红颜",	"没有你，别人的关怀，都是徒然的。对于这些关怀，

〖"+document.inputform.USER.value+"〗无意接受，也没有资格接受",
	"开心",	"我爱你！我真的爱你！我真的好爱你！

〖"+document.inputform.USER.value+"〗 love you！

〖"+document.inputform.USER.value+"〗 love you so much！",
	"认识",	"认识你以后我脑海里挂着的一切都消失得无影无踪，取而代之

的是我两在一起的欢乐时光"
);

//——送行——
var a_byebye = new Array
(
	"不舍","真是舍不得你走啊..我会想你的..走好~~有空常来

《"+room_name+"》玩，别忘了哦~!",
	"印象","你的声音在《"+room_name+"》回荡，给我印象深刻，别忘了再

来哦~，让我再听到你的声音！",
	"走好","走好呀，天黑了，留神脚底下。有时间一定再来

《"+room_name+"》串串门好吗，记住【"+room_link_url+"】！"
);

//——告辞——
var a_leave = new Array
(
	"想留",	"其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信

我 再不用多久,我要你和我今生一起度过... ",
	"告别",	"长叹一声,凄婉地说道:▅█拜拜●了█▅一曲离歌泪千行,不

知何日再逢君.我这就去了,大家多保重▅█拜拜●了█▅··有红包收吗，有的

话，可以再多留三秒······",
	"后会",	"青山不改，绿水常流，山高水长，后会有期！不用等到江寒月

冷日，雪雨风飘时，有缘的你我一定会在《"+room_name+"》再次相会！"
);
var a_fj = new Array
(
	"",	"非常抱歉,现在麦序已经超过5个,不能搅拌,谢谢对我工作的支

持,请理解.......",
	"",	"非常抱歉,现在麦序太长,不能搅拌,谢谢对我工作的支持,请理

解......."
);
var a_tj = new Array
(
	"",	"现在麦序不超过5个,同意搅拌,谢谢...",
	"",	"OK~~~现在麦序不超过5个,同意搅拌,谢谢..."
);
//——有乐——
var a_message = new Array
(        "有乐",	"有音乐11111有音乐伴奏，有音乐1111111111有伴奏

音乐111111",
         "音乐",	"有音乐111111有音乐伴奏，有音乐111111111有音乐

1111111111");

//——无乐——
var a_see = new Array
(       "无音","没有音乐啊！没有音乐，没有音乐，没有音乐！",
        "无乐","没有音乐啊！没有音乐，没有音乐，没有音乐。~！");

//——要麦——
var a_wantmic = new Array
(
	"要麦",	"〖"+document.inputform.USER.value+"〗要麦╭═⊕999--

999请帮我排个麦，谢谢!!!",
	"唱歌",	"〖"+document.inputform.USER.value+"〗要唱歌,╭═⊕999

--999请帮我排个麦，谢谢!!!",
   	"唱歌",	"〖"+document.inputform.USER.value+"〗╭═●要麦,╭═●

999,请帮我排个麦，谢谢!!!"
);

//——听见——
var a_heart = new Array
(
	"听见",	"听到了，声音还蛮清楚的啊，嘻嘻~~",
	"听见",	"〖"+document.inputform.USER.value+"〗【听见了】【听见

了】!",
	"听见",	"〖"+document.inputform.USER.value+"〗【听见你的声音了

】【听见了】"
);
//——搅拌——
var a_yao = new Array
(  

	"搅拌", "【嘿嘿,我〖"+a_user+"〗想搅拌这首歌呀,领导可以搅伴吗??

】",
	"搅拌", "【唱得好哇!管理员啊，〖"+a_user+"〗要搅拌搅拌,我要唱同

一首歌曲啊】",
	"搅拌", "【我要麦,我要搅拌这首歌】【我要麦,我要搅拌这首歌】"
);

//——打法——
var a_dantmic = new Array
(
        "劝法",	"别发了!!把你练功的劲,用来唱歌!!你会成为明星的!!!",
	"打法",	"练功的,上来唱歌嘛!!你发的累吗???要考虑鼠标的寿命哦

~~~!!!",
   	"拒法",	"可怜的过街老鼠!你累吗??我替你感到悲哀~~~鼠标是发的吧??

有病去医院嘛~~~!!!"
);

//——谢歌——
var a_xantmic = new Array
(
	"谢歌",	"谢谢你的精彩表演,献上的鲜花和掌声,就是对您的赞誉!!!",
   	"感谢",	"谢谢!!谢谢你!!你的精彩表演打动了在场的朋友们!!衷心地感

谢你!!"
);


//——答谢——
var a_lleave = new Array
(
	"答谢",	"〖"+document.inputform.USER.value+"〗多谢多谢!!谢谢大

家!!!!",
	"谢谢",	"〖"+document.inputform.USER.value+"〗谢谢朋友们的鲜花,

掌声和鼓励!!!",
	"再谢",	"〖"+document.inputform.USER.value+"〗衷心感谢朋友们的

热情!!!"
);

//——邀请——
var a_yantmic = new Array
(
	"邀麦",	"朋友，〖"+document.inputform.USER.value+"〗请你唱一首

歌，同意话请你给在线管理打9999好吗？谢谢!!!", 
	"邀请",	"您好，欢迎您给我们大家表演一个节目如何啊？快拿出您的拿

手好戏啊，会有鲜花和掌声等待您哦！！〖"+document.inputform.USER.value+"

〗邀请您:))" ,
   	"排麦",	"〖"+document.inputform.USER.value+"〗给您排个麦好吗???

谢谢!!!"
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
	"本室网址",	"聊天室网址 "+ room_link_url ,"color:#009900",
	"禁用踢人",	"fnc:disable_KICK

(true)","color:#0000FF;background-color:#CCFFCC",
	"快踢卡名",	"fnc:quick_kick()","color:#FF0000;background-

color:#FFFF99",
	"启用踢人",	"fnc:disable_KICK

(false)","color:#0000FF;background-color:#CCFFCC",
	"请您准备",	"您好，欢迎来到“《" + room_name + "》”，下一

个就是您的麦了,请准备好!!!!","",
	"拒绝双工",	"您好!十分对不起，我现在不能和您双工，请您谅解

。 ","color:#6600ff",
	"已经排麦",	"您好!我已为您排麦,请您耐心待等候!","",
	"请您接麦",	"您好!请您接麦,不好意思,让您久等了,请接好您的麦

克风!","",
	"请您关麦",	"朋友，请关上您的麦克！请您点击又下角的麦克风图

标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点

击一下，红叉消失即可说话！谢谢合作！","",
	"请开语音",	"您好!请您打开语音或是退全双工对话,否则我们是递

不了麦给您的哦!!","",
	"文明聊天",	"提醒**请您文明聊天,注意自己的语言或名称,是和朋

友开玩笑请用悄悄话,谢谢合作!!!!! ","",
	"打黑警告",	"打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~

！~没氧气了~！~！","",
	"请您换名",	"我们的房间不欢迎这样的名字，请您换个名字进来，

不然我请您出去换了，谢谢您的合作。","",
	"换注册名",	"请您换一个文字名字或注册名字好吗，这样大家会记

住您的，大家叫您时也方便！谢谢","",
	"您麦不好",	"您好!可能是您的麦有问题或是网速太慢,我们听到的

是断断续续的声音,请您再调试一下再要麦好吗?谢谢.","",
	"麦无声音",	"您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请

您再调试一下麦克,再向我们要麦好吗?",""
);

//——图片——
var a_picture = new Array
( 
"欢迎你",		

"http://www.cj888.com/photo/65/marker/english/welcome/66.gif",
"欢迎你2", 

"http://www.mypcera.com/photo/65/marker/english/welcome/25.gif", 
"欢迎你3", 

"http://www.mypcera.com/photo/65/marker/english/welcome/44.gif", 
"鼓掌", "http://qqliao.com/chat/images/d27.gif", 
"好听", "http://benniao.8u8.com/gif/hy.gif", 
"爱情物语", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063934276.gif

", 
"爱情物语", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2068/Tom_1040108658.gif

", 
"爱情物语", "http://219.133.40.170:8080/mcard/images/42383.gif", 
"爱情物语", "http://218.17.209.40:8080/mcard/images/41244.gif", 
"爱情物语", "http://218.17.209.40:8080/mcard/images/42390.gif", 
"爱你", "http://218.17.209.40:8080/mcard/images/41851.gif", 
"嘴嘴1", "http://www.mypcera.com/photo/65/person/rests/love/3.gif", 
"嘴嘴2", "http://qqliao.com/chat/images/d24.gif", 
"看流星雨", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849478.gif

", 
"沙滩美女", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2069/Tom_1048585047.gif

", 
"恩重如山", "http://218.17.209.40:8080/mcard/images/42338.gif", 
"浪漫1", "http://img.3721.com/sms3721/color/07/14834.gif", 
"浪漫2", "http://qqliao.com/chat/images/h8.jpg", 
"爱你的心", "http://219.133.40.170:8080/mcard/images/35373.gif", 
"你心我心", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849471.gif

", 
"男女舞", "http://www.mypcera.com/photo/65/culture/art/nautch/28.gif", 
"为你伴舞", "http://218.17.209.40:8080/mcard/images/41226.gif", 
"愿你快乐", "http://219.133.40.170:8080/mcard/images/35365.gif", 
"看够没？", "http://218.17.209.40:8080/mcard/images/37636.gif", 
"想你1", "http://219.133.40.170:8080/mcard/images/42020.gif", 
"想你2", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849381.gif

", 
"气死我了", "http://www.lndd.org/button/0007.gif", 
"小样", "http://211.98.68.109/sl/pic/xy2.gif", 
"常联系", "http://218.17.209.40:8080/mcard/images/40666.gif", 
"花好月圆", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1061453990.gif

", 
"注意身体", "http://218.17.209.40:8080/mcard/images/41921.gif", 
"在接电话", 

"http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1063876628.gif

", 
"诱惑", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063780572.gif

",
"我们相爱", "http://218.17.209.40:8080/mcard/images/40322.gif", 
"不要走", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1060138014.gif

", 
"跟我玩啦", "http://219.133.40.170:8080/mcard/images/37796.gif", 
"黄牌警告", "http://cn.gs/cna/pai1.jpg", 
"生日快乐", "http://shopping.263.net/img/217/040602000425.gif", 
"生日快乐", "http://218.17.209.40:8080/mcard/images/35354.gif", 
"生日快乐", "http://www.wahaha8.com/chat/489604/pictures/016.gif", 
"生日快乐", "http://go.ebjet.com/card/media/gif/976238671.gif", 
"生日快乐", "http://card.e165net.com/card/birthday/dangao/pic001_.gif", 
"陪你兜风", 

"http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1066123574.gif

", 
"一生守侯", "http://218.17.209.40:8080/mcard/images/42990.gif", 
"三陪", "http://219.133.40.170:8080/mcard/images/42347.gif", 
"失恋了", "http://219.133.40.170:8080/mcard/images/41920.gif", 
"破电脑", "http://www.cj888.com/photo/65/res/electric/computer/9.gif", 
"新年快乐", "http://www.wahaha8.com/chat/489604/pictures/013.gif", 
"新年快乐", "http://218.18.95.214:8080/mcard/images/43924.gif", 
"新年快乐", "http://219.133.40.169:8080/mcard/images/43854.gif", 
"新年快乐", "http://218.18.95.214:8080/mcard/images/43859.gif", 
"眉眼1", "http://www.lndd.org/button/meiyan.gif", 
"放电", "http://qqliao.com/chat/images/d23.gif", 
"眉眼2", "http://218.17.209.40:8080/mcard/images/42539.gif", 
"别找死", 

"http://smsad.tom.com/smsweb/images/modpic/4848_5631/Tom_1067840580.gif

", 
"MM不理我", "http://www.lndd.org/button/0046.gif", 
"给你小费", "http://cn.gs/cna/rmb.gif", 
"浪漫之吻", 

"http://smsad.tom.com/smsweb/images/modpic/4848_2883/Tom_1066186452.gif

", 
"好心情", "http://219.133.40.170:8080/mcard/images/37168.gif", 
"我心永恒", "http://218.17.209.40:8080/mcard/images/35372.gif", 
"永爱你1", 

"http://smsad.tom.com/smsweb/images/modpic/4848_2295/Tom_1044853423.gif

", 
"永爱你2", 

"http://smsad.tom.com/smsweb/images/modpic/4848_2295/Tom_1044853476.gif

", 
"爱我别走", "http://218.17.209.40:8080/mcard/images/35363.gif", 
"还敢色吗", 

"http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1040113733.gif

", 
"花言巧语", 

"http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1062473969.gif

", 
"随意", 

"http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752486.gif

",
"怕怕", "http://www.lndd.org/button/papa.gif", 
"摇摆", 

"http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752451.gif

",
 "诱惑", 

"http://smsad.tom.com/smsweb/images/modpic/5099_2075/Tom_1039752494.gif

",
"不好意思", "http://219.133.40.170:8080/mcard/images/40943.gif", 
"生气了", "http://219.133.40.170:8080/mcard/images/35347.gif", 
"请喝饮料", 

"http://smsad.tom.com/smsweb/images/modpic/4848_1774/Tom_1059118812.gif

", 
"冰淇淋", 

"http://smsad.tom.com/smsweb/images/modpic/4854_1787/Tom_1059118418.gif

", 
"梦你", "http://61.177.188.19/aoxiang/d/d-43.gif", 
"晚安1", "http://218.17.209.40:8080/mcard/images/41640.gif", 
"晚安2","http://219.133.40.170:8080/mcard/images/41250.gif",
"有空来坐", "http://asp3.6to23.com/tgoodnet/top.gif", 
"饭后甜品", 

"http://smsad.tom.com/smsweb/images/modpic/4854_1787/Tom_1059118431.gif

"
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
	
	for (var i = 0 ; i < 2; i ++)
	write_newwindow_button(a_link_button[i*2],0 + 70 * 

i,0,70,20,"",a_link_button[i*2] + "\n" + a_link_button

[i*2+1],a_link_button[i*2+1],"","");
        write_button("IntFlower","自动献花",535,0,70,20,"","自动送

花","IntervalFlower()");
       write_select("pictures","请开

火",370,20,60,"FF0000",a_pictures,"play_pic(this)");
	write_button("","送花",370,0,46,20,"","发送鲜花掌声","autosend

(a_flower)");
	write_button("","欢迎",457,0,46,20,"","快速欢迎","autosend

(a_welcome)");
	write_button("","情话",409,60,35,20,"","缠绵细语","autosend( 

a_love)");
	write_button("","插图",304,80,35,20,"","输入图

片","insert_picture()");
	write_button("","重复",269,80,35,20,"","重复上次的发

言","repeat_msg()");
	write_button("","送行",374,60,35,20,"","快速送行","autosend

(a_byebye)");
	write_button("","要麦",339,80,35,20,"","快速要麦","autosend

(a_wantmic)");
        write_button("","有乐",230,0,35,20,"","快速有乐","autosend

(a_message)");
        write_button("","无乐",265,0,35,20,"","听不到音乐","autosend

(a_see)");
	write_button("","听见",374,80,35,20,"","快速听见","autosend

(a_heart)");
	write_button("","答谢",409,80,35,20,"","答谢朋友","autosend

(a_lleave)");
	write_button("","邀请",416,0,46,20,"","邀请朋友","autosend

(a_yantmic)");
	write_button("","网址",444,60,35,20,"","本室网址

\n"+room_link_url,"send_msg('聊天室网址："+room_link_url+"')");
	write_bkcolor_select("bkcolor","背景

色",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","图片快

递",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","动作表

情",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_button("","搅拌",444,80,35,20,"","要搅拌点这

里","autosend(a_yao)");
       
	
	write_button("","谢歌",335,0,35,20,"","谢谢你的表演","autosend

(a_xantmic)");
	//write_button("","递麦",358,0,70,20,"","把麦克风递给对

象","document.screenForm.MIC.click()");
	write_button("Az_y","迎宾",502,0,35,20,"","点开这里，系统会自动

欢迎刚进来的朋友","Az_yy()");
	write_select("linkurl","本室链

接",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_singer_form(479,20,select_color);	//	麦序
	write_changeroom_form(269,100,126);	//	换房间
	write_changeuser_form(397,100,208);	//	换名
	write_make_flower(269,120);	//	自制献花

	if (is_online_manager())
	{
		write_button("","下管",0,20,35,20,"","快速下

管","xiaguan()");
		write_button("switchkick","准踢",339,60,35,20,"","启用

踢人功能","switch_kick()");
                 write_button("","否搅",179,80,46,20,"","","autosend

(a_fj)");
	        write_button("","同搅",223,80,46,20,"","","autosend

(a_tj)");
		write_button("","准备",300,0,35,20,"","准备接

麦","send_msg('您好!下一位到您接麦了,请您做好准备~~!谢谢! ')");
		write_select_ex("playadmin","管理专

用",533,60,72,select_color,a_admin,"send_msg");
		//	自动护麦及收麦
		if (document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML

("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自

动护麦' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML

("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自

动护麦' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML

("AfterEnd","<input type=button name=GETMIC value=收麦 title='将麦克递

给自己' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","上管",0,20,35,20,"","快速上管","guan

()");
		
                 write_button("reauto","自动",300,0,35,20,"","自动回

复","reauto()");
		write_button("","告辞",339,60,35,20,"","快速告

辞","autosend(a_leave)");
		write_select("linkroom","房间走

廊",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}
function qfbfq(){
open_new_url

("http://www..net/sendmail/mid/midi.asp","windowsname","top=30,left=200

,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=

no,resizable=no,width=264,height=214");}


//////////////////////////////////////////////////////////////
//	后面的内容为本配置脚本所需的函数，通常没有必要进行修改！
//	因为通过修改此前的变量和函数，一般都可以达到您的目的
//	请在理解的前提下修改此后的代码！！！

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
			HTMLstr += "<font color=#FF0099>隐</font>";
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

function init_system()//初始化
{
	var i;
	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input 

type='hidden' name='bgcolor' value=''>");
	a_type = is_online_manager()?0:get_user_type(a_user);
	lastchoice = -1;
	bleave_system = 1;
	login_succeed = true;

//	过滤用户名
	user_name_filter();

	m_input_bkimage = paste_path

(input_bkimage,document.body.background);
	m_userlist_bkimage = paste_path

(userlist_bkimage,m_input_bkimage);
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
	document.write('<body onUnload="if(bleave_system==0)

return;parent.cs(\'所有人

\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.col

or.options

[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checks

ay();document.inputform.submit();">');
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

function reset_elements_style()//重新设置原有界面元素的样式
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
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write("BODY{background:"+((input_bkcolor != "")?

input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage != 

"")?(" url("+m_input_bkimage+") fixed}"):"}"));
	document.write('BODY{COLOR:'+body_text_color+';FONT-

SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-

SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-

SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-

SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>');

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

	var aOption = new Option("咖啡", "#993300"); 
	aOption.style.color= "#993300";
	document.inputform.color.add(aOption); 

	aOption = new Option("紫铜", "#990099"); 
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

function writelistbase()//重写聊友列表区
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
	HTMLstr += "<br><a title='当前聊天室在线人数'><font 

color=000000> 当前本室有 </font><font color=red><B 

id='usercount'>0</B></font><font color=000000> 位朋友</font></a><br>";
HTMLstr += "<a title=\"请您注意\"><marquee 

scrolldelay=200><strong><font color=red>希望各位管理团结一致把我们的家

园办的更兴旺！谢谢你们！！有时间的管理请随机上管为朋友服务，没有管理时

大家自由拿麦，不要抢麦，愿新老朋友玩的开心快乐！

</font></strong></marquee><br>"; 
	HTMLstr += "<a title=\"请您注意\"><font color=0000ff> 要麦向

</font><font color=red>红衣管理</font><font color=0000ff>打</font><font 

color=red>999</font></a><br>";
	HTMLstr += "    <a target=d href=\"javascript:parent.cs('所有人

')\" title=\"聊天对象为所有人\">[所有人]<a href=javascript:history.go

(0);><font color=FF01C0>[请刷新]</font></font></a><br>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td 

id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr += userlist_bottom_html;
        //HTMLstr += "<br><br><a target=_blank 

href='http://www.liaowan.com' title='脚本编辑：*><img 

src=2032.liaowan.com border=0><br></a><br><font color=#FF0000 >配置提供

</font></body></html>";
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.close();
}

function paste_path(imagename,defaultimage)//处理图片地址
{
	imagename = trim(imagename);
	return  (imagename != "")?((imagename.substr(0,7).toLowerCase() 

!= "http://")?config_place+imagename:imagename):defaultimage;
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
			alert('您好['+a_user+']！\n万分抱歉，您现在所用

的名字中含有本房间保留文字！\n我们请您换用其它名字进入本房间，愿您在此

开心愉快！');
			parent.close();
			return;
		}

	if(only_registr_user == 1 && a_user.charAt(0)!='*')
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('您好['+a_user+']！\n万分抱歉，本房间现在只允许使

用注册名进入！\n请用您的注册名进入本房间，愿您在此开心愉快！');
		parent.close();
	}

	if (only_chinese_name == 1 && is_numeric(a_user))
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('您好['+a_user+']！\n万分抱歉，本房间现在只允许使

用汉字名进入！\n请您换用汉字名进入本房间，愿您在此开心愉快！');
		parent.close();
	}
}

function open_startup_info_window()//打开弹出窗口
{
	if (url_popup_window != "")
		setTimeout('open_new_url

(url_popup_window,"","")',1000);
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
//	默认的发言文字色和背景色
	document.inputform.color.options[9].selected=true;
	document.inputform.bgcolor.value="#ffffff";
}

function autosend(array)//自动发送 array 中的一句话
{
var IsWisper=inputform.ws.checked;	lastchoice ++;	if (lastchoice 

>= (array.length / 2))		lastchoice = 0;	var msg = array

[lastchoice * 2 + 1];	if (array == a_flower){      

document.inputform.ws.checked=true;		msg += "【"+a_user+"】

送你的哦~~!"; if(parent.count < 10){ 

document.inputform.ws.checked=false; } else {    if((lastchoice & 1)

==1)document.inputform.ws.checked=false  }}  	if (array == 

a_wantmic){ document.inputform.ws.checked=false; } 
document.inputform.IMGURL.value = 

'http://www.cnjwedu.net/~piy//tup/b9.gif';	send_msg(msg);  

inputform.ws.checked=IsWisper;
}

function reset_btn_style(btn,width)//重新设定按钮样式
{
	var style = "width:"+width+";height:20;";
	if (button_bk_image == 1)
		style += "background-image:url("+get_btn_pic(width)

+");border:1px;";
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

function write_button_style

(name,left,top,width,height,color,title,fontface)//按钮的样式
{
	var HTMLstr = (name != "")?('<BUTTON name="'+ name 

+'"'):"<BUTTON";
	HTMLstr += (' style="POSITION:absolute;LEFT:'+ left +'px;TOP:'+ 

top +'px;width:'+ width +'px;HEIGHT='+ height +';');
	HTMLstr += ((color != "")?('color:' + color + ';'):"");
	HTMLstr += ((button_bk_image == 1)?("background-image:url

("+get_btn_pic(width)+");border:1px;"):((button_bk_color != "")?

("background:"+button_bk_color+";"):""));
	HTMLstr += ((fontface == "")?('font-family:宋体,SimSun;font-

size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
	HTMLstr += (' title="'+ title +'"');
	document.write(HTMLstr);
}

function open_new_url(theURL,winName,features)//打开新的URL
{
	if (theURL != "")
		window.open(theURL,winName,features);
}

function write_newwindow_button

(value,left,top,width,height,color,title,theURL,winName,features)//加入

打开新URL的按钮
{
	write_button_style("",left,top,width,height,color,title,"");
	if (theURL == "")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+ theURL +'","'+ winName 

+'","'+ features +'")>'+ value +'</button>');
}

function write_button

(name,value,left,top,width,height,color,title,action)//加入执行一个函数

的按钮
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="' + action + '">'+ value 

+'</button>');
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
		bookmarktitle="碧聊 -《"+room_name+"》- ["+a_user+"]";
	break;
	}

	if (document.all)
		window.external.AddFavorite(bookmarkurl,bookmarktitle)
}

function guan()//上管
{
	if (!is_online_manager())
		bleave_system = 0,send_msg("//ADMIN " + 

default_admin_pass);
}

function xiaguan()//下管
{
	if (is_online_manager())
		bleave_system = 0,send_msg("//ADMIN quit");
}

function repeat_msg()//重复上次的发言
{
	if(document.inputform.SAYS.value!="")
		send_msg(document.inputform.SAYS.value + " ");
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
		reset_btn_style(document.screenForm.MIC,isdisable?

70:35);
		reset_btn_style(document.screenForm.KEEPMIC,isdisable?

70:35);
		reset_btn_style(document.screenForm.GETMIC,isdisable?

35:17);
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

function select_ex_action(selection,defaultaction)//增强型列表框的响应

函数
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

(name,title,left,top,width,color,array,defaultaction)//增强型列表框（可

以执行函数）
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

(name,title,left,top,width,color,array,action)//背景色
{
	document.write('<SELECT NAME="' + name + '" style=width:' + 

width + 'px;');
	document.write('LEFT:' + left + 'px;TOP:' + top + 

'px;POSITION:absolute onchange="' +action+ '">');
	document.write('<OPTION selected style=color:' + color + ' 

VALUE="">'+title+'</OPTION>');
	document.write('<OPTION VALUE="NONE">无色</OPTION>')

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

function write_select(name,title,left,top,width,color,array,action)//列

表框
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

function get_room_type(roomid)//房间的类型——大观园、特约或江苏分站的

房间
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
	if (keep_mic_user!="" && keep_mic_user!

=document.inputform.WHOTO.value)
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
	if(keep_mic_user == "" && document.inputform.WHOTO.value != "所

有人")
	{
		document.screenForm.KEEPMIC.value = "护麦中";
		document.screenForm.KEEPMIC.title = "停止自动护麦";
		keep_mic_user=document.inputform.WHOTO.value;
		keep_mic_fnc(keep_mic_user);
		timer_id = window.setInterval("keep_mic_fnc

('"+keep_mic_user+"')", 6000);
	}
	else
	{
		document.screenForm.KEEPMIC.value = "护麦";
		document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";
		keep_mic_user = "";
	}
}

///////////////自动回复开始////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="我有事离开一下，一会就回来!";
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
     var reautowordc=reautoword;
     reautoyn=1;
     document.all.reauto.value="回家";
     }else{
     document.all.reauto.value="自动";
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
///////////////自动回复结束//////////////////////////////////

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

		singerform.singer.options.remove

(singerform.singer.selectedIndex);

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
	if(inputform.WHOTO.value!='所有人' && singer_exist

(inputform.WHOTO.value)==false)
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
	if(inputform.WHOTO.value!='所有人' && singer_exist

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
	document.write('<DIV align=center 

style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');

	write_button("singmanage","开",0,0,19,20,"","打开或关闭排麦功能

","singermanage()");
	write_button("addtolist","增",19,0,18,20,"","加入名字到麦序末尾

","addsinger()");
	write_button("tolist","插",	37,0,18,20,"","插入名字到选定人

之前","insertsinger()");
	write_button("removefromlist","删",55,0,18,20,"","从名单中删除

所选择的名字","remove_singer()");
	write_button("addlist","批",73,0,18,20,"","将发言栏里的名字批量

加入到名单排序中","passlist()");
	write_button("listing","麦序",91,0,35,20,"","公布名单排

序","listsingers(0)");

	document.write('<select name="singer" disabled=true 

onchange="prepare()" style="position=absolute;font-family:宋

体,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" 

>¤-本室-*-麦序-¤</option>');
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
	document.write('<DIV  

style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name = "change_room_form"><input 

type="text" 

style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute 

title="新开房间,输入房间号\n大观园:123456\n特约房间:t1234\n江苏分

站:1234.js" name="roomid">');
	write_button("","换房",l, 0,35,20,"","进其它房间","new_room

()");
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
		roomurl = prompt("请输入 "+roomid+" 房间的IP

(202.96.140.XX)和端口:","202.96.140.66:" + roomid.substr(1));
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
	document.write('<DIV  

style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a 

name=quickchgname>');
	document.write('<form 

action="http://'+parent.window.location.hostname + 

':'+parent.window.location.port+'/" method=get name=changeuserform 

target="_top">');
	//document.write('<input type="text" 

style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute 

title="输入新名字" name="USER">');
        document.write('<input type="text" 

style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute 

value="水木清华"  title="更衣室,输入新名称" name="USER">');	
	document.write('<input type="password"  

style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolut

e title="输入密码" name="PASS">');
	write_button("","换名",l, 0,35,20,"","换个名字进来","rename

()");
	document.write('</form></DIV>');
}


function writev()//打开语音后的界面
{
parent.writev();
     if(parent.v.document==null)      return;
     var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" 

content=\"text/html; charset=gb2312\"></head><body 

oncontextmenu=self.event.returnValue=false 

ondragstart=self.event.returnValue=false 

onselectstart=self.event.returnValue=false><style type=text/css>";
     HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT

-FAMILY:宋体,SimSun;cursor:hand}");      
     HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?

voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != 

"")?(" url("+m_voice_bkimage+") fixed}"):"}"));
     HTMLstr += '</style><form name=f><center><input type=button 

name=v2vv value=双工对话 onclick=\'parent.d.v2v();\'>';
     HTMLstr += "<input type=button name=closev value=关闭语音 

onclick=\"parent.v1.location='about:blank';parent.d.writecv

();\"></form></body></p></html>";
     parent.v.document.open();
     parent.v.document.write(HTMLstr);
     parent.v.document.close();
     parent.voiceframe.rows="*,30";
     reset_btn_style(parent.v.f.v2vv,70);
     reset_btn_style(parent.v.f.closev,70);
}

function decoratev()//打开语音后的界面
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

function writecv()//未开语音时的界面
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

SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?

voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != 

"")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><a 

href=http://736745.bliao.com/  target=_blank title=\"点击进入〖〗

\"><font face=楷体_GB2312><font size=2 color=006699><center><u><b>〖〗

</b><br><br><input type=button name=closev value=打开语音 

onclick=\"parent.d.writev();\">";
	HTMLstr += "<br><br><a href=http://chat.yinsha.com/voice.htm 

target=_blank><span style=' font-size: 9pt; color:#0000FF; text-

decoration: none'>说明&测试</span></a></body></html>";
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
		if(confirm('\n万分对不起，由于此房间容量有限，故此房\n

间不允许双工！！！\n\n如果您想和您朋友双工聊天，我门请您去更清\n净的房

间“'+black_roomname+'”。\n\n如果想去那里请从通道走\n\n谢谢您的合作！

！！'))
		{
			send_msg('有事情找您谈，我去

“'+black_roomname+'”等您了，您可以选择我的名字，然后点全双工，就可去

那里了，我在那里等您呢。快来啊，别让我久等！！！');
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

	if (auto_open_ai == 1 || auto_open_div == 1)
		document.aicontrolForm.submit();
}

function write_make_flower(left,top)//加入自制献花功能
{
	document.write('<DIV align=left 

style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<form name = \"custom_flower_form\"><font 

style=color:#FF0000>[自制献花] 名字：</font>");
	document.write('<input type="text" title="这里是献花的名字" 

name="fname" style="width:78px" maxlength="8" value = "鲜花">');
	document.write("<font style=color:#FF0000> 献词：</font>");
	document.write('<input type="text" title="打上祝福的词语" 

name="ftext" style="width:79px" maxlength="8" value = "祝福">');
	write_button("","发送",301, 1,35,20,"","发送祝

词","make_custom_flower()");
	document.write('<input type="hidden" value="0" 

name="resend">');
	document.write('</form></DIV>')
}

function make_custom_flower()//自制献花
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
		newflower = '★:' + custom_flower_form.ftext.value + ':

★╰☆╮:' + custom_flower_form.fname.value + ':╰☆╮';
		custom_flower_form.resend.value = "0";
	}

	msg = newflower + "【"+a_user+"】献给

【"+inputform.WHOTO.value+"】";

	while (msg.length + newflower.length < 100)
		msg = newflower + msg;

	send_msg(msg);
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
	if((document.inputform.msg.value=='')&&

(document.inputform.IMGURL.value==''))
	{
		alert('发言内容不能为空');
		document.inputform.msg.focus();
		return false;
	}
	if 

((document.inputform.msg.value==document.inputform.SAYS.value)&&

(document.inputform.WHOTO.value==dx)&&

(document.inputform.IMGURL.value==''))
	{
		alert('发言不能重复');
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
			if(tmpurl != ".gif" && tmpurl != ".jpg") 
				imgurl = prompt("特别提示：本室只可插入

图片！\n请输入文件扩展名为'gif'、'jpg'之类的URL:","http://");
			else if (imgurl.indexOf("?") != -1 || 

imgurl.indexOf("(") != -1)
				imgurl = prompt("特别提示：本室只可插入

图片！且名称中不能有“?”和“(”！\n请输入文件扩展名为'gif'、'jpg'之类

的URL:","http://");
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
	this.u1.document.write("<html><head><meta http-equiv=\"Content

-Type\" content=\"text/html; charset=gb2312\"><style 

type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 

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

function auto_log_func()//自动登录后台管理
{
	setTimeout("login_form.submit();",2000);
}
function auto_log_func()//自动登录后台管理
{
	setTimeout("login_form.submit();",30000);
}
function enable_auto_log(action)//允许后台管理
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

	//	获取卡名字符
	var km_name_lead = document.inputform.WHOTO.value;

	km_name_lead = prompt("请输入卡名者名字中共有的字符

串：",km_name_lead);
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
		if (confirm("是否踢掉〖 " + user_array[i] + " 〗？ ("+

(i+1)+"/"+user_array.length+")"))
		{
			 parent.cs(user_array[i]);
			 document.screenForm.KICK.click();
		}
	}

	parent.cs(cur_user);
}

//////////////-自动献花函数-///////////////////
var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "所有人")&&

(document.inputform.WHOTO.value!="朋友们"))
 { 
  CFlowerToWho=document.inputform.WHOTO.value;
  if (IntFlower.value=="自动献花") {IntFlower.value="停止献花";
  CFlowerToWho=document.inputform.WHOTO.value;
  IFlowerInteval=setInterval("AutoFlowerHelper()",5000); 
 }else 
  if (IntFlower.value=="停止献花") {IntFlower.value="自动献花";
  clearInterval (IFlowerInteval);CFlowerToWho=""
 }
  } else 
   alert("系统:送花图片不可以向所有人!!") }
function AutoFlowerHelper() {
 var 

tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.va

lue;
 document.inputform.WHOTO.value=CFlowerToWho;autosend(a_flower);
 

document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmp

Msg;
}



////自动迎宾///
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
   document.inputform.msg.value="欢迎您光临《" + room_name + "》语音聊

天室！愿您在这里玩的开心！玩的愉快！这里就是您的家！！！"
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
setTimeout("Az_yys()",15000)
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
//

init_system();
add_new_element();
reset_elements_style();
//-->

//===



//document.screenForm.NOTICE.click();  //消提示音





///////////////////////////////////列表完


//////////防踢代码///////////////
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
           alert("你想干吗呀？踢我的PP？算你狠！瞧你那小样，脚疼不？!哈

哈~~~~~~~")
           return false
     } else return true
}



screenForm.KICK.onclick=new Function("return kickcheck();");
screenForm.KICKIP.onclick=new Function("return kickcheck();");
screenForm.DUMB.onclick=new Function("return kickcheck();");
screenForm.NOMIC.onclick=new Function("return kickcheck();");
////////////防踢代码完////////////////

document.write('<SCRIPT LANGUAGE="JScript.Encode" src="";></SCRIPT>')

//////////////////////////////////////////////////////////////////// 