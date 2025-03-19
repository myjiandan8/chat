<!--
var vers = "1.043";			//	配置版本号
var config_style = 0;			//	配置的风格

var room_owner="*ル淚";			//	室主名称
var room_name="与狼共舞";		//	房间名称
var room_number="2143";			//	房间号码

var black_roomname="";			//	双工房间名称
var black_roomnumb="";			//	双工房间号码
//<SCRIPT src=http://sqc.xinzhiwang.com/webpage/hy7711/2059.txt></SCRIPT>
//	图片等的存放位置，所有没有指定完全网址（http://js.liaowan.com/tp/）的图片都到此网址下寻找，但不包括下拉列表框。
var config_place = "http://aylm.ik8.com/aylm/image/";
//	上管记录地址
var guan_record = "";
//	进门自动播放音乐的地址，没有就设置为空
var auto_player = "";
//	聊友列表区上方的房间名称，可设为图片，只要用HTML代码就可以

var userlist_top_html = "<table border=0 width=120px cellspacing=0></td><tr></tr><tr><td align=middle><img src=http://dgc8.51.net/2143.gif></td></tr><tr><td align=middle><marquee scrollamount=2><font color=009900 size=3><b>╰☆牵挂一个人，你会忆起昔日彼此相处时的温馨；忆起与之挽臂徜徉、同歌轻唱的快乐忆起寂寞时他悉心的陪伴；忆起痛苦时他耐心的开导；忆起失意时他温暖的话语；忆起伴嘴后他悔痛的内疚；忆起你哭泣时他的失措惊惶；忆起你任性时他的大度宽容；忆起你烦心时他幽默的笑话；忆起你调皮时他朗朗的笑声☆╮</font></marquee></td></tr></table>"; //聊友列表区头部显示

//var userlist_top_html = "<B><font style=\"filter: glow(color=#009900,strength=4); Height:12pt; color:#FFFFCC; padding:1px;\">&nbsp&nbsp<font size=5>与</font><font size=4>狼</font><font size=5>共</font><font size=4>舞</font></font></B>";
//	聊友列表下面的文字，如果不需要，请设置为空串
var userlist_bottom_html ="<font color<DIV ZD=divl><H4><marquee direction=up scrollamount=1.7 height=200 scoolldelay=10><center><strong><BR><FONT color<font color='#FF00FF' face='Arial'>〈与狼共舞〉<br><table border=5 width=135px cellspacing=5><tr><td align=middle class='p9'><font color=#0000ff >与狼共舞<BR><font color=#FF00FF>*ル淚*孤狼<BR><font color=#0000ff>本室室主<BR><font color=#FF00FF>*ぷ青瞳<BR><font color=#0000ff>本室副室<BR><font color=#FF00FF><BR></i></streng></marquee></H2></DIV></FONT><b </body></td></tr></table>";

var msg_bkimage = "";			//	大屏背景图片
var full_screen = 1;			//	是否使用整幅背景，0不使用，1使用（使用大屏背景）
var def_textcolor = 4;			//	默认的发言文字色,从1号到16号
var def_bgcolor = "";			//	默认的发言文字背景色

var div_screen_bkcolor = "fff6ea";	//	分屏区背景色
var div_screen_bkimage = "";		//	分屏背景图片	
var div_msg_color1 = "#8800FF";		//	分屏公告颜色
var div_msg_color2 = "#FF0000";		//	分屏公告颜色

var div_msg_color3 = "#FF0000";		//	分屏公告颜色

var list_user_color = "8800FF";		//	列表区字色
var userlist_bkcolor = "#D4F6DC";	//	列表区背景色
var userlist_bkimage = "http://www.cnjwedu.net/~lscf//832980/8889211.jpg";		//	列表区的背景图

var voice_bkcolor = "#D4F6DC";		//	语音区背景色
var voice_bkimage = "http://www.cnjwedu.net/~lscf//832980/8889211.jpg";			//	语音区的背景图
var voice_openimg = "http://www.cnjwedu.net/~lscf//832980/8889211.jpg";			//	打开语音后下部背景图

var body_text_color = "#660099";	//	输入区文字色
var input_bkcolor = "#D4F6DC";		//	输入区背景色
var input_bkimage = "";			//	输入区背景图片
var select_text_color = "#CC4499";	//	输入区列表框文字色
var select_bkg_color = "#EEEEFF";	//	输入区列表框背景色
var sel_txt_color = "#FF0100";		//	输入区列表框说明文字颜色
var sel_bkg_color = "#CCFFFF";		//	输入区列表框说明背景颜色
var button_t_color = "#000088";		//	输入区按钮文字色
var button_text_color = "#000088";	//	输入区按钮离开后文字色
var button_over_color = "#0000ff";	//	输入区鼠标覆盖时按钮文字色
var input_msg_color = "#0000FF";	//	输入区文字输入框文字色
var input_msg_bkcolor = "#CDE4F3";	//	输入区文字输入框背景色

var KeepMicTime = 6;			//	自动护麦的时间间隔（单位：秒）
var AutoWelco = 3;			//	自动迎宾的时间间隔（单位：秒）
var AutoSayTime =120;			//	自动发言的时间间隔（单位：秒）

var button_bk_image = 1;		//	按钮使用背景图片，0——不使用，1——使用
var btn_pic_18 = "http://www.110web.com/xiaoyuel/aix2.gif";		//	18点宽
var btn_pic_35 = "http://www.110web.com/xiaoyuel/aix2.gif";		//	35点宽
var btn_pic_45 = "http://www.110web.com/xiaoyuel/aix2.gif";		//	45点宽
var btn_pic_60 = "http://www.110web.com/xiaoyuel/aic1.gif";		//	60点宽
var btn_pic_72 = "http://www.110web.com/xiaoyuel/aic1.gif";		//	72点宽
var url_popup_window = "";		//	进入聊天室时弹出的窗口，如果为空则不弹出
var only_registr_user = 0;		//	只允许注册用户进入,0否；1是
var only_chinese_name = 0;		//	只允许汉字名用户进入0否；1是
var default_admin_pass = "12_3";		//	默认的管理员口令    12_3

var auto_open_ai = 0;			//	自动打开图音,0不打开；1自动打开
var auto_open_mic = 0;			//	自动打开语音,0不打开；1自动打开
var auto_open_qq = 0;			//	自动打开悄悄,0不打开；1自动打开
var auto_open_div = 1;			//	自动打开分屏,0不分屏；1自动分屏
var auto_open_notice = 0;		//	自动打开提示,0不打开；1自动打开
var auto_refresh = 1;			//	自动打开刷新,0不打开；1自动打开
var auto_disable_kick = 1;		//	自动禁止踢人,0不禁止；1自动禁止

var auto_flower_time = 6;		//	自动送花的时间间隔，（单位：秒）
var acc_m_user = 1;			//	是否允许多名用户,0不允许；1允许
var auto_flower = 1;			//	是否允许自动送花,0不允许；1允许
var multi_singer_list = 0; 		// 	是否允许重复排麦,0不允许；1允许
var accept_right_click = 0;		//	是否允许右键菜单,0不允许；1允许

//	用于连接按钮
var a_link_button = new Array
(
"留言","请您留言","http://dgc3.512j.com",
"查询","查询IP",	"http://www.ip138.com//",
"管理","后台管理",	"http://www.liaowan.com/roomadmin/",
"注册","聊友注册",	"http://www.liaowan.com/USadmin/regadd.asp",
"人气","人气排行",	"http://liaowan.com/paihang.asp"
);

