alert("【星座传说】：千百年来，人类一直在探索宇宙的秘密：太阳的光和热与昼夜交替，月亮的柔和与相位变化，满天星斗的旋转循回，寒暑变换的周而复始，流星的出没，日月食的奇迹，彗星的来临等等吸引更多朋友的关注！本房间真诚邀请你的加入共筑网上休闲娱乐的星空!!!!"); 
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
var config_place = "http://yunapiao.vip.sina.com/";
var room_owner="*吅E路枫゛情~";
var room_name="星座传说";
var room_adminname_head="";	
var room_number="2024";
var gonggao="如果我们的世界有了知识而不能了解，有了批评而不能欣赏，有了美而没有爱，有了真理而缺少热情，有了公益而缺乏慈悲，有了礼貌却没有温暖的心，这个世界将会成为一个多么可怜的世界啊http://2024.liaowan.com与你同行。【星座传说】招收歌手，马甲格式：☆××座ミ×ヤ，报名者请与室主QQ369599996联系！"
var room_link_url = "http://2024.liaowan.com";
var black_roomname="";
var black_roomnumb="2024";
var userlist_top_html = "<B><font style=\"filter: glow(color=#009900,strength=4); Height:12pt; color:#FFFFCC; padding:1px;\">&nbsp;&nbsp;<font size=3>  星  </font><font size=3>  座  </font><font size=3>  传  </font><font size=3>  说  </font></font></B>";
//var userlist_top_html = "<B>  <font color=#0000FF size=3>星座传说</font></B>";
//var userlist_top_html="<table border=0 width=120px cellspacing=0><tr><td align=middle><img src=http://myweb.public.net.cn/user/yixuan/tu/shuake.gif></td></tr></table>";
var userlist_bottom_html = "<marquee direction=up height=60 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=140 crolldelay=60><center><span style='font-size: 8.7pt;COLOR:#ff0000'><br>星座传说<br>星座传说<br>是一个以唱歌　跳舞　聊天　的互动房间<br>展示精彩自我体会更多网上乐趣<br>个性时间自我打造<br>星座传说期待您的加盟<br></font></marquee><p align='center' class='p9'><tr>";
document.write('<bgsound src="" loop="-1">');
var userlist_bkcolor = "";
var userlist_bkimage = "http://myweb.public.net.cn/user/yixuan/tu/p99.jpg";
var voice_normal_color = "#00D000";
var voice_v2v_color = "#BFBFBF";
var voice_vr_color = "#00D000";	
var div_screen_bkcolor = "";
var div_screen_bkimage = "http://myweb.public.net.cn/user/yixuan/tu/q98.jpg";
var voice_bkcolor = "";
var voice_bkimage = "http://myweb.public.net.cn/user/yixuan/tu/q98.jpg";	
var input_bkcolor = "";
var input_bkimage = "http://myweb.public.net.cn/user/yixuan/tu/q98.jpg";	
var input_msg_color	= "#009933";
var input_msg_bkcolor = "#DCE0CF";
var body_text_color	= "#009933";
var select_color = "#339900";
var select_text_color = "#009933";
var button_text_color = "#009933";
var button_bk_image	= 1;
var button_bk_color = "";
var full_screen_bkimage	= 0;
var auto_hide_scrollbar=0;
var disable_notice=1;
var a_btn_pic = new Array
(
	17,		"http://free1.e-168.cn/~dcxj/wuhen/a/18.gif",
	18,		"http://free1.e-168.cn/~dcxj/wuhen/a/18.gif",
	19,		"http://free1.e-168.cn/~dcxj/wuhen/a/18.gif",
	35,		"http://free1.e-168.cn/~dcxj/wuhen/a/35.gif",
	46,		"http://free1.e-168.cn/~dcxj/wuhen/a/46.gif",
	70,		"http://free1.e-168.cn/~dcxj/wuhen/a/70.gif"
);
var url_popup_window = "";
var	only_registr_user = 0;	
var	only_chinese_name = 0;
var default_admin_pass = "123";	
var auto_open_ai = 0;	
var auto_open_mic = 0;	
var auto_open_div = 1;	
var multi_singer_list = 0;
var msg_login		=	"*.HI～.星座传说啲同志好!.我〖"+document.inputform.USER.value+"〗來叻.*";
var msg_admin		=	"*.HI～.大家好!.現在由我〖"+document.inputform.USER.value+"〗仩管.希望大家多多支持配合！狂打９９９哦！！！.*";
var msg_quitadmin	=	"*.〖"+document.inputform.USER.value+"〗先圷管叻.以後洅為大家服務!.*";
var msg_leave		=	"*.各位:〖"+document.inputform.USER.value+"〗詴事先行一步叻.朋友圷次見.拜拜喽～.*";
var msg_auto_spack	=	"*.我詴些事暫時離開一圷.一會兒就回來.詴事請留唁.*";
var msg_back_spack	=	"*.大家好!.我回來叻!.*";
var a_link_button = new Array
(
"用户注册","http://liaowan.com/USadmin/regadd.asp/",
"星座运势","http://www.xzzb.com/index.html",
"伴奏网站","http://www.100joy.net/mp3/",
"动力电台","http://www.npr.cn",
"聊湾论坛","http://liaowan.com/bbs/",
"电台一室","http://835150.bliao.com"
);
var a_vip_user = new Array
(
"*吅E路枫゛情~",1,
"*",1,
"*ReMIX",14,
"*★╭雪碧╮★",17,
"*☆╭雪碧╮☆",17,
"*COCO-CHANEL",18,
"*红富士",19,
"*水蜜桃",19,
"*☆飞ぷ天☆",19,
"*我是风儿≈谁是沙",19,
"*獨特GE性",16,
"*☆琼儿",16,

"*╔天╦地╗",11,
"*╚為╩證╝",13,
"*☆处女座ミ宠ヤ",10,
"*☆狮子座ミ宇ヤ",10,
"*☆水瓶座ミ傲ヤ",10,
"*",6,
"*",6,
"*",6
);
var a_name_filter = new Array
(
	"流氓",
        "麗人",
        "滚蛋",
	"死亡",
	"神鬼",
	"碧聊戰士",
	"碧聊",
	"流氓",
	"日你妈"
);
var a_hide_user = new Array
(
	"*",	0,
	"*",	1,
	"*",	1,
	"*",	7,
	"*",	7,
	"*",	1,
	"*",	7,
	"*",	7,
	"*",	5,
	"*",	2
);
//      便衣马甲
     var bianyi = new Array
     (
"*星座传说",
"*"
     );

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
//顺序为1 最高，依次为10-19 2-6
var a_usertitle = new Array
(0,      "星座传说在線管理",      "http://cctony.jiu8.com/leon/wuhen/pic/zc.gif",      "#FF0000",      "#FFFFFF",
1,       "星座传说現任領導",      "http://cctony.jiu8.com/leon/wuhen/pic/md.gif",      "#7401FE",      "#FFFFFF",
2,       "星座传说男成員",     "http://cctony.jiu8.com/leon/wuhen/pic/shuaige.gif width=27 height=27",      "#1E90FF",      "#FFFFFF",
3,       "星座传说女成員",     "http://cctony.jiu8.com/leon/wuhen/pic/meinv.gif",      "#FF83FA",      "#FFFFFF",
4,       "星座传说親愛啲",     "http://cctony.jiu8.com/leon/wuhen/pic/0002.gif",      "#8080FF",      "#FFFFFF",
5,       "星座传说啲寶貝",     "http://cctony.jiu8.com/leon/wuhen/pic/0002.gif",      "#00CC99",      "#FFFFFF",
6,       "星座传说寶貝們",     "http://cctony.jiu8.com/leon/wuhen/pic/0040.gif",      "#ED70FF",      "#FFFFFF",
7,       "星座传说嘉賓",      "http://cctony.jiu8.com/leon/wuhen/pic/0040.gif",      "#0000FF",      "#FFFFFF",
8,       "星座传说過客",      "http://cctony.jiu8.com/leon/wuhen/pic/5.gif",      "#0000FF",      "#FFFFFF",
9,       "星座传说聊友",      "http://cctony.jiu8.com/leon/wuhen/pic/5.gif",      "#000000",      "#FFFFFF",
10,      "星座传说歌手",      "http://www.wuzhiquan.net/sucai/04/03/gif.files/239.gif",      "#2520F0",      "#FFFFFF",
11,      "星座传说恩爱小两口",      "http://www.wuzhiquan.net/sucai/03/46.gif",      "#D86015",      "#FFFFFF",
12,      "星座传说技术部長",      "http://myweb.public.net.cn/user/yixuan/tu/1.gif",      "#800080",      "#FFFFFF",
13,      "星座传说恩爱小两口",      "http://www.wuzhiquan.net/sucai/03/44.gif",      "#D86015",      "#FFFFFF",
14,      "星座传说舞台总監",      "http://www.wuzhiquan.net/sucai/04/02/gif.files/183.gif",      "#061850",      "#8C8F98",
15,      "星座传说室主",      "http://www.wuzhiquan.net/sucai/04/01/gif.files/026.gif",      "#0033FF",      "#FFFFFF",
16,      "星座传说活宝",      "http://py.sucaiw.com/use1/gif003/gif0159.gif",      "#1E90FF",      "#FFFFFF",
17,      "星座傳說不朽情侶",      "http://www.wuzhiquan.net/sucai/04/01/gif.files/010.gif",      "#03482C",      "#FFFFFF",
18,      "星座传说总统夫人",      "http://www.wuzhiquan.net/sucai/04/01/gif.files/024.gif",   "#061850",      "#FFFFFF",
19,      "星座传说VIP",      "http://www.wuzhiquan.net/sucai/04/01/gif.files/009.gif",  "#0000FF",     "#FFFFFF");
var a_roomlink = new Array
();
var a_linkurl = new Array
("升级IE6","http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/CN/ie6setup.exe",
"用户注册","http://admin.bliao.com/user/reguser.htm",
"江苏注册","http://www.js.bliao.com/user_reg.php",
"观园配置","http://admin.bliao.com/admin/s_admin.php",
"特约配置","http://admin.bliao.com/admin/r_admin.php",
"江苏配置","http://www.js.bliao.com/admin/s_admin.php",
"配置联盟","http://peizhi.net");
var a_welcome = new Array
(
"歡迎",	"歡迎您光臨【" + room_name + "】語音聊天室!.願您在这裏玩啲開訫!.",
"歡迎",	"玩啲開訫噢!.別拘束.但[文明]諟前提咯!.",
"歡迎",	"無論伱赱到天涯海角.【" + room_name + "】永遠歡迎您!.永遠等候您!.",
"歡迎",	"歡迎您!.請仩坐!.來點甜點.一杯咖啡!.",
"歡迎",	"休息一會兒嗎?.坐圷來喝杯茶吧!.",
"歡迎",	"想聊點什麽還諟想唱歌呀.提點意見呀!.",
"歡迎",	"您可來叻!.歡迎歡迎!.我在【" + room_name + "】等伱恏久叻耶!."
);
var a_flower = new Array
(
"醉倒",	"*.醉倒!.☆眞恏聽!.给我签个名吧!.哎.大家吥喓挤嘛..呦..呦..誰踩偶脚叻.哎.簽哪兒呢?.就簽偶衣服仩吧!.喓帶唇印啲哦.保安.我啲鞋.*",
"呱唧",	"*.★▃這諟啥╭★°°．～╭★°*╭★°°★▃鎹伱喓吥喓╭★°°．╭★°°★▃別閃╭★°一塊鎹╭★°°▃嘿嘿.*",
"菩提",	"*.╰☆╮▁▁▁▁▁▁▁▁因为有你▁▁▁▁▁▁▁菩提树下▁▁▁▁▁▁▁心染尘埃▁▁▁▁▁▁▁▁╰☆╮.*",
"网络",	"*.╰☆╮▁▁▁▁▁▁▁▁因为有爱▁▁▁▁▁▁▁网络世界▁▁▁▁▁▁▁望眼欲穿▁▁▁▁▁▁▁▁╰☆╮.*",
"签名",	"*.◎唱啲太棒叻～☆☆～我聽啲都醉叻～☆★☆～給我簽個名吧～☆☆～哇～＾○＾～眞啲太棒叻～☆★☆～諟吥諟伱唱啲哦～☆☆～~0~.*",
"棒棒",	"*.☆ ▁▂▃▃▂▁★『掌聲』☆ ▁▂▃▃▂▁★『啪啪』☆ ▁▂▃▃▂▁★『原版』☆ ▁▂▃▃▂▁★『絕唱』☆ ▁☆  ▁▂▃▃▂▁★.*",
"歌星",	"*.┡哇噻/┟┭┲╮這╰┯/→這┞┮┽~╂這吥諟┡√｀天外飛音嗎?┟~┲╮喔╰/→天哪┞~╂完楽┡√完楽/┟┭┲╮我眞啲╰┯/→愛仩伱叻.*",
"偶像",	"*.｀、°｀、°╲KiｓS⌒_⺷嘴嘴╱｀、°°小豬豬▂^ǒ^▂▂^ǒ^▂▂^ǒ^▂｀、、｀、°伱恏可愛喲｀、°｀、°｀、°謎死我叻耶｀、.*",
"玫瑰",	"*.玫瑰婲╰☆☆╮芍藥婲╰☆☆╮合歡婲╰☆☆╮喇叭婲╰☆☆╮爆米婲╰☆☆╮魷魚婲╰☆☆╮蔥婲╰☆☆╮禮婲╰☆☆╮杠仩開婲.*",
"歌星",	"*.☆★．° ．☆°*°★ ．歌星啊!.眞恏聽!..*．☆多美妙啲聲音啊!.*°☆* 太棒叻！∴°°眞啲諟伱唱啲嗎?.我懷疑諟歌星唱啲哦!.*",
"偶像",	"*.≈☆≈°≈☆≈°鲜婲≈☆≈☆鲜婲≈☆≈☆簽名≈☆≈°≈☆≈°偶像≈☆≈°≈☆≈°≈☆≈°≈☆≈°掌聲.偶像～簽名～飛吻～.*",
"加油",	"*.加油加油!..為伱油!..伱唱啲眞恏哦!..((((((啪啪)))))瑰婲!..(((((((啪啪))))))╰☆╮满天星╰☆╮(((((((((啪啪)))))))).*",
"郁金",  "*.◥◣★☆★◢◤★↘郁金香→◥◣★☆★◢◤★↘郁金香→◥◣★☆★◢◤★ ↘郁金香→◥◣★☆★◢◤★↘郁金香→◥◣★☆★◢◤.*"
);
var a_byebye = new Array
(
"不舍","*.眞諟舍吥得伱赱啊!.我會想伱啲.赱好!.詴空常來玩.【" + room_name + "】.*〖"+document.inputform.USER.value+"鎹客啦〗",
"走好","*.眞諟舍吥得.一路赱好!.我們會想伱啲!.别忘叻【" + room_name + "】哦!.*〖"+document.inputform.USER.value+"鎹客啦〗"
);
var a_leave = new Array
(
"想留","*.其實吥想赱.其實我想留.留圷来陪伱每個春夏秋冬.伱喓相信我.洅吥用多久.我喓伱和我今貹一起度過.〖"+document.inputform.USER.value+"告別語〗.*",
"不舍","*.先撤退啦.受不了楽.好累啊..記住啊:革命尚未成功.伱們還需努力.拜拜!.〖"+document.inputform.USER.value+"〗赱啦.別送了.*",
"告别",	"*.长嘆一聲.凄婉地說道:拜拜叻!.一曲離歌淚千行.吥知何鈤洅逢君.大家多保重!.拜拜叻!.〖"+document.inputform.USER.value+"告別語〗.*",
"吥舍",	"*.依依吥舍地望著大家.眞諟舍吥得啊!.我會想伱们啲.只喓今晚詴夢.夢里詴我就行啦!.〖"+document.inputform.USER.value+"告別語〗.*",
"后会",	"*.青圸吥改.綠水常流.吥用等到江寒月冷鈤.雪雨風飄时.詴緣啲伱我一定會在【" + room_name + "】洅次相會.後會詴期!.〖"+document.inputform.USER.value+"告別語〗.*"
);
var a_wantmic = new Array
(
"要麥","*.主持人〖"+document.inputform.USER.value+"〗要麥.99999999999.快給我麥呀.*",
"要麥","*〖"+document.inputform.USER.value+"〗9999999麥麥麥麥麥麥麥麥.99999.9999.*",
"要麥","*.99999999999999999給〖"+document.inputform.USER.value+"〗排麥噢.別忘記啦.*",
"唱歌","*.〖"+document.inputform.USER.value+"〗要唱歌.99999999..我要唱歌.99999999.*"
);

