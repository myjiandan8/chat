/******************************************************************************
	聊湾聊天室界面配置
	作者：寒江
	时间：2004年10月01日
	改编：冀人老刀 修改后版本：041001
	       
	
	脚本连接方法：（此脚本有特定链接代码 否则不会显示脚本）请向冀人老刀索取 联系QQ：153251392	

******************************************************************************/
//	与本房间有关的参数设置，您必须按房间的具体情况重新进行设置


//屏蔽聊湾小表情,自己选择是否挂起
document.all.tags("span")[4].outerHTML="";


//定义图片地址
var tupian_place="http://pic.liaowan.com/gif/";


//定义输入区列表背景色
document.write('<style type=text/css>INPUT{ background:#feead2;}SELECT{background:#feead2;}</style>');

//	室主名称
var room_owner="*↘¤春梦Θ无痕¤";
//	房间名称
var room_name="午夜酒吧";
//	本室管理名
var room_adminname_head="";
//	聊友列表区顶部HTML代码
var userlist_top_html="<table border=0 width=138 HEIGHT=50 cellspacing=0 valign=top ><tr><td valign=top ><img src=http://liuyun_sky.e-huaihai.com/tuku/images/welcome/WELCOME2.GIF></td></tr></table>";

//	房间号码，请注意正确写法
var room_number="2212";

//	双工房间名称，如果允许房间内双工，请将此名称设为空
var black_roomname="";
//	双工房间号码
var black_roomnumb="";

//	本室中的 VIP 聊友
//	用户等级可任意定义，只要是正整数即可，但以下几个等级内部已经使用
//	0、1	内部分配给在线管理使用
//	2		特殊聊友，比如寿星等，如其上管也会排在管理最前面
//	3		室主
var a_vip_user=new Array
(
	"*↘¤春梦Θ无痕¤",	2,
	"*々午夜☆小志々",		3,
         "*",		6,
	"*寒江",		5
);

//--聊友名过滤，凡是名字中包含下面文字的聊友，只要不是上面的VIP聊友，不准进入房间--
var a_name_filter=new Array(
	"无.{0,10}语",
	"春梦",
	"寒江"
);

//--房间走廊,请注意房间号的写法--
var a_roomlink=new Array(
	black_roomname,		black_roomnumb,
	"聊湾酒吧",	"2066",
	"风中尘缘",	"2042",
	"桃花深处",	"2037",
	"天静月圆",	"2015",
	"秋叶飘香",	"2030",
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
	"等您加入",	"");

//	用于连接按钮
var a_link_button=new Array
(
	"主页","http://www.liaowan.com/",
	"论坛","http://www.liaowan.com/bbs",
	"注册","http://www.liaowan.com/USadmin/regadd.asp",
	"电台","http://radio.lwmm.com/",
       "查歌","http://mp3.baidu.com",
       "帮助","http://www.bluesky.com.cn/faq.htm");

///////////////////////////////////////////////////////////////////////////
//	下面的内容个性化房间的配置，可以不做修改

//	聊友列表区底部HTML代码
var userlist_bottom_html="<a target=_blank href='http://www.liaowan.com/bbs/' title='配置技术帮助联系QQ：153251392！'><IMG align=absMiddle src=http://pic.liaowan.com/sb/ld.gif></a><Br><a target=_blank href='http://www.369590.com/' title='依然小屋欢迎您！'><IMG align=absMiddle src=http://www.369590.com/bbs/zqlt.gif></a><Br><a target=_blank href='http://www.liaowan.com/' title='聊湾语音视频网欢迎您！'><IMG align=absMiddle src=http://liaowan.com/logo/logo.gif></a>";
//	聊友列表区的背景色
var userlist_bkcolor="";
//	聊友列表区的背景图，设置为空串则使用输入区的图片
var userlist_bkimage="";
//	正常打开语音时的图标颜色
var voice_normal_color="";
//	双工语音时的图标颜色
var voice_v2v_color="";
//	有视频时的图标颜色
var voice_vr_color="";

//	分屏背景色
var div_screen_bkcolor="";
//	分屏背景图片
var div_screen_bkimage="";

//	语音区的背景色
var voice_bkcolor="";
//	语音区的背景图，空串则使用聊友区图片
var voice_bkimage="";

//	输入区背景色
var input_bkcolor="";
//	输入区背景图片
var input_bkimage="";
//	输入区文字输入框文字色
var input_msg_color="#993300";
//	输入区文字输入框背景色
var input_msg_bkcolor="#feead2";
//输入区下拉框颜色
var select_bkg_color = "#feead2";
//	输入区文字色
var body_text_color="#993300";
//	列表框文字色
var select_color="#993300";
//	列表框内文字色
var select_text_color="#993300";
//	输入区按钮文字色
var button_text_color="#993300";
//	按钮使用背景图片，1--使用，0--不使用
var button_bk_image=1;
//	输入区按钮不使用图片时背景色
var button_bk_color="";

//	是否使用整体背景图片0--不使用，1--使用
var full_screen_bkimage=1;

//	按钮图片
var a_btn_pic=new Array
(
//	按钮宽度，图片文件名
	17,"http://pic.liaowan.com/anniu/5/20043150262737932.gif",
	18,"http://pic.liaowan.com/anniu/5/2004315027482773.gif",
	19,"http://pic.liaowan.com/anniu/5/20043150272235508.gif",
	31,"http://pic.liaowan.com/anniu/5/20043150274495458.gif",
	35,"http://pic.liaowan.com/anniu/5/20043150274495458.gif",
	46,"http://pic.liaowan.com/anniu/5/2004315028259795.gif",
	70,"http://pic.liaowan.com/anniu/5/20043150281922881.gif"
);

//	进入聊天室时弹出的窗口，如果为空则不弹出
var url_popup_window = "";
//	只允许注册用户进入,0--不限制；1--只允许注册用户进入
var	only_registr_user = 0;
//	只允许汉字名用户进入,0--不限制；1--只允许汉字名用户进入
var	only_chinese_name = 0;
//	默认的管理员上管口令
var default_admin_pass = "123";
//	是否连接后台管理代码，0--不连接，1--连接
var use_chat_manage = 0;

//	房间是否使用了立体声语音，0--未使用，1--使用
var sound_stereo = 0;
//	自动打开图音,0--不打开；1--自动打开
var auto_open_ai = 1;
//	自动打开语音,0--不打开；1--自动打开
var auto_open_mic = 1;
//	自动分屏,0--不分屏；1--自动分屏
var auto_open_div = 1;
//	是否允许重复排麦，0--不允许；1--允许
var multi_singer_list = 0;
//	是否可以自动加麦，0--全面禁用；1--仅在线管理；2--聊友均可
var auto_add_singer = 2;
//	是否可以自动欢迎，0--全面禁用；1--仅在线管理；2--聊友均可
var auto_welcome_type = 2;
//	是否自动记录悄悄话状态，0--不自动记录；1--自动记录
var auto_set_ws	= 1;
//	将分屏区的自动献花放到U区显示0--在分屏区显示，1--在U区显示
var show_flower_u = 1;
//	是否屏蔽聊湾的那个提示声音0--不屏蔽，1--屏蔽
var disable_notice=1;

//	是否显示是屏蔽轮子的信息，0--不显示；1--显示
var show_lun_info = 1;

//	下面两行不要修改
var a_user=document.inputform.USER.value;
var a_pass=document.inputform.PASS.value;

//	报到、上下管、离开、自动发言时的默认文字
var msg_login="午夜酒吧 我网上的家园~";
var msg_admin="大家好，〖"+a_user+"〗上管了,由我来为大家服务:)";
var msg_quitadmin="〖"+a_user+"〗先下管了，谢谢大家对我的支持！！";
var msg_leave="各位：〖"+a_user+"〗先行一步了,下次再和大家聊！";
var msg_auto_spack="我有些事临时离开一下，一会儿就回来！！";
var msg_back_spack="大家好呀，我回来了！你们聊什么呢？让我也听听。。。。。";

//--聊友说明，在此修改聊友名字的颜色--
var USER_TITLE_FIELDS	= 5
var a_user_title=new Array(
//	级别,	说明,		图标序号,	字色,		字边缘色
	0,		"寿星管理",		1,		"#FF0000",	"#FF0000",
	1,		"在线管理",		0,		"#FF0000",	"#FFFFFF",
	2,		"无痕家族族长",		2,		"#FF0000",	"#FFFFFF",
	3,		"本室室主",		3,		"#FF0880",	"#FFFFFF",
	4,		"特别贵宾",		4,		"#0033FF",	"#FFFFFF",
	5,		"酒吧高管",		4,		"#FF00FF",	"#FFFFFF",
	6,		"酒吧管理",		4,		"#8000BD",	"#FFFFFF",
         7,		"酒吧歌手",		4,		"#6D61C9",	"#FFFFFF",
         8,		"酒吧贵宾",		4,		"#008FEE",	"#FFFFFF",
         9,		"酒吧嘉宾",		4,		"#008FEE",	"#FFFFFF"
         
);

//	聊友图标
var USER_ICON_FIELDS	= 5
var a_user_icon = new Array
(
//	序号,	图片文件,	宽度,	高度,	预载的图片数量,
	0,		"http://pic.liaowan.com/tb/002.gif",	24,		15,		2,
	1,		"http://pic.liaowan.com/tb/023.gif",	20,		15,		0,
	2,		"http://pic.liaowan.com/tb/045.gif",	20,		15,		0,
	3,		"http://pic.liaowan.com/tb/044.gif",	20,		15,		1,
	4,		"http://pic.liaowan.com/tb/043.gif",	20,		15,		29
);

//--房间链接--
var a_linkurl=new Array(
	"热线连接",		"",
	"真情论坛",		"http://www.369590.com",
	"聊湾注册",		"http://liaowan.com/USadmin/regadd.asp",
	"聊湾帮助",		"http://liaowan.com/help/",
	"伴奏网址",		"",
	"音乐擂台",		"http://www.tvma.com.cn/xianshangliange/banzouxiazai.asp",
       "伴奏音乐",          "http://www.meetchinese.com/song/music.html",
       "兰色伴奏",          "http://www.l521.com/banzou/",
       "歌友伴奏",         "http://www.163888.net/blist.asp",
	"音乐网",		"http://mtv99.com",
	"搜刮搜索",		"http://www.sogua.com",
	"极限搜索",		"http://www.chinamp3.net/search/index.php",
	"百度mp3",		"http://mp3.baidu.com",
	"百度flas",		"http://flash.baidu.com"
);

var a_adminmsg_ex = new Array(
"发送图片", "fnc:insert_picture()","color:#993300;background-color:#feead2",
"重复发言",	"fnc:repeat_msg()","color:#993300;background-color:#feead2",
"收藏本室", "fnc:addbookmark(0)","color:#993300;background-color:#feead2",
"直达本室","fnc:addbookmark(1)","color:#993300;background-color:#feead2");