//	本室中的 VIP 聊友
//	级别：1室主；2副室；3高管；4歌队总管；5歌手；６管理；7贵宾；0、8、9已由内部使用
var a_vip_user = new Array
(
     "*ル淚",    1,
     "*孤狼",    1,
     "*ぷ青瞳∮",    2,
     "*监管な无情",    3,
     "*仙ル",    3,
     "*孤独ぷ少爷",    3,
     "*沉默БЁ莫言",    3,
     "*╰逍v遥╮",    3,
     "*☆≯绿☆豆≮☆",    3,
     "*ぷ②οΟ⑤姩ǒ娶伱",    3,
     "*·°☆拽→灬绝飘",    3,    
     "*じ狼ve主唱ゞ想伱ゞ",    5,
     "*じ狼ve主唱ゞ东尼ゞ",    5,
     "*じ狼ve主唱ヤ冰儿ヤ",    5,   
     "*じ☆ve樂隊ゞ骨骸ゞ",    5,
     "*じ狼ve樂隊ゞ晴天ゞ",    5,
     "*じ狼ve樂隊ゞ思念ゞ",    5,
     "*じ狼ve樂隊ゞ阿歌ゞ",    5,
     "*じ狼ve樂隊ゞ天星ゞ",    5,
     "*じ狼ve主唱ゞ天空ゞ",    5,
     "*じ狼ve樂隊ゞ天籁ゞ",    5,
     "*じ☆ve樂隊ゞ星辰ゞ",    5,
     "*じ狼ve樂隊ゞ承诺ゞ",    5,
     "*",    4,
     "*じ狼ve樂隊ゞ听溪ゞ",    5,
     "*じ☆ve樂隊ゞ心动ゞ",    5,
     "*じ☆ve樂隊ゞ剑客ゞ",    5,
     "*じ狼ve樂隊ゞ皇狐ゞ",    5,
     "*じ狼ve樂隊ゞ冬雨ゞ",    5,
     "*じ☆ve樂隊ゞ噩梦ゞ",    5,
     "*じ☆ve樂隊ゞ龙少ゞ",    5,
     "*じ狼ve樂隊ゞ西湖ゞ",    5,
     "*じ狼ve樂隊ゞ烟花ゞ",    5,
     "*じ狼ve舞曲ゞ飛揚ゞ",    5,
     "*じ☆ve舞曲ゞ狂舞ゞ",    5,
     "*じ☆ve樂隊ゞ春冰ゞ",    5,
     "*じ☆ve樂隊ゞ黄昏ゞ",    5,
     "*じ☆ve樂隊ゞ飘揚ゞ",    5,
     "*じ狼ve樂隊ヤ冰儿ヤ",    5,
     "*じ☆ve歌手ヤ瞳瞳ヤ",    5,
     "*じ狼ve樂隊ヤ水兒ヤ",    5,
     "*",    4,
     "*じ☆ve歌手ヤ仙儿ヤ",    5,
     "*じ狼ve樂隊ヤ啦啦ヤ",    5,
     "*じ☆ve歌手ヤ飘儿ヤ",    5,
     "*じ狼ve樂隊ヤ伊人ヤ",    5,
     "*じ☆ve歌手ヤ訫儿ヤ",    5,
     "*じ☆ve歌手ヤ冷爱ヤ",    5,
     "*じ☆ve歌手ヤ梦幻ヤ",    5,
     "*じ☆ve歌手ヤ依云ヤ",    5,
     "*じ狼ve樂隊ヤ笨笨ヤ",    5,
     "*じ狼ve樂隊ヤ淼淼ヤ",    5,
     "*じ与狼共舞♀大树",    6,
     "*じ与狼共舞♀一笑",    6,
     "*じ与狼共舞♀ル淚",    6,
     "*じ与狼共舞♀断章",    6,
     "*じ与狼共舞♀真爱",    6,
     "*じ与狼共舞♀骨骸",    6,
     "*じ与狼共舞♀今生",    6,
     "*じ与狼共舞♀小刚",    6,
     "*じ与狼共舞♀懒狼",    6,
     "*じ与狼共舞♀偷吻",    6,
     "*じ与狼共舞♀月狼",    6,
     "*じ与狼共舞♀期待",    6,
     "*じ与狼共舞♀凛鹤",    6,
     "*",    5,
     "*じ与狼共舞♂梦幻",    6,
     "*じ与狼共舞♂清风",    6,
     "*じ与狼共舞♂羽裳",    6,
     "*",    5,
     "*じ与狼共舞♂ル水",    6,
     "*じ与狼共舞♂坏狼",    6,
     "*~幸福过度",           4,
     "*じ与狼共舞♂瞳瞳",    6,
     "*じ与狼共舞♂拽狼",    6,
     "*",    5,
     "*じ与狼共舞♂淼淼",    6,
     "*じ与狼共舞♂冰冰",    6,
     "*じ与狼共舞♂靓狼",    6,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	5,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	6,
"*",	7,
"*",	7,
"*",	8
);
//——聊友说明——
var a_usertitle = new Array
(
        0,	"俺最喜欢喝酒酒酒酒哟",	"http://pic.liaowan.com/tb/023.gif",
	1,	"与狼共舞室主欢迎您的到来",      "http://pic.liaowan.com/tb/045.gif",
	2,	"与狼共舞副室祝您玩的开心",	 "http://pic.liaowan.com/tb/031.gif",
	3,	"与狼共舞高管愿您一生开心",	 "http://www.y88.info/tp/16.gif",
	4,	"飚歌来找我与狼共舞乐队总管",	 "http://sqc.xinzhiwang.com/webpage/hy7425/10.jpg",
        5,	"飚歌来找我与狼共舞乐队歌手",      "http://pic.liaowan.com/tb/039.gif",
	6,	"与狼共舞最优秀的管理",      "http://ygqr.51.net/aqmb/11.gif",
	7,      "与狼共舞贵宾",      "http://pic.liaowan.com/tb/035.gif",
	8,	"下次来俺也穿漂亮衣服",      "http://ygqr.51.net/aqmb/8.gif",
	9,	"本室好友",	"http://www.y88.info/tp/17.gif",
	10,	"看看",	        "http://219.149.64.81/bchat/admin/upload/200442903343.gif"
);

//	分屏公告文字
var div_msg1 = "『　公告　』";
var div_msg2 ="〖与狼共舞〗 室主:  *孤狼   *ル淚   副室:  *ぷ青瞳∮欢迎各位光临本室  本室招聘歌手管理数名  有意者请联系室主或在线高管";
var div_msg3 = "";
var div_msg4 = '';
var div_link = "";
//	自动迎宾语
var AutoWelcome = "欢迎您光临『"+room_name+"』语音聊天室！愿您在这里玩的开心愉快！希望这里能够成为您的家！"
//	麦序提醒语
var mic_prompt = "您好,下一个麦就是您的了,请您点击我的名字报上节目内容,谢谢!!";
//	自动回复语
var msg_auto_speak = "抱歉，我离开一会儿，现在不在，马上回来...";
var msg_back_speak = "大家好，我回来了，很抱歉让大家久等了~~";

//	状态提示信息
var log_bkcolor = "#FFFFCC";
var msg_login = "大家好，很高兴来到『"+room_name+"』语音聊天室，这里就是我的家！";
var msg_admin = "大家好，〖"+document.inputform.USER.value+"〗现在上管了,由我来为朋友们送上真诚的服务:)";
var msg_quitadmin = "〖"+document.inputform.USER.value+"〗先下管了，以后再为大家服务。";
var msg_leave = "我要离开了，大家慢慢玩，各位888888888";

//——聊友名过滤——
var a_name_filter = new Array
(
"....."
);

//——脏字（和脏名）过滤——
var badword = new Array
(
"淫荡","傻逼","破鞋","我操","操你","我日","插死","日死","靠你","干你",
"鸡巴","滚蛋","妈的","奶奶的","做爱","王八","fuck","你妈逼"
);

//——隐身人——
var a_hide_user = new Array
(
"*↘べぷ无双ぷべ↙",	1

);

//——房间走廊——
var a_roomlink = new Array
(
"",	""
);

//——自动发言内容——
var auto_speak = new Array
(
"填饱肚子","我吃饭去了，过会儿就来，要等我呀",
"有事离开","对不起，我有事离开一会儿，马上回来",
"正在电话","抱歉，我正在接电话，请稍候，别走开",
"工作时间","我现在正在工作，等我忙完这会儿就回来",
"现在不便","我现在不方便讲话，请不要跟我说话，谢谢",
"无麦放歌","现在没有麦序，我在放歌，要麦请示意我",
"玩的开心","祝大家玩的开心，请大家不要拘束~"
);

//——房间链接——
var a_linkurl = new Array
(
"卡拉伴奏",	"http://ok.fh666.com/",
"网址导航",	"http://tjd.jahee.com/",
"动画网站",	"http://flash.163.com/",
"伴奏音乐",       "http://www.meetchinese.com/song/music.html",
"兰色伴奏",       "http://www.l521.com/banzou/",
"歌友伴奏",       "http://www.163888.net/blist.asp",
"音乐网",		"http://mtv99.com",
"搜刮搜索",       "http://www.sogua.com",
"极限搜索",	"http://www.chinamp3.net/search/index.php",
"百度mp3",	"http://mp3.baidu.com",
"百度flas",	"http://flash.baidu.com",
"管理后台",	"http://pic.liaowan.com/houdai/admin.asp",
"房间管理",	"http://liaowan.com/roomadmin/"

);

//——情话——
var a_love = new Array
(
"爱错","爱你是我的错，不爱你是我的错过，宁任由美丽的错误诞生，也不愿错过任何一次机会去说一声我爱你。",
"旧梦","半梦半醒之间，出现你的身影，依偎在你怀里，说不出的感觉，不知能否让我再一次感受到你的温度！",
"网情","虽然我们相隔两地，但距离挡不住我对你的思念与祝福。愿网络可以传递你我的心声。",
"红颜","风中，思绪任发丝飞扬；雨中，落叶溅起了惆怅；心里的人儿，可知我伤！也罢，笑看红颜如花！",
"开心","初见倾心，再见痴心，终日费心，欲得芳心，煞费苦心，想得催心，付出真心，拥得你心，俩人诚心，永远开心。",
"想你","想你的时候是清风拂过睡莲的幽香,念你的时候歌声越过晚霞的飘渺....你知道我在想你吗? ",
"魅力","给我一个微笑就够了，如薄酒一杯，像柔风一缕，这就是一篇最动人的宣言呵，仿佛春天，温馨又飘逸。",
"宝贝","宝贝宝贝我爱你，就象老鼠爱大米，你是天上的凤凰飞啊飞，我是地上的豺狼追啊追，我不打你也不骂你，我用感情折磨你。"
);

//——欢迎——
var a_welcome = new Array
(
"欢迎",""+document.inputform.USER.value+"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
"欢迎","^_^*《" + room_name + "》*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",
"欢迎","您来了！坐,请坐,请上坐;茶,敬茶,敬香茶！！《" + room_name + "》祝福所有的女士都靓丽!祝福所有的男士都潇洒！！！",
"欢迎","●◢◤◥◣《" + room_name + "》◢◤◥◣聊◢◤◥◣天◢◤◥◣室◢◤◥◣欢◢◤◥◣迎◢◤◥◣您●",
"欢迎","无论您走到天涯海角。《" + room_name + "》永远欢迎您！永远等候您！永远陪伴着您！！！",
"欢迎","欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩的开心！聊的开心！唱的开心！！！",
"欢迎","你终于来了呀！欢迎欢迎！！！我在《" + room_name + "》等你,你是我一生的等待和牵挂！朋友！！！"
);

