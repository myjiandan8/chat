
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
var config_place = "http://www.teamiss.org/A_U_0917/";
var room_owner="*HA-6";
var room_name="小唯的家";
var room_adminname_head="";
var room_number="326470";
var gonggao=""
var room_link_url = "http://326470.bliao.com";
var admin_place="http://www.teamiss.org/ha4/admin/";
var enable_admin = 1;
var auto_flower_time = 8;
var auto_flower = 1;
var black_roomname="";
var black_roomnumb="";
var userlist_top_html = "<B><font style=\"filter: glow(color=#009900,strength=4); Height:12pt; color:#FFFFCC; padding:1px;\">  <font size=4>小</font><font size=4>唯</font><font size=5>的</font><font size=6>家</font></font></B>";
var userlist_bottom_html = "<font color=#009900 >"+room_name+"欢迎您</font>";
var userlist_bkcolor = "#ffeae4";
var userlist_bkimage = "bcf/100.jpg";
var voice_normal_color = "#00D000";
var voice_v2v_color = "#BFBFBF";
var voice_vr_color = "#00D000";
var div_screen_bkcolor = "#00D000";
var div_screen_bkimage = "bcf/100.jpg";
var voice_bkcolor = "#ffeae4";
var voice_bkimage = "bcf/100.jpg";
var input_bkcolor = "#E8F4E0";
var input_bkimage = "bcf/100.jpg";
var input_msg_color	= "#339900";
var input_msg_bkcolor = "#DCE0CF";
var body_text_color	= "#339900";
var select_color = "#339900";
var select_text_color = "#CC4499";
var button_text_color = "#339900";
var button_bk_image	= 1;
var button_bk_color = "";
var full_screen_bkimage	= 0;
var auto_hide_scrollbar = 0;
var disable_notice=1;
var a_btn_pic = new Array
(
	17,		"bcf/tt001.jpg",
	18,		"bcf/tt001.jpg",
	19,		"bcf/tt001.jpg", 
	30,		"bcf/tt001.jpg",
	35,		"bcf/tt002.jpg",
	46,		"bcf/tt003.jpg",
	70,		"bcf/tt004.jpg"
);
var url_popup_window = "";
var	only_registr_user = 0;
var	only_chinese_name = 0;
var default_admin_pass = "326470-666";
var auto_open_ai = 1;
var auto_open_mic = 0;
var auto_open_div = 1;
var multi_singer_list = 0;
var msg_login		=	"语音摄像头相关问题及教学请参阅http://www.teamiss.org/ha4/v-help.htm 依步骤执行,铁定行。";
var msg_admin		=	"大家好，〖"+a_user+"〗上管了,由我来为大家服务,要麦请向我打999999:)";
var msg_quitadmin	=	"〖"+a_user+"〗先下管了，本月上管时间少于60分钟的已被取消管理权限了，如果你还有时间请联系室主！！";
var msg_leave		=	"各位："+a_user+"〗先行一步了,下次和大家继续相约在http://www.829340.bliao.com";
var msg_auto_spack	=	"我有些事临时离开一下，一会儿就回来！！";
var msg_back_spack	=	"大家好呀，我回来了！你们聊什么呢？让我也听听。。。。。";
var a_link_button = new Array
(
"主页",	"http://teamiss.w11.dvbbs.net/index.htm",
"留言",	"http://teamiss.w11.dvbbs.net/bbs/list.asp?boardid=24",
"管诉",	"http://teamiss.w11.dvbbs.net/bbs/list.asp?boardid=25",
"相册",	"http://teamiss.w11.dvbbs.net/bbs/list.asp?boardid=26",
"语音解答",	"http://www.teamiss.org/ha4/v-help.htm",
"投票","http://www.teamiss.org/ha4/admin/showadmin.asp",
"管理",	"http://teamiss.w11.dvbbs.net/bbs/dispbbs.asp?boardID=25&ID=793&page=1"
);
var a_vip_user = new Array
(
"77", 1,
"*○o飞来☆找你o○", 1,
"*‰笨妞妞づ", 1,
"*℡ゞ小ゞ唯ゞ", 1,
"*~☆哈7☆~小唯", 1,
"*土╭CDR╮豆╔", 2,
"*莫ξ⺷_⺷ξ菲", 2,
"*℡主持^ǒ^晶莹", 2,
"*≒孤∮行≒", 2,
"*∮我心≡永恒∮", 2,
"*_智能管理员_", 7,
"*蓝色心情-沉石", 17,
"*≈☆醒着做梦☆≈", 17,
"*☆雨天☆", 17,
"*HZ☆歌手の蓝鸟", 18,"*HZ☆歌手の土豆", 18,"*HZ☆歌手の拽少", 18,"*HZ☆歌手の尐宇", 18,"*HZ☆歌手の萧风~", 18,"*HZ☆歌手の无缘", 18,
"*~☆哈36☆~风筝", 5,
"*▲哈35▲好难", 5,
"*~☆哈28☆~罗莎", 5,
"*▲哈38▲白龙", 5,
"*▲哈30▲清风", 5,
"*▲哈20▲动力猫", 5,
"*▲哈15▲森林", 5,
"*HA-15", 5,
"*Ωa", 5,
"*aiyer", 5,"*噗噗豬", 5,"*已注册用户!", 5,
"*城中河", 5,"*℡だ青李子だ℡", 5,"*≈开心⺷o⺷明明≈", 5,
"*HA-15", 5,
"*Oo。Oo。泡泡ｏＯ", 5,
"茶王子", 2,
"*HA-7", 2,
"566", 2,
"*℡↘茶王子ゞ", 2,
"*疤辣兔", 2,
"SK-II", 2,
"疤辣兔", 2,
"*友情客串-", 2,
"*≈蝶舞≈", 7,
"*￡蝶舞╃天涯￡", 7,
"*.衡衡.", 7,
"江",8,
"☆新⺷ō⺷娘☆", 5,"☆新⺷ō⺷郎☆", 5,"☆伴⺷ō⺷娘☆", 5,"☆伴⺷ō⺷郎☆", 5,"☆喜⺷ō⺷烟☆", 5,"☆奔⺷ō⺷驰☆", 5,"☆喜⺷ō⺷酒☆", 5,"☆喜⺷ō⺷糖☆", 5,"☆戒⺷ō⺷指☆", 5,"☆礼⺷ō⺷花", 5,
"666-工作中", 11,"*HA-6", 11,"666-休息中", 1,"*~▲哈6▲~忘我", 11
);