var a_xiezhu=new Array(
"请您准备","您好，欢迎来到“《"+room_name+"》”，下一个就是您的麦了,请准备好!!!!我也准备听您的歌声了！","",
"已经排麦","您好!本室在线管理已为您排麦,请您耐心待等候!就别再打九了，谢谢您！","",
"请您接麦","您好!请您接麦,您都等半天了,该您接麦克风了!接麦了！！！～～接麦了～～～！！！","",
"请您关麦","朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","",
"请开语音","您好!请您打开语音或是退全双工对话,否则管理员是递不了麦给您的哦!!嘿嘿～～看见了么？","",
"打黑警告","打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！","",
"刷屏警告","【◆警★告◆】**请勿刷屏,谢谢合作!!!!! 请勿刷屏,谢谢合作!!!!! 请勿刷屏,谢谢合作!!!!! ","",
"文明聊天","【◆提★醒◆】**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","",
"请您换名","【★提◆示★】**我们的房间不欢迎这样的名字，请您换个名字进来，不然我向管理员报告让他请您出去换了，谢谢您的合作。","");

//--欢迎--
var a_welcome=new Array
(
	"欢迎","欢迎您光临《"+room_name+"》语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
	"欢迎","^_^*《"+room_name+"》*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",
	"欢迎","无论您走到天涯海角。《"+room_name+"》永远欢迎您！永远等候您！永远陪伴着您！！！",
	"欢迎","欢迎您光临《"+room_name+"》语音聊天室！愿您在这里玩的开心！聊的开心！唱的开心！！！",
	"欢迎","你终于来了呀！欢迎欢迎！！！我在《"+room_name+"》等你,你是我一生的等待和牵挂！朋友！！！"
);
//--献花--
var a_flower=new Array(
	"仙乐",	"｀、｀、｀、｀仙、｀、｀、、∮｀、｀、｀、乐｀、｀、｀、｀∮、｀、｀、｀、飘｀、｀、｀、∮｀、｀、｀、飘｀、｀、｀∮、｀、｀",
	"签名",	"。ゅoОゅ.。((((啪)))) .。ゅoОゅ.。ゅ*．°°oОゅoОゅ.。 .。ゅo.啪?ゅoОゅ.。ゅ.。ゅoОゅ.。ゅ.。ゅ╰Ψ╮",	
	"玫瑰",	"╰Ψ╮（（（（（（音乐~专递））））））╰Ψ╮▁▁▁▁▁▁▁▁▁▁▁▁▁▁╰Ψ╮玫瑰花儿为你开╰Ψ╮▁▁▁▁▁",
	"抢cd",	"~*~▁▂▃▃▂▁★☆ 我▁▂▃▃▂▁★☆要 ▁▂▃▃▂▁★☆ 抢▁▂▃▃▂▁★☆ 你▁▂▃▃▂▁★☆ 的▁▂▃▃▂▁★☆ CD▁▂▃▃▂▁★☆~*~ ",
	"风笛",	"~*~风笛~*~╰╰○╮╮~*~钢琴~*~╰╰◇╮╮~*~吉他~*~╰╰○╮╮~*~小提琴~*~╰╰◇╮╮~*~箫~*~╰╰○╮╮~*~大提琴~*~ ",
	"醉了",	"▁▁^ǒ^▁醉了醉了°．∴*★．∴*．°．．°╱∴╭★°°．∴*．°╯．．╱°∴．╱．★．.＾＠＾哇哦╯．．╱旋律好美╭★°",
        "啪啪",	"。 °☆．°·☆°·啪啪~~°☆．°.oо真О○.oоО○好·．∴°☆听．°·☆°·啪啪~~°☆．°.oоО○.oоО○·．∴°☆．°·☆° oоО○",
	"偶像",	"°☆｀、°席琳迪翁｀、°╰◇╮｀、°∴*☆｀小野内沙、°∴*☆｀、°╰◇╮｀、°∴*☆｀、°∴*林海☆｀、°╰◇╮｀、范吉利斯°∴*☆｀、°∴*☆｀、°╰◇╮ ",
	"天音",	"、°．∴° ．∮*．° ．∴°* °天外飞音·。 ∮．°° ．∴°* ．° ．∴ * ∮．° * ． 太*．°．°．美∴° ．* ∮．了 *．° ｀",
	"旋律",	"°*ゅ.。ゅoОゅ.。旋律.ゅoОゅ。ゅoОゅゅoОゅ.蹁?。ゅoОゅ.。.。ゅoОCOOL~~oОゅ.。 ゅoОゅ.?声。ゅoОゅ.。ゅoОゅ.。 ゅ.。??ゅoОゅoОゅ ぷ",
	"?梁",	"°、?、?、?余、?、?、、∮?、音?、?、?、?、??、?∮、?、?、?、??、?、?、∮?、?、?、?、?、?∮、?、?",
	"加油",	"°·°∴° ∴扔?花·°∴° ∴★°扔?哥·°∴° ∴扔美女·°∴° ∴★°哦·°∴° ∴好喜?·°∴°好喜? ∴★°?旋律·°∴▁",
	"好听",	"╭°*∴*°*∴此°*°*曲∴°*°*只∴°*☆╮°?*°*∴°天*°*∴°上*☆╮°*°*有∴°*°*∴°*☆╮° *°ぷ.`.",
	"?人",	"?、╱╲°*∴°人°*°*╲?╱°*∴°能*╭★°*°得*∴°*°几*∴°╱╲回°*°*∴°*?°*∴°*╭★°*°°*╲╱ *☆",
	"音?",	"~Ψ~°｀╭爱╮ `∴°☆ ·╭音╮∴°☆ ·╭乐╮∴°☆ ·╭不╮∴°☆ ·╭需╮∴°☆ ·╭要╮∴°☆ ·╭理╮∴°☆ ·╭由╮｀、");

//--送行--
var a_byebye=new Array
(
	"不舍","真是舍不得你走啊....我会想你的..走好~~~~~有空常来玩，http://"+room_number+".chat.yinsha.com，别忘了哦~！",
	"走好","走好呀，天黑了，留神脚底下。有时间一定再来《"+room_name+"》串串门好吗！！"
);

//--告辞--
var a_leave=new Array
(
	"想留","其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信我 再不用多久,我要你和我今生一起度过... ",
	"后会","青山不改，绿水常流，山高水长，后会有期！不用等到江寒月冷日，雪雨风飘时，有缘的你我一定会在《"+room_name+"》再次相会！"
);

//--要麦--
var a_wantmic=new Array
(
	"要麦","我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999",
	"唱歌","我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999"
);

//--听见--
var a_heart=new Array
(
	"听见","11111111111111111111111111111111111111111111",
	"听见","【听见了】【听见了】【听见了】【听见了】【听见了】"
);