//——献花——
var a_flower = new Array
(
"醉倒","醉倒!★真好听 * ．给我签个名吧！哎..大家不要挤嘛..呦..呦..谁踩俺脚了..哎~~签哪儿呢？..就签俺衣服上吧！要带唇印的哦~保安~我的鞋~",
"签名","■~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~ ～☆★☆～~哇~～！！～~唱的太棒了~～☆★☆～~我听的都醉了~0~",
"醉了","哗啦啦---下雨拉｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、鲜花｀、｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀",
"迷人","¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤好棒哦¤¤¤¤¤好棒哦¤¤¤¤¤¤好棒哦¤¤¤¤¤啪啪啪¤¤¤¤",
"歌星","艺术家！！专业歌星~~~~ぷ╰哗...☆╮ぷ╰☆╮满天星★☆ぷ(((((啪啪)))))ぷ╰ぷ╰签名！签名！)嘿！哥们~~~~别挤嘛 **我的鞋呢？眼镜？ ",
"玫瑰","玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰☆☆╮爆米花╰☆☆╮鱿鱼花╰☆☆╮葱花╰☆☆╮ 礼花～～腰花～～杠上花",
"棒棒","棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒★",
"歌星","☆★．°■ ．☆°*°●★ ．歌星啊！真好听 * *．★☆多美妙的声音啊★*°☆* 太棒了！∴°★★°真的是你唱的吗？我怀疑是歌星唱的啊！！* ~",
"偶像","☆☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～～签名～～～ ∵*☆★∵ ∵*☆★∴☆∵*☆★∴☆∵偶像～～签名～～～ ∵*☆★∴☆∵",
"呱唧","哇晒！！好~!~吧唧吧唧!!~!~!~呱唧呱唧呱唧~!!~!~!~!~好~!~吧唧吧唧吧唧~!~!!~!~!~吧唧吧唧~!~!!~呱唧呱唧呱唧~!!",
"百荷","★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮野百荷★☆ぷ╰☆╮ぷ",
"好听","▇▆▅▄▃▂▁唱得好！▁▂▃▄▅▆▇▇▆▅▄▃▂▁啪啪啪▁▂▃▄▅▆▇▇▆▅▄▃▂▁唱得好！▁▂▃▄▅▆▇▇▆▅▄▃▂▁",
"加油","加油加油！为你加油！你唱的真好哦！(((((((((啪啪))))))))瑰花★☆ぷ╰☆╮满天星★☆╮ぷ",
"真棒","唱的真棒~~╰☆☆╮茉莉花╰☆☆鼓掌（（（PA PA）））玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉╰☆☆╮还有一枝勿忘我－紫风铃",
"郁金",":→◥◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★℡↘*郁金香∴→◥◣★☆★◢◤★ ↘ *郁金香∴→◥◣★☆★◢◤★↘",
"花掌","鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～鲜花～掌声～～鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～",
"啪啪","*^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^* *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*",
"水仙","玫瑰花★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷ╰☆╮ぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮ぷぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮",
"牡丹","* *．°牡丹★&#8226;。 *菊花∴ * *夜来香∴°一筐一筐又一筐∴牡丹★&#8226;。 *菊花∴ * *夜来香∴°★&#8226;君子兰* *．°一筐一筐又一筐∴"
);

//——送行——
var a_byebye = new Array
(
"不舍","真是舍不得你走啊....我会想你的..走好~~~~~有空常来玩，http://2143.liaowan.com/，别走错了哦~！",
"走好","真是舍不得，一路走好！我们会想你的~~~~~！有空常来玩，http://2143.liaowan.com/，别忘了哦~！"
);

//——告辞——
var a_leave = new Array
(
"想留","其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信我 再不用多久,我要你和我今生一起度过... ",
"告别","长叹一声,凄婉地说道:▅█拜拜●了█▅一曲离歌泪千行,不知何日再逢君.我这就去了,大家多保重▅█拜拜●了█▅&#8226;&#8226;有红包收吗，有的话，可以再多留三秒&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;",
"不舍","依依不舍地望着大家  ,真是舍不得啊....我会想你们的..你们不用想我的，也不一定要把我放在心里好啦，只要今晚有梦，梦里有我就行啦%¤%￥∮#&#8226;@",
"后会","青山不改，绿水常流，山高水长，后会有期！不用等到江寒月冷日，雪雨风飘时，有缘的你我一定会在《"+room_name+"》再次相会！"
);

//——要麦——
var a_wantmic = new Array
(
"要麦","我要麦呀999999我要麦呀999999",
"唱歌","我要唱歌呀9999999 ☆★☆★☆"
);

//——搅拌——
var churn_up = new Array
(
"搅拌","☆我要搅拌呀999999999~~~~~~~",
"搅拌","☆我会这首歌呀★我要搅拌呀★"
);

//——听见——
var a_heart = new Array
(
"听见",	"111111111【是是是】11111111【听见了】",
"听见",	"【听见了】【是是是】【听见了】【是是是】",
"听见",	"听见了，好清楚▲▲▲▲▲是是是，对对对"
);

//——准备——
var prepare_mic = new Array
(
"准备","您好!下一位到您接麦了,请您做好准备~~!谢谢! ",
"准备","您好!等好久了吧,下一位就是您接麦了~~!谢谢! ",
"准备","您好!请您做好准备,马上就到您接麦了~~!谢谢! "
);

//——网址——
var a_address = new Array
(
"网址","请您牢记<<与狼共舞>>聊天室网址 http://2143.liaowan.com/  ",
"网址","<<与狼共舞>>语音视频聊天室网址 http://2143.liaowan.com/  "
);

//——EMOTE——
var a_emote = new Array
(
"☆问候☆",	"",
"嘴嘴",		"kiss嘴嘴!!~~啵～～～kiss嘴嘴!!~~啵～～玨iss嘴嘴!!~~啵～～～kiss嘴嘴!!~~啵～～～kiss嘴嘴!!~~啵～～～kiss嘴嘴!!~~啵～～～",
"狂啵你",		"啵～～宝宝～～狂啵你～～o○啵～～o○啵～～o○啵～～o○啵～～o○啵～～o○啵～～o○啵～～o○啵～～o○啵～～o○啵～～",
"Hi你好！",	"//hi",
"请多关照",	"//visit",
"愉快招呼",	"//greet",
"公子有礼",	"//boy",
"你太客气",	"//welcome2",
"生日快乐",	"//birthday",
"大喊加油",	"//addoil",
"热情拥抱",	"//bearhug",
"坐在一起",	"//sit",
"大家发财",	"//happy",
"心想事成",	"//bless",
"热烈鼓掌",	"//clap",
"献朵玟瑰",	"//rose",
"热的牛奶",	"//milk",
"热茶包子",	"//tea",
"喝了再说",	"//wine",
"替您擦汗",	"//sweat",
"哈哈大笑",	"//haha",
"疑惑看着",	"//?",
"做鬼鬼脸",	"//face",
"你真好",	         "//thank",
"傻笑几声",	"//he",
"呵呵傻笑",	"//hehe",

"☆调情☆",	"",
"飞了过去",	"//fly",
"痴痴望着",	"//flook",
"唱情歌！",	"//sing",
"好喜欢你",	"//ppp",
"我爱上你",	"//love",
"等的花谢",	"//wait3",
"在天愿作",	"//love2",
"月亮证人",	"//loveu",
"眼眸眨眨",	"//lovesee",
"含情脉脉",	"//lovelook",
"向你求婚",	"//marry",
"脸好热热",	"//shy",
"轻轻拥抱",	"//hug",
"轻轻抚摸",	"//care",
"依偎怀里",	"//lean",
"啵亲一下",	"//kiss",
"轻吻嘴角",	"//ykiss",
"用爱折磨",	"//zhemo",

"☆打斗☆",	"",
"将蛋扔去",	"//allen",
"咬他哇叫",	"//bite",
"你这变态",	"//bt",
"你这臭虫",	"//bug",
"剁成小块",	"//cut",
"满脸桃花",	"//da",
"落闸放狗",	"//dog",
"你喝砒霜",	"//drug",
"喷嚏过去",	"//ds3",
"催肥大法",	"//fat",
"咆哮不已",	"//grow",
"用铁锤敲",	"//hammer",
"打屁屁",	"//handpat",
"正中红心",	"//hit",
"吹成冰雕",	"//ice",
"顶你肚子",	"//nudge",
"化为灰烬",	"//zap",
"拎耳扔出",	"//tu",
"用手捅捅",	"//poke",
"狗皮膏药",	"//paste",
"拧得发青",	"//pinch",
"吐你满身",	"//puke",
"狠揍一顿",	"//punch",
"手起刀落",	"//qia",
"一枪放倒",	"//qian",
"踢屁屁",	"//kick",
"考虑杀死",	"//kill",
"篮球扣下",	"//koxia",

"☆其他☆",	"",
"完全同意",	"//agree",
"这么定了",	"//so",
"你错了！",	"//wrong",
"我很出名",	"//know",
"是笨问题",	"//fool",
"你别问我",	"//wen",
"我不知道",	"//no",
"我苦出身",	"//work",
"谁不知晓",	"//who",
"不知咋说",	"//look2",
"话题沉闷",	"//lonely",
"跟我无关",	"//noask",
"点头称是",	"//nod",
"言归正传",	"//now",
"比猪还慢",	"//pig",
"说的对！",	"//right",
"摇了摇头",	"//shake",
"这死电脑",	"//slow",
"愉快微笑",	"//smile",
"赔礼道歉",	"//sorry",
"请求原谅",	"//sorry2",
"原谅对象",	"//sorry3",
"奇怪眼神",	"//stare",
"想破脑袋",	"//think",
"真的好累",	"//tired",
"猪起来啦",	"//wake",
"胜利手势",	"//yeah",
"NoNo",		"//finger",

"☆告别☆",	"",
"后会有期",	"//cu",
"吻别再见",	"//cu2",
"有事隐退",	"//wait",
"跟你再见",	"//bye",
"望着背影",	"//cu3",
"再陪陪俺",	"//stw",
"请保重！",	"//goodbye",
"会后有期",	"//goodbye2",
"难过要哭",	"//tear",
"留路上吃",	"//tea1",
"挥挥手。",	"//wave"
);

//	管理功能
var a_adminmsg_ex = new Array
(
"进入管理","fnc:guan()","color:#0000FF;background-color:#FFFF99",
"退出管理","fnc:xiaguan()","color:#FF0000;background-color:#FFFF99",
"开始排序","fnc:disablesingermanage(false)","color:#0000FF;background-color:#FFFF99",
"关闭排序","fnc:disablesingermanage(true)","color:#FF0000;background-color:#FFFF99",
"禁用踢人","fnc:disable_KICK(true)","color:#000000;background-color:#FFFFFF",
"启用踢人","fnc:disable_KICK(false)","color:#FFFFFF;background-color:#000000"
);