var a_name_filter = new Array
( 
"看看",
"军",
"|",
"挂机外出",
"◥",
"小唯",
"球",
"日",
"国",
"HA-6",
"哈六",
"ha",
"YO",
"新月",
"晴子",
"王五",
"千文",
"娘",
"癊",
"豆豆子",
"明月風",
"注密",
"码已",
"太短",
"字短",
"还短",
"蝶舞",
"多长",
"锤子",
"意思",
"哈哈",
"SI",
"踢",
"魅影",
"靠",
"--",
"破",
"老公",
"葬",
"凶",
"姐姐",
"哥哥",
"冰山恐龙",
"性",
"弟好",
"长风大侠",
"批",
"如歌",
"一刀",
"◣",
"◢",
"◤",
"爸爸",
"精灵~",
"~精灵",
"恋泪",
"熏儿",
"飞じ",
"鬼",
"█",
"　",
"室主",
"主持",
"管理员",
"解放",
"采花贼",
"淫",
"給我",
"己婚",
"少妇",
"00",
"ddd",
"000",
"222",
"999",
"123",
"366",
"激情",
"爷爷",
"奶奶",
"孙子",
"跪下",
"衰",
"缘力",	
"赃样",
"乱亲",
"▅",
"666-工作中",
"姦",
"杀",
"操",
"死",
"哀",
"精灵的",
"魔精",
"赃样",
"嘿嘿",
"88",
"夜男",
"夜情",
"泪儿");
var a_hide_user = new Array
(
    "",              0,
    "",              1
);
//      便衣马甲
var bianyi = new Array
     (
     "*HA-6",
     "*≈蝶舞≈"
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
(
0,"本室主持","326470/zc.gif width=28 high=20","#FFc2e","#FFFFFF",
1,"本室室主","326470/2004618191745.jpg",   "#FF00FF","#FFFFFF",
2,"本室特殊贵宾","326470/20047121648.gif width=20 high=18",	"#0000FF","#FFFFFF",
3,"本室室主","326470/200442903343.gif",   "#ff00ff","#FFFFFF",
4,"本室室主","326470/200442903343.gif width=32 high=0",   "#ff1493","#FFFFFF",
5,"本室嘉宾","326470/200442903343.gif","#9B30FF","",
6,"本室嘉宾","326470/200442903343.gif","#9B30FF","",
7,"注册用户",	"326470/7.gif",	"#007575",	"#FFFFFF",
8,"未注册用户","326470/t023.gif",   "#9B30FF","",
9,"过客","326470/1212.gif",   "#9B30FF","",
10,"本室站长,室主","326470/20047130044.jpg",	"#FF00FF","#FFFFFF",
11,"代理室主","326470/gif.gif width=22 high=0",	"#0000ff","#ffffff",
12,"本室主管","326470/txa.gif width=27 high=0",   "#9900ff","#FFFFFF",
13,"本室副室主","326470/20047130044.jpg width=20 high=0",   "#9900ff","#FFFFFF",
14,"本室星级管理,在线上管时长","326470/guanli.gif width=22 high=0",  "#0000FF","#FFFFFF",
15,"优秀高管,在线上管时长","326470/gg.gif width=23 high=0",   "#0000FF","#FFFFFF",
16,"本室高管","326470/gg.gif","#ff00ff","#FFFFFF",
17,"本室管理","326470/200442903304.gif","#ff00ff","#FFFFFF",
18,"本室歌手","326470/laqin.gif",   "#ff00ff","#FFFFFF",
19,"本室便衣主持,权限为0级管理","326470/20047121648.gif width=21 high=0",   "#ff1493","#FFFFFF"
);
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
"小唯的家",	"326470",
"清荷歌声","537940",
"雨 中 鱼","280534",
"伊 甸 园","397557",
"--------","326470",
"哈族基地","343398",
"六 月 天","327620",
"我爱大家","290093",
"等您加入","326470"
);
var a_linkurl = new Array
(
"用户注册", "http://admin.bliao.com/user/login.htm",
"语音插件", "http://cncsg.nease.net/blueskyvoice.zip",
"换名马甲", "#ChangeNameForm",
"用户注册",		"http://admin.bliao.com/user/reguser.htm",
"百度搜索",	"http://mp3.baidu.com/",
"搜刮音乐",		"http://www.sogua.com",
"极限音乐",		"http://www.chinamp3.net/search/index.php",
"碧聊贺卡",		"http://card.silversand.net/",
"伴奏搜索",	"http://www.163888.net/search/",
"DJ舞曲",	"http://north.china57.com/index.asp",
"碧聊排行", "http://admin.bliao.com/admin/sighttop.php",
"语音试麦", "http://chat.yinsha.com/voice.htm",
"光驱伴奏", "http://rekangtou.wx-e.com/chat/guangqu.htm",
"影碟伴奏", "http://rekangtou.wx-e.com/chat/vcd.htm",
"用户指南", "http://www.bliao.com/help/help51.htm",
"聊室查询", "http://admin.bliao.com/admin/s_dwhere.php",
"临时扩容", "http://202.96.140.82/party.phtml",
"房间配置", "http://admin.bliao.com/admin/s_doadmintor.php",
"记录下载",	"http://202.96.140.71/cgi-bin/download1.pl",
"配置加管",	"http://admin.bliao.com/admin/s_admintor.php"
);
var a_welcome = new Array
(
	"欢迎",	"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
	"欢迎",	"^_^*《" + room_name + "》*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",
	"欢迎",	"无论您走到天涯海角。《" + room_name + "》永远欢迎您！永远等候您！永远陪伴着您！！！",
	"欢迎",	"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩的开心！聊的开心！唱的开心！！！",
	"欢迎",	"你终于来了呀！欢迎欢迎！！！我在《" + room_name + "》等你,你是我一生的等待和牵挂！朋友！！！"
);
var a_nov = new Array
("无",	"请确认是否已经打开右下角的语音按钮或麦克风按钮。","无音",	"没有声音呀,没有声音呀,听不到你的声音。",	"无",	"你的麦克风没有声音呀,刚刚管理员持续递麦给你,但是系统提示您尚未打开语音或处于双工状态。",	"无音",	"你的麦克风没有声音呀,刚刚管理员持续递麦给你,但始终无法顺利完成递麦的动作,请稍后再向管理员打999试一试。");
var a_mm = new Array
("大大",	"大大大---我觉得【音乐声音】太大了,请再将【音乐的音量】往下调小些。",	"大大",	"大大大---您的【背景音乐声音】太大了,我们听不清楚您讲话或唱歌的声音。",	"大大",	"救命ㄚ---我的音箱快爆掉了,【音乐声音】太大了,麻烦请将音乐的音量调小些。",	"大大",	"大大大---【音乐声音】太大了,有假唱的嫌疑喔!!嘻嘻...☆⌒_⌒．☆° ");
var a_flower = new Array
(
	"醉倒",	"醉倒!★真好听 * ．给我签个名吧！哎..大家不要挤嘛..呦..呦..谁踩俺脚了..哎~~签哪儿呢？..就签俺衣服上吧！要带唇印的哦~~",
	"签名",	"■~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~ ～☆★☆～~哇~～！！～~唱的太棒了~～☆★☆～~我听的都醉了~0~",
	"醉了",	"哗啦啦---下雨拉｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、鲜花｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀",
	"迷人",	"¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤迷死了¤¤¤好棒哦¤¤¤¤¤好棒哦¤¤¤¤好棒哦¤¤¤¤¤啪啪啪¤¤¤¤",
	"歌星",	"艺术家！！专业歌星~~~~ぷ╰哗...☆╮ぷ╰☆╮满天星★☆ぷ(((((啪啪)))))ぷ╰ぷ╰签名！签名！)嘿！哥们~~~~别挤嘛 **我的鞋呢？眼镜？ ",
	"玫瑰",	"玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮鱿鱼花╰☆☆╮ 礼花～～杠上花",
	"歌星",	"☆★．°■ ．☆°*°●★ ☆多美妙的声音啊★*°☆* 太棒了！∴°★★°我怀疑是歌星唱的啊！！* ~",
	"偶像",	"☆☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～签名～ ∵ *☆★∴☆∵偶像～签名～ ∵*☆★∴☆∵",
	"百荷",	"★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷ╰☆╮紫丁香★☆ぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮野百荷★╰☆╮ぷ",
	"真棒",	"唱的真棒~~╰☆☆╮鼓掌（（（PA PA）））玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉╰☆☆╮还有一枝勿忘我",
	"郁金",	":→◥◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★ ↘ *郁金香∴→◥◣★☆★◢◤★↘",
	"啪啪",	"*^_^*《啪》 *^_^*《啪》  *^_^* *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*",
	"醉倒",	"｀、｀、仙、｀、｀、、∮｀、｀、乐｀、｀、∮｀、飘｀、｀、∮｀、｀、飘｀、｀∮、｀、｀",
	"签名",	"。ゅoОゅ.。((((啪)))) .。ゅoОゅ.。ゅ*．°°oОゅoОゅ.。 .。ゅo.啪啪ゅoОゅ.。ゅ.。ゅoОゅ.。ゅ.。ゅ╰Ψ╮",
	"醉了",	"▁▂▃▃▂▁★☆  ▁▂▃▃▂▁★☆▁▂▃▃▂▁★☆ ▁▂▃▃▂▁★☆ ｀",
	"迷人",	"╰Ψ╮（（（（（（海＾:＾鸥专递））））））╰Ψ╮▁▁▁▁╰Ψ╮玫瑰花儿为你开╰Ψ╮▁▁",
	"歌星",	"~*~中华~*~╰╰○╮╮~*~三五~*~╰╰◇╮╮~*~万宝路~*~╰╰○╮╮~*~小熊猫~*~╰╰◇╮╮~*~骆驼~*~╰╰○╮╮~*~七星~*~ ",
	"玫瑰",	"▁▁^ǒ^▁▁^ǒ^▁▁°．∴*★．∴*．°．．°╱∴╭★°°．∴*．°.＾＠＾海＾:＾鸥╯．．╱唱歌好好听哦╭★°°",
	"棒棒",	"☆｀、°海＾:＾鸥爱的美M专递｀、°╰◇╮｀、°∴*☆｀、°╰◇╮｀、°∴*☆｀、°∴*☆｀、°∴*☆｀、°╰◇╮",
	"歌星",	"°．∴° ．∮*．° ．∴°* °天外飞音·。 ∮．°° ∴ * ∮．° *．°．°．∴° ．* ∮．° ．∴ *．° ．∮° ",
	"偶像",	"、｀、｀、｀余音缭绕、｀、｀、、∮｀、｀、｀、｀∮、｀、｀、｀、∮｀、｀、｀、｀∮、｀、｀",
	"呱唧",	"°·°∴来吧·°∴°★°我给你·°∴°给你我的全部·°∴°★°哦·°∴° ∴我的快乐·°∴°★°·°∴°",
	"百荷",	"°*∴*°*∴天女散花°*°*∴°∴°*☆╮°*°*∴°*°*∴°*☆╮°*°*☆╮ *°ぷ",
	"好听",	"°*╱╲°*∴°如果云知道°*°*╲╱°*∴°海鸥为你在飞翔╭★°*°*∴°*°*∴°╱╲°∴°°*╲╱ *°",
	"加油",	"▁▁▁▁▁因为有你▁▁▁▁▁▁菩提树下▁▁▁▁▁心染尘埃▁▁▁▁▁",
	"真棒",	"╭我╮ `╭爱╮ `╭上╮ ╭你╮╭了╮° ．·°∴°．°·∴°☆ ·°∴° ☆．．·．°．☆° ．·°．°╲╱.`. ╲╱.`. ╲╱.`.",
	"郁金",	"｀、花仙子｀、∴☆｀、∴★｀、∴☆｀、 ∴★｀、 ∴☆｀、∴★｀、∴☆｀、∴★｀、 ∴☆｀、∴★｀、∴☆",
	"花掌",	"~Ψ~°｀、红玫瑰｀、°.~Ψ~°｀、代表爱情｀、°.~Ψ~°｀、紫玫瑰｀、°.~Ψ~°｀、代表高贵｀、",
	"啪啪",	"≈=========== 啪------啪- -掌声为你响起．*．°．°★·。．．∴°★·。鲜花===========",
	"水仙",	"╰☆╮▁▁▁▁▁因为有爱▁▁▁▁▁网络世界▁▁▁▁▁望眼欲穿▁▁▁╰☆╮",
	"牡丹",	"°｀、°｀、°╲KiｓS⌒_⺷嘴嘴╱｀、°｀、°｀、°小猪猪▂^ǒ^▂▂^ǒ^▂°你好可爱哟｀、°｀、°",
	"水仙",	"玫瑰花★☆ぷ╰☆╮满天星★☆ぷ╰☆╮紫丁香★☆ぷ╰☆╮ぷぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮",
	"牡丹",	"* *．°牡丹★·。 *菊花∴ * *夜来香∴°牡丹★·。 *菊花∴ * *夜来香∴°★·君子兰* *．°一筐一筐又一筐∴"
);
var a_byebye = new Array
(
	"不舍","真是舍不得你走啊....我会想你的..走好~~~~~有空常来玩，"+ room_link_url +"，别忘了哦~！",
	"走好","真是舍不得，一路走好！我们会想你的~~~~~！有空常来《"+ room_name +"》串串门好吗！！"
);
var a_leave = new Array
(
	"想留",	"其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信我 再不用多久,我要你和我今生一起度过... ",
	"告别",	"长叹一声,凄婉地说道:▅█拜拜●了█▅一曲离歌泪千行,不知何日再逢君.我这就去了,大家多保重▅█拜拜●了█▅··有红包收吗，有的话，可以再多留三秒······",
	"后会",	"青山不改，绿水常流，山高水长，后会有期！不用等到江寒月冷日，雪雨风飘时，有缘的你我一定会在《"+room_name+"》再次相会！"
);
var a_wantmic = new Array
(
	"要麦",	"我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999",
	"唱歌",	"我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999"
);
var a_lleave = new Array
(
	"答谢",	"〖"+document.inputform.USER.value+"〗多谢多谢!!谢谢大家!!!!",

	"谢谢",	"〖"+document.inputform.USER.value+"〗谢谢朋友们的鲜花,掌声和鼓励!!!",
	
	"再谢",	"〖"+document.inputform.USER.value+"〗衷心感谢朋友们的捧场!!!"
);
var a_wenming = new Array
(
	"警告",	"//alert",

	"再警",	"〖"+document.inputform.USER.value+"〗提醒您请文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,否则将被请出聊天室,谢谢合作!!!!"
);
var a_shuaping = new Array
(
	"警告",	"〖"+document.inputform.USER.value+"〗请您不要重复发言三次以上按刷屏处理。谢谢合作！！",

	"再警",	"//jg"
);
var a_qinghua = new Array
(
"温情","【问候祝福】：请您接受我真诚的问候和祝福；愿我的祝福消除您一天工作带来的疲劳；愿开心和快乐伴随着您。",
"温情","【真诚祝福】：愿我的祝福，像风铃给您带去叮叮当当的快乐！如果您梦中笑出声来，那一定是您感受到了我真诚的祝福。",
"温情","【凝望你眼】：轻轻地捧着你的脸，为你把眼泪擦干。深深地凝望你的眼，不需要更多的语言，紧紧地握住你的手，这温暖依旧未改变。",
"温情","【共同走过】：我们同欢乐，我们同忍受，我们怀着同样的期待。我们同风雨，我们共追求，我们珍存同一样的爱。",
"温情","【光彩照人】：你仪态万方，光彩照人，沉鱼落雁，闭月羞花。充满魅力的女人，就是一道令人百赏不厌的风景。",
"温情","【网络有情】：网络茫茫，谁说网络无真情？谁说网络太虚幻？只要你我以心交往，网络就自有真情在，这里也就是我们温馨的家园。",
"温情","【难得知音】：人生难得几知己，千古知音最难觅。百年修得同船过，千年修得眠共枕。有你陪伴，此生足矣。",
"温情","【倾诉衷情】：你是我目光的期待，你是我翅膀的方向，你是我心灵的归途；网络就是这么神奇啊，一日不见，竟如隔三秋。",
"温情","【网络情缘】：一分钟就能让一个人心碎，一小时就能喜欢上一个人，一天就能爱上一个人。但是要用一生的时间才能去忘记。",
"温情","【珍藏所爱】：等待了一万年，只为在网上与你偶遇。这一刹那撞出的光芒，将会照亮你我漫漫一生。",
"温情","【倾诉衷情】：给我一个微笑就够了，如薄酒一杯，像柔风一缕，这就是一篇最动人的宣言啊，仿佛春天，温馨又飘逸。",
"温情","【倾诉衷情】：有一种感觉，只可意会而不可言传；有一种梦，多情之后是无尽的悲哀；有一种追求，是永不能实现却又永无怨无悔的爱恋。",
"温情","【温情祝愿】：如果可以，请不要对我的祝福感到厌烦；如果可能，请时时想起关心你的我；如果愿意，请让我分享你的喜怒哀乐！",
"温情","【倾诉衷情】：怎么会迷上你，我在问自己，居然今天难离去，因为你可爱至极。我总在伤你的心，如果这是梦，我愿长醉不愿醒。 ",
"温情","【笑看人生】：人生一出戏，恩恩怨怨又何必太在意；名和利生不带来死不带去。今生无缘来生再聚；且挥挥袖，往前走，阳光总在风雨后。",
"温情","【倾诉衷情】：你的眉目之间，锁着我的爱怜。你的一切移动，左右我的视线，你是我的诗篇啊，读你千遍也不厌倦。",
"温情","【倾诉衷情】：弹起从前的旋律，一如你昨日的叮咛；难忘你羞怯的神情，一如我们拥抱着甜蜜；真的好想你。",
"温情","【忘不了你】：就像一阵风，吹落恩恩和怨怨。也许你和我，没有谁对谁错。忘不了你的泪，忘不了你的好，忘不了醉人的缠绵。",
"温情","【伴你左右】：温柔的星空，应该让你感动；我在你身后，为你布置一片天空；不准你难过，希望你开心；你的烦恼和寂寞，全部都交给我；牵你手跟着我走，风再大又怎样，有我陪伴你左右。",
"温情","【我珍惜你】：我要抱着你，直到感觉你的皱纹，有了岁月的痕迹。直到失去力气，全世界我也可以放弃，但不能放弃你；你值得我去爱，去珍惜。",
"温情","【比我幸福】：不习惯言不由衷，此刻与你相拥，也算有始有终。祝福有许多种，心痛却尽在不言中。请你一定要比我幸福。"
);
var a_thank = new Array
(
	"搅拌", "【主持，可以搅伴吗??999】",
	"搅拌", "【唱得好哇！】【我也想唱这首歌了999】",
	"搅拌", "【搅拌呀】【搅拌呀】【搅拌呀999】",
	"搅拌", "【我要麦，搅拌呀】【我要麦，搅拌呀999】",
	"搅拌", "【我要麦，我要飚这首歌】【我要麦，我要飚这首歌999】"
);
var a_heart = new Array
(
	"听见",	"|||||||||||||||||||||||||||||||||||||||||||||",
	"听见",	"【听见了】【听见了】【听见了】【听见了】【听见了】【听见了】【听见了】",
	"听见",	"听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲"
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
	"本室网址",	"聊天室网址http://" + room_number + ".chat.yinsha.com","color:#009900",
	"请开语音",	"您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦!!","",
	"麦无声音",	"您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗?","",
	"语音相关",	"语音相关问题及教学请参阅http://www.teamiss.org/ha4/v-help.htm ","color:#6600ff",
    "快踢卡名",      "fnc:k_km()","color:#FF0000;background-color:#FFFF99",
	"进入管理",	"fnc:guan()","color:#0000FF;background-color:#FFFF99",
	"退出管理",	"fnc:xiaguan()","color:#FF0000;background-color:#FFFF99",
	"开始排序",	"fnc:disablesingermanage(false)","color:#0000FF;background-color:#FFFF99",
	"关闭排序",	"fnc:disablesingermanage(true)","color:#FF0000;background-color:#FFFF99",
	"禁用踢人",	"fnc:disable_KICK(true)","color:#0000FF;background-color:#FFFF99",
	"启用踢人",	"fnc:disable_KICK(false)","color:#FF0000;background-color:#FFFF99",
	"请您准备",	"您好，欢迎来到“《" + room_name + "》”，下一个就是您的了,请准备!!!!谢谢您的合作,请您点击我的名字报上节目内容,谢谢!!","",
	"文明聊天",	"提醒**请文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,否则将被请出聊天室,谢谢合作!!!!! ","",
	"禁言警告",	"请你不要说一些不雅文字、其它房间的网址、重复三次以上的刷屏者、管理间相互老婆老公乱叫，再警告时就要禁你言了！）","",
	"请你换名",	"我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作。）","",
	"请勿打字",	"请你现在不要对视频艺员打字，并且与其他人说话请用悄悄！表演期间将会禁言违反规定者。谢谢合作","",
	"禁止刷屏",	"//jg","",
	"希望参与",	"欢迎您来到“《" + room_name + "》”，希望你多多参与的娱乐活动，给管理员打999，管理员会把麦交到您手上的，祝您在这里玩的开心：）","",
	"上管拒双",	"您好!欢迎你的到来,对不起,我现在为聊友主持,不能接受您的双工邀请.......祝您在这里玩的开心尽兴!!谢谢☆⌒_⌒．☆° ．","",
	"请您再唱",	"您好!谢谢您为大家献上的歌曲,是非常的动听,如果有时间再为大家献上一曲吧,我们感谢您..同时也欢迎您常来!! ","",
	"您麦不好",	"您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢.","",
	"要麦守则",	"大家好，欢迎来到“《" + room_name + "》”，要麦的朋友请给在线管理员打9999报名!切记三遍以内,否则按刷屏处理!我们会为你排好顺序!","",
	"室主下载",	"fnc:hwin()","color:#ff0099;background-color:#663399",
	"后台管理",	"fnc:mani()","color:#ff0099;background-color:#663399"
);