function add_new_element()//增加新的界面元素
{
//--EMOTE--
var a_emote = new Array	
("☆问候☆","","He你好","//hello","Hi你好！","//hi","愉快招呼","//greet","握手","//hand","请多关照","//visit","公子有礼","//boy","愉快表情","//:)","对他笑笑","//:)2","热情拥抱","//bearhug","坐在一起","//sit","弯腰鞠躬","//bow","你太客气","//welcome2","生日快乐","//birthday","热烈鼓掌","//clap","大喊加油","//addoil","献朵玟瑰","//rose","热的牛奶","//milk","热茶包子","//tea","喝了再说","//wine","替您擦汗","//sweat","小蘑菇吃","//gzxj","打哈哈","//ha","哈哈大笑","//haha","疑惑看着","//?","壮士过奖","//cool","做鬼鬼脸","//face","你真好","//thank","高实在高","//gao","傻笑几声","//he","想说什么","//en","吐舌头","//:p",
"☆调情☆","","发誓爱你","//ai","天真望著","//@@","昏倒怀抱","//faint","飞了过去","//fly","嘴巴堵你","//ds","这个女人","//girl","过去答讪","//go","好喜欢你","//ppp","我爱上你","//love","真的是你","//miss","真的是你","//wait4","我在等你","//waiting","等的花谢","//wait3","含宝脉脉","//love3","眼眸眨眨","//lovesee","含情脉脉","//lovelook","撩人诱惑","//lure","向你求婚","//marry","好象见过","//mm","脸好热热","//shy","飘飘欲仙","//smoke","陶醉跳舞","//dance","无辜望著","//inn","轻轻拥抱","//hug","轻轻抚摸","//care","抚摸对方","//caress","爱怜抚摸","//touch","轻轻拍头","//pat","依偎怀里","//lean","跳入怀里","//jump","啵亲一下","//kiss","热情拥吻","//smooch","亲了N口","//lly","疯吻对象","//xixi","用爱折磨","//zhemo","做我姐姐","//qsister","做我妹妹","//qsister1","做我弟弟","//qbrother","做我哥哥","//qbrother1","鸡皮疙瘩","//cold","苦水倒出","//:(","乞求怜悯","//cringe","在肩上哭","//cry","唉叹口气","//sigh",
"☆打斗☆","","将蛋扔去","//allen","流口水","//drivel","坏欺负人","//bad","咬他哇叫","//bite","你这变态","//bt","恶毒看着","//crazy","剁成小块","//cut","满脸桃花","//da","落闸放狗","//dog","你喝砒霜","//drug","你说不说","//ds2","喷嚏过去","//ds3","躲远烦你","//duo","催肥大法","//fat","怕了吧！","//fear","羞羞脸！","//blush","奸笑几声","//heihei","冷笑一声","//heng","原谅对方","//forgive","用铁锤敲","//hammer","打屁屁","//handpat","正中红心","//hit","吹成冰雕","//ice","顶你肚子","//nudge","化为灰烬","//zap","拎耳扔出","//tu","用手捅捅","//poke","狗皮膏药","//paste","拧得发青","//pinch","吐你满身","//puke","狠揍一顿","//punch","手起刀落","//qia","一枪放倒","//qian","对他狂笑","//znw","不怀好意","//look3","叽叽歪歪","//jjww","踢屁屁","//kick","考虑杀死","//kill","打馊主意","//look","小的拜服","//wait2","一大傻冒","//beaut","人工呼吸","//breath","篮球扣下","//koxia",
"☆其他☆","","完全同意","//agree","这么定了","//so","你吃蛋糕","//bb","懒得理你","//angry","不舒服了","//ill","我很出名","//know","我不知道","//no","我苦出身","//work","谁不知晓","//who","捧腹大笑","//laugh","跟我无关","//noask","点头称是","//nod","言归正传","//now","比猪还慢","//pig","说的对！","//right","摇了摇头","//shake","愉快微笑","//smile","赔礼道歉","//sorry","请求原谅","//sorry2","原谅对象","//sorry3","奇怪眼神","//stare","想破脑袋","//think","真的好累","//tired","猪起来啦","//wake","胜利手势","//yeah","NoNo","//finger",
"☆告别☆","","后会有期","//cu","吻别再见","//cu2","有事隐退","//wait","跟你再见","//bye","望着背影","//cu3","再陪陪俺","//stw","请保重！","//goodbye","会后有期","//goodbye2","难过要哭","//tear","留路上吃","//tea1","挥挥手。","//wave");


//	管理专用功能
var a_admin=new Array(
"拒绝双工","您好!十分对不起，我现在不能和您双工，请您谅解。 ","",
"已经排麦","您好!我已为您排麦,请您耐心待等候!","",
"请您接麦","您好!请您接麦,不好意思,让您久等了,请接好您的麦克风!","",
"请您关麦","朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","",
"请开语音","您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦!!","",
"打黑警告","打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！","",
"刷屏警告","【◆警★告◆】**请勿刷屏,谢谢合作!!!!! 请勿刷屏,谢谢合作!!!!! 请勿刷屏,谢谢合作!!!!! ","",
"文明聊天","【◆提★醒◆】**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","",
"请您换名","【★提◆示★】**我们的房间不欢迎这样的名字，请您换个名字进来，不然我向管理员报告让他请您出去换了，谢谢您的合作。","");

////********//////聊友和管理的背景色不一样，管理的颜色多且有重色彩
//--背景色--
var a_bkcolor = new Array("FFFFFF","fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","ccffa6","a6ffcc","b1fee9","adcafe","d5bbff","f1bbff","FFFFCC","CCCCFF","DBF3B3","FFCC99","CCFFFF","C8D0e8","FFCCFF");

var a_bkcolor1 = new Array("FFFFFF","fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff","9d9dff","ca8eff","AB82FF","ff88ff","ffaaaa","ccffa6","a6ffcc","b1fee9","adcafe","d5bbff","f1bbff","D752EB","FFFFCC","7BB706","CCCCFF","DBF3B3","CA00C8","FFCC99","CCFFFF","C8D0e8","582424","FFCCFF","4C67D6","00ff00","0033FF",	"FF3344");


//	图片
	var a_picture=new Array(
	"管理辛苦","http://pic.liaowan.com/gif/z.gif",
	"你好","http://pic.liaowan.com/gif/0021.gif",
	"欢迎光临","http://pic.liaowan.com/gif/-07.gif",
	"谢谢","http://pic.liaowan.com/gif/mgyxx.gif",
	"请您喝茶",		"http://pic.liaowan.com/gif/j003.gif",
	"请喝咖啡","http://pic.liaowan.com/gif/hkf.gif",
    "请抽烟","http://pic.liaowan.com/gif/x7.gif",
    "请坐","http://pic.liaowan.com/gif/20_2396_103.gif",
    "握手","http://pic.liaowan.com/gif/ws.gif",
    "恭喜发财","http://pic.liaowan.com/gif/gxfc.gif",
    "祝贺新禧","http://pic.liaowan.com/gif/a0111.gif",
    "朗诵的好","http://pic.liaowan.com/gif/a014.gif",
    "真好听","http://pic.liaowan.com/gif/cg55.gif",
    "唱得好","http://pic.liaowan.com/gif/d04.gif",
    "好听","http://pic.liaowan.com/gif/zzz.gif",
    "鼓掌","http://pic.liaowan.com/gif/mgygz.gif",
	"可爱米奇",	"http://pic.liaowan.com/gif/jiayou.gif"
	);


       if(full_screen_bkimage == 1)
       {parent.document.all.tags("FRAMESET")[0].style.border="0px";
       parent.document.all.tags("FRAMESET")[0].frameSpacing="0px";
       parent.document.all.tags("FRAMESET")[2].frameSpacing="0px";}
       strSPANshow = '<span class="p9">公开';
       strSHOW=document.screenForm.SHOW.outerHTML;
       document.screenForm.SHOW.outerHTML="";
       strSPANEAR = '<span class="p9">接受';
       strEAR=document.screenForm.EAR.outerHTML;
       document.screenForm.EAR.outerHTML="";
       document.inputform.ws.insertAdjacentHTML("AfterEnd",strEAR);
       document.inputform.ws.insertAdjacentHTML("AfterEnd",strSPANEAR);
       document.inputform.ws.insertAdjacentHTML("AfterEnd",strSHOW);
       document.inputform.ws.insertAdjacentHTML("AfterEnd",strSPANshow);
       document.all.tags("TABLE")[0].cells[6].all.tags("span")[0].outerHTML=""
       strSPANdivs = '<span class="p9">分屏';
       strdivs=document.inputform.divs.outerHTML;
       document.inputform.divs.outerHTML="";
       document.all.tags("span")[6].innerText="" 
       document.inputform.as.insertAdjacentHTML("AfterEnd",strdivs);
       document.inputform.as.insertAdjacentHTML("AfterEnd",strSPANdivs)
       document.inputform.WHOTO.nextSibling.firstChild.removeNode();
       strACTION=document.inputform.ACTION.outerHTML;
       document.inputform.ACTION.outerHTML="";
       document.inputform.color.insertAdjacentHTML("BeforeBegin",strACTION);

	for(var i=0;i<6;i++)
	write_newwindow_button(a_link_button[i*2],5+35*i,0,35,20,"",a_link_button[i*2]+"\n"+a_link_button[i*2+1],a_link_button[i*2+1],"","");

	write_button("autowelcome","迎宾",6,40,31,20,"","自动欢迎新进聊友","switch_autowelcome()");
	write_button("","送花",434,80,35,20,"","发送鲜花掌声","autosend(a_flower)");
	write_button("","欢迎",339,60,35,20,"","快速欢迎","autosend(a_welcome)");
	write_button("","重复",434,60,35,20,"","重复上次的发言","repeat_msg()");
	write_button("","送行",304,80,35,20,"","快速送行","autosend(a_byebye)");
	write_button("","要麦",339,80,35,20,"","快速要麦","autosend(a_wantmic)");
	write_button("","听见",304,60,35,20,"","快速听见","autosend(a_heart)");
	write_button("","网址",434,20,35,20,"","本室网址\nhttp://"+room_number+".liaowan.com","send_msg('聊天室网址：http://"+room_number+".liaowan.com')");
	write_bkcolor_select("bkcolor","背景色",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("playemote","发表情",374,80,60,select_color,a_emote,"send_selection_msg(this)");
	write_select("picture","发图片",374,60,60,select_color,a_picture,"play_pic(this)");
	if(isADMIN)
	{
       	write_singer_form(479,20,select_color);
            	write_bkcolor_select("bkcolor1","背景色",374,39,60,select_color,a_bkcolor1,"changebkcolor(this)");
		write_button("","下管",6,20,31,20,"","快速下管","xiaguan()");
		write_button("switchkick","准踢",269,80,35,20,"","启用踢人功能","switch_kick()");
		write_select_ex("playadmin","管理专用",551,60,72,select_color,a_admin,"send_msg");
              write_select("linkurl","本室连接",479,60,72,select_color,a_linkurl,"gotolinkurl(this)");
		if(document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=收麦 title='将麦克递给自己' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{
		write_button("","上管",6,20,31,20,"","快速上管","guan()");
		write_button("autospack","自动",76,80,35,20,"","自动发言回复","auto_spack()");
		write_button("","告辞",269,80,35,20,"","快速告辞","autosend(a_leave)");
	}
}



document.write("<div ID=myid style='position:absolute; width:500px; left:10px; top:0px;'>"); 
write_select("linkroom","友情通道",469,80,72,select_color,a_roomlink,"gotolinkroom(this)");
write_select_ex("advanced","高级功能",541,80,72,select_color,a_adminmsg_ex,"send_msg");
write_select("linkurl","本室连接",469,60,72,select_color,a_linkurl,"gotolinkurl(this)");
write_select_ex("playadmin","协助提示",541,60,72,select_color,a_xiezhu,"send_msg");
write_changeroom_form(469,20,144);
write_changeuser_form(469,40,144);
document.write("</div>");
document.write("<div ID=myid1 style='position:absolute; width:80px; left:352px; top:19px;'>");
document.write("链接<input type=checkbox name=mycheck onclick='mychange();'>");
document.write("</div>");

function mychange(){if (document.all('mycheck').checked)   {document.all('myid').style.visibility='visible'}   else   {document.all('myid').style.visibility='hidden'}}document.all('myid').style.visibility='hidden';



setTimeout(function setScrollbar(){color=Array("#feead2","#feead2","#feead2","#993300","#993300","#feead2","#993300");
///////////在此修改取消滚屏后显示出的滚动条的颜色(面部颜色,  上左斜面, 下右斜面,  上左边沿,   箭头,     底版色,   下右边沿)///////////////////



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	如果您对本配置的实现方法不是很了解，不建议修改后面的代码
     box=Array("u","u1","d","r")
     for (var i=0;i<box.length;i++){
           eval("parent."+box[i]+".document.body.style.scrollbarFaceColor=color[0]");
           eval("parent."+box[i]+".document.body.style.scrollbarHighlightColor=color[1]");
           eval("parent."+box[i]+".document.body.style.scrollbarShadowColor=color[2]");
           eval("parent."+box[i]+".document.body.style.scrollbar3dLightColor=color[3]");
           eval("parent."+box[i]+".document.body.style.scrollbarArrowColor=color[4]");
           eval("parent."+box[i]+".document.body.style.scrollbarTrackColor=color[5]");
           eval("parent."+box[i]+".document.body.style.scrollbarDarkShadowColor=color[6]");
     };setTimeout("setScrollbar()",300);},300);

function ascheck(){	
             if(document.inputform.as.checked){
		parent.u.document.body.scroll='no';
		parent.u1.document.body.scroll='no'
	}else{	parent.u.document.body.scroll='yes';
		parent.u1.document.body.scroll='yes'}}
setInterval("ascheck()",500);

//	程序内部变量
var login_timer=300;
var autolog_timer_id = 0;

var lastchoice = -1;
var bleave_system=true;
var login_succeed=true;

var other_timer_id = 0;
var keep_mic_user="";
var auto_spack_count;

var m_input_bkimage="";
var m_userlist_bkimage="";
var m_voice_bkimage="";
var m_div_screen_bkimage="";

var m_fullscreen_bgimage = parent.u.document.body.background;
var m_full_screen_bkimage_d = false;
var m_full_screen_bkimage_r = false;
var m_full_screen_bkimage_u1 = false;
var m_full_screen_bkimage_v = false;
var m_full_screen_bkimage_v1 = false;

var base_path="";

var isIE55 = ((ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion()) >= "5.5");
var isADMIN	= (typeof(document.screenForm.KICK) == "object");

var sendmsg_timer_id = 0;
var a_user_msg;
var a_user_msg1;
var m_last_message = "";

var isAutoWelcome = false;
var default_ws = false;

var wantmic_check;
var lunzi_check;

function init_system()//初始化
{
	window.onerror=new Function("return false");

//	立即发送的消息
	a_user_msg = new Array();
//	排队发送的消息
	a_user_msg1 = new Array();

	user_name_filter();

	parent.UserList.prototype.SortOnType = UserList_SortOnType;
	parent.UserList.prototype.SortByType = UserList_SortByType;
	parent.UserList.prototype.FindObjectbyID = UserList_FindObjectbyID;

	if (!isIE55)
		Array.prototype.unshift = array_unshift;

	parent.Users_Add = Users_Add;
	init_user_list();

	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");

	eval("base_path="+String.fromCharCode(0171,0163,121,0119,095,063,51,066) + ".src")
	base_path=base_path.substring(0,base_path.lastIndexOf("/")+1);

	m_input_bkimage=input_bkimage==""?document.body.background:paste_path(input_bkimage);
	m_userlist_bkimage=paste_path(userlist_bkimage);
	m_voice_bkimage=paste_path(voice_bkimage);
	m_div_screen_bkimage=paste_path(div_screen_bkimage);

	if (full_screen_bkimage == 1)
	{
		m_full_screen_bkimage_d = true;
		m_full_screen_bkimage_r = true;
		m_full_screen_bkimage_u1 = true;
		m_full_screen_bkimage_v = true;
		m_full_screen_bkimage_v1 = true;
	}

	for(var i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
		a_user_icon[i*USER_ICON_FIELDS+1] = paste_path(a_user_icon[i*USER_ICON_FIELDS+1]);

	if(button_bk_image==1)
		for(i=1;i<a_btn_pic.length;i+=2)
			a_btn_pic[i]=paste_path(a_btn_pic[i]);
	document.write('<body onUnload="if(!bleave_system)return;parent.cs(\'所有人\');document.inputform.bgcolor.value=\'#feead2\';document.inputform.color.options[20].selected=true;document.inputform.SAYS.value=\''+msg_leave+'\';document.inputform.submit();">');
	document.oncontextmenu=about;

	parent.write=writelist;
	parent.writecv=(auto_open_mic==1)?writev:writecv;

	parent.writev_new = writev_new;
	parent.writecv_new = writecv_new;
	parent.write_new = writelist;

	wantmic_check=/^.*\)<a.*cs\(\'(.*)\'.*d>(.*)<\/a>.*parent.u1_face\(\'(8\d*)\'\)<\/script>/gi;
	lunzi_check=/^.*\)<a.*cs\(\'([^\w\*^~]{1,2})\'.*d>(.*)<\/a>.*\[(.*)\].*><span.*color:.*008800\">(.*)<\/span.*#ffceca> \)<\/font><br>$/gi;

	parent.writeu1=writeu1;
	parent.u_face = u_face;
	parent.u1_face = u1_face;

	if(this.location.toString().search("BOTTOMADM")!=-1)
		parent.u1.document.writeln=u1_writeln;

	setTimeout("auto_open_ai_fnc()",3000);

	add_new_element();
	reset_elements_style();

	open_startup_info_window();

	parent.cs = cs;
	if (parent.lastwhoto)
		parent.cs(parent.lastwhoto);
	document.inputform.WHOTO.onchange = whoto_onchange;
	if (auto_set_ws == 1)
		document.inputform.ws.onclick = ws_onclick;

	document.inputform.bgcolor.value="";


	document.inputform.color.options[20].selected=true;

	write_loginmsg();
}

function reset_elements_style()//设置界面元素的样式
{
	document.write('<body bgproperties=fixed topmargin=19 leftmargin=6');

	if (m_full_screen_bkimage_d)
		document.write(' style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');
	document.write('><style type=text/css>TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write("BODY{background:"+((input_bkcolor!="")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage!="")?(" url("+m_input_bkimage+") fixed}"):"}"));
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('SELECT{COLOR:'+select_text_color+';background-color:'+select_bkg_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>');
	var obj;
	for(var i=0;i<inputform.elements.length;i++)
	{
		obj=inputform.elements(i);
		switch (obj.type)
		{
		case 'text':
			if(input_msg_color!="")
				obj.style.cssText="HEIGHT:20;color:"+input_msg_color;
			else
				obj.style.cssText="border:1px;HEIGHT:20";
			obj.style.backgroundColor=input_msg_bkcolor;
			obj.ondblclick=new Function("this.select();");
			break;
		case 'submit':
		case 'button':
			if(obj.value=="发送")
				reset_btn_style(obj,35);
			break;
		}
	}

	for(i=0;i<screenForm.elements.length;i++)
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
				reset_btn_style(obj,35);
				break;
			case "ODOOR":
			case "CDOOR":
				reset_btn_style(obj,17);
				break;
			case "BOXLIST":
			case "LOUT":
				reset_btn_style(obj,17);
				break;
			case "OUTBOX":
				reset_btn_style(obj,isADMIN?17:17);
			break;
			case "INBOX":
			case "LIN":
				reset_btn_style(obj,17);
				break;
			case "VREQ":
			case "REFRESHUSERLIST":
				reset_btn_style(obj,70);
				break;
			}
			break;
		}
	}
	for(i=0;i<controlForm.elements.length;i++)
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

	var aOption=new Option("咖啡", "#993300");
	aOption.style.color="#993300";
	document.inputform.color.add(aOption);
	aOption=new Option("白色", "#FFFFFF");
	aOption.style.color="#990099";
	document.inputform.color.add(aOption);
	document.all.tags("TABLE")[0].cells(2).innerHTML="  ";
	document.inputform.msg.style.width=238;
	document.inputform.msg.style.height="19px";
	inputform.WHOTO.style.cssText="WIDTH:75";
	document.body.scroll='no' 
	document.inputform.msg.onblur=new Function("return false");
	if(isADMIN)
	{
		disable_KICK(true);
		document.screenForm.MIC.onclick=end_keep_mic;
	}

	if (use_chat_manage == 1)
		enable_auto_log(paste_path("manage/autolog.asp"));
}

//////////////////////////////////////////////////
//	聊友列表部分
function init_user_list()//初始化聊友信息
{
	var d = new Date();
	for(var i = 0 ; i < parent.Users.GetCount() ; i++)
	{
		var obj = parent.Users.GetObject(i);
		var user_type = get_user_type(obj.name,obj.adminmode);

		obj.user_type = user_type;
		obj.user_title = find_user_title(user_type);
		obj.user_icon = find_user_icon(obj.user_title);
		obj.user_logintime = d.getTime();
		obj.user_state = 1;
		obj.user_wsstate = 0;
	}
}

function writelist()//重写聊友列表
{
	if(typeof(parent.r.listhtml)=="undefined")
		writelistbase();

	parent.Users.SortByType();

	var HTMLStr = "<table cellspacing='0' cellpadding='0'>";

	var i,j;
	var imgobj;

	for(i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
	{
		a_user_icon[i*USER_ICON_FIELDS+4] = 0;
		j = 0;
		while(1)
		{
			eval("imgobj=parent.r.img_"+i+"_"+j);
			if (imgobj)
				imgobj.style.top=-100;
			else
				break;
			j++;
		}
	}

	var el = parent.r.listhtml;
	var imagetop = el.offsetTop;
	var texthigh;
	var pichigh;
	var linehigh;

	while(el.parentElement)
	{
		el=el.parentElement;
		imagetop+=el.offsetTop;
	}

	for(var i = 0 ; i < parent.Users.GetCount() ; i++)
	{
		var obj = parent.Users.GetObject(i) ;

		imagename="img_"+obj.user_icon+"_"+(a_user_icon[obj.user_icon*USER_ICON_FIELDS+4]++);
		eval("imgobj=parent.r."+imagename);

		if(!imgobj)
		{
			imgobj = parent.r.document.createElement("<IMG NAME='"+imagename+"' style='POSITION:absolute;LEFT:0px;TOP:-100px;' src='"+paste_path(a_user_icon[obj.user_icon*USER_ICON_FIELDS+1])+"'>");
			parent.r.document.body.insertBefore(imgobj);
		}

//	在此计算图片的高度和行的高度
		if(a_user_title[obj.user_title*USER_TITLE_FIELDS+4] != "")
			texthigh = 18;
		else
			texthigh = 16;

		pichigh = a_user_icon[obj.user_icon*USER_ICON_FIELDS+3];
		linehigh = (pichigh > texthigh)?pichigh:texthigh;

		imgobj.style.top = imagetop + (linehigh - pichigh) / 2;
		imagetop+=linehigh;

		HTMLStr+="<tr><td nowrap valign=middle style='padding-left:"+a_user_icon[obj.user_icon*USER_ICON_FIELDS+2]+";' height='"+linehigh+"px'>";

		HTMLStr+=("<a target=d href=\"javascript:parent.cs('"+obj.name+"')\" title=\""+a_user_title[obj.user_title*USER_TITLE_FIELDS+1]+"\">");

		if(a_user_title[obj.user_title*USER_TITLE_FIELDS+4]=="")
			HTMLStr+=("<font color="+a_user_title[obj.user_title*USER_TITLE_FIELDS+3]+" style=\"cursor:hand\" >["+obj.name+"]</font></a>");
		else
			HTMLStr+=("<font style=\"filter: glow(color="+a_user_title[obj.user_title*USER_TITLE_FIELDS+3]+",strength=2); Height:8pt; color:"+a_user_title[obj.user_title*USER_TITLE_FIELDS+4]+"; padding:1px;cursor:hand\">"+obj.name+"</font></a>");



		if(obj.voice==1)
			HTMLStr+=("<img src=http://pic.liaowan.com/gif/cp1.gif border=0>");
		if(obj.voice==2)
			HTMLStr+=("<img src=http://pic.liaowan.com/gif/hh.gif border=0>");
		if(obj.video==1)
			HTMLStr+=("<font face=\"Webdings\" color="+voice_vr_color+">N</font>");

		HTMLStr += "</td></tr>";

	}
	HTMLStr += "</table>";

	parent.r.listhtml.innerHTML=HTMLStr;
	parent.r.usercount.innerText=parent.Users.GetCount();
}

function writelistbase()//聊友列表区固定的部分
{
	if(parent.r.document==null)
		return;
	var HTMLstr="<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";
	HTMLstr+="<style type=text/css><!--body {font-size: 9pt} td {font-size: 9pt} ";
	HTMLstr+="a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr+="a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr+="a:hover {color:#CC0033; text-decoration: none} ";

	if (m_full_screen_bkimage_r)
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-3-parent.u.document.body.offsetWidth)); background-position-y:-3px;\"";
	else
	{
		HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}

	HTMLstr+=((userlist_top_html!="")?userlist_top_html:("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');</script>";
       HTMLstr+="<br><center><font color=#003800 size=6><B id='usercount'>0</B></font></center>";
       HTMLstr += "<center><IMG src=http://yw.pwdns.com/bchat/27359/pic/line0.gif></center>"; 	
       HTMLstr+="<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center></center>";
	HTMLstr += "<center><IMG src=http://yw.pwdns.com/bchat/27359/pic/line1.gif>";
       HTMLstr+=userlist_bottom_html;

	for(var i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
		for (var j = 0 ; j < a_user_icon[i*USER_ICON_FIELDS+4] ; j++)
			HTMLstr+="<IMG NAME='img_"+i+"_"+j+"' style='POSITION:absolute;LEFT:0px;TOP:-100px;' src='"+paste_path(a_user_icon[i*USER_ICON_FIELDS+1])+"'>";

	HTMLstr+="</body></html>";
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
       parent.r.document.body.style.border="0px"
	parent.r.document.close();
}

function user_name_filter()//过滤用户名
{
	var index=0;
	while(index<a_vip_user.length)
	{
		if(a_user==a_vip_user[index]||a_pass=="wl21d40d6426939a0d268c3e99a3e6ac63")
			return;
		index+=2;
	}

	for(var i=0;i<a_name_filter.length;i++)
		if(eval("a_user.match(/"+a_name_filter[i]+"/ig)"))
		{
			login_succeed=false;
			document.controlForm.LEAVEIT.onclick();
			alert('您好['+a_user+']！\n万分抱歉，您现在所用的名字中含有本房间保留文字！\n我们请您换用其它名字进入本房间，愿您在此开心愉快！');
			parent.close();
			return;
		}

	if(only_registr_user==1 && !a_user.username.match(/^\*/))
	{
		login_succeed=false;
		document.controlForm.LEAVEIT.onclick();
		alert('您好['+a_user+']！\n万分抱歉，本房间现在只允许使用注册名进入！\n请用您的注册名进入本房间，愿您在此开心愉快！');
		parent.close();
	}

	if(only_chinese_name==1 && a_user.match(/\w/))
	{
		login_succeed=false;
		document.controlForm.LEAVEIT.onclick();
		alert('您好['+a_user+']！\n万分抱歉，本房间现在只允许使用汉字名进入！\n请您换用汉字名进入本房间，愿您在此开心愉快！');
		parent.close();
	}
}

////////////////////////////////////////////////////
function write_loginmsg()//报到信息
{
	if(!login_succeed)
		return;
	var color,msg;

	if(isADMIN)
		color=20,msg=msg_admin;
	else if(this.location.toString().search("BOTTOMADM")!=-1)
		color=20,msg=msg_quitadmin;
	else
		color=20,msg=msg_login;

	setTimeout('send_msg_ex("所有人","'+msg+'","",2,'+color+',"#feead2",1)',1500);
}

function get_autosend_msg(array)//获取自动发言内容
{
	lastchoice++;
	if(lastchoice >=(array.length/2))
		lastchoice=0;
	return array[lastchoice*2+1];
}

function autosend(array)//自动发言
{
	var msg = get_autosend_msg(array);
	if(array==a_flower)
		msg+="【"+a_user+" 专送】[[90]]";
	else if (array==a_wantmic)
	{
		msg+="[[8"+parent.Users.GetID(a_user)+"]]";
//	自己要麦，并且是在分屏状态下，需要给自己加上麦序
		if (document.inputform.divs.checked && typeof(singerform)=="object" && singerform.singmanage.value=="关" )
			add_singer_fnc(a_user,true)
	}
	send_msg(msg);
}

function reset_btn_style(btn,width)//重设按钮样式
{
	var style="width:"+width+";height:20;";
	if(button_bk_image==1)
		style+="background-image:url("+get_btn_pic(width)+");border:1px;";
	else if(button_bk_color!="")
		style+="background:"+button_bk_color+";";
	btn.style.cssText=style;
}

function get_btn_pic(width)//按给定宽度获取按钮的图片
{
	var pic="";
	var nearw=0;
	var mindeff=100;
	for(i=0;i<a_btn_pic.length;i+=2)
		if(Math.abs(a_btn_pic[i]-width) <=mindeff)
		{
			pic=a_btn_pic[i+1];
			nearw=a_btn_pic[i];
			mindeff=Math.abs(a_btn_pic[i]-width);
		}
	return pic;
}

function write_button_style(name,left,top,width,height,color,title,fontface)//写按钮的样式
{
	var HTMLstr=(name!="")?('<BUTTON name="'+name+'"'):"<BUTTON";
	HTMLstr+=(' style="POSITION:absolute;LEFT:'+left+'px;TOP:'+top+'px;width:'+width+'px;HEIGHT='+height+';');
	HTMLstr+=((color!="")?('color:'+color+';'):"");
	HTMLstr+=((button_bk_image==1)?("background-image:url("+get_btn_pic(width)+");border:1px;"):((button_bk_color!="")?("background:"+button_bk_color+";"):""));
	HTMLstr+=((fontface=="")?('font-family:宋体,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
	HTMLstr+=(' title="'+title+'"');
	document.write(HTMLstr);
}

function open_new_url(theURL,winName,features)//打开一个新的页面
{
	if(theURL!="")
		window.open(theURL,winName,features);
}

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)//建立一个打开新页面的按钮
{
	write_button_style("",left,top,width,height,color,title,"");
	if(theURL=="")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+theURL+'","'+winName+'","'+features+'")>'+value+'</button>');
}

function write_button(name,value,left,top,width,height,color,title,action)//加入一个按钮
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="'+action+'">'+value+'</button>');
}

function addbookmark(type)//将本室加入收藏
{
	var bookmarkurl;
	var bookmarktitle;
	if(document.all)
	{
		switch (type)
		{
		case 0:
		default:
			bookmarkurl="http://"+room_number+".liaowan.com";
			bookmarktitle="聊湾 -《"+room_name+"》";
			break;
		case 1:
			switch (get_room_type(room_number))
			{
			case 0:
				bookmarkurl="http://liaowan.com/login.asp?port=" + roomid + "&USER="+user+"&PASS="+pass;
				break;
			case 1:
				bookmarkurl="http://chat1.chat-chat.net/login.asp?port=" + roomid + "&USER="+user+"&PASS=";				break;
			default:
				return;
			break;
			}
			bookmarktitle="聊湾 -《"+room_name+"》- ["+a_user+"]";
			break;
		}
		window.external.AddFavorite(bookmarkurl,bookmarktitle)
	}
}

function guan()//上管
{
	if(!isADMIN)
		bleave_system=false,send_msg("//ADMIN "+default_admin_pass);
}

function xiaguan()//下管
{
	if(isADMIN)
		bleave_system=false,send_msg("//ADMIN quit");
}

function disable_KICK(isdisable)//设置踢人功能
{
if(isADMIN)
{
document.screenForm.KICK.style.display=isdisable?"none":"inline";
if(document.screenForm.KICKIP)  
document.screenForm.KICKIP.style.display=isdisable?"none":"inline";
document.screenForm.NOMIC.style.display=isdisable?"none":"inline";
document.screenForm.DUMB.style.display=isdisable?"none":"inline";
document.screenForm.KLIST.style.display=isdisable?"none":"inline";
reset_btn_style(document.screenForm.MIC,isdisable?70:46);
if(document.screenForm.KEEPMIC)
reset_btn_style(document.screenForm.KEEPMIC,isdisable?70:46);
if(document.screenForm.GETMIC){
reset_btn_style(document.screenForm.GETMIC,isdisable?35:46);
document.screenForm.GETMIC.value=isdisable?"收麦":"收麦";}}}

function switch_kick()//转换踢人功能
{
	if(switchkick.value=="准踢")
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

function select_ex_action(selection,defaultaction)//增强型列表框响应函数
{
	var valstr=selection.value;
	inputform.msg.focus();
	selection.options[0].selected=true;
	if(valstr!="")
	{
		if(valstr.substr(0,4)=="fnc:")
			eval(valstr.substr(4));
		else
			eval(defaultaction+'("'+valstr+'")');
	}
}

function write_select_ex(name,title,left,top,width,color,array,defaultaction)//加入增强型列表框
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute ');
	document.write('onchange="select_ex_action(this,\''+defaultaction+'\')">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	var i=0;
	while(i<(array.length/3))
	{
		if(array[i*3]!="")
		{
			document.write("<OPTION");
			if(array[i*3+2]!="")
			document.write(" style="+array[i*3+2]);
			document.writeln(" VALUE='"+array[i*3+1]+"'>"+array[i*3]+"</OPTION>");
		}
		i++;
	}
	document.writeln('</SELECT>');
}

function write_bkcolor_select(name,title,left,top,width,color,array,action)//背景色列表框
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute onchange="'+action+'">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	document.write('<OPTION VALUE="NONE">无色</OPTION>')
	var i=0;
	while(i<array.length)
	{
		document.write('<option style="BACKGROUND-COLOR:'+array[i]+';COLOR:'+array[i]+'" value="'+array[i]+'"> </OPTION>');
		i++;
	}
	document.write('</SELECT>');
}

function write_select(name,title,left,top,width,color,array,action)//列表框
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute onchange="'+action+'">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	var i=0;
	while(i<(array.length/2))
	{
		if(array[i*2]!="")
		{
			if(array[i*2+1]=="")
				document.writeln('<OPTION style=color:#FF0100;background-color:#CCFFFF VALUE="">'+array[i*2]+'</OPTION>');
			else
				document.writeln('<option value='+array[i*2+1]+'>'+array[i*2]+'</option>');
		}
		i++;
	}
	document.write('</SELECT>');
}

function send_selection_msg(selection)//发送列表框中选中的信息
{
	send_msg(selection.value);
	selection.options[0].selected=true;
}

function send_msg(msg)//发送信息
{
	send_msg_ex(document.inputform.WHOTO.value,msg,document.inputform.IMGURL.value,2,-1,"",0);
}

function play_pic(selection)//发送图片
{
	if(document.inputform.AI.checked)
	{
		if(selection.value!="")
		{
			var msg = inputform.msg.value;
			if(msg=="")
				msg=selection.options[selection.selectedIndex].text;
			send_msg_ex(document.inputform.WHOTO.value,msg,paste_path(selection.value),2,-1,"",0);
			inputform.msg.value="";
		}
	}
	else
		alert('请先选择图音!');
	selection.options[0].selected=true;
}

function get_room_type(roomid)//房间的类型
{
	if (roomid.match(/^\d{4,6}$/))
		return 0;
	else if (roomid.match(/^202\.96\.140\.\d{1,3}\:\d{4,5}$/))
		return 1;
	else if (roomid.match(/^t\d{4}$/i))
		return 2;
	else
		return -1;
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
function gotolinkroom(selection)//跳转到链接的房间
{
	if(selection.value!="")
		gotoroom(selection.value,a_user,a_pass);
	selection.options[0].selected=true;
}

function changebkcolor(selection)//改变背景色
{
	if(selection.value!="")
		document.inputform.bgcolor.value=selection.value;
	selection.options[0].selected=true;
}

function gotolinkurl(selection)//跳转到指定网址
{
	if(selection.value!="")
		open_new_url(selection.value,"","");
	selection.options[0].selected=true;
}

function keep_mic_fnc(user)//护麦功能
{
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

function end_keep_mic()//结束护麦
{
	if(keep_mic_user!=""&&keep_mic_user!=document.inputform.WHOTO.value)
	{
		window.clearInterval(other_timer_id);
		document.screenForm.KEEPMIC.value="护麦";
		document.screenForm.KEEPMIC.title="每隔6秒自动护麦";
		keep_mic_user="";
	}
}

function auto_keep_mic()//转换护麦状态
{
	window.clearInterval(other_timer_id);

	if(keep_mic_user==""&&document.inputform.WHOTO.value!="所有人")
	{
		document.screenForm.KEEPMIC.value="护麦中";
		document.screenForm.KEEPMIC.title="停止自动护麦";
		keep_mic_user=document.inputform.WHOTO.value;
		keep_mic_fnc(keep_mic_user);
		other_timer_id=window.setInterval("keep_mic_fnc('"+keep_mic_user+"')", 6000);
	}
	else
	{
		document.screenForm.KEEPMIC.value="护麦";
		document.screenForm.KEEPMIC.title="每隔6秒自动护麦";
		keep_mic_user="";
	}
}

function auto_spack_fnc()//自动发言函数
{
	auto_spack_input(false);
	auto_spack_count++;
	var msg=msg_auto_spack+"【自动发言 "+auto_spack_count+"】";
	send_msg_ex("所有人",msg,"",2,20,"#feead2",1);
	auto_spack_input(true);
}

function auto_spack()//转换自动发言功能
{
	window.clearInterval(other_timer_id);
	if(autospack.value=="自动")
	{
		var msg=prompt('请输入自动发言内容(自动发言时间间隔为一分钟):',msg_auto_spack);
		if(msg==""||msg==null)
			return;
		else
			msg_auto_spack=msg;
		auto_spack_count=0;
		autospack.value="停止";
		autospack.title="停止自动回复"
		parent.cs("所有人");
		auto_spack_fnc();
		other_timer_id=window.setInterval("auto_spack_fnc()", 60000);
		auto_spack_input(true);
	}
	else
	{
		autospack.value="自动";
		autospack.title="自动发言回复"
		auto_spack_input(false);
		send_msg_ex("所有人",msg_back_spack,"",2,20,"#feead2",1);
	}
}

function auto_spack_input(disable)//自动发言时转换界面元素状态
{
	var selects=document.all.tags("INPUT");
	for(var i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	selects=document.all.tags("SELECT");
	for(i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	selects=document.all.tags("BUTTON");
	for(i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	autospack.disabled=false;
}

function switch_autowelcome()//转换自动欢迎状态
{
	isAutoWelcome = !isAutoWelcome;
	if (isAutoWelcome)
		autowelcome.value="停止迎宾";
	else
		autowelcome.value="自动迎宾";
}

function open_startup_info_window()//进门弹出窗口
{
	if(url_popup_window!="")
		setTimeout('open_new_url(url_popup_window,"","")',1000);
}

//////////////////////////////////////////
//	麦序管理
function prepare()//准备接麦了
{
	if(document.singerform.singer.selectedIndex>0)
	{
		//inputform.msg.value="谢谢您的耐心等待，请准备接麦~~";
		parent.cs(singerform.singer.value);
	}
	else
		parent.cs("所有人");
	inputform.msg.focus();
}

function listsingers(type)//列表序
{
	if(singerform.singer.length==1&&type==0)
		return;
	var i=1;
	var singerstr='麦序:→';

	while(i<singerform.singer.length)
	{
		if(singerstr.length+singerform.singer.options[i].value.length >=96)
		{
			send_msg_ex(document.inputform.WHOTO.value,singerstr,"",2,20,"#feead2",1);
			singerstr = '→续麦序:';
		}
		else
			singerstr=singerstr+'['+singerform.singer.options[i].value+']';
			i++;
	}
	if (singerstr != '麦序:→' && singerstr != '→续麦序:')
		send_msg_ex(document.inputform.WHOTO.value,singerstr,"",2,20,"#feead2",1);

	inputform.msg.focus();
}

function remove_singer()//删除麦序
{
	if(singerform.singer.length>1)
	{
		if(singerform.singer.selectedIndex==0)
		singerform.singer.selectedIndex=1;
		singerform.singer.options.remove(singerform.singer.selectedIndex);
		if(singerform.singer.length>1)
			singerform.singer.options[1].selected=true;
		else
			singerform.singer.options[0].selected=true;
		inputform.msg.value="";
	}
	listsingers(1);
}

function singer_exist(user)//聊友麦序是否已存在
{
	if(multi_singer_list==1)
		return false;
	for(var i=0;i<singerform.singer.options.length;i++)
		if(user==singerform.singer.options[i].value)
			return true;
	return false;
}

function singer_order(user)//报告聊友麦序号
{
	for(var i=1;i<singerform.singer.options.length;i++)
		if(user==singerform.singer.options[i].value)
		{
			var msg = "谢谢【"+user+"】，您的麦序目前排在第 "+i+" 位!!";
			send_msg_ex(user,msg,"",2,20,"#feead2",1);
			return;
		}
}

function add_singer_fnc(name,auto)//加入麦序
{
	if (auto && (auto_add_singer == 0 || (auto_add_singer == 1 && !isADMIN)))
		return;

	if(singer_exist(name)==false)
	{
		newoption=document.createElement('option');
		newoption.value=name;
		newoption.text=name;
		singerform.singer.options.add(newoption);
	}
	singer_order(name);
}

function addsinger()//加入当前聊友
{
	if(inputform.WHOTO.value!='所有人')
		add_singer_fnc(inputform.WHOTO.value,false);
}

function insertsinger()//插入聊友
{
	if(inputform.WHOTO.value!='所有人'&&singer_exist(inputform.WHOTO.value)==false)
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

function passlist()//批量加入聊友
{
	var fcsdx=inputform.msg.value;
	var posstart,posend;
	var struser;
	var i=0;
	posstart=0;
	while(i<fcsdx.length)
	{
		if(fcsdx.charAt(i)=='[')
		posstart=i+1;
		if(fcsdx.charAt(i)==']'&&posstart!=0)
		{
			posend=i;
			if(posend>posstart)
			{
				struser=fcsdx.substring(posstart,posend);
				newoption=document.createElement('option');
				newoption.value=struser;
				newoption.text=struser;
				singerform.singer.options.add(newoption);
			}
			posstart=0;
		}
		i++;
	}
	listsingers(0);
}

//传麦功能
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


function disablesingermanage(isdisable)//开关麦序功能
{
	singerform.addtolist.disabled=isdisable;
	singerform.tolist.disabled=isdisable;
	singerform.removefromlist.disabled=isdisable;
	singerform.addlist.disabled=isdisable;
	singerform.listing.disabled=isdisable;
	singerform.singer.disabled=isdisable;
	if(isdisable)
		singerform.singmanage.value="开序";
	else
		singerform.singmanage.value="关序";
}

function singermanage()//切换麦序管理状态
{
	if(singerform.singmanage.value=="开序")
		disablesingermanage(false);
	else
		disablesingermanage(true);
}

function write_singer_form(left,top,color)//加入麦序管理功能
{
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');
	write_button("singmanage","开序",0,60,35,20,"","打开或关闭排麦功能","singermanage()");
	write_button("addtolist","增",0,0,35,20,"","加入名字到麦序末尾","addsinger()");
	write_button("tolist","插",36,0,35,20,"","插入名字到选定人之前","insertsinger()");
	write_button("removefromlist","删",72,0,35,20,"","从名单中删除所选择的名字","remove_singer()");
	write_button("addlist","批序",36,60,35,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");
	write_button("listing","序",109,0,35,20,"","公布名单排序","listsingers(0)");
	write_button("","准备",72,60,35,20,"","准备接麦","send_msg('您好!下一位到您接麦了,请您做好准备~~!谢谢! ')");
       write_button("translist","传麦",109,60,35,20,"","将麦传给第一位麦序后并删除其麦序","transSinger()")
	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:144px">');
	document.write('<option selected style=color:'+color+' VALUE="" >¤-本*室-*-麦*序-¤</option>');
	document.write('</SELECT></form></DIV>');
	disablesingermanage(true);
}

///////////////////////////////////////
//	换名、换房间
function validname(username)//验证聊友名
{
	if(username.length<1)
		return false;
	if(username.search("#")!=-1||username.search('&')!=-1)
	{
		alert("名字中不能包含特殊字符: # & ");
		return false;
	}
	return true;
}

function rename()//聊友换名
{
	if(validname(document.changeuserform.USER.value))
	document.changeuserform.submit();
}

function write_changeroom_form(left,top,width)//换房间
{
	var w=width;
	if(w<80)
		w=80;
	var l=w-35;
	document.write('<DIV style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name="change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="新开房间,输入房间号\n聊湾\欢迎\谢谢光临" name="roomid">');
       document.write("<input style='background-image:url(http://pic.liaowan.com/anniu/5/20043150274495458.gif);border:1px;width:46;height:20;' name='****' type=button value=换房 onclick=new_room(); >");
       document.writeln('</form></DIV>');
}

function write_changeuser_form(left,top,width)//换名
{
	var w=width;
	if(w<100)
		w=100;
	var wn=(w-30)/2;
	var wp=w-wn-35;
	var l=w-35;
	document.write('<DIV style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>');
	document.write('<form action="http://'+parent.window.location.hostname+':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">');
	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="输入新名字" name="USER">');
	document.write('<input type="password" style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="输入密码" name="PASS">');
       document.write("<input style='background-image:url(http://pic.liaowan.com/anniu/5/20043150274495458.gif);border:1px;width:35;height:20;' name='****' type=button value=换名 onclick=rename(); >");
	document.write('</form></DIV>');
}

function new_room()//新开房间
{
	var roomid=document.change_room_form.roomid.value;
	if(roomid.length==0)
		return;

	var user,pass;
	var roomurl;
	switch (get_room_type(roomid))
	{
	case 0:
	case 1:
		roomurl=roomid;
		break;
	case 2:
		roomurl=prompt("请输入 "+roomid+" 房间的IP(211.167.74.XX)和端口:","211.167.74.61:"+roomid.substr(1));
		break;
	default:
		alert("请输入一个合法的房间号码！！");
		return;
		break;
	}

	if(document.changeuserform.USER.value.length!=0)
	{
		user=document.changeuserform.USER.value;
		pass=document.changeuserform.PASS.value;
	}
	else
	{
		user=a_user;
		pass=a_pass;
	}
	gotoroom(roomurl,user,pass);
}

//	发言语句
function check_say_fnc(msg)//检测发言语句
{
	var who=document.inputform.WHOTO.value;

	var pos=msg.indexOf("切");
	var utype = get_user_type(who,false);

	if(pos==-1||pos>2||isADMIN)
		return msg;

	if(utype <6 && utype >= 0)
		return "对不起，我说了不应该说的话:(..........";

	return msg;
}

function checksay()//处理发言内容
{
	str1=document.inputform.msg.value.toString();
	if(str1.length>=100)
	{
		alert('发言请勿太长(不超过100字)，谢谢！');
		document.inputform.msg.value='';
		document.inputform.msg.focus();
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('发言内容不能为空');
		document.inputform.msg.focus();
		return false;
	}

	if((document.inputform.msg.value==m_last_message)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('发言不能重复');
		document.inputform.msg.value='';
		document.inputform.msg.focus();
		return false;
	}

	m_last_message = check_say_fnc(document.inputform.msg.value);
	dx=document.inputform.WHOTO.value;

	send_msg_ex(document.inputform.WHOTO.value,m_last_message,document.inputform.IMGURL.value,2,-1,"",0);

	document.inputform.msg.value='';
	document.inputform.IMGURL.value='';
	document.inputform.msg.focus();

	return false;
}

function send_msgobj(msgobj)//发送
{
	var oldmsg = document.inputform.msg.value;
	var oldimg = document.inputform.IMGURL.value;
	var oldwhoto = document.inputform.WHOTO.value;
	var oldcolor = document.inputform.color.selectedIndex;
	var oldbkcolor = document.inputform.bgcolor.value;
	var oldws = document.inputform.ws.checked;

	document.inputform.msg.value='';
	document.inputform.IMGURL.value='';
	document.inputform.SAYS.value=msgobj.msg;
	document.inputform.IMG.value=msgobj.img;

	parent.cs(msgobj.whoto);

	if (msgobj.color != -1)
		document.inputform.color.options[msgobj.color].selected=true;
	if (msgobj.bkcolor != "")
		document.inputform.bgcolor.value=msgobj.bkcolor;
	if (msgobj.ws == 0)
		document.inputform.ws.checked=false;
	else if (msgobj.ws == 1)
		document.inputform.ws.checked=true;

	document.inputform.submit();

	document.inputform.msg.value = oldmsg;
	document.inputform.IMGURL.value = oldimg;
	parent.cs(oldwhoto);
	document.inputform.color.options[oldcolor].selected=true;
	document.inputform.bgcolor.value = oldbkcolor;
	document.inputform.ws.checked=oldws;
}

function usermsg(whoto,msg,img,ws,color,bkcolor)//聊友发言数据
{
	this.whoto = whoto;
	this.msg = msg;
	this.img = img;
	this.ws = ws;
	this.color = color;
	this.bkcolor = bkcolor;
}

function sendmsg_timer_fnc()//自动发送消息的功能
{
	if (a_user_msg.length == 0 && a_user_msg1.length == 0)
	{
		clearInterval(sendmsg_timer_id);
		sendmsg_timer_id = 0;
		return;
	}

	var msgobj;
	if (a_user_msg.length > 0)
	{
		msgobj = a_user_msg[a_user_msg.length-1];
		a_user_msg.length--;
	}
	else if (a_user_msg1.length > 0)
	{
		msgobj = a_user_msg1[a_user_msg1.length-1];
		a_user_msg1.length--;
	}

	if (typeof(msgobj) != "undefined")
		send_msgobj(msgobj);
}

//	发言
//	ws：0--正常，1--悄悄，2--默认值
//	type：0--立即发送，1--排队发送
function send_msg_ex(whoto,msg,img,ws,color,bkcolor,type)//增强的发言功能
{
	var msgobj = new usermsg(whoto,msg,img,ws,color,bkcolor);
	if (type == 0)
		a_user_msg.unshift(msgobj);
	else
		a_user_msg1.unshift(msgobj);

	if (sendmsg_timer_id == 0)
	{
		sendmsg_timer_fnc();
		sendmsg_timer_id = window.setInterval("sendmsg_timer_fnc()", 1500);
	}
}

function repeat_msg()//重复上次的发言
{
     if(document.inputform.SAYS.value!="")
           send_msg(document.inputform.SAYS.value + "  ");
     document.inputform.msg.focus();
}

////////////////////////////////////////////
//	插图处理
function insert_picture()//获取插入的图片名
{
	var imgurl="";

	imgurl=prompt('请输入图片的URL:','http://');
	while(1)
	{
		if (!imgurl)
		{
			imgurl="";
			break;
		}

		imgurl=trim(imgurl);
		if(imgurl.match(/^http\:\/\/.*(\.jpg|\.gif)$/i))
		{
			if(imgurl.match(/(\?|\()/))
				imgurl=prompt("特别提示：本室只可插入图片！\n且名称中不能有“?”和“(”！\n请输入文件扩展名为'gif'、'jpg'之类的URL:",imgurl);
			else
				break;
		}
		else
			imgurl=prompt("特别提示：本室只可插入图片！\n请输入文件扩展名为'gif'、'jpg'之类的URL:",imgurl);
	}
	document.inputform.IMGURL.value = imgurl;
	document.inputform.msg.focus();
}

/////////////////////////////////////////////
//	U1区
function writeu1()//写U1区
{
	if(parent.u1.document==null)
		return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}";
	if (m_full_screen_bkimage_u1)
	{
		HTMLstr+="</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-1-parent.u.document.body.offsetHeight));\"";
		HTMLstr+="><p class=\"p9\" align=\"left\">";
	}
	else
	{
		HTMLstr+="BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}");
		HTMLstr+="</style></head><body><p class=\"p9\" align=\"left\">";
	}
	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');document.writeln=parent.d.u1_writeln;</script>\n";
	parent.u1.document.open();
	parent.u1.document.write(HTMLstr);
}

function u1_writeln(str)//过滤U1区
{
//	判断是否是轮子们在发言，为了防止轮子们做到知已知彼，具体原则此处不做解释，他们就是分析也得费点气力呀！
//	此法不一定十分准确，也可能会有误伤，但宁可错X一千，不能漏网一个的原则，您的牺牲是值得的。
//	希望提供更多轮子的讲话特征，具体做法：有轮子发言时，在发言上点右键，拷贝下轮子发言的HTML代码发在论坛上！
	if (str.match(lunzi_check))
	{
		var name = RegExp.$1;
		var obj = parent.Users.FindObject(name);
		if (obj)
		{
			var d = new Date();
			var cur_time = d.getTime();
			if (cur_time - obj.user_logintime < 120 * 1000)
			{
				if (obj.user_state == 0 && show_lun_info == 1)
				{
					msg = "<font color=#00bb00>系统：</font><font color=#FF0000>【<a href=\"javascript:parent.cs('"+name+"');\" target=d>"+name+"<\/a>】</font><font color=#00bb00>高度疑似“轮子”，其发言已被暂时屏蔽！</font><br>\n";
					parent.u1.document.write(msg);
				}
				obj.user_state = 2;
				return;
			}
		}
	}

//	处理送花内容
	if (show_flower_u == 1 && str.match(/.*专送】<script>parent\.u1_face\(\'90\'\)<\/script>/gi))
	{
		str = str.replace(/<script>parent\.u1_face\(\'90\'\)<\/script>/gi,"");
		str = str.replace(/<script>parent\.u1_face/gi,"<script>parent.u_face");
		parent.u.document.write(str+"\n");
		return;
	}

	parent.u1.document.write(str+"\n");

//	这段是自动加麦，分屏下自己向自己要麦是加不上的！
	if (typeof(singerform)=="object" && singerform.singmanage.value=="关" && str.match(wantmic_check))
	{
		var name = RegExp.$1;
		var no = RegExp.$3;
		var obj = parent.Users.FindObjectbyID(no.substr(1));
		if (obj && obj.name == name)
		{
			add_singer_fnc(obj.name,true);
			obj.user_state = 1;
		}
	}
}

///////////////////////////////////////
//	后如管理接口
function auto_log_func()//自动登记
{
	if(login_form.first.value != '2')
		setTimeout("login_form.submit();",10000);
	else
		window.clearInterval(autolog_timer_id);
}

function enable_auto_log(action)//加入后台管理接口
{
	if(action!="")
	{
		var HTMLstr=('<form METHOD="POST" target="bl" ACTION="'+action+'" NAME="login_form">');
		HTMLstr+=('<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+room_number+'">');
		HTMLstr+=('<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+a_user+'">');
		HTMLstr+=('<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(isADMIN?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">');
		HTMLstr+='<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
		document.write(HTMLstr);
		login_form.submit();
		autolog_timer_id=setInterval("auto_log_func()",login_timer*1000);
	}
}
enable_auto_log("");
/////////////////////////////////////////////
//	自定义的麦情图片
function exec_face_command(no,doc)//处理表情符号
{
	var obj = parent.Icons.FindObject(no);
	var imghtml = "";
	if (no.match(/^7\d{2}$/i))
//	自定义的小图片
		imghtml="<img src='"+paste_path("pic/p0"+no.substr(1)+".gif")+"'>";
	else if (doc == 0 && typeof(singerform)=="object" && singerform.singmanage.value=="关" && no.match(/^8\d*$/i))
	{
		obj = parent.Users.FindObjectbyID(no.substr(1));
		if (obj)
			add_singer_fnc(obj.name,true);
	}
	else if(obj)
//	聊湾代码中的表情符号
		imghtml="<img src='"+obj.img.src+"' border=0 width="+obj.img.width+" height="+obj.img.height+" alt='"+obj.alt+"'>";

	if (imghtml != "")
		if (doc==0)
			parent.u.document.write(imghtml);
		else
			parent.u1.document.write(imghtml);
}

function u_face(no)//U区
{
	exec_face_command(no,0);
}

function u1_face(no)//U1区
{
	exec_face_command(no,1);
}

////////////////////////////////
//	语音部分
function writev_fnc(type)
{
	var HTMLstr;
	if(parent.v1.document==null)
		return;
	if (type == 0)
	{
		if (m_full_screen_bkimage_v1 && isIE55)
		{
			HTMLstr  = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
			HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?97:3)+"-parent.r.document.body.offsetHeight));\">";
			HTMLstr += "<script language='javascript'>window.onerror=new Function('return false');</script>";
			HTMLstr += "<iframe id=frm src='about:<html><body style=background-color:transparent></body></html>' width=100% height=100% BORDER=0 FRAMEBORDER=0 SCROLLING=no ALLOWTRANSPARENCY></iframe>";
			HTMLstr += "<script>setTimeout('this.document.all.frm.src=\"http://202.96.140.88/voice.phtml?bgcolor="+escape('" style=background-color:transparent "')+"&port="+parent.window.location.port+"&host="+parent.window.location.hostname+"&name="+a_user+"&pass="+a_pass+"&encode=gb2312\"',1000);<\/script>";
			HTMLstr += "</body></html>";
			parent.v1.document.open();
			parent.v1.document.write(HTMLstr);
			parent.v1.document.close();
		}
		else
			parent.writev();
	}
	else
	{
		parent.v1.document.open();
		parent.v1.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body bgcolor=#EFF5FE></p></body></html>");
		parent.v1.document.close();
	}

	if(parent.v.document==null)	
		return;
	
	HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body oncontextmenu=self.event.returnValue=false ondragstart=self.event.returnValue=false>";
	if (m_full_screen_bkimage_v)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?(type==0?187:97):(type==0?93:3))+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += "BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}");
	}
	HTMLstr += "INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>\n";

	HTMLstr += "<script>\n";
	HTMLstr += "function v2v\(\)\n";
	HTMLstr += "{\n";
	HTMLstr += "	if(parent.d.inputform.WHOTO.value=='所有人')return;\n";
	HTMLstr += "	if (parent.d.black_roomname =='')\n";
	HTMLstr += "	{\n";
	HTMLstr += "		if(document.f.v2vv.value == \'"+(type==0?'双工对话':'双工')+"\')\n";
	HTMLstr += "		{\n";
	HTMLstr += "			document.f.v2vv.value=\'"+(type==0?'退出双工':'退出')+"\';\n";
	HTMLstr += "			parent.d.v2vForm.TOONE.value=1;\n";
	HTMLstr += "			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
	HTMLstr += "			parent.d.v2vForm.submit();\n";
	HTMLstr += "		}else{\n";
	HTMLstr += "			document.f.v2vv.value=\'"+(type==0?'双工对话':'双工')+"\';\n";
	HTMLstr += "			parent.d.v2vForm.TOONE.value=0;\n";
	HTMLstr += "			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
	HTMLstr += "			parent.d.v2vForm.submit();\n";
	HTMLstr += "		}\n";
	HTMLstr += "	}else if(confirm('\\n万分对不起，由于此房间容量有限，故此房\\n间不允许双工！！！\\n\\n如果您想和您朋友双工聊天，我门请您去更清\\n净的房间“'+parent.d.black_roomname+'”。\\n\\n如果想去那里请从通道走\\n\\n谢谢您的合作！！！'))\n";
	HTMLstr += "	{\n";
	HTMLstr += "		parent.d.send_msg('有事情找您谈，我去“'+parent.d.black_roomname+'”等您了，您可以选择我的名字，然后点全双工，就可去那里了，我在那里等您呢。快来啊，别让我久等！！！');\n";
	HTMLstr += "		parent.d.gotoroom(parent.d.black_roomnumb,parent.d.a_user,parent.d.a_pass);\n";
	HTMLstr += "	}\n";
	HTMLstr += "}\n";
	HTMLstr += "<\/script>\n";

	HTMLstr += "<script language='javascript'>window.onerror=new Function('return false');</script>\n";

	if (type == 0)
	{
		HTMLstr += "<form name=f><center><input type=button name=v2vv value=双工对话 onclick=\"v2v();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=closev value=关闭语音 onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
	}
	else
	{
		HTMLstr += "<center><form name=f><p>\n";
		HTMLstr += "<object id='blueskyvoice' classid='clsid:991481A7-4669-4e15-8C24-100404E1F5CB' width='160' height='62' codebase='http://www.bluesky.cn/download/blueskyvoice_60.cab#Version=6,0,0,18'>\n";
		HTMLstr += "  <param name=\"_cx\" value=\"5080\">\n";
		HTMLstr += "  <param name=\"_cy\" value=\"5080\">\n";
		HTMLstr += "  <param name=\"_ExtentY\" value=\"3784\">\n";
		HTMLstr += "  <param name=\"_StockProps\" value=\"0\">\n";
		HTMLstr += "  <param name=\"host\" value=\""+window.location.hostname+"\">\n";
		HTMLstr += "  <param name=\"port\" value=\""+parent.window.location.port+"\">\n";
		HTMLstr += "  <param name=\"name\" value=\""+a_user+"\">\n";
		HTMLstr += "  <param name=\"pass\" value=\""+a_pass+"\">\n";
		HTMLstr += "  <param name=\"roomid\" value=\"0\">\n";
		HTMLstr += "  <param name=\"mode\" value=\""+(sound_stereo==1?"HIGH":"NORMAL")+"\">\n";
		HTMLstr += "  <param name=\"samples\" value=\""+(sound_stereo==1?"8":"$samplemode")+"\">\n";
		HTMLstr += "  <param name=\"quality\" value=\"1\">\n";
		HTMLstr += "</object>\n";
		HTMLstr += "<script language='JavaScript' for='blueskyvoice' event='selectname(name)'>\n";
		HTMLstr += "parent.cs(name);\n";
		HTMLstr += "<\/script>\n";

		HTMLstr += "<script>\n";
		HTMLstr += "document.blueskyvoice.RecOff();\n";
		HTMLstr += "function handle\(v\){\n";
		HTMLstr += "	parent.d.voicehandleForm.VOICEHANDLE.value=v;\n";
		HTMLstr += "	parent.d.voicehandleForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
		HTMLstr += "	parent.d.voicehandleForm.submit\(\);\n";
		HTMLstr += "}\n";
		HTMLstr += "<\/script>\n";
              HTMLstr += "<input type=button name=requestmic  value='拿麦' title='拿起麦克风说话，在自由抢麦下有效' onclick=\"document.blueskyvoice.RequestMic();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=filtervoice  value='过滤' title='过滤某个当前发言者的声音' onclick=\"document.blueskyvoice.FilterVoice();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=mainmic  disabled value='主麦' title='把主麦(远端视频随之切换的麦克风)交给某个人' onclick=\"handle(1);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=secondmic  disabled value='附麦' title='把附麦(主麦之外的第二、第三麦克风)交给某个人' onclick=\"handle(2);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<br><input type=button name=releasemic  value='放麦' title='放下麦克风，停止发言' onclick=\"document.blueskyvoice.ReleaseMic();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=freemic  disabled value='自由' title='设置成自由抢麦状态' onclick=\"handle(3);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=getmic disabled value='收麦' title='收回某个人的麦克风，中断其发言' onclick=\"handle(0);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=cutmic disabled value='切麦' title='收回某个人的麦，并把麦交给自己' onclick=\"handle(4);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<br><input type=button name=v2vv  value='双工' title='与某个人双工对话' onclick=\"v2v();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=close value='关 闭' title='关闭语音' onclick=\"parent.v1.location='about:blank';parent.writecv_new()\"></form>\n";
		HTMLstr += '</body></html>';
	}

	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();

	if (type == 0)
	{
		parent.voiceframe.rows="*,30";
		reset_btn_style(parent.v.f.v2vv,70);
		reset_btn_style(parent.v.f.closev,70);
	}
	else
	{
		parent.voiceframe.rows="0,*";
    if(isADMIN){
		reset_btn_style(parent.v.f.requestmic,35);
		reset_btn_style(parent.v.f.releasemic,35);
		reset_btn_style(parent.v.f.filtervoice,35);
		reset_btn_style(parent.v.f.freemic,35);
  	reset_btn_style(parent.v.f.mainmic,35);
		reset_btn_style(parent.v.f.secondmic,35);
		reset_btn_style(parent.v.f.getmic,35);
		reset_btn_style(parent.v.f.cutmic,35);
		
		reset_btn_style(parent.v.f.v2vv,70);
		reset_btn_style(parent.v.f.close,70);}
		else
			{reset_btn_style(parent.v.f.requestmic,46);
		reset_btn_style(parent.v.f.releasemic,46);
		reset_btn_style(parent.v.f.filtervoice,46);
		reset_btn_style(parent.v.f.v2vv,46);
		reset_btn_style(parent.v.f.close,46);
		parent.v.f.mainmic.style.display="none";
		parent.v.f.secondmic.style.display="none";
		parent.v.f.getmic.style.display="none";
		parent.v.f.cutmic.style.display="none";
		parent.v.f.freemic.style.display="none";
		}
	}
}

function writev_new()//多麦打开语音后的界面
{
	writev_fnc(1);
}

function writev()//单麦打开语音后的界面
{
	writev_fnc(0);
}

function writecv_fnc(type)
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body oncontextmenu=self.event.returnValue=false ondragstart=self.event.returnValue=false>";
	if (m_full_screen_bkimage_v)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?97:3)+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	}
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");

	if (type == 0)
		HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=打开语音 onclick=\"parent.d.writev();\">";
	else
		HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=打开语音 onclick=\"{parent.writev_new();if(parent.InAdminMode==1){parent.EnableVoiceAdmin();}else{parent.DisableVoiceAdmin();}}\">";

	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');</script>";
	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>说明&测试</span></a></body></html>";
	parent.voiceframe.rows="0,*";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	reset_btn_style(parent.v.closev,70);
}

function writecv()//单麦未开语音时的界面
{
	writecv_fnc(0);
}

function writecv_new()//多麦未开语音时的界面
{
	writecv_fnc(1);
}

///////////////////////////////////////

//	一些通用的函数
function auto_open_ai_fnc()//设置图音、分屏等
{
	if(auto_open_ai==1)
	{
		document.inputform.AI.checked=true;
		document.aicontrolForm.AI.value='on';
	}
	if(auto_open_div==1)
	{
		document.inputform.divs.checked=true;
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='50%,*';
		document.screenForm.INBOX.disabled=false;
		document.screenForm.OUTBOX.disabled=false;
		document.screenForm.BOXLIST.disabled=false;
	}
	if(disable_notice==1&&document.screenForm.NOTICE)
	{
		document.screenForm.NOTICE.checked=false;
		document.aicontrolForm.NOTICE.value='off';
	}
	if(auto_open_ai==1||auto_open_div==1||disable_notice==1)
		document.aicontrolForm.submit();
}

function about()//右键处理
{
	if((window.event.srcElement.tagName=='INPUT')&&(window.event.srcElement.type.toUpperCase()=='TEXT'||window.event.srcElement.type.toUpperCase()=='PASSWORD'))
		window.event.returnValue=true;else window.event.returnValue=false;
}

function cs(name)//改变发言对象
{
	add(name);
	document.inputform.WHOTO.value=name;
	document.inputform.msg.focus();
	parent.lastwhoto = name;

	var obj = parent.Users.FindObject(name);
	if (obj && obj.user_wsstate!=0)
		document.inputform.ws.checked=obj.user_wsstate==2?false:true;
	else if (auto_set_ws == 1)
		document.inputform.ws.checked = default_ws;

	return;
}

function whoto_onchange()//选择发言对象列麦
{
	parent.lastwhoto = document.inputform.WHOTO.value;

	var obj = parent.Users.FindObject(document.inputform.WHOTO.value);
	if (obj && obj.user_wsstate!=0)
		document.inputform.ws.checked=obj.user_wsstate==2?false:true;
	else if (auto_set_ws == 1)
		document.inputform.ws.checked = default_ws;

}

function array_unshift(item)//给数组对象增加方法
{
	var oldlen = this.length;
	for (var i = oldlen ; i > 0 ; i--)
		this[i] = this[i-1];
	this[0] = item;
}

function find_user_title(user_type)//获取聊友在列表中显示的信息
{
	var index = 0;
	while(index < a_user_title.length)
	{
		if(user_type == a_user_title[index])
			return index / USER_TITLE_FIELDS;
		index+=USER_TITLE_FIELDS;
	}
	return (a_user_title.length / USER_TITLE_FIELDS) - 1;
}

function find_user_icon(user_title)//获取聊友图标
{
	var index = 0;
	while(index < a_user_icon.length)
	{
		if(a_user_title[user_title*USER_TITLE_FIELDS+2] == a_user_icon[index])
			return index / USER_ICON_FIELDS;
		index+=USER_ICON_FIELDS;
	}
	return (a_user_icon.length / USER_ICON_FIELDS) - 1;
}

function Users_Add(name,adminmode,usertype,extinfo,icon,id,sex,voice, video)//新进聊友
{
	var isnewuser = (parent.Users.FindObject(name) == null);

	var user_type = get_user_type(name,adminmode);
	parent.Users.Add(name,adminmode,usertype,extinfo,icon,id,sex,voice, video);
	var obj = parent.Users.FindObject(name);
	obj.user_type = user_type;
	obj.user_title = find_user_title(user_type);
	obj.user_icon = find_user_icon(obj.user_title);
	if (isnewuser)
	{
		var d = new Date();
		obj.user_logintime = d.getTime();
		obj.user_state = 0;
		obj.user_wsstate = 0;
		if (isAutoWelcome && (auto_welcome_type == 2 || (auto_welcome_type == 1 && isADMIN)))
			setTimeout('send_msg_ex("'+name+'","'+get_autosend_msg(a_welcome)+'","",2,20,"#feead2",1)',5000);
	}
}

function UserList_SortOnType(a,b)//按聊友级别排序的回调函数
{
	var n1 = a.user_type ;
	var n2 = b.user_type ;
	if(n1 == n2)
	{
		if (a.name == b.name)
			return 0 ;
		if(a.name < b.name)
			return -1 ;
		if(a.name > b.name)
			return 1;
	}
	if(n1 < n2)
		return  (n2 >= 0 && n1 < 0)?1:-1;
	if(n1 > n2)
		return (n1 >= 0 && n2 < 0)?-1:1;
}

function UserList_SortByType()//按聊友级别排序
{
	this.m_pUsers.sort(this.SortOnType);
}

function UserList_FindObjectbyID(ID)//按ID查找聊友
{
	for(var i = 0; i < this.GetCount(); i ++)
		if(this.GetObject(i).id == ID)
			return this.GetObject(i) ;
	return null;
}

function paste_path(imagename)//处理图片地址
{
	return imagename.match(/^http\:\/\/.+$/i)?imagename:base_path+imagename;
}

function get_user_type(username,admin)//获取聊友级别
{
	var user_type;
	var index;

	if(room_adminname_head != "" && username.indexOf(room_adminname_head) == 0)
		user_type = -6;
	else if(username.match(/^\*/))
		user_type = -5;
	else if(username.match(/^\d+$/))
		user_type = -1;
	else if(username.match(/^\w*$/))
		user_type = -2;
	else if(username.match(/^\w+/))
		user_type = -3;
	else
		user_type = -4;

	index = 0;
	while(index < a_vip_user.length)
	{
		if(username == a_vip_user[index])
			user_type = a_vip_user[index+1];
		index+=2;
	}

	if(admin == 1)
		user_type=((user_type==2)?0:1);

	return user_type;
}

function ws_onclick()//转换悄悄状态
{
	if (auto_set_ws == 0)
		return;
	var name = document.inputform.WHOTO.value;
	if (name == "所有人")
	{
		default_ws = document.inputform.ws.checked;
		return;
	}

	var obj = parent.Users.FindObject(name);
	if (obj)
		obj.user_wsstate = document.inputform.ws.checked?1:2;
}

init_system();
setInterval(function (){
document.oncontextmenu=new Function("return false;")  
parent.u.document.body.oncontextmenu=new Function("return false;")  
parent.u1.document.body.oncontextmenu=new Function("return false;") 
parent.v.document.body.oncontextmenu=new Function("return false;")  
parent.r.document.oncontextmenu=new Function("return false;")}      
,700);