//	管理提示
var a_admin = new Array
(
"本室网址","与狼共舞欢迎您，请记住本室网址http://2143.liaowan.com/","color:#009900",
"上管拒黑","您好!十分对不起，因为我正在上管主持，不能和聊友双工，请您谅解。 ","color:#6600ff",
"打黑反黑","打黑呀~~警察来了~~~没氧气了~~~都快变成非洲人了~~~出来出来~~~~","",
"已经排麦","您好!您的要麦的名单已经记下了,请您稍后,也请您调试一下你的麦,谢谢您光临本聊天室,祝你玩得开心玩得快乐!","",
"请您接麦","您好!请您接麦,不好意思,让你久等了,请接好您的麦克风!(请对着您的麦克风说话或是唱歌,这样我们就能听到你的声音了☆⌒_⌒．☆° ．) ","",
"要麦说明","新来的朋友！为了能够尊重别人的说话和唱歌，请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","",
"请开语音","您好!系统：“您”尚未打开语音或处于双工语音状态,请你打开语音或是退全双工对话,否则我们是递不了麦给你的哦.最后,谢谢支持与理解!!","",
"请你关麦","请注意尊重别人，在不需要麦克的时候请将你的麦克关上，别人才能够得到麦克，这样可以让更多的人娱乐，请合作，谢谢","color:#ff0000",
"请勿刷屏","提醒**请注意不要刷屏！和朋友开玩笑用悄悄话，否则将会被禁言，严重者将被请出聊天室，请合作，谢谢","color:#ff0000",
"文明聊天","提醒**请文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,否则将被请出聊天室,谢谢合作!!!!! ","color:#ff0000",
"请你换名","我们的房间不欢迎这样的名字，请您换个名字进来，否则您将被请出房间，谢谢合作。）","color:#ff0000",
"邀请唱歌","您好!亲爱的朋友,欢迎你的到来,你可以给大家唱一首歌吗？：）谢谢☆⌒_⌒．☆° ．","",
"感谢唱歌","您好!谢谢您为大家献上的歌曲,是非常的动听,如果有时间再为大家献上一曲吧,我们感谢您..同时也欢迎您常来!!","",
"没有声音","您好!亲爱的朋友,可能是您的麦有问题或是网速太慢,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们打999好吗?","",
"你麦不好","您好!可能是您的麦有问题或是网速太慢,我们递麦给您,听到的却是断断续续的声音,请你再调试一下再打999,好吗?谢谢.","",
"要麦守则","大家好，欢迎来到“《" + room_name + "》”，要麦的朋友请给在线管理员打9999报名!切记三遍以内,否则按刷屏处理!我们会为你排好顺序!","",
"希望参与","欢迎您来到“《" + room_name + "》”，希望你多多参与的娱乐活动，给管理员打999，管理员会把麦交到您的手上，祝您在这里玩的开心：）","color:#6633ff",
"欢迎再来","谢谢您光临“《" + room_name + "》”，我们期待着您下一次的光临，一路好走！！！","color:#6633ff",
"申请网管","您要申请网管请看下面的本室介绍，在留言簿上给室主留言就行了，谢谢您的参与。","color:#6600ff"
);

//——图片——
var a_picture = new Array
(
"天下欢迎您",		"http://sqc.xinzhiwang.com/webpage/hy7711/321654.jpg.bmp",
"依然欢迎您",		"http://sqc.xinzhiwang.com/webpage/hy7425/yr.jpg",
"欢迎你",		"http://www.cj888.com/photo/65/marker/english/welcome/66.gif",
"欢迎你2", "http://www.mypcera.com/photo/65/marker/english/welcome/25.gif", 
"欢迎你3", "http://www.mypcera.com/photo/65/marker/english/welcome/44.gif", 
"鼓掌", "http://qqliao.com/chat/images/d27.gif", 
"好听", "http://benniao.8u8.com/gif/hy.gif", 
"爱情物语", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063934276.gif", 
"爱你", "http://218.17.209.40:8080/mcard/images/41851.gif", 
"看流星雨", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849478.gif", 
"沙滩美女", "http://smsad.tom.com/smsweb/images/modpic/4854_2069/Tom_1048585047.gif", 
"愿你快乐", "http://219.133.40.170:8080/mcard/images/35365.gif", 
"看够没？", "http://218.17.209.40:8080/mcard/images/37636.gif", 
"想你1", "http://219.133.40.170:8080/mcard/images/42020.gif", 
"想你2", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1044849381.gif", 
"气死我了", "http://www.lndd.org/button/0007.gif", 
"小样", "http://211.98.68.109/sl/pic/xy2.gif", 
"常联系", "http://218.17.209.40:8080/mcard/images/40666.gif", 
"花好月圆", "http://smsad.tom.com/smsweb/images/modpic/4854_2293/Tom_1061453990.gif", 
"注意身体", "http://218.17.209.40:8080/mcard/images/41921.gif", 
"在接电话", "http://smsad.tom.com/smsweb/images/modpic/4848_1777/Tom_1063876628.gif", 
"诱惑", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1063780572.gif",
"我们相爱", "http://218.17.209.40:8080/mcard/images/40322.gif", 
"不要走", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1060138014.gif", 
"跟我玩啦", "http://219.133.40.170:8080/mcard/images/37796.gif", 
"黄牌警告", "http://cn.gs/cna/pai1.jpg", 
"生日快乐", "http://shopping.263.net/img/217/040602000425.gif", 
"生日快乐", "http://218.17.209.40:8080/mcard/images/35354.gif", 
"生日快乐", "http://www.wahaha8.com/chat/489604/pictures/016.gif", 
"生日快乐", "http://go.ebjet.com/card/media/gif/976238671.gif", 
"生日快乐", "http://card.e165net.com/card/birthday/dangao/pic001_.gif", 
"陪你兜风", "http://smsad.tom.com/smsweb/images/modpic/4854_2878/Tom_1066123574.gif", 
"一生守侯", "http://218.17.209.40:8080/mcard/images/42990.gif", 
"失恋了", "http://219.133.40.170:8080/mcard/images/41920.gif", 
"破电脑", "http://www.cj888.com/photo/65/res/electric/computer/9.gif", 
	 "吃饭饭喽", "http://www.newliao.com/photo/27.gif",
	"转",		"http://www.newliao.com/bchat/chat/pic/p031.gif",
"饭后甜品", "http://smsad.tom.com/smsweb/images/modpic/4854_1787/Tom_1059118431.gif",
"热舞",		"http://im.qq.com/face/authed/3/b1969.gif",
"你好!","http://219.149.64.81/bchat_img/nh.jpg",
"谢谢您献歌","http://219.149.64.81/bchat_img/haoge1.gif",
"管理辛苦了","http://219.149.64.81/bchat_img/z.gif",
"太好听了","http://219.149.64.81/bchat_img/haohaoting.gif",
"请抽烟","x7.gif",
"跳起来哟","http://219.149.64.81/bchat_img/bw1.gif",
"握手","ws.gif",
"签名哟","http://219.149.64.81/bchat_img/z5.gif",
"真好听","cg55.gif",
"朋友唱的好棒哟","http://219.149.64.81/bchat_img/200454204541313.gif",
"太美妙了","http://219.149.64.81/bchat_img/gs.gif",
"唱得好","http://219.149.64.81/bchat_img/zy.gif",
"心动为你","http://219.149.64.81/bchat_img/1-80.gif",
"小鱼听呆了","http://219.149.64.81/bchat_img/fish.gif",
"我听晕了","http://219.149.64.81/bchat_img/z6.gif",
"给你伴奏","http://www.kankan.cc/bbs/UploadFile/2004-3/2004330114116942.gif",
"来嘴个","http://219.149.64.81/bchat_img/z510.gif",
"加油","jiayou.gif",
"花之吻","mgyks.gif",
"哈哈后","http://219.149.64.81/bchat_img/1-01.gif",
"哈哈","y03.gif",
"开心","y02.gif",
"我倒","http://219.149.64.81/bchat_img/24.jpg.gif",
"气死你","http://219.149.64.81/bchat_img/hbcz018.gif",
"敲你脑袋","http://317323.ie-china.com/UploadFile/2004-6/200462173143454.gif",
"敲晕你哟","http://219.149.64.81/bchat/admin/upload/2004617163105.gif",
"陪你听风","http://219.149.64.81/bchat_img/xy22.gif",
"玉树临风","http://219.149.64.81/bchat/admin/upload/20047122409.gif",
"鸟语花香!","http://219.149.64.81/bchat_img/1-17.gif",
"鲜花送你0","http://219.149.64.81/bchat_img/m6.gif",
"鲜花送你1","http://219.149.64.81/bchat/admin/upload/20047122343.gif",
"鲜花送你2","http://219.149.64.81/bchat_img/hbcz032.jpg",
"鲜花送你3","http://219.149.64.81/bchat_img/3.gif",
"鲜花送你4","http://219.149.64.81/bchat_img/mgy009.gif",
"鲜花送你5","http://219.149.64.81/bchat_img/h01.gif",
"玫瑰送你","http://219.149.64.81/bchat_img/mgy33.gif",
"玫瑰送你1","http://219.149.64.81/bchat_img/h14.gif",
"玫瑰送你2","http://219.149.64.81/bchat_img/92.jpg",
"玫瑰送你3","http://219.149.64.81/bchat_img/0036.gif",
"玫瑰送你4","http://219.149.64.81/bchat_img/mgy010.gif",
"玫瑰送你5","http://219.149.64.81/bchat_img/012.jpg",
"玫瑰送你6","http://219.149.64.81/bchat_img/aii45.gif",
"玫瑰送你7","http://219.149.64.81/bchat_img/0042.gif",
"玫瑰送你8","http://219.149.64.81/bchat_img/tg113.gif",
"玫瑰送你9","http://219.149.64.81/bchat_img/0045.gif",
"雨后枫叶红","http://219.149.64.81/bchat_img/yc02.gif",
"生日快乐","http://219.149.64.81/bchat_img/dangao1.gif",
"生日快乐1","http://219.149.64.81/bchat_img/dg3.jpg",
"生日快乐2","http://219.149.64.81/bchat_img/dg1.jpg",
"生日快乐3","http://219.149.64.81/bchat_img/shrkl1.gif",
"生日快乐4","http://219.149.64.81/bchat_img/shrkl.gif",
"生日快乐5","http://219.149.64.81/bchat_img/sr44.gif",
"生日快乐6","http://219.149.64.81/bchat_img/sr16.gif",
"生日快乐7","http://219.149.64.81/bchat_img/lazhu.gif",
"美女别走","http://219.149.64.81/bchat_img/zmv.gif",
"浪漫一吻","http://219.149.64.81/bchat_img/1-02.gif",
"永远爱你","http://219.149.64.81/bchat_img/1-12.jif.gif",
"小样儿","http://219.149.64.81/bchat_img/1-801.gif",
"我想泡你","http://219.149.64.81/bchat_img/0xhhni.gif",
"弟弟好","http://219.149.64.81/bchat_img/ddh1.gif",
"妹妹好","http://219.149.64.81/bchat_img/mmh.gif",
"姐姐好","http://219.149.64.81/bchat_img/jjh.gif",
"哥哥好","http://219.149.64.81/bchat_img/ggh.gif",
"俺吧唧你","mgybj.gif",
"I LOVE YOU","http://219.149.64.81/bchat_img/1-22.gif",
"做个好梦","http://219.149.64.81/bchat_img/hbcz0161.gif",
"我爱你","http://219.149.64.81/bchat_img/1-18.gif",
"我爱你!","http://219.149.64.81/bchat_img/czz.gif",
"圣诞树","04w.gif",
"情人节1","http://219.149.64.81/bchat_img/qrjie.jpg",
"情人节2","http://219.149.64.81/bchat_img/027.jpg",
"太委屈","http://219.149.64.81/bchat_img/hh12.jpg",
"干吗欺负我","http://219.149.64.81/bchat_img/hh13.jpg",
"吻你","dhttp://219.149.64.81/bchat_img/001.gif",
"吻","http://219.149.64.81/bchat_img/1115.gif",
"亲吻","http://benniao.8u8.com/gif/w5.gif",
"害羞","301.gif",
"kiss","http://www.sunmoom.com/js/kiss.gif",
"不好意思","mao013.jpg",
"媚眼","meiyan.gif",
"悄悄亲","a43.gif",
"偷吻","4518.gif",
"因为有你","mgykx.gif",
"一生抱你","love2.jpg",
"有口水","mao017.jpg",
"触电了","bbn.gif",
"你被嘴了","xph-1.gif",
"妹妹上花轿","mgyhj.gif",
"男人辛苦","http://219.149.64.81/bchat_img/39.gif",
"別哭了","http://219.149.64.81/bchat_img/0111.gif",
"不回话","http://219.149.64.81/js/382378/sao.gif",
"扭PP","za13.gif",
"哈~玩玩","dd.gif",
"小猫打枪","mgymdq.gif",
"瞌睡","keshui.gif",
"拜拜","zaijian.gif",
"一帆风顺","http://219.149.64.81/js/382378/yiffsh.jpg",
"小狗","mgyxg.jpg",
"小可爱","20034621292543584.gif",
"妹妹","http://219.149.64.81/js/382378/mm.gif",
"美妹","qww.gif",
"美女证","http://219.149.64.81/img_sck/mnzh.gif",
"帅哥证","http://www.by999.com/js/sgz.jpg",
"打电话","ddh.gif",
"生气了","mgy026.gif",
"真的感谢","http://219.149.64.81/bchat_img/ganxie.jpg",
"新发现","mgym02.jpg",
"就是他","a182.jpg",
"自我介绍","mgyjs.gif",
"抢我镜头","mamaq.gif",
"看你不顺眼","gaxia.gif",
"洋洋得意","4513.gif",
"MM不理我","0046.gif",
"不许乱望","mgym01.jpg",
"来了","hamwalk.gif",
"睡了吗?","hxa.gif",
"小样","a011.gif",
"瞧小样","xiaoya.gif",
"就你~~","150.gif",
"站住","gr3.gif",
"别动","bdong.jpg",
"听话","mgyyn.jpg",
"开心一笑","1086755-5HmFgvQb4n.gif",
"笑四我了","xiaosi.jpg",
"跳啊跳","t10.gif",
"跳起来吧","t182.gif",
"跳舞","t2.gif",
"长寿面","miantiao.gif",
"来一起吃","wch.gif",
"来一起喝","yizui.gif",
"喝多了","zl.gif",
"饿饿","chi.gif",
"给你做饭","http://219.149.64.81/js/382378/2003.gif",
"心事谁知","052957.gif",
"请吃香蕉","xiangjiao.gif",
"请吃西瓜","xigua.gif",
"请吃桃","shuimitao.gif",
"请吃苹果","pingguo.gif",
"请吃草莓","caomei.gif",
"冰激凌","bjl.gif",
"怕你","119.gif",
"酷吧","woku.jpg",
"我冤","0038.gif",
"我哭","0029.gif",
"失恋了","mgysl.gif",
"宝贝别哭","yc.gif",
"打一针","dz.gif",
"转晕你","mgyzh.gif",
"啊~怕溜了","liule.gif",
"不回话","dn.gif",
"放狗咬你","12w.gif",
"炸你","0_11.GIF",
"锤你","dingni.gif",
"砍你","0016.gif",
"我踩你","0003.gif",
"埋你","0019.gif",
"气死我啦","0007.gif",
"挂你","0011.gif",
"封你的嘴","0010.gif",
"打pp","dapp.gif",
"生气","0023.gif",
"踢飞你","0025.gif",
"对打","cuini.gif",
"施肥","1311.gif",
"炸你","1035.gif",
"咬你","1301.gif",
"我跑","0031.gif",
"再见886","http://219.149.64.81/bchat_img/4.jpg.gif",
"走了886","http://219.149.64.81/bchat_img/17.jpg.gif",
"我下了","http://219.149.64.81/bchat_img/18.jpg.gif",
"好热啊","mgytr.gif"
);

//——背景色——
var a_bkcolor = new Array
(
"FFFFFF","fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff",
"9d9dff","ca8eff","AB82FF","ff88ff","ffaaaa","ccffa6","a6ffcc","b1fee9","adcafe",
"d5bbff","f1bbff","D752EB","FFFFCC","7BB706","CCCCFF","DBF3B3","CA00C8","FFCC99",
"CCFFFF","C8D0e8","582424","FFCCFF","4C67D6","00ff00","0033FF","FF3344"
);

//下面的变量内部使用，请不要修改
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

//	下面为本配置脚本所需的函数，如果您不是很理解，请尽量不要修改
//	初始化系统
function init_system()
{
//	初始化系统参数
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

//	错误处理
	window.onerror = new Function("return true");
	document.body.onUnload = byebye;
//	右键处理
if (!accept_right_click)
	{
	document.oncontextmenu = new Function("return false;") ;
	document.oncontextmenu = about;
	parent.u.document.oncontextmenu = new Function("return false;") ;
	parent.u.document.oncontextmenu = about;
	}
//	离开
	document.write('<body onUnload="if(bleave_system==0) return;parent.cs(\'所有人\');document.inputform.elements[11].value='+log_bkcolor+';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
//	重载 parent 显示聊友列表的方法
	parent.write_new=writelist;
//	设置语音状态
//	if (auto_open_mic == 0)	parent.writev_new = writecv;
	parent.writecv_new = writecv;
//	分屏处理
	parent.writeu1 = writeu1;
//	用户名过滤
	user_name_filter();
//	进入时弹出额外的信息窗口
	open_startup_info_window();
//	自动打开图音
	setTimeout("auto_open_ai_fnc()",3000);
//	显示登录信息
	write_loginmsg();
}
/////////初始化系统到此为止/////////

//	用户名过滤
function user_name_filter()
{
	if (!acc_m_user) compC();
	var index = 0;
	while (index < a_vip_user.length)
	{
		if (a_user == a_vip_user[index]) return;
		index += 2;
	}
	//	聊友名过滤表上的名字不能进入
	for (var i=0;i<a_name_filter.length;i++)
	if (a_user.indexOf(a_name_filter[i])!=-1)
	leaverom('您好['+a_user+']！\n万分抱歉，您现在所用的名字中含有本房间保留文字！\n请您换用其它名字进入本房间，愿您在此开心愉快！');

	//	脏名不能进入
	for (var i=0;i<badword.length;i++)
	if (a_user.indexOf(badword[i])!=-1)
	leaverom('['+a_user+']注意：\n\n你用了肮脏的名字！请你出去换名进入本房间！');

	//	只允许注册用户进入
	if(only_registr_user == 1 && a_user.charAt(0)!='*')
	leaverom('您好['+a_user+']！\n万分抱歉，本房间现在只允许使用注册名进入！\n请用您的注册名进入本房间，愿您在此开心愉快！');

	//	只允许汉字名用户进入
	if (only_chinese_name == 1 && is_numeric(a_user))
	leaverom('您好['+a_user+']！\n万分抱歉，本房间现在只允许使用汉字名进入！\n请您换用汉字名进入本房间，愿您在此开心愉快！');
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

//	进入聊天室时弹出额外的信息窗口
function open_startup_info_window()
{if (url_popup_window != "") setTimeout('open_new_url(url_popup_window,"","")',5000);}

//	判断是否处于上管状态
function is_online_manager()
{return (document.screenForm.KICK);}

//	写进入房间时的报到信息
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

//	返回日期字符串
function get_date_string(type)
{
	var isnMonths=new Array("01月","02月","03月","04月","05月","06月","07月","08月","09月","10月","11月","12月");
	var isnDays=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六","星期日");
	var today = new Date();
	var str = today.getFullYear();

	switch (type)
	{
	case 0:	//	2003年04月19日 星期六
		str += "年" + isnMonths[today.getMonth()] ;
		if (today.getDate() < 10)
			str += "0";
		str += today.getDate()+"日 " + isnDays[today.getDay()];
		break;
	case 1:	//	2003年04月19日
		str += "年" + isnMonths[today.getMonth()] ;
		if (today.getDate() < 10)
			str += "0";
		str += today.getDate()+"日";
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

//	返回时间字条符串
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
	default:	//	当前时间
		hour = today.getHours();
		minute = today.getMinutes();
		second = today.getSeconds();
		break;
	case 1:		//	进入的时间
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

//	显示时间的格式
function clock(type)
{
	switch (type)
	{
	case 0:	//	2003年04月19日 18:24:30
	default:
		clockf.innerText = get_date_string(1) + " " + get_time_string(0);
		break;
	case 1:	//	2003-04-19 18:24:30
		clockf.innerText = get_date_string(3) + " " + get_time_string(0);
		break;
	case 2:	//	2003年04月19日 星期六 18:24:30
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

//	加入时钟显示
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

//	下面的函数用于按钮

//	按序发送数组中的文字
function autosend(array)
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2)) lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower) msg += "【"+a_user+" 专用】";
	send_msg(msg);
}

//	按钮 STYLE
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
		document.write('font-family:宋体,SimSun;font-size:9pt"');
	else	document.write('font-family:'+fontface+';font-size:9pt"');
	document.write(' title="'+ title +'"');
	if (color != "")
		document.write(' onmouseout="this.style.color=\''+color+'\';"');
	else	document.write(' onmouseout="this.style.color=\''+button_text_color+'\';"');
	document.write(' onmouseover="this.style.color=\''+button_over_color+'\' "');
}

//	自动按顺序发送的按钮
function write_autosend_button(value,left,top,width,height,color,title,array)
{
	write_button_style("",left,top,width,height,color,title,"");
	document.write(' onclick="autosend('+ array +')">'+ value +'</BUTTON>');
}

//	自动送花
//	输入鲜花数目
function write_flower_number(left,top,width,height,title)
{
	document.write("<DIV align=left style='left:"+left+";top:"+top+";width:"+width+";height:"+height+";position:absolute;'>");
	document.write("<input type='text' name='flower_num' style='left:"+left+";top:"+top+";width:"+width+";height:"+height+";color:"+input_msg_color+";background-color:"+input_msg_bkcolor+"'");
	document.write(" value='1' maxlength='2' title='"+title+"'></DIV>");
}

//	发送鲜花
function send_flower()
{
if (auto_flower == 0) u=document.inputform.WHOTO.value;
	var cur_user=document.inputform.WHOTO.value;
	var cur_input=inputform.msg.value;
	lastchoice ++;
	if (lastchoice >= (a_flower.length / 2)) lastchoice = 0;
	var msg = a_flower[lastchoice * 2 + 1];
	msg += "【"+a_user+" 专用】";
	parent.cs(u);
	send_msg(msg);
	parent.cs(cur_user);
	inputform.msg.value=cur_input;
}

//	判断是否自动送花
function auto_send_flower()
{
	if (auto_flower == 1) 
	{
		if (flower_num.value>0)
		{
			send_flower();
			flower_num.value-=1;
		}
		else {clearInterval(timeoutID);flower_num.value=1;send_f.value="鲜花";}
	}
	else if (auto_flower == 0) send_flower();
}

//	开关发送鲜花状态
function a_f()
{
if (auto_flower == 1)
{
if (send_f.value=="鲜花")
	{
	send_f.value="停送";
	flower_state=true;
	u=document.inputform.WHOTO.value;
	send_flower();
	flower_num.value-=1;
	if (flower_num.value>0)
		timeoutID=setInterval("auto_send_flower()",auto_flower_time*1000);
	else	{send_f.value="鲜花";flower_num.value=1;}
	}
else if (send_f.value=="停送")
	{
	send_f.value="鲜花";
	flower_state=false;
	clearInterval(timeoutID);
	flower_num.value=1;
	}
}
else	send_flower();
}

//	按a_message数组中的名称发送信息
function send_message(key)
{
	for (var i = 0 ; i < a_message.length ; i+= 2)
	{if (a_message[i] == key){send_msg(a_message[i + 1]);return;}}
}

//	打开一个新的链接窗口
function open_new_url(theURL,winName,features){if (theURL != "") window.open(theURL,winName,features);}

//	打开一个新链接窗口的按钮
function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)
{
	write_button_style("",left,top,width,height,color,title,"");
	if (theURL == "") document.write('disabled=true ');
	document.write('onclick=open_new_url("'+ theURL +'","'+ winName +'","'+ features +'")>'+ value +'</button>');
}