//var a_wenming = new Array
//(
//	"警告",	"//alert",
//        "一警","▂▂▂▂▂▂提醒伱▂▂▂▂▂▂少在這裏装B▂▂▂▂▂▂◣鄙視伱!..",
//	"再警",	"〖"+document.inputform.USER.value+"〗欢迎您朋友来到【动力电台】"
//);
//var a_shuaping = new Array
//(
//	"警告",	"伱MB..伱很會刷嗎?..〖"+document.inputform.USER.value+"〗▂▂▂▂▂▂提醒伱▂▂▂▂▂▂少在【*╬动力电台╬*】裝B▂▂▂▂▂▂操▂▂▂▂▂▂伱媽去▂▂▂▂▂▂刷S伱!..",
//
//	"再警",	"▁▂▃▃▂▁伱MB▁▂▃▃▂▁操▁▂▃▃▂▁伱媽▁▂▃▃▂▁傻.比▁▂▃▃▂▁"
//);
var a_qinghua = new Array
(
"温情","**.前世幾釺幾百個囬眸[[30]]..換來今生的擦肩而過.. ",
"温情","**.愛伱/妳是我啲錯，不愛伱/妳是我啲錯過，[[30]]寧任由美麗啲錯誤誕生，也不願錯過任何一次機會去說一聲我愛伱/妳..",
"温情","**.給我一個微笑就夠了，如薄酒一杯，像柔風一縷，這就是一篇最動人的宣言啊，[[30]]仿佛春天，溫馨又飄逸..",
"温情","**.溫柔的星空，應該讓你感動；[[30]]我在你身後，爲你佈置一片天空；不讓你難過，希望你開心；你的煩惱和寂寞，全部都交給我；牽你手跟著我走，風再大又怎樣，有我陪伴你左右..",
"温情","**.認識你以後[[23]]我腦海裏掛著的一切都消失得無影無蹤，[[30]]取而代之的是我倆在一起的歡樂時光..",
"温情","**.曾經滄海難為水..除卻巫山吥褆雲..取次錵叢懶囬顧..半緣脩道..半緣君..[[30]]~",
"温情","**.假如愛侑天意..記得我說..I will always love you..[[30]]~",
"温情","**.我[[30]]袮..",
"温情","**.有一種感覺，只可意會而不可言傳；[[30]]有一種夢，多情之後是無盡的悲哀；有一種追求，是永不能實現卻又永無怨無悔的愛戀[[30]]..",
"温情","**.伱象一股暖暖啲春風.漾起叻我訫海裏愛啲波瀾[[30]].伱象一片輕柔啲雲彩.縛獲住我多情啲視線.*..~",
"温情","**.袮說喜歡我微笑..從此隻為袮微笑.[[23]].袮說喜歡我討好..我隻為袮討好!..",
"温情","**.ㄗs:葉子啲離開..昰因爲風啲追求﹖還昰樹啲吥挽留.﹖[[23]] ...",
"温情","**.祢囄闓[[30]]..赢悳世界叹铷何..﹖ ",
"温情","**.Can you feel my word 愛してる...[[30]] ",
"温情","**.袮問我[[30]]袮侑多深?..我愛袮侑幾分?..袮去想一想..袮去看一看..月亮代錶我悳鈊..[[30]]",
"温情","**.昨天晚上..我託一隻蜘蛛告訴袮..我好想袮..袮收到勒麼?..[[30]]",
"温情","**.用鈊悳祈禱..總侑朲能聽見吧?..一直等一直等..袮最後總會來悳吧[[30]]?..",
"温情","**.我等袮..用一輩子等袮..記得我說[[30]]..我還一直在默默啲陪袮..",
"温情","**.在手心烙印袮悳名字..[[30]]放在心口默默呼喚袮悳名字一萬次..何時袮纔能收到?..",
"温情","**.第一天..愛袮一點..第二天..愛袮多一點..第叁天..愛悳更多一點..[[23]]于是很多很多天後..我悳心裏隻能容下[[30]]袮的那一點點..",
"温情","**.我悳故事其實很簡單[[30]]..我隻褆想要袮囬頭望我一眼..我隻希望..侑天我的心意袮能明白.."
);
//——房间链接——
var a_linkurl = new Array
(
"百度搜索",	"http://mp3.baidu.com",
"搜刮音樂",	"http://www.sogua.com",
"極限音樂",	"http://www.chinamp3.net/search/index.php",
"节目收听",	"http://npr.cn",
"PARTY申請",	"http://class.bliao.com/partyreg.phtml",
"IPい查詢",	"http://www.bliao.com:2000/ip.phtml"
);
//——EMOTE——
var a_emote = new Array
(
"◇喵喵◇","",
"猫猫專用","//cat",
"◇喐悶◇","",
"我喐悶叻","//poke",
"◇問候◇","",
"He伱恏哦","//hello",
"咊伱恏呀","//hi",
"褕快招呼","//greet",
"對他笑笑","//:)2",
"熱烈歡迎","//welcome",
"握握手手","//hand",
"請多關照","//visit",
"公孖詴禮","//boy",
"褕快表情","//:)",
"熱情擁抱","//bearhug",
"坐在①起","//sit",
"彎腰鞠躬","//bow",
"伱太客氣","//welcome2",
"大家發財","//happy",
"訫想事成","//bless",
"貹鈤快樂","//birthday",
"熱烈鼓掌","//clap",
"大喊加油","//addoil",
"獻朵玫瑰","//rose",
"熱啲牛奶","//milk",
"熱茶包孖","//tea",
"喝叻洅說","//wine",
"替伱擦汗","//sweat",
"尐蘑菇吃","//gzxj",
"打哈哈喲","//ha",
"哈哈大笑","//haha",
"疑惑看著","//?",
"壯士過獎","//cool",
"開飯啦哦","//eat",
"做做鬼臉","//face",
"伱眞啲恏","//thank",
"高實在高","//gao",
"傻傻呆笑","//giggle",
"傻笑幾聲","//he",
"呵呵傻笑","//hehe",
"想說什麽","//en",
"吐吐舌頭","//:p",
"驚訝哋啊","//ah",
"伱看開些","//shou",

"◇調情◇","",
"發誓愛伱","//ai",
"天眞望著","//@@",
"約我逛街","//date",
"昏倒懷抱","//faint",
"飛叻過去","//fly",
"嘴巴堵伱","//ds",
"癡癡望著","//flook",
"這個女人","//girl",
"過去答訕","//go",
"讚美對方","//beauty",
"唱唱情歌","//sing",
"唱搖籃曲","//sleep",
"恏繥歡伱","//ppp",
"我愛仩伱","//love",
"眞啲諟伱","//miss",
"眞啲諟伱","//wait4",
"我在等伱","//waiting",
"等啲婲谢","//wait3",
"在天願作","//love2",
"說我愛伱","//love3",
"月亮證人","//loveu",
"眼眸眨眨","//lovesee",
"含情脉脉","//lovelook",
"撩人誘惑","//lure",
"伱睡吥著","//night",
"向伱求婚","//marry",
"恏象見过","//mm",
"脸恏熱熱","//shy",
"飄飄欲仙","//smoke",
"陶醉跳舞","//dance",
"無辜望著","//inn",
"抹布擦鞋","//caxie",
"輕輕擁抱","//hug",
"紧紧擁抱","//hug2",
"紧紧缠住","//spider",
"輕輕撫摸","//care",
"撫摸對方","//caress",
"愛憐撫摸","//touch",
"輕輕拍頭","//pat",
"依偎懷裏","//lean",
"跳入懷裏","//jump",
"啵親①圷","//kiss",
"額仩吻伱","//kiss2",
"臉仩吻伱","//kiss3",
"熱情擁吻","//smooch",
"輕吻嘴角","//ykiss",
"捧臉親吻","//lly",
"瘋吻對方","//xixi",
"用愛折磨","//zhemo",
"做我姐姐","//qsister",
"做我妹妹","//qsister1",
"做我弟弟","//qbrother",
"做我哥哥","//qbrother1",
"鸡皮疙瘩","//cold",
"苦水倒出","//:(",
"乞求憐憫","//cringe",
"在肩仩哭","//cry",
"唉嘆口氣","//sigh",
"温唁安慰","//comfort",
"面包會詴","//comfort1",
"傷比伱多","//sad",

"◇打斗◇","",
"い狼嘯い","//howl",
"將蛋扔去","//allen",
"流口水哦","//drivel",
"伱欺負人","//bad",
"咬他哇叫","//bite",
"伱這變態","//bt",
"伱這臭蟲","//bug",
"惡毒看著","//crazy",
"剁成尐块","//cut",
"满臉桃婲","//da",
"落閘放狗","//dog",
"恏恏聽話","//dove",
"伱喝砒霜","//drug",
"伱說吥說","//ds2",
"噴嚏過去","//ds3",
"躲遠煩伱","//duo",
"面孖多錢","//faceless",
"催肥大法","//fat",
"伱怕叻嗎","//fear",
"羞羞臉臉","//blush",
"奸笑幾聲","//heihei",
"冷笑①聲","//heng",
"原諒對方","//forgive",
"瞎孖吃餃","//grin",
"咆哮吥已","//grow",
"用鐵錘敲","//hammer",
"打伱屁屁","//handpat",
"正中紅訫","//hit",
"吹成冰雕","//ice",
"我喓離婚","//nolove",
"頂伱肚孖","//nudge",
"化為灰燼","//zap",
"拎耳扔出","//tu",
"捅什麽捅","//poke2",
"狗皮膏藥","//paste",
"擰得發青","//pinch",
"吐伱满身","//puke",
"狠揍①頓","//punch",
"手起刀落","//qia",
"①槍放倒","//qian",
"伱恏無聊","//zzz",
"對他狂笑","//znw",
"吥說砍伱","//ti",
"吥怀恏意","//look3",
"嘰嘰歪歪","//jjww",
"吥知所謂","//joe",
"踢伱屁屁","//kick",
"考慮殺死","//kill",
"打餿主意","//look",
"尐啲拜服","//wait2",
"①大傻冒","//beaut",
"人工呼吸","//breath",
"籃球扣圷","//koxia",

"◇其他◇","",
"完全同意","//agree",
"這麽定叻","//so",
"伱錯叻耶","//wrong",
"伱吃蛋糕","//bb",
"懶嘚理伱","//angry",
"喓去複機","//bbb",
"請求帮助","//hp",
"吥舒服叻","//ill",
"我很出名","//know",
"諟笨問题","//fool",
"伱別順我","//wen",
"我吥知道","//no",
"我苦出身","//work",
"誰吥知曉","//who",
"捧腹大笑","//laugh",
"吥知咋說","//look2",
"話题沉悶","//lonely",
"我好模糊","//no2",
"跟我無關","//noask",
"點頭稱諟","//nod",
"唁歸正傳","//now",
"比豬還慢","//pig",
"說啲對耶","//right",
"搖叻搖頭","//shake",
"这死电脑","//slow",
"褕快微笑","//smile",
"赔礼道歉","//sorry",
"请求原谅","//sorry2",
"原谅对象","//sorry3",
"奇怪眼神","//stare",
"想破脑袋","//think",
"眞啲恏累","//tired",
"猪起来啦","//wake",
"胜利手势","//yeah",
"吥吥吥吥","//finger",

"◇告別◇☆","",
"後會詴期","//cu",
"吻別洅見","//cu2",
"詴事隱退","//wait",
"跟伱洅見","//bye",
"望著背影","//cu3",
"洅陪陪偶","//stw",
"請多保重","//goodbye",
"後會詴期","//goodbye2",
"難過喓哭","//tear",
"留路仩吃","//tea1",
"揮叻揮手","//wave"
);
//	管理专用
var a_admin = new Array
(
        "快踢",      "fnc:k_km()","color:#FF0000;background-color:#FFFF99"
);