//——图片——
var a_picture = new Array
(
"赞美类","",
"音乐太大了_请移动最上面的小黄豆豆滑杆~~大约往左移至ky的位置_约1/5位置_","n1/vmls-2.jpg",
"一级棒~~","n1/e003.gif",
"为您鼓掌","n1/e013.gif",
"送您鲜花","n1/e016.jpg",

"欢迎类","",
"欢迎你~~","n1/e012.gif",
"握    手","n1/ws.gif",
"您 请 坐","n1/20_2396_103.gif",
"请喝咖啡","n1/rqmmx4.gif",
"请 喝 茶","n1/j003.gif",
"谢谢啦~~","n1/0004.gif",
"女谢谢~~","n1/0032.gif",
"男谢谢~~","n1/0014.gif",
"祝福您~~","n1/BANNER.gif",

"献花类","",
"鼓   掌~","n1/gz.gif",
"唱得好~~","n1/d04.gif",
"唱得好听","n1/rqmmx1.gif",
"好听S了~","n1/e020.gif",
"歌星耶~~","n1/e021.gif",
"送你鲜花","n1/0045.gif",
"加油啊~~","n1/jiayou.gif",
"天天快乐","n1/mgy010.jgp",
"天天开心","n1/mgy003.jpg",
"万事如意","n1/mgy004.jpg",
"心想事成","n1/mgy005.jpg",
"幸福美满","n1/mgy007.jpg",
"真挚友谊","n1/mgy009.jpg",
"跳啊跳啊","n1/t10.gif",
"跳起来~~","n1/tql.gif",
"来个DJ~~","n1/0012.gif",
"扭呀扭~~","n1/z6.gif",
"为你伴舞","n1/z15.gif",

"爱情类","",
"来个媚眼","n1/meiyan.gif",
"我想泡你","n1/e011.gif",
"我爱你~~","n1/e002.gif",
"悄悄亲你","n1/a43.gif",
"吻你~~~~","n1/27.jpg",
"触电了~~","n1/bbn.gif",
"吻吻你~~","n1/d001.gif",
"嘴S你~~~","n1/xph-1.gif",
"狠狠嘴你","n1/e014.gif",
"I LOVE","n1/e015.gif",
"抱你一生","n1/ysbn.jpg",
"一生有你","n1/e005.gif",
"好开心哟","n1/0008.gif",
"开心~~~~","n1/y02.gif",
"哈哈哈哈","n1/y03.gif",
"笑死我啦","n1/e006.jpg",
"给你金子","n1/potg.gif",
"一起吃~~","n1/wch.gif",

"心情类","",
"我来也~~","n1/BJXX.gif",
"不回话??","n1/dn.gif",
"啥意思？","n1/e008.gif",
"吃   惊!","n1/gn.gif",
"我冤枉啊","n1/0038.gif",
"听话哟~~","n1/e017.gif",
"不 要 呀","n1/0002.gif",
"别欺负我","n1/e007.gif",
"你喝多了","n1/e009.gif",
"小样~~~~","n1/xiaoya.gif",
"瞧你小样","n1/e001.gif",
"小脏样~~","n1/xy.gif",
"我晕~~~~","n1/0017.gif",
"我倒~~~~","n1/0005.gif",
"狂晕~~~~","n1/rqmmx5.gif",
"敲你~~~~","n1/qiao.gif",
"我哭~~~~","n1/0029.gif",
"我大哭~~","n1/wdk.gif",
"宝贝别哭","n1/0009.gif",
"生~~~~气","n1/0023.gif",
"气死我了","n1/0007.gif",

"动作类","",
"封你的嘴","n1/0010.gif",
"吊 死 你","n1/0011.gif",
"我 踩 你","n1/0003.gif",
"打你PP~~","n1/dapp.gif",
"狂砍你~~","n1/jc02.gif",
"掌你嘴~~","n1/jc08.gif",
"炸你~~~~","n1/1035.gif",
"咬你~~~~","n1/1301.gif",
"施肥~~~~","n1/1311.gif",
"怕你~~~~","n1/119.gif",
"我跑~~~~","n1/0031.gif",
"对不起啦","n1/0039.gif",

"其他类","",
"哪里藏？","n1/e004.gif",
"瞌    睡","n1/keshui.gif",
"站住~~~~","n1/gr3.gif",
"再见了~~","n1/0006.gif",
"拜拜~~~~","n1/zaijian.gif",
"我会想你","n1/e018.gif",
"等你回来","n1/e019.gif"
);
var a_bkcolor = new Array
(	"FFFFFF",	"fdd242",	"F4FFFF",	"F7ECF0",	"f8fead",	"D8DEF8",	"FFFF99",	"a0e4a0",	"80dbd7",	"CCCCFF",	"eaadfe",	"ffacd8",	"9bcfff",	"75bdff",	"F1EEFF",	"9d9dff",	"CCFFFF",	"ffaaaa",	"ccffa6",	"F5FFF4",	"b1fee9",	"a6ffcc");
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
	write_button("","收藏",6, 0,35,20,"","将本室加入收藏","addbookmark(0)");
	write_button("","直达",41, 0,35,20,"","将使用当前的名字直接进入本室的快捷方式加入收藏","addbookmark(1)");
	 strSPANdivs = '<span class="p9">分屏';
        strdivs=document.inputform.divs.outerHTML;
        document.inputform.divs.outerHTML="";
        document.all.tags("span")[5].innerText="" 
        document.all.tags("span")[4].outerHTML="";
        document.inputform.as.insertAdjacentHTML("AfterEnd",strdivs);
        document.inputform.as.insertAdjacentHTML("AfterEnd",strSPANdivs);
	if (is_online_manager())
	{var albl=a_link_button.length/2-2;}else {var albl=a_link_button.length/2;}
	for (var i = 0 ; i < albl; i ++)
	write_newwindow_button(a_link_button[i*2],76 + 66 * i,0,66,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","记忆",6,39,30,20,"","记忆您想保存的一句话","dealstorewordclick()");
	write_button("","送花",374,60,35,20,"","发送鲜花掌声","autosend(a_flower)");
	write_button("","欢迎",409,60,35,20,"","快速欢迎","autosend(a_welcome)");
	write_button("","重复",444,60,35,20,"","重复上次的发言","repeat_msg()");
	write_button("","插图",269,80,35,20,"","发送图片或者音乐","insert_picture()");
	write_button("","送行",304,80,35,20,"","快速送行","autosend(a_byebye)");
	write_button("","要麦",339,80,35,20,"","快速要麦","autosend(a_wantmic)");
	write_button("","听见",374,80,35,20,"","快速听见","autosend(a_heart)");

	write_button("","情话",304,60,35,20,"","快速发送情话","autosend(a_qinghua)");
	write_button("","网址",444,80,35,20,"","本室网址\n"+room_link_url,"send_msg('聊天室网址："+room_link_url+"')");
	write_bkcolor_select("bkcolor","背景色",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","图片快递",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","动作表情",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","本室链接",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_changeroom_form(269,100,126);//	换房间
	write_changeuser_form(397,100,208);//	换名
	if (is_online_manager())
	{
	    	    write_newwindow_button(a_link_button[10],4,18,32,20,"",a_link_button[10] + "\n" + a_link_button[11],a_link_button[11],"","");
		if (auto_flower == 1) 
		write_flower_number(460,0,35,20,"自动发送一定数量的鲜花掌声");
		write_button("send_f","鲜花",425,0,35,20,"","快速发送鲜花掌声","a_f()");
        write_button("","大",503,0,17,20,"","乐声音声音太大了","autosend(a_mm)");
		write_button("","下管",6,18,35,20,"","快速下管","xiaguan()");
			document.write("<scri"+"pt src=\"http://www.teamiss.org/ha4/pobot-326470.js\"></scri"+"pt>");
    	write_singer_form(479,20,select_color);//	麦序
    	write_button("Az_y","迎宾",440,20,35,20,"","点开这里，系统会自动欢迎刚进来的朋友","Az_yy()");
        write_button("reauto","自复",6, 0,35,20,"","自动发言","reauto()");
        write_button("","收麦",520,0,35,20,"#0000FF","把麦克风递给自己","document.screenForm.GETMIC.click()");
        write_button("","无",555,0,17,20,"","麦无声音","autosend(a_nov)");
	    write_button("","递麦",570,0,35,20,"","把麦克风递给对象","document.screenForm.MIC.click()");
		write_button("switchkick","准踢",339,60,35,20,"#ff0000","启用踢人功能","switch_kick()");
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
	    	    write_newwindow_button(a_link_button[10],4,18,32,20,"",a_link_button[10] + "\n" + a_link_button[11],a_link_button[11],"","");
		if (auto_flower == 1) 
		write_flower_number(570,0,35,20,"自动发送一定数量的鲜花掌声");
		write_button("send_f","鲜花",535,0,35,20,"","快速发送鲜花掌声","a_f()");
		write_button("","上管",6,18,35,20,"","快速上管","guan()");
		write_button("","邀请",479,20,35,20,"","邀请唱歌","send_msg('☆★唉呀★☆这位朋友好面熟啊~~~~~~~~~☆★出来为朋友们唱首歌好不好~☆★我先送花了~~☆★')");		
        write_button("","搅拌",510,20,35,20,"","搅拌歌曲","autosend(a_thank)");
    	write_button("","答谢",541,20,35,20,"","答谢听众","send_msg('☆★谢谢★☆谢谢☆★谢谢啦☆★谢谢你给我鼓励~☆★你要不要也来首歌啊☆★')");
    	write_button("","请收",572,20,35,20,"","请您收麦","send_msg('☆★谢谢主持给我递麦★☆☆★您先把麦收回去吧☆★谢谢啦~~~☆7777★')");		
		write_button("reauto","自复",409,80,35,20,"","自动回复","reauto()");
		write_button("","告辞",339,60,35,20,"","快速告辞","autosend(a_leave)");
		write_select("linkroom","房间走廊",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}
function dealstorewordclick() 
{ if(document.inputform.msg.value!="") storedaword=document.inputform.msg.value; 
if(document.inputform.msg.value=="") document.inputform.msg.value=storedaword; } 
function hwin()//聊天记录
{open_new_url("http://"+parent.window.location.hostname+"/cgi-bin/download1.pl","","");}
function mani()//后台管理
{open_new_url(admin_place+"admin.asp","","");}
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
		}}
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
			HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 3]+" style=\"cursor:hand\" >["+lists[1]+"<B></B>]</font></a>");
		else
			HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">"+lists[1]+"</font></a>");
		if (is_hidden_user(lists[1]) < 20)
			HTMLstr += "<font color=#FF0099>隐</font>";
		if(lists[2]==1)
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_normal_color+">(</font>");
		if(lists[2]==2)
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_v2v_color+">(</font>");
		if(lists[3]==1)
			HTMLstr += ("<IMG align=absMiddle src=http://www.teamiss.org/A_U_0917/bcf/v12_3.gif>");
		HTMLstr += "</div>";	}
	parent.r.listhtml.innerHTML = HTMLstr;
	parent.r.usercount.innerText = user_array.length;	}
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
	parent.write=writelist;
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
		document.write("BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#F9D9DE;scrollbar-face-Color:#F9D9DE;scrollbar-3dlight-Color:#F9D9DE;scrollbar-darkshadow-color:#F9D9DE;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#fdf4d5;SCROLLBAR-TRACK-COLOR: #F9D9DE;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
	}
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>');
        document.write('<STYLE>BODY{ cursor:url(http://js.205449.com/2.ani);}</style>')
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
	HTMLstr +="<STYLE>BODY{ cursor:url(http://www.teamiss.org/A_U_0917/326470/3.ani);}</style>";
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
		HTMLstr += ("BODY{scrollbar-arrow-Color:#008000;scrollbar-base-Color:#F9D9DE;scrollbar-face-Color:#F9D9DE;scrollbar-3dlight-Color:#F9D9DE;scrollbar-darkshadow-color:#F9D9DE;scrollbar-highlight-Color:#fefae9;scrollbar-shadow-Color:#fdf4d5;SCROLLBAR-TRACK-COLOR: #F9D9DE;background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr += "<br><a title='当前聊天室在线人数'><font color=000000> 当前本室有 </font><font color=red><B id='usercount'>0</B></font><font color=000000> 位朋友</font></a><br>";
	HTMLstr += "<a title='在线朋友名单'><font color=000000> <b>在线列表:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">[所有人]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr>";
	HTMLstr += ("<br><br><a title=\"自己现在使用的名字\"><font color=#FF0000 >[" + a_user + "]</font></a>");
	HTMLstr += "<br><br><a target=_blank href='http://www.teamiss.org' title='teamiss web\nhttp://www.teamiss.org'>技术支持<br>*HA-6<br>QQ46484540</a></body></html>";
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
		alert('您好['+a_user+']！\n你所选择的配置只允许使用注册名进入！\n请用您的注册名进入本房间，或者是按【取消】键进入！');
        top.location.href = 'http://www.teamiss.org/ha4/mreg.htm';
	}
			if (a_user.length<2){
           login_succeed = false;
          controlForm.LEAVEIT.onclick();
           alert('您好['+a_user+']！\n万分抱歉，别这么懒，名字太短了');
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
	document.inputform.color.options[3].selected=true;
	document.inputform.elements[11].value="#FFFFFF";
}
flowercolor=2;
function autosend(array)
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
	msg += "【"+a_user+"送】";
	send_msg(msg);}

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
function write_flower_number(left,top,width,height,title)
{
document.write("<DIV align=left style='left:"+left+";top:"+top+";width:"+width+";height:"+height+";position:absolute;'>");
document.write("<input type='text' name='flower_num' style='left:"+left+";top:"+top+";width:"+width+";height:"+height+";color:"+input_msg_color+";background-color:"+input_msg_bkcolor+"'");
document.write(" value='12' maxlength='2' title='"+title+"'></DIV>");
}
function send_flower()
{
if (auto_flower == 0) u=document.inputform.WHOTO.value;
var cur_user=document.inputform.WHOTO.value;
var cur_input=inputform.msg.value;
	c202=document.inputform.color.value
	flowercolor=flowercolor+1
	if (flowercolor>21){flowercolor=2}
	document.inputform.color.value=document.inputform.color.options[flowercolor].value
lastchoice ++;
if (lastchoice >= (a_flower.length / 2))
  lastchoice = 0;
var msg = a_flower[lastchoice * 2 + 1];
msg += "【"+a_user+" 专用】";
parent.cs(u);
send_msg(msg);
parent.cs(cur_user);
inputform.msg.value=cur_input;
}
function auto_send_flower()
{
if (auto_flower == 1) 
{
if (flower_num.value>0)
{
send_flower();
flower_num.value-=1;
}
else {clearInterval(timeoutID);flower_num.value=12;send_f.value="鲜花";}
}
else if (auto_flower == 0) send_flower();
}
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
timeoutID=setInterval("auto_send_flower()",auto_flower_time*1700);
else {send_f.value="鲜花";flower_num.value=30;}
}
else if (send_f.value=="停送")
{
send_f.value="鲜花";
flower_state=false;
clearInterval(timeoutID);
flower_num.value=12;
}
}
else send_flower();
}
function end_a_f(){
send_f.value="鲜花";
flower_state=false;
clearInterval(timeoutID);
flower_num.value=12;
}
function send_msg(msg)//发言
{
	if(msg != "")
	{
		inputform.msg.value=msg;
		if (checksay())
			document.inputform.submit();
	}}