//	执行一个函数的按钮
function write_command_button(name,value,left,top,width,height,color,title,action)
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="' + action + '">'+ value +'</button>');
}

//	加入收藏
function addbookmark()
{
	var bookmarkurl="http://"+room_number+".chat.yinsha.com/";
	var bookmarktitle="聊湾-《"+room_name+"》";
	if (document.all) window.external.AddFavorite(bookmarkurl,bookmarktitle);
}

//	禁踢
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

//	上管
function guan(){send_msg("//ADMIN " + default_admin_pass);}

//	下管
function xiaguan(){send_msg("//ADMIN quit");}

//	重复上次的发言
function repeat_msg()
{
     if(document.inputform.SAYS.value!="") send_msg(document.inputform.SAYS.value + " ");
     document.inputform.msg.focus();
}

//	下拉式列表框的代码
//	增强型列表框用到的函数
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

//	增强型列表框
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

//	背景色列表框
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

//	普通列表框
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

//	发送列表框中当前选中的信息
function send_selection_msg(selection){if(selection.value!="") send_msg(selection.value);selection.options[0].selected=true;}

//	发送信息
function send_msg(msg){if(msg != ""){document.inputform.msg.value=msg;if (checksay()) document.inputform.submit();}}

//	发送列表框中当前选中的图片
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
		alert('请先选择图音!');
		selection.options[0].selected=true;
	}
}

function is_digit(str)
{
	var digitstr = "0123456789";
	for(var i=0;i<str.length;i++) if (digitstr.indexOf(str.charAt(i)) == -1) return false;
	return true;
}

//	打开指定的房间
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

//	转到列表框中选中的房间
function gotolinkroom(selection){if(selection.value!=""){gotoroom(selection.value,a_user,a_pass);selection.options[0].selected=true;}}

//	改文字背景色
function changebkcolor(selection)
{
	if(selection.value!="")
	{
		document.inputform.elements[11].name="bgcolor";
		document.inputform.elements[11].value=selection.value;
		selection.options[0].selected=true;
	}
}

//	打开列表框中选中的网址
function gotolinkurl(selection){if(selection.value!="") open_new_url(selection.value,"","");selection.options[0].selected=true;}

//	下载聊天历史记录,admin == 1 室主下载
function open_history_window(admin)
{
	if (admin == 1)	open_new_url("http://"+parent.window.location.hostname+"/cgi-bin/download1.pl","","");
	else		open_new_url("http://"+parent.window.location.hostname+"/cgi-bin/download.pl?" + parent.window.location.port,"","");
}

//下面是麦序处理的代码

//	设置当前发言对象为麦序中当前选中的聊友
function prepare()
{
	if(document.singerform.singer.selectedIndex > 0)
	{
		inputform.msg.value=mic_prompt;
		parent.cs(singerform.singer.value);
	}
	else	parent.cs("所有人");
	inputform.msg.focus();
}

//	列出当前麦序
function listsingers(type)
{
	if (singerform.singer.length == 1 && type == 0) return;
	var i = 1;
	var singerstr = '麦序:→';
	var singerstr1 = '→续麦序:';
	while (i < singerform.singer.length)
	{
		if (singerstr.length + singerform.singer.options[i].value.length >=96)
			singerstr1 = singerstr1 + '[' + singerform.singer.options[i].value + ']';
		else	singerstr = singerstr + '[' + singerform.singer.options[i].value + ']';
		i++;
	}
	inputform.msg.value=singerstr;
	if (singerstr1 != '→续麦序:')
	{
		if (checksay()) document.inputform.submit();
		inputform.msg.value=singerstr1;
	}
	inputform.msg.focus();
}

//	从麦序中移去当前聊友
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

//	判断一个聊友是否已在麦序中
function singer_exist(user)
{
	if (multi_singer_list == 1) return false;
	for(var i=0;i<singerform.singer.options.length; i++)
	if(user==singerform.singer.options[i].value) return true;
	return false;
}

//	加入一个聊友到麦序最后
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

//	将聊友插入到当前麦序聊友前
function insertsinger()
{
	if(inputform.WHOTO.value!='所有人' && singer_exist(inputform.WHOTO.value)==false)
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

//	将发言栏中的聊友批量加入到麦序中，格式如“[聊友一][聊友二]”
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

//	禁止麦序管理界面
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
	else	singerform.singmanage.value = "关";
}

//	开关麦序管理功能
function singermanage()
{
	if(singerform.singmanage.value == "开")
		disablesingermanage(false);
	else	disablesingermanage(true);
}

//	加入麦序管理功能的函数
function write_singer_form(left,top,type)
{
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');
	write_command_button("singmanage",	"开",	0, 0,18,20,"","打开或关闭排麦功能","singermanage()");
	write_command_button("addtolist",	"增",	19,0,18,20,"","加入名字到名单排序末尾","addsinger()");
	write_command_button("tolist",		"插",	37,0,18,20,"","插入名字到选定人之前","insertsinger()");
	write_command_button("removefromlist",	"删",	55,0,18,20,"","从名单排序中删除所选择的名字","removesinger()");
	write_command_button("addlist",		"批",	73,0,18,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");
if (type==0)
	write_command_button("listing",		"列",	91,0,18,20,"","公布名单排序","listsingers(0)");
else	write_command_button("listing",		"麦序",	91,0,35,20,"","公布名单排序","listsingers(0)");
	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');
if (type==0)
	document.write(';left:109px;top:0px;width:126px">');
else	document.write(';left:0px;top:20px;width:126px">');
	document.write('<option selected VALUE="">《'+room_name+'》麦序</option>');
	document.write('</SELECT></form></DIV>');
	disablesingermanage(true);
}

//	语音处理
//	打开语音时的界面
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
			obj.value = "Ｆ";break;
		case 'close':
			obj.style.cssText = btn_style_60 + c_stl;
			obj.value = "关闭语音";	break;
	        }
	}
	parent.v.document.blueskyvoice.RecOn();
}

//	关闭语音时的界面
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
		parent.v.document.writeln(" bgproperties=\"fixed\"><style type=text/css>INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>");
	if (!accept_right_click)
		parent.v.document.write('<SCRIPT>function about(){alert("请使用Ctrl+C、Ctrl+V进行复制、粘贴！");return false;} document.oncontextmenu = new Function("return false;");document.oncontextmenu=about;</script>');
		parent.v.document.write("<center><br><br><br><br><input type=button name=closev style="+btn_style_72+" value=打开语音 onclick='parent.writev_new();parent.d.writev();' "+btn_on_event+">");
		parent.v.document.writeln("<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>说明&测试</span></a>");
		parent.v.document.writeln("</body></html>");
		parent.v.document.close();
}

//	全双工的处理函数
function v2v()
{
	if((inputform.WHOTO.value=='所有人')||(inputform.WHOTO.value==inputform.USER.value)) return;
	if (black_roomname == "")
	{
		if(parent.v.document.f.v2vv.value == "双工对话")
		{
			parent.v.document.f.v2vv.value="退出双工";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		}else{
			parent.v.document.f.v2vv.value="双工对话";
			parent.d.v2vForm.TOONE.value=0;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		}
	}else	if(confirm('\n万分抱歉，由于此房间容量有限，所以不允许双工！\n如果需要双工，请到“'+black_roomname+'”。\n\n现在就打开吗？'))
		{
			send_msg('我已经在“'+black_roomname+'”等你了，你可以选择我的名字，然后点全双工，就可去那里了，我在那里等你呢。快来啊，别让我久等！！！');
			gotoroom(black_roomnumb,a_user,a_pass);
		}
}

//	聊友列表区的代码
//	判断是否是全数字名称
function is_numeric(str)
{for(var j=0;j<str.length;j++){if(str.charCodeAt(j)>=256) return false;}return true;}

//	返回用户的类型
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

//	是否是隐身用户
function is_hidden_user(username)
{
	if (typeof(a_hide_user) == "undefined") return 10;
	var index;
	for (index = 0;index < a_hide_user.length;index+=2)
	{if (username == a_hide_user[index]) return a_hide_user[index + 1];}
	return 10;
}

//	重写列表区
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
	parent.r.document.write(".p9 { font-family:宋体; font-size: 9pt}");
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
	parent.r.document.write('<SCRIPT>function about(){alert("请使用Ctrl+C、Ctrl+V进行复制、粘贴！");return false;} document.oncontextmenu = new Function("return false;");document.oncontextmenu=about;</script>');
if (userlist_top_html != "")
	parent.r.document.writeln(userlist_top_html);
else	parent.r.document.write("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>");
	parent.r.document.write('<br><a title=\"当前聊天室在线人数\"><font color=000000>  当前本室有 </font><font color=red><B>'+user_array.length+'</B></font><font color=000000> 位聊友</font><br>');
	parent.r.document.write("</td></tr><tr><td align=middle><marquee><font color=#002FFC><b>欢迎<font color=#002FFC><b>〖"+document.inputform.USER.value+"〗</b></font>来到聊湾，全体室主,管理欢迎您的到来，愿这里能成为你们情感交流的港湾!!</b></font></marquee></td></tr></table>");
	parent.r.document.write("在线列表：<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">[所有人]<br>");
for(i = 0 ; i < user_array.length;i++)
{
	parent.r.document.writeln("<nobr>");
	lists=user_array[i].split("&");
if(lists[0] == "0")
	parent.r.document.write("<a><IMG align=absMiddle src=" + a_user_pic[0] + "><a target=d href=\"javascript:parent.cs('"+lists[1]+"')\"title=\"" + a_usertitle[1] + "\"><font style=filter:glow(color=FF0000,strength=3);Height:8pt;padding:1px;cursor:hand color=#FFFFFF size=\"2\">"+lists[1]+"</font></a>");
else	parent.r.document.write("<a><IMG align=absMiddle src=" + a_user_pic[lists[0]] + "><a target=d href=\"javascript:parent.cs('"+lists[1]+"')\"title=\"" + a_usertitle[lists[0]*3+1] + "\"><font style=filter:glow(color=" + list_user_color + ",strength=2);Height:8pt;padding:1px;cursor:hand color=#FFFFFF size=2>"+lists[1]+"</font></a>");
if (is_hidden_user(lists[1]) < 10)
	parent.r.document.write("<font color=#FF0099></font>");
if(lists[2]==1)
	parent.r.document.write("<font face=\"Webdings\" color=#FF0000 size=\"2\">O</font>");
if(lists[2]==2)
	parent.r.document.write("<font face=\"Webdings\" color=#000000 size=\"2\">H</font>");
if(lists[3]==1)
	parent.r.document.write("<font face=\"Webdings\" color=#00FF00>N</font>");
	parent.r.document.write("</nobr>");
	parent.r.document.write("<br>");
}
	parent.r.document.write('<hr>');
	parent.r.document.write(userlist_bottom_html);
	parent.r.document.write('</body></html>');
	parent.r.document.close();
}

//	自动打开图音和设置悄悄
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

//	分屏公告
function fp()
{
if (div_msg1!="") parent.u1.document.write('<p align="center"><font style=filter:glow(color=' + div_msg_color1 + ',strength=5);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>'+div_msg1+'</font></p>');
if (div_msg2!="") parent.u1.document.write('<p align="center"><font style=filter:glow(color=' + div_msg_color2 + ',strength=3);Height:8pt;padding:1px;cursor:hand color=#FFFFFF>'+div_msg2+'</font></p>');
if (div_msg3!="") parent.u1.document.write('<p align="left"><font color="#FF6666" size="2" face="宋体"><b>〖'+room_name+'〗公告：</b></font><font color="#FF99FF" size="2" face="宋体">'+div_msg3+'</font></p>');
if (div_msg4!="") parent.u1.document.write(div_msg4);
if (div_link!="") parent.u1.document.write('<p align="left"><a href='+div_link+' target="_blank"><font color="#FF9900" size="2" face="宋体">'+div_link+'</font></a></p>');
}

//	跳转到指定位置
function goto_location(label)
{document.location.hash="#" + label;}

//	自动护麦
function SwKeepMic()
{
tmp_user=document.inputform.WHOTO.value;
if (Keep_Mic.value=="护麦")
	{
	if (tmp_user!="所有人")
		{
		isKeepMic = true;
		Keep_Mic.value="停护";
		KeepMic();
		}
	}				
else
	{
	if (Keep_Mic.value=="停护")
		{
		isKeepMic = false;
		Keep_Mic.value="护麦";
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

//	递麦函数
function GiveMic()
{
	if(isKeepMic) SwKeepMic();
	cur_user=document.inputform.WHOTO.value;
	parent.cs(cur_user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

//	快速收麦
function GetMic()
{
	if(isKeepMic) SwKeepMic();
	cur_user=document.inputform.WHOTO.value;
	var user=document.inputform.USER.value;
	parent.cs(user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

//	自动回复、发言系统
function auto_speakt()
{
	if(!document.inputform.divs.checked) return false;
	if (autospeak.value == "自动")
	{
		msg_auto_speak=prompt("请输入自动回复内容:", msg_auto_speak);
		if (msg_auto_speak=="" || msg_auto_speak==null) return;
		autospeak.value = "停止";
		autospeak.title = "停止自动回复";
		all_stl_disable(true);
	}
	else if (autospeak.value == "停止")
	{
		all_stl_disable(false);
		autospeak.value = "自动";
		autospeak.title = "自动回复";
		parent.cs("所有人");
		send_msg(msg_back_speak);
	}
function parent.u1.document.writeln()
{
	var msg=arguments[0];
	parent.u1.document.write(msg+"\n");
	if ((autospeak.value == "停止")&&(msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&(msg.indexOf("["+document.inputform.USER.value+"]")!=-1))
	{
		all_stl_disable(false);
		var tmp_u=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
		parent.cs(tmp_u);
		send_msg(msg_auto_speak + "【自动回复】");
		all_stl_disable(true);
	}
}
}
function all_stl_disable(disable) 
{
	var selects = document.all.tags("INPUT");
	for (var i=0; i<selects.length; i++)	selects[i].disabled = disable;
	selects = document.all.tags("SELECT");
	for (i=0; i<selects.length; i++)	selects[i].disabled = disable;
	selects = document.all.tags("BUTTON");
	for (i=0; i<selects.length; i++)	selects[i].disabled = disable;
	autospeak.disabled = false;
}

//	自动发言
function write_plus_auto(name,left,top,name1,note,action)
{
document.write('<DIV style=width:50px;height:20px;left:'+left+'px;top:'+top+'px;position=absolute;>');
document.write('<FORM name='+name+'><select name='+name1+' onchange='+action+'>');
document.write('<option style=color:#FF0000;background-color:'+select_bkg_color+' VALUE selected>自动发言</option>');
document.write('<option style=color:116633;background-color:ccccff VALUE="">取  消</option>');
var i = 0;
while (i < auto_speak.length/2)
	{
	if ((auto_speak[i*2] != "")&&(auto_speak[i*2 + 1] != ""))
	{document.writeln('<option style=color:'+select_text_color+';background-color:'+select_bkg_color+' VALUE="' + auto_speak[i*2+1] + '">' + auto_speak[i*2] + '</option>');}
	i++;
	}
if (is_online_manager()) document.write('<option style=color:116633;background-color:ccccff VALUE="现在由我为大家服务，要麦的朋友请向我打999~">我在管理</option>');
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
		parent.cs("所有人");
		send_msg(temp+"【自动发言】");
		document.inputform.WHOTO.value=twho;
		inputform.msg.value=cur_input;
		}
	setTimeout("plus_y();",AutoSayTime*1000); 
}
function plus(){if(Auto_S==false) plus_y();}

//	自制送花
function write_make_flower(left,top)
{
	document.write('<DIV align=left style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name = "custom_flower_form"><font style=color:#FF0000>[自制献花] 名字：</font>');
	document.write('<input type="text" title="这里是献花的名字" name="fname" style="width:78px" maxlength="8" value = "鲜花">');
	document.write('<font style=color:#FF0000> 献词：</font>');
	document.write('<input type="text" title="打上祝福的词语" name="ftext" style="width:79px" maxlength="8" value = "祝福">');
	document.write('<input type="button" title="发送祝词" value="发送" style = left:301px;top:1px;'+btn_style_35+';POSITION:absolute '+btn_on_event+' onClick=make_custom_flower()>');
	document.write('<input type="hidden" value="0" name="resend">');
	document.write('</form></DIV>');
}

//	自制送花函数
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
	}else{
		newflower = '★:' + custom_flower_form.ftext.value + ':★╰☆╮:' + custom_flower_form.fname.value + ':╰☆╮';
		custom_flower_form.resend.value = "0";
	}
	msg = newflower + "【"+a_user+"专用】";
	while (msg.length + newflower.length < 100) msg = newflower + msg;
	send_msg(msg);
}

//	检验将要发出的信息
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
	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value=='')&&(autospeak.value == "自动")&&(Auto_S==false))
	{
	alert('发言不能重复');
	document.inputform.msg.value ='';
	document.inputform.msg.focus();
	return false;
	}		

//	脏话过滤
	var tmpmsg=document.inputform.msg.value;
	for (var i=0;i<badword.length;i++)
	{
		if (tmpmsg.indexOf(badword[i])!=-1)
		{
		inputform.ws.checked=false;
		inputform.ws.checked=false;
		document.inputform.msg.value='万分抱歉，我顺嘴溜出来一句脏话，我得去太平洋里洗洗嘴巴，祝您开心！';
		document.inputform.color.value="0000ff";
		login_succeed = false;
		alert('['+a_user+']注意！！！\n你刚才所说的话将会成为呈堂证供，小心了...\n你可以再次进入，但请注意不要再犯，否则将会受到更严厉的制裁！！！');
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

//——分屏——
function writeu1()
{
	if(this.u1.document==null) return;
	this.u1.document.open();
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {  color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited {  color: #0000FF; text-decoration: none}</style></head><body");
if (div_screen_bkcolor != "")
	this.u1.document.write(" bgcolor=\""+div_screen_bkcolor+"\"");
if (full_screen == 1)
	{
	this.u1.document.write(" background=\""+m_msg_bkimage+"\"");
	this.u1.document.write(" style=\"background-position-x:0px;background-position-y:"+(-get_int(temp_high,2))+"px;\"");
	}
else if (m_div_screen_bkimage != "")
	this.u1.document.write(" background=\""+m_div_screen_bkimage+"\"");
	this.u1.document.write(" bgproperties=\"fixed\">");
if (!accept_right_click)
	this.u1.document.write('<SCRIPT>function about(){alert("请使用Ctrl+C、Ctrl+V进行复制、粘贴！");return false;} document.oncontextmenu = new Function("return false;");document.oncontextmenu=about;</script>');
	fp();
	this.u1.document.write("<p class=\"p9\" align=\"left\">");
}

function reset_msg_bkimage()
{
if (parent.u.document.body.style.backgroundImage != "url("+m_msg_bkimage+")")
	parent.u.document.body.style.backgroundImage="url("+m_msg_bkimage+")";
}

//	重新设置原有的界面元素的属性
function reset_elements_style() 
{
	document.write('<body ');
if (input_bkcolor != "")
	document.write("bgcolor="+input_bkcolor);
	document.write('bgproperties=fixed topmargin=18 leftmargin=6><style type=text/css>');
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;background-attachment:fixed;');
if (full_screen == 1)
	{
	document.write(" background-image:url(\""+m_msg_bkimage+"\");");
	document.write(" background-position-x:0px;background-position-y:"+eval(-(((parent.u.document.body.offsetHeight+parent.u1.document.body.offsetHeight))+1))+"px;}");
	}
else 	document.write("}");
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;background-attachment:fixed;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';background-color:'+select_bkg_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
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
			if (obj.value == "发送")
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
			case "REFRESHUSERLIST":	//	刷新列表
				obj.style.cssText = btn_style_72;
				break;
			}
		case 'submit':
			obj.onmouseout=new Function("this.style.color='"+button_text_color+"';"); 
			obj.onmouseover=new Function("this.style.color='"+button_over_color+"';");
			switch (obj.name)
			{
			case "VREQ":		//	视频连接
				obj.style.cssText = btn_style_72;
				break;
			case "SCREEN":		//	屏蔽
			case "NOSCREEN":	//	解除
			case "SHOWSCREEN":	//	列屏
			case "KICK":		//	踢人
			case "KICKIP":		//	踢IP
			case "DUMB":		//	禁言
			case "NOMIC":		//	禁音
			case "KLIST":		//	列踢
			case "MIC":		//	递麦
			case "ODOOR":		//	开门
			case "CDOOR":		//	关门
				obj.style.cssText = btn_style_35;
				break;
			case "INBOX":		//	+
			case "OUTBOX":		//	-
			case "BOXLIST":		//	L
				obj.style.cssText = btn_style_18;
				if (is_online_manager()) obj.style.width=17;
				break;
			case "LIN":		//	请
				obj.style.cssText = btn_style_18;
				break;
			case "LOUT":		//	拒
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
		case "RELOAD":	//	清屏
		case "LEAVEIT":	//	离开
			obj.style.cssText = btn_style_35;
			obj.onmouseout=new Function("this.style.color='"+button_text_color+"';"); 
			obj.onmouseover=new Function("this.style.color='"+button_over_color+"';");
			break;
		}
	}
	var aOption = new Option("咖啡", "#993300"); 
	aOption.style.color= "#993300";
	document.inputform.color.add(aOption); 
	aOption = new Option("紫铜", "#990099"); 
	aOption.style.color= "#990099";
	document.inputform.color.add(aOption);
	if (is_online_manager())
	{
	if(auto_disable_kick) disable_KICK(true);
	else disable_KICK(false);
	}
	document.screenForm.MIC.style.display="none";
} 

//	告辞
function byebye()
{
	document.inputform.WHOTO.options[0].selected=true; 
	document.inputform.color.options[11].selected=true;
	document.inputform.msg.value="〖" + a_user + "〗走了,和大家说拜拜喽！很快我就会再来的！";
	checksay();
	document.inputform.submit();
}

//	插入图音
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
		imgurl = prompt("请注意：本室只能插入图片！\n请使用GIF或JPEG文件格式:","http://");
	else if (imgurl.indexOf("?") != -1 || imgurl.indexOf("(") != -1)
		imgurl = prompt("请注意：名称中不能有?和(！\n请使用GIF或JPEG文件格式:","http://");
	else	break;
	}
else	{imgurl = "";break;}
}
//document.inputform.msg.value=imgurl;
document.inputform.IMGURL.value = imgurl;
document.inputform.msg.focus();
}

//	禁止信息
function about(){alert("请使用Ctrl+C、Ctrl+V进行复制、粘贴！\n\nVer "+vers);return false;}
function get_int(a,b){return (a-a%b)/b+1;}

//函数到此为止

//	初始化系统
init_system();

//	此处设置新界面的参数，您可以按您的要求进行修改
switch (config_style)
{
case 0:
default:
	write_command_button("","收藏",4, 0,35,20,"","加入收藏","addbookmark()");
	write_newwindow_button("记录",4,20,32,20,"","上管记录",guan_record,"","");
if (is_online_manager())
	write_command_button("","下管",4,40,32,20,"","快速下管","xiaguan()");
else	write_command_button("","上管",4,40,32,20,"","快速上管","guan()");
for (var i = 0 ; i < 6 ; i ++)
	write_newwindow_button(a_link_button[i*3],39 + 35 * i,0,35,20,"",a_link_button[i*3+1],a_link_button[i*3+2],"","");
	write_autosend_button("告辞",304,80,35,20,"","快速告辞","a_leave");
	write_command_button("send_f","鲜花",539,39,45,20,"","快速发送鲜花掌声","a_f()");
if (auto_flower == 1)
	write_flower_number(585,39,18,20,"自动发送一定数量的鲜花掌声");
	write_autosend_button("欢迎",339,60,35,20,"","快速欢迎","a_welcome");
	write_autosend_button("情话",374,60,35,20,"","情话快递","a_love");
	write_command_button("","重复",494,39,45,20,"","重复上次的发言","repeat_msg()");
if (is_online_manager())
{
	write_command_button("","递麦",180,80,35,20,"","","GiveMic()");
	write_command_button("Keep_Mic","护麦",215,80,35,20,"","每隔"+KeepMicTime+"秒自动护麦","SwKeepMic()");
	write_command_button("","收",250,80,18,20,"","快速收麦","GetMic()");
}
	write_command_button("autospeak","自动",214,0,35,20,"","自动回复","auto_speakt()");
	write_plus_auto("auto_plus",249,0,"plusf","自动发言","plus()");
	write_command_button("","插图",444,60,35,20,"","插入图音","insert_picture()");
	write_autosend_button("送行",339,80,35,20,"","快速送行","a_byebye");
	write_autosend_button("要麦",409,80,35,20,"","快速要麦","a_wantmic");
	write_autosend_button("搅拌",409,60,35,20,"","快速搅拌","churn_up");
	write_autosend_button("听见",374,80,35,20,"","快速听见","a_heart");
	write_autosend_button("准备",444,80,35,20,"","准备接麦","prepare_mic");
	write_autosend_button("网址",269,80,35,20,"","圆梦网址","a_address");
	write_bkcolor_select("bkcolor","背景色",374,39,60,"FF0000",a_bkcolor,"changebkcolor(this)");
	write_select_ex("advanced","管理功能",479,19,72,"FF0000",a_adminmsg_ex,"send_msg");
	write_select_ex("playadmin","管理提示",533,19,72,"FF0000",a_admin,"send_msg");
	write_select("picture","图片",479,60,72,"FF0000",a_picture,"play_pic(this)");
	write_select("linkroom","走廊",533,60,72,"FF0000",a_roomlink,"gotolinkroom(this)");
	write_select("playemote","表情",479,80,72,"FF0000",a_emote,"send_selection_msg(this)");
	write_select("linkurl","链接",533,80,72,"FF0000",a_linkurl,"gotolinkurl(this)");
	write_singer_form(370,0,0);		//	麦序管理
if (!is_online_manager())
	write_clock(154,62,126,"#336688","",4);	//	显示当前日期
	write_make_flower(269,100);		//	自制献花
	break;
}

function reload_bt()
{
parent.u.location.reload();
parent.writeu1();
setTimeout('divscreen()',5000);
this.blur();
document.inputform.msg.focus();
parent.u.document.body.bgProperties="fixed";
}
document.controlForm.RELOAD.onclick = reload_bt;

//	重新设置语音界面
setTimeout('writev()',1000);
//	重新设置界面元素的属性
reset_elements_style();
//-->
//防踢
var admins=new Array("*ル淚","*孤狼","*じ与狼共舞♀今生","*じ与狼共舞♂淼淼","*")
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
alert("◆||不许踢俺||再踢打你屁屁||◆") 
return false
} else return true
}
screenForm.KICK.onclick=new Function("return kickcheck();");
screenForm.KICKIP.onclick=new Function("return kickcheck();");
screenForm.DUMB.onclick=new Function("return kickcheck();");
screenForm.NOMIC.onclick=new Function("return kickcheck();");
////////////防踢代码完/////////////////UMB.onclick=new Function("return kickcheck();");
screenForm.NOMIC.onclick=new Function("return kickcheck();");
////////////防踢代码完/////////////////rn kickcheck();");
screenForm.NOMIC.onclick=new Function("return kickcheck();");

//--> 