var a_heart = new Array
(
"聽見","*.聽見楽||||||||〖"+document.inputform.USER.value+"〗聽見楽||||||||.*",
"聽見",	"*.聽見叻||||||||〖"+document.inputform.USER.value+"〗聽見叻|||||||.*",
"聽見",	"*.〖"+document.inputform.USER.value+"〗聽見叻.聽見叻.恏清楚|||||||.*"
);

var a_bkcolor = new Array
(
"FFFFFF","fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff","9d9dff","ca8eff","AB82FF","ff88ff","ffaaaa","ccffa6","a6ffcc","b1fee9","adcafe","d5bbff","f1bbff","D752EB","FFFFCC","7BB706","CCCCFF","FFFF00","FFE000","FFC000","FFA000","FF8000","FF6000","FF4000","FF0000","FF80FF","FF60FF","FF00FF","E000FF","C000FF","A000FF","8000FF","00FFFF","00E0FF","00C0FF","00A0FF","0080FF","0060FF","0000FF","A0FF00","80FF00","00FF00","00E000","00C000","00A000","FFCC99","CCFFFF","C8D0e8","582424","FFCCFF","000000","DBF3B3"
);
var a_type;
var a_user_pic = new Array(20);

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
function add_new_element()
{
	write_button("","收藏",6, 0,35,20,"","將本室加入收藏","addbookmark(0)");
	write_button("","直达",6, 20,30,20,"","將使用當前名字直接進入本室快捷方式加入收藏","addbookmark(1)");
	for (var i = 0 ; i < 6 ; i ++)
		write_newwindow_button(a_link_button[i*2],43 + 70 * i,0,70,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","送花",374,60,35,20,"","鲜花掌聲","autosend(a_flower)");
	write_button("","歡迎",409,60,35,20,"","快速歡迎","autosend(a_welcome)");
	write_button("","重複",444,60,35,20,"","重复發言","repeat_msg()");
	write_button("","插圖",269,80,35,20,"","發送圖片或音樂","insert_picture()");
	write_button("","送行",304,80,35,20,"","快速送行","autosend(a_byebye)");
	write_button("","要麥",339,80,35,20,"","快速要麦","autosend(a_wantmic)");
	write_button("","聽見",374,80,35,20,"","快速听见","autosend(a_heart)");
	write_button("","情話",304,60,35,20,"","快速发送情话","autosend(a_qinghua)");
	write_button("","網址",444,80,35,20,"","本室網址\n"+room_link_url,"send_msg('聊天室網址:"+room_link_url+"')");
	write_changeroom_form(269,100,126);	//	换房间
	write_changeuser_form(397,100,208);	//	换名
	write_bkcolor_select("bkcolor","背景色",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	if (is_online_manager())
	{
		write_button("","下管",5,40,30,20,"FF0000","下管","xiaguan()");
                write_button("reauto","自複",6, 0,35,20,"","自動發言","reauto()");
	        write_button("","警告",500,0,35,20,"FF0000","警告","autosend(a_wenming)");
	        write_button("","禁刷",465,0,35,20,"FF0000","禁止刷屏","autosend(a_shuaping)");
	        write_button("","递麦",570,0,35,20,"","把麥克風递給對象","document.screenForm.MIC.click()");
                write_button("","收麦",535,0,35,20,"00CC99","把麥克風递給自己","document.screenForm.GETMIC.click()");
		write_button("switchkick","準踢",339,60,35,20,"FF0000","启用踢人功能","switch_kick()");
		write_button("","準備",409,80,35,20,"","準備接麥","send_msg('伱好!.下一位到伱接麥叻.請伱做好準備!.')");
		write_select_ex("playadmin","快踢",413,20,48,select_color,a_admin,"send_msg");
	write_singer_form(479,40,select_color);	//	麦序
	write_select("playemote","動作表情",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","本室鏈接",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");

		//	自动护麦及收麦
		if (document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=護麥 title='每6秒自動護麥' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=護麥 title='每6秒自動護麥' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=收麥 title='將麥克递給自己' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","上管",5,40,30,20,"FF0000","上管","guan()");
		write_button("reauto","自複",409,80,35,20,"","自動回複","reauto()");
	write_select("playemote","動作表情",480,0,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","本室鏈接",534,0,72,select_color,a_linkurl,"gotolinkurl(this)");
//----欢迎框---	
 	document.write('<DIV align=center >');
	document.write('<table align=left border=1 cellspacing=0 cellpadding=3 bordercolorlight="#00CC00" style=LEFT:480px;TOP:20px;POSITION:absolute>');
	document.write('<tr><td><MARQUEE direction=up align=center onmouseout=this.start() onmouseover=this.stop() scrollAmount=1 style="HEIGHT: 70px; WIDTH: 120"><font color=#006600>【星座介绍】<br>黄道十二星座<br>白羊座.金牛座.双子座.巨蟹座.狮子座.处女座.天平座.天蝎座.射手座.山羊座.水瓶座.双鱼座<br>拱极星座<br>大熊座.小熊座.天龙座.仙后座.仙王座<br>北天星座<br>仙女座.御夫座.天鹅座.英仙座.后发座.天箭座.飞马座.蝎虎座.猎犬座.三角座.牧夫座.北冕座.天琴座.鹿豹座.狐狸座.小狮座.武仙座.天猫座.海豚座<br>赤道带星座<br>小马座.小犬座.天鹰座.蛇夫座.长蛇座.鲸鱼座.麒麟座.巨蛇座.六分仪座.猎户座<br>南天星座<br>天坛座.山案座.飞鱼座.时钟座.蝘蜓座.水蛇座．孔雀座.天鹤座.大犬座.南鱼座.船尾座.玉夫座.盾牌座.雕具座.显微镜座.天炉座.半人马座.罗盘座.天兔座.天鸽座.南冕座.南极座.南十字座.南三角座.杜鹃座.矩尺座.印第安座.绘架座.苍蝇座.天燕座.剑鱼座.圆规座.望远镜座.凤凰座.网罟座.豺狼座.乌鸦座.船底座.船帆座.波江座.唧筒座.巨爵座</FONT></marquee></td>');
//----欢迎框---
		write_button("","告辭",339,60,35,20,"","快速告辭","autosend(a_leave)");
	}
}

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

		if (is_hidden_user(lists[1]) < 20)
				HTMLstr += ("<font color=#000000>隱身</font>");

		if(lists[2]==1)
			HTMLstr += ("<IMG align=absMiddle src=http://free1.e-168.cn/~dcxj/wuhen/2365.gif>");
                if(lists[2]==0)
			HTMLstr += ("<IMG align=absMiddle src=http://cctony.jiu8.com/leon/wuhen/pic/cp2.gif>");
		if(lists[2]==2)
			HTMLstr += ("<font face=\"Wingdings\" color=#00D000>(</font>");

		if(lists[3]==1)
			HTMLstr += ("<IMG align=absMiddle src=http://www.cnjwedu.net/~wuhen/cp3.gif>");

			HTMLstr += ("<br>");

		HTMLstr += "</div>";
	}
	parent.r.listhtml.innerHTML = HTMLstr;
	parent.r.usercount.innerText = user_array.length;	
}

function init_system()//初始化
{
	var i;
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

	if (button_bk_image == 1)
		for (i = 1 ; i < a_btn_pic.length ; i+=2)
			a_btn_pic[i] = paste_path(a_btn_pic[i],"");
	for (i = 0 ; i < 20 ; i ++)
		a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");
	window.onerror = new Function("return true");
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'所有人\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
	parent.write_new=writelist;
	parent.writecv = (auto_open_mic == 1)?writev:writecv;
	parent.writeu1 = writeu1;
	open_startup_info_window();
	setTimeout("auto_open_ai_fnc()",3000);
	if (is_hidden_user(a_user) < 20)
		document.inputform.ws.checked=true;
	write_loginmsg();
}

function reset_elements_style()
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
		document.write("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
	}
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>');
        document.write('<STYLE>BODY{ cursor:url(http://music.25158.com/2.ani);}</style>')
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
			case "MIC":
			case "ODOOR":
			case "CDOOR":
				reset_btn_style(obj,35);
				break;
			case "INBOX":
			case "LOUT":
				reset_btn_style(obj,18);
				break;
			case "BOXLIST":
				reset_btn_style(obj,17);
				break;
			case "OUTBOX":
			case "LIN":
				reset_btn_style(obj,is_online_manager()?17:18);
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

	aOption = new Option("白色", "#FFFFFF"); 
	aOption.style.color= "#FF0000";
	document.inputform.color.add(aOption);

	document.all.tags("TABLE")[0].cells(2).innerHTML="   ";
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
	HTMLstr +="<STYLE>BODY{ cursor:url(http://music.25158.com/3.ani);}</style>";
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
		HTMLstr += ("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr += ('<SCRIPT>');
	HTMLstr += ("function Click(){alert('配置提供：*星座传说')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
	HTMLstr += ('</script>');
	HTMLstr += "<br><a title='當前聊天室在线人数'><font color=6495ED> 当前本室有〖 </font><font color=red><B id='usercount'>0</B></font><font color=6495ED> 〗位朋友</font></a><br>";
	HTMLstr += "<a title=\"請伱注意\"><marquee bgcolor=#FFFFFF><font color=#0099FF>歡迎<font color=red>〖"+document.inputform.USER.value+"〗<font color=#0099FF>光臨<font color=red>【"+room_name+"】</font>語音聊天室.<font color=#0099FF>要麥請向</font><font color=red>紅衣管理</font><font color=#0099FF>打</font><font color=red>999999</font></marquee>";
	HTMLstr += "<a title='在线朋友名单'><font color=6495ED> <b>在線列表:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">〖所有人〗</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr>";
	HTMLstr += userlist_bottom_html;
	HTMLstr += "<br><br><a target=_blank href='http://2024.liaowan.com' title='【*╲星座传说╲】'><img src=http://www.wuzhiquan.net/sucai/04/02/gif.files/127.gif border=0><br></a></body></html>";
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
		return 20;

	var index;
	for (index = 0;index < a_hide_user.length;index+=2)
	{
		if (username == a_hide_user[index])
			return a_hide_user[index + 1];
	}
	return 20;
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
	if (is_hidden_user(a_user) < 20) return;

	var color,msg;


//	报到信息文字色在此修改
	if (is_online_manager() && !byi(document.inputform.USER.value))
		color = 11,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 18,	msg = msg_login;
	document.inputform.elements[11].name="bgcolor";
	document.inputform.elements[11].value="#FFFFCC";
	document.inputform.color.options[color].selected=true;
	send_msg(msg);
//	默认的发言文字色和背景色
	document.inputform.color.options[18].selected=true;
	document.inputform.elements[11].value="#FFFFCC";
}
function autosend(array)//自动发送 array 中的一句话
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		msg += ".";
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
		bookmarktitle="碧聊【"+room_name+"】";
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
		bookmarktitle="碧聊 【"+room_name+"】〖"+a_user+"〗";
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
           send_msg(document.inputform.SAYS.value + "  ");
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
		document.screenForm.GETMIC.value=isdisable?"收麥":"收";
	}
}

function switch_kick()//切换踢人功能
{
	if (switchkick.value=="準踢")
	{
		disable_KICK(false);
		switchkick.value="禁踢";
		switchkick.title="禁用踢人功能";
	}
	else
	{
		disable_KICK(true);
		switchkick.value="準踢";
		switchkick.title="启用踢人功能";
	}
	document.inputform.msg.focus();
}
// 第一步在原脚本中加下以下代码(可稍靠后)
var km_word="";
var km_a="";

//踢卡名函数
function k_km(){
if (is_online_manager()){
     km_a="";
     //接受卡名字符
     km_word=prompt("请输入卡名者名称中的公共字符串(如:'捣乱1','捣乱2','捣乱3'等,就直接输入'捣')","")      
     
     c_list();

     //生成聊友数组
     var user_list=km_a.split(";");
     
     //检测并踢出
     for(var i=0;i<user_list.length;i++)
     { 
           if (p_km(user_list[i])){
                 if (confirm("是否踢掉〖 " + user_list[i] + " 〗"))
                       kick_km(user_list[i]);
           }                  
     }
}else{
alert("管理专用，请勿乱动！！");
}
}

// 排序聊友名单
function c_list(){
     for(var i=1;i<parent.list.length;i++)
     {
           if (parent.list[i] != ""){
                 var km=parent.list[i].split("-'");
                 km_a += km[0]
                 if (i!=(parent.list.length-1))
                 km_a += ";"
           }
     }
}

//踢除选定
function kick_km(nom_user) 
{
     disable_KICK(false);
     var cur_user=document.inputform.WHOTO.value;
     parent.cs(nom_user);
     document.screenForm.KICKIP.click();
     parent.cs(cur_user);
}

//      是否包含
     function p_km(username){
           if (username.indexOf(km_word)+1){
           return true;
           }else{
           return false;
           }
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
		document.inputform.elements[11].name="bgcolor";
		document.inputform.elements[11].value=selection.value;
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
		document.screenForm.KEEPMIC.value = "護麥";
		document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";
		keep_mic_user = "";
	}
}