var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "所有人")&&(document.inputform.WHOTO.value!="朋友们"))
 {   CFlowerToWho=document.inputform.WHOTO.value;
  if (IntFlower.value=="自动献花") {IntFlower.value="停止献花";
  CFlowerToWho=document.inputform.WHOTO.value;
  IFlowerInteval=setInterval("AutoFlowerHelper()",9000); 
 }else 
  if (IntFlower.value=="停止献花") {IntFlower.value="自动献花";
  clearInterval (IFlowerInteval);CFlowerToWho="" }
  } else 
   alert("系统:送花图片不可以向所有人!!") }
function AutoFlowerHelper() {
 var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
 document.inputform.WHOTO.value=CFlowerToWho;autosend(a_flower);
 document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmpMsg;}
function play_pic(selection)//插入图片
{	if(document.inputform.AI.checked)
	{		if(selection.value!="")
		{			inputform.IMGURL.value = paste_path(selection.value,"");
			if (inputform.msg.value == "")
				inputform.msg.value = selection.options[selection.selectedIndex].text;
			checksay();
			inputform.submit();
			selection.options[0].selected=true;		}	}
	else
	{		alert('请先选择图音!');
		selection.options[0].selected=true;	}}
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
	document.write('<option selected style=color:'+color+' VALUE="" >〖'+room_name+'麦序〗</option>');
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><style type=text/css>";
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><input type=button name=closev value=打开语音 onclick=\"parent.d.writev();\">";
	HTMLstr += "<table width='96' border='1' cellspacing='0' cellpadding='0' bgcolor='#ff81af' bordercolordark='#ff5fa1' bordercolorlight='#ffffff' height='15'><tr><td width='140' align='center'><p align='center'><span style='font-size: 8.7pt;COLOR:ffffff'>测试语音调试麦克请打开本室链接中的测试语音</SPAN></p></td></tr></table></body></html>";
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
		parent.bodyframe.rows='70%,*';

	if (auto_open_div == 1)
	{
		document.inputform.divs.checked=true;
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='70%,*';
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
  var tmpmsg=document.inputform.msg.value;
  var badword = new Array("磨致","为信","三八","装比","警 察","监狱","书记","Zhen","kaoqing","狗哥","狗屁","W5卫","薪参","迫 害","残暴","要死","酷刑","人渣","浪叫","倒枪","卖 逼","逼◎","姑棒","双波","好司","抽射","鸟事","卖屁","批毛","卖逼","狗掉","劳瑞","封网","狗哥","手所","破孩","明報","死上","绝食","舒心","界浏","号外","做鸡","薪唐","很贱","垃圾","委书","壹场","你身边的事","壹直","狱警","灭绝","政协","员高","妈批","胡锦","军委","江折","访向","留所","你没死","去死","自杀","修 练","baoleng","砝","教 所","heixie","关押","功学","死人","台独","射精","傻逼","鸡巴","睾丸","妓女","包皮","奶子","尻","做爱","鸡八","砝.轮.工.","砝","教所","子监","狱中","绝 食","押在","派处","公 安局","乡政府","安局");
  for (var i=0;i<badword.length;i++){
//      if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){
      if (tmpmsg.indexOf(badword[i])!=-1){
      inputform.ws.checked=false;
      inputform.ws.checked=false;
      document.inputform.msg.value='*小唯的家的隐身管理真厉害.我只说了一句脏话，隐身管理就出现在〖小唯的家〗.把我扔出了〖小唯的家〗聊天室！！！';

document.inputform.color.value="0000ff";
                login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
alert('您好['+a_user+']！\n万分抱歉.您现在所发的话中含有不雅的文字！您已被请出〖小唯的家〗聊天室.如您再次进入.请您注意不要说脏话.愿您在此开心愉快！');	

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
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if (full_screen_bkimage == 0)
	{
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");
		if (auto_hide_scrollbar == 1)
			this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
//this.u1.document.write("<p class=\"p9\" align=\"left\">");
//parent.u1.document.write('<font color=#EE0D5C>^_^小唯的家^_^：欢迎</font><font color=6040FF size=3>'+a_user+'</font><font color=#EE0D5C>来到小唯的家，愿您玩得开心~</font></font><br>');
//parent.u1.document.write('<font color=#EE0D5C>【本室规则】：<font color=#009933>使用摄像头时禁止吸烟及衣衫不整,否则管理员有权,随时予以断麦或请出聊天室。</font></font><br>');
//parent.u1.document.write('<font color=#EE0D5C>【本週活动】：<font color=#009933>每晚18:00~20:00及21:00~24:00为语音及系统问题讨论。</font></font><br>');
//parent.u1.document.write('<font color=#EE0D5C>【技术通告】：<font color=#0182FA>★语音或摄像头有问题者请先参阅<a target="_blank" href="http://www.teamiss.org/ha4/v-help.htm "> http://www.teamiss.org/ha4/v-help.htm </a> 依步骤执行,铁定行。</font></font><br>');
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	}
	else
	{
		this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
			this.u1.document.write("</style><STYLE>BODY{scrollbar-face-color:#F7CED2;scrollbar-highlight-color:#FFF0FF;scrollbar-shadow-color:#7F61FF;scrollbar-3dlight-color:#FFF0FF;scrollbar-arrow-color:#7F61FF;scrollbar-track-color:#fafdfd;scrollbar-darkshadow-color:#fafdfd;scrollbar-base-color:#FFF0FF;}</style></head><body><p class=\"p9\" align=\"left\">");
	}}
///////////////////////////分屏公告//////////////////////
function fp(){
parent.u1.document.write('<body bgproperties=fixed>');
parent.u1.document.body.style.bgcolor="#FFEDEC";
}
function fpbg(){
setTimeout("fp()",1500);}
fpbg();
function auto_log_func()
{setTimeout("login_form.submit();",20000);}
function GetCookie (name) {  
var arg = name + "="
var alen = arg.length 
var clen = document.cookie.length
var i = 0
while (i < clen) {    
var j = i + alen
if (document.cookie.substring(i, j) == arg)
return getCookieVal (j)
i = document.cookie.indexOf(" ", i) + 1
if (i == 0) break}return null}
function SetCookie (name, value) {  
var argv = SetCookie.arguments;var argc = SetCookie.arguments.length;var expires = (argc > 2) ? argv[2] : null
document.cookie = name+"="+escape (value)+("; expires=" + expires.toGMTString())}
function getCookieVal(offset) {
var endstr = document.cookie.indexOf (";", offset)
if (endstr == -1)endstr = document.cookie.length
return unescape(document.cookie.substring(offset, endstr))}
var expdate = new Date()
expdate.setMonth(expdate.getMonth()+6)
var ranID = GetCookie('ranID');
if ((ranID==null)||(ranID=="")) ranID=Math.round(5000000*(Math.abs(Math.random()+Math.sin(expdate.getTime()))));
SetCookie("ranID", ranID, expdate, "/", null, false)
function enable_auto_log(action)
{if (action != "")
{var HTMLstr = ('<form METHOD="POST" target="j" ACTION="'+action+'" NAME="login_form">');
HTMLstr += ('<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+room_number+'">');
HTMLstr += ('<INPUT NAME="ranID" TYPE="HIDDEN" VALUE="'+ranID+'">');
HTMLstr += ('<INPUT NAME="ucount" TYPE="HIDDEN" VALUE="'+parent.count+'">');		
HTMLstr += ('<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+a_user+'">');
HTMLstr += ('<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(is_online_manager()?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">');
HTMLstr += '<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
document.write(HTMLstr);setTimeout("login_form.submit()",2000);
autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);}}
if (enable_admin==1)enable_auto_log(admin_place+"login.asp")
///////////////自动回复开始////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="我在论坛,有事去论坛找我[自动发言]";
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
     document.all.reauto.value="回来";
     }else{
     document.all.reauto.value="自复";
     reautoyn=0;
     }
           function parent.u1.document.writeln(){
                 var msg=arguments[0];
                 parent.u1.document.write(msg+"\n");
                 if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+document.inputform.USER.value+"]")+1&&reautoyn==1){
                       user_b=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
                       if(!document.inputform.WHOTO.value==user_b||reautoword==reautowordc+"　"){
                             reautoword=reautowordc;
                       }else{
                             reautoword+=" ";
                       }
                       parent.cs(user_b);
                       document.inputform.msg.value=reautoword;
                       checksay();
                       document.inputform.submit();
                 }}}
///////////////自动回复结束//////////////////////////////////
init_system();
add_new_element();
reset_elements_style();
//-->
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
           if (y_exchange[j].substring(0,y_exchange[j].length-38)==y_exchange1[i].substring(0,y_exchange1[i].length-38)) 
              {
              y_exchange1[i]=""
              y_exchange[j]=""
              }}}
    exchange(y_exchange,y_exchange2)
    new_men_num=0
    newmen(new_men,y_exchange1)
    if (new_men_num>0)
       { WELCOME_send(new_men)}
   }
else{
    WELCOME_send(new_men)
    }}
function newmen(c1,c2){
n1=0
for (i=0;i<c2.length;i++)
    {
    if (c2[i])
       {
       c1[n1]=c2[i]
       n1=n1+1
       }}
new_men_num=n1
new_men_num1=n1
}
function WELCOME_send(c1){
if (c1[new_men_num1-new_men_num])
   {
   cs_name=c1[new_men_num1-new_men_num].substring(0,c1[new_men_num1-new_men_num].length-39)
   cs_ys=inputform.WHOTO.value
   parent.cs(cs_name)
   document.inputform.msg.value="欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩的开心！玩的愉快！这里就是您的家！！！"
   checksay()
   document.inputform.submit()
   c1[new_men_num1-new_men_num]=""
   new_men_num=new_men_num-1
   parent.cs(cs_ys)
   }}
function Az_yys(){
if (Az_y.value=="关闭"){
WELCOME_y()
setTimeout("Az_yys()",65000)
 }}
function Az_yy(){
if (Az_y.value=="迎宾"){
Az_y.value="关闭"
Az_yys()
} else if(Az_y.value=="关闭"){
Az_y.value="迎宾"
}}
var zn_default=document.inputform.ws.checked;
Array.prototype.push=function(){
    var len=arguments.length,i=0;
    if(len>0)while(i<len)this[this.length]=arguments[i++];
    return this.length;
    }
var m_ws_list = new Array();
function parent.cs(name)
{
     this.d.add(name);
     this.d.document.inputform.WHOTO.value=name;
     this.d.document.inputform.msg.focus();
     this.d.zn_ws_s()
     return;
}
function write_ws_elements()
{
document.inputform.WHOTO.attachEvent("onchange",function(){zn_ws_s();});
document.inputform.ws.attachEvent("onclick",function(){zn_ws_c();});
}
function zn_ws_c()
{
     var index;
     var j=0;
     for (index = 0;index < m_ws_list.length;index+=2)
     {
           if (document.inputform.WHOTO.value == m_ws_list[index])
           {
                 if (document.inputform.ws.checked)
                       m_ws_list[index + 1]="1";
                 else
                       m_ws_list[index + 1]="0";
                 j=1;
           }}
if (j==0)
     if (document.inputform.ws.checked)
           m_ws_list.push(document.inputform.WHOTO.value,"1");
     else
           m_ws_list.push(document.inputform.WHOTO.value,"0");
}
function zn_ws_s()
{
     var index;
     var m_state=3;
     for (index = 0;index < m_ws_list.length;index+=2)
           if (document.inputform.WHOTO.value == m_ws_list[index])
                 m_state=m_ws_list[index + 1];
if (m_state==1)
  document.inputform.ws.checked=true;
else if (m_state==0)
  document.inputform.ws.checked=false;
else
  document.inputform.ws.checked=zn_default;
}
write_ws_elements();

var admins=new Array("*HA-6","*心如云","*!雪千寻~","00")
function admin(AName){
     for(var mj=0;mj<admins.length;mj++){
          if(AName==admins[mj]){
          return true
          }}
    return false
}
function kickcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("谁踢我屁屁！小心接吻时断气……") 
           return false
     } else return true
}
screenForm.KICK.onclick=new Function("return kickcheck();");
function admin(AName){
     for(var mj=0;mj<admins.length;mj++){
          if(AName==admins[mj]){
          return true
          }}
    return false
}
function kickipcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("谁踢我IP！啪啪两巴掌忽悠死你……") 
           return false
     } else return true
}
screenForm.KICKIP.onclick=new Function("return kickipcheck();");
function DUMBcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("你居然不让我打字……我就要打...哼!!") 
           return false
     } else return true
}
screenForm.DUMB.onclick=new Function("return DUMBcheck();");
function NOMICcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("5555~~~~~~~~你居然不让我说话……我就要说话!!!!!") 
           return false
     } else return true
}
screenForm.NOMIC.onclick=new Function("return NOMICcheck();");