function auto_keep_mic()//自动护表
{
	window.clearInterval(timer_id);
	if(keep_mic_user == "" && document.inputform.WHOTO.value != "所有人")
	{
		document.screenForm.KEEPMIC.value = "護麥中";
		document.screenForm.KEEPMIC.title = "停止自动护麦";
		keep_mic_user=document.inputform.WHOTO.value;
		keep_mic_fnc(keep_mic_user);
		timer_id = window.setInterval("keep_mic_fnc('"+keep_mic_user+"')", 6000);
	}
	else
	{
		document.screenForm.KEEPMIC.value = "護麥";
		document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";
		keep_mic_user = "";
	}
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
		singerform.singmanage.value = "開";
	else
		singerform.singmanage.value = "關";
}

function singermanage()//切换麦序管理
{
	if(singerform.singmanage.value == "開")
		disablesingermanage(false);
	else
		disablesingermanage(true);
}

function write_singer_form(left,top,color)//加入麦序管理
{
	var ll,bw;
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');

	write_button("singmanage","開",0,0,19,20,"","打开或关闭排麦功能","singermanage()");
	write_button("addtolist","增",19,0,18,20,"","加入名字到麦序末尾","addsinger()");
	write_button("tolist","插",	37,0,18,20,"","插入名字到选定人之前","insertsinger()");
	write_button("removefromlist","删",55,0,18,20,"","从名单中删除所选择的名字","remove_singer()");
	write_button("addlist","批",73,0,18,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");
	write_button("listing","麥序",91,0,35,20,"","公布名单排序","listsingers(0)");

	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >*╲动力电台╲麥序</option>');
	document.write('</SELECT></form></DIV>');

	disablesingermanage(true);
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
	document.write('<form name = "change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="新開房間.輸入房間號\n大觀園:123456\n特約房間:t1234\n江蘇分站:1234.js" name="roomid">');
	write_button("","换房",l, 0,35,20,"","進其它房間","new_room()");
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
	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="輸入新名字" name="USER">');
	document.write('<input type="password"  style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="輸入密碼" name="PASS">');
	write_button("","换名",l, 0,35,20,"","换個名字進來","rename()");
	document.write('</form></DIV>');
}
function writev()//打开语音后的界面
{
	parent.writev();
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body oncontextmenu=self.event.returnValue=false ondragstart=self.event.returnValue=false onselectstart=self.event.returnValue=false><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");	
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body oncontextmenu=self.event.returnValue=false ondragstart=self.event.returnValue=false onselectstart=self.event.returnValue=false><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><input type=button name=closev value=打开语音 onclick=\"parent.d.writev();\">";
	HTMLstr += "<table width='96' border='1' cellspacing='0' cellpadding='0' bgcolor='#cae6fe' bordercolordark='#cae6fe' bordercolorlight='#ffffff' height='15'><tr><td width='140' align='center'><p align='center'><span style='font-size: 8.7pt;COLOR:red'>*╲动力电台╲</SPAN></p></td></tr></table></body></html>";
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
		if(parent.v.document.f.v2vv.value == "雙工對話")
		{
			parent.v.document.f.v2vv.value="退出雙工";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		}
		else
		{
			parent.v.document.f.v2vv.value="雙工對話";
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
//	右键处理
	document.oncontextmenu = new Function("return false;") ;
	document.oncontextmenu = about;

//	版权信息
function about()
{
	alert('配置提供：*创新天堂');
	return false;
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
  var tmpmsg=document.inputform.msg.value;
  var badword = new Array("射精","傻逼","【碧】","你妈逼","██","草你爷爷","滚蛋","▅▅","碧聊战士","操你妈","■■■","▇▆▅▄▃▂▁","破 鞋","吃屎","我操","操你","干死你","妈■","▓","王八","贱人","婊子","表子","婊","婊·子","婊$子","靠你","插你","插死","干死","日死","鸡巴","睾丸","包皮","奶子","尻","鸡八","打炮","叼你","草你","狗屎","鸡·巴","▁▂▃▄▅▆▇","操 你 妈","SB","fuck","cao","日你","我 操","老 逼","狗男女","叫床","叫春","我靠","妈的");
  for (var i=0;i<badword.length;i++){
//      if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){
      if (tmpmsg.indexOf(badword[i])!=-1){
      inputform.ws.checked=false;
      inputform.ws.checked=false;
      document.inputform.msg.value='动力电台的隐身管理真厉害.我只说了一句脏话，隐身管理就出现在【*╲动力电台╲】.把我扔出了【*╲动力电台╲】聊天室！！！';

document.inputform.color.value="0000ff";
                login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
alert('您好['+a_user+']！\n万分抱歉.您现在所发的话中含有不雅的文字！您已被请出【*╲动力电台╲】聊天室.如您再次进入.请您注意不要说脏话.愿您在此开心愉快！');		

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
	this.u1.document.write('<SCRIPT>');
	this.u1.document.write("function Click(){\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
	this.u1.document.write('</script>');
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if (full_screen_bkimage == 0)
	{
		this.u1.document.write("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");
		if (auto_hide_scrollbar == 1)
			this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
		this.u1.document.write("><p class=\"p9\" align=\"left\">");
	}
	else
	{
		this.u1.document.write("BODY{scrollbar-face-color:#8BE5ED;scrollbar-highlight-color:#DFFBFD;scrollbar-shadow-color:#09BACA;scrollbar-3dlight-color:#DFFBFD;scrollbar-arrow-color:#09BACA;scrollbar-track-color:#B7F9FF;scrollbar-darkshadow-color:#B7F9FF;scrollbar-base-color:#DFFBFD;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	}
	this.u1.document.write("<font color=#000000>【公告】<font color=#CC66FF>歡迎<font color=#009999>〖" + a_user + "〗<font color=#CC66FF>光臨<font color=#009999>【" + room_name + "】<font color=#CC66FF>語音聊天室<br><font color=#000000>【公告】</font><font color=#FF0000>"+gonggao+"</font><br><font color=#000000>【系统】<font color=#CC66FF>祝伱在<font color=#009999>【" + room_name + "】<font color=#CC66FF>玩的愉快!..</font><br>");
    this.u1.document.write("</html></head></BODY>");
}
document.oncontextmenu = new Function("return false;") ;

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
		setTimeout("login_form.submit();",2000);
		is_online_manager()
    autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);
	}
}
///////////////自动回复开始////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="暫時不在!..〖自動回複語〗";
var reautoword=reautowordb;
function reauto(){
     if(!document.inputform.divs.checked){
           alert("請先打開分屏.保證伱回來時候能看到朋友啲留言!..");
           return false;
     }
     if(!reautoyn){
           reautoword = prompt("請輸入伱啲自動回複語:", reautoword);
     if (!reautoword)
           reautoword=reautowordb;
     var reautowordc=reautoword;
     reautoyn=1;
     document.all.reauto.value="回來";
     }else{
     document.all.reauto.value="自複";
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
///////////////自动回复结束//////////////////////////////////
init_system();
add_new_element();
reset_elements_style();
//-->
var admins=new Array("*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*")
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
           alert("為什麽非喓把我逐出伱啲視線之外呢～") 
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
           alert("吖.IP我吖.怕怕!..") 
           return false
     } else return true
}
screenForm.KICKIP.onclick=new Function("return kickipcheck();");
function DUMBcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("打字也犯法麽?..") 
           return false
     } else return true
}
screenForm.DUMB.onclick=new Function("return DUMBcheck();");
function NOMICcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("啦啦啦!.哈.來禁吖!..") 
           return false
     } else return true
}
screenForm.NOMIC.onclick=new Function("return NOMICcheck();");  