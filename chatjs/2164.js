<!--
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;

var config_place = "http://asp5.6to23.com/gyyj2001/my/";

var room_owner="*┇≮　天　≯┇*┇≮香　帅≯┇";			//	室主名称
var room_name="暮雨微寒";			//	房间名称
var room_adminname_head="*暮雨微寒";			//	本室管理名
var room_number="840079";			//	房间号
var room_link_url = "http://763326.bliao.com";	//	房间的地址
var black_roomname="";			//	双工房间名称，如果允许房间内双工，请将此名称设为空
var black_roomnumb="";			//	双工房间号码

//	聊友列表区顶部HTML代码
var userlist_top_html = "<table border=0 width=120px cellspacing=0><tr><td align=middle><img src=http://asp5.6to23.com/gyyj2001/my/my.gif></td></tr></table>";
var userlist_bottom_html = "<img src=http://asp5.6to23.com/gyyj2001/yy/57.gif border=0></td></br><br><tr><td colspan=3 align=center><table width='96' border='1' cellspacing='0' cellpadding='0' bordercolordark='#000000' bordercolorlight='#880099' height='15'><tr><td  colspan=3 width='103' align='center'><span style='font-size: 8.7pt;COLOR=#880099'><marquee direction=up height=70 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=4 width=133 crolldelay=80><center>本室室主：<BR>*┇≮　天　≯┇<BR>*┇≮香　帅≯┇<BR>欢迎大家光临<BR>祝暮雨微寒所有朋友<BR>永远开心快乐！<BR>健康幸福常相伴！</marquee></font></SPAN></td></tr></table></td></tr><a href=http://763326.bliao.com target=_blank>";

var userlist_bkcolor = "#E8F4E0";	//	聊友列表区的背景色
var userlist_bkimage = "http://asp5.6to23.com/gyyj2001/my/zx.jpg";	//	聊友列表区的背景图，设置为空串则使用输入区的图片
var voice_normal_color = "##C078FF";	//	正常打开语音时的图标颜色
var voice_v2v_color = "#949494";	//	双工语音时的图标颜色
var voice_vr_color = "#00D000";		//	有视频时的图标颜色

var div_screen_bkcolor = "";		//	分屏背景色
var div_screen_bkimage = "http://asp5.6to23.com/gyyj2001/my/fb1.jpg";		//	分屏背景图片	

var voice_bkcolor = "#FBE0E7";		//	语音区的背景色
var voice_bkimage = "";				//	语音区的背景图，空串则使用聊友区图片

var input_bkcolor = "FBE0E7";		//	输入区背景色
var input_bkimage = "http://asp5.6to23.com/gyyj2001/my/tp1.jpg";		//	输入区背景图片
var input_msg_color	= "#0000FF";	//	输入区文字输入框文字色
var input_msg_bkcolor = "#FFCC99";	//	输入区文字输入框背景色

var body_text_color	= "#880099";	//	输入区文字色
var select_color = "#9C54E3";		//	列表框文字色
var select_text_color = "#880099";	//	列表框内文字色
var button_text_color = "#9C54E3";	//	输入区按钮文字色
var button_bk_image	= 1;			//	按钮使用背景图片，1——使用，0——不使用
var button_bk_color = "";	//	输入区按钮不使用图片时背景色

var full_screen_bkimage	= 1;		//	是否使用整体背景图片0——不使用，1——使用

//	按钮背景图片  宽度,文件名
var a_btn_pic = new Array
(
	17,		"http://asp5.6to23.com/gyyj2001/my/u18.gif",
	18,		"http://asp5.6to23.com/gyyj2001/my/u18.gif",
	19,		"http://asp5.6to23.com/gyyj2001/my/u18.gif",
	35,		"http://asp5.6to23.com/gyyj2001/my/u35.gif",
	46,		"http://asp5.6to23.com/gyyj2001/my/u46.gif",
	70,		"http://asp5.6to23.com/gyyj2001/my/u70.gif"
);

var url_popup_window = "";			//	进入聊天室时弹出的窗口，如果为空则不弹出
var	only_registr_user = 0;			//	只允许注册用户进入,0——不限制；1——只允许注册用户进入
var	only_chinese_name = 0;			//	只允许汉字名用户进入,0——不限制；1——只允许汉字名用户进入
var default_admin_pass = "111";		//	默认的管理员上管口令


var auto_open_ai = 1;				//	自动打开图音,0——不打开；1——自动打开
var auto_open_mic = 1;				//	自动打开语音,0——不打开；1——自动打开
var auto_open_div = 1;				//	自动分屏,0——不分屏；1——自动分屏
var multi_singer_list = 0;			//	是否允许重复排麦，0——不允许；1——允许

var msg_login		=	"是我〖"+a_user+"〗来了！！【" + room_name + "】是我真正的家~~~";
var msg_admin		=	"大家好，〖"+a_user+"〗上管了,由我来为大家服务:)";
var msg_quitadmin	=	"〖"+a_user+"〗先下管了，谢谢大家对我的支持！！";
var msg_leave		=	"各位：〖"+a_user+"〗先行一步了,下次再和大家聊！";
var msg_auto_spack	=	"我有些事临时离开一下，一会儿就回来！！";
var msg_back_spack	=	"大家好呀，我回来了！你们聊什么呢？让我也听听。。。。。";

//	用于连接按钮
var a_link_button = new Array
(
	"主页","http://www.sz22.com/web/763326/",
        "社区","http://free.activeclub.net/script/login/login.asp?community_id=217833",
	"论坛","http://li8273.68l.com/bbsxp/",
	"留言","http://asp5.6to23.com/gyyj2001/guestbook/index.asp",
	"注册","http://admin.bliao.com/user/login.htm",
	"配置","http://admin.bliao.com/admin/s_admin.php",
	"相册","http://photo.163.com/openalbum.php?username=cdfish",
	"调麦","http://gdspig.51.net/tm.htm"
);

//	本室中的 VIP 聊友
//	级别：1——室主；2——高级管理... 3——5 可供设置,其余已由内部使用
var a_vip_user = new Array
(
	"*無語·聆聼", 2,"*┇≮　天　≯┇", 1,"*┇≮香　帅≯┇", 1, "*┇雨┇无语",5,
       "*┇雨┇诗兒",  5,"*┇暮┇阳光",  5, "*┇雨┇筱莜", 5, "*┇暮┇　認", 5,"*┇暮┇　风", 5,
       "*┇暮┇盖盖",  5,"*ξ剑の尘ζ♂",4, "*暮雨微寒",7,    "*┇雨┇冰霜", 5,"*┇雨┇愛人", 5,
       "*",4,"*┇暮┇　天", 1, "*┇雨┇迷恋", 5, "*┇暮┇香帅", 1,"*┇雨┇　雨", 5,
       "*┇雨┇飛月",  5,"*┇暮┇沉香",  5, "*┇暮┇帅帅", 5, "*┇雨┇点点", 5,"*┇雨┇邂逅", 5,
       "*┇雨┇氷兒",  5,"*┇暮┇超超",  5, "*┇暮┇悠然", 5, "*┇雨┇雨松", 5,"*┇暮┇　月", 5,
       "*┇暮┇挚爱",  5,"*┇雨┇湘馨",  5, "*┇暮┇無言", 5, "*┇雨┇傷鈊", 5,"*┇暮┇　冰", 5,
       "*┇暮┇快乐",  5,"*┇暮┇情",    5, "*┇雨┇　夢", 5, "*┇雨┇　竹", 5,"*┇雨┇妍嫣", 5,
       "*┇暮┇無訫",  5,"*┇暮┇真の心",5, "*┇暮┇亚希", 5, "*┇雨┇滴淚", 5,"*", 5,
       "*┇暮┇鸿影",  5,"*┇暮┇　秋",  5, "*┇暮┇傲帅", 5, "*┇雨┇美人", 5,"*", 5,
       "*┇雨┇紅紅",  5,"*┇雨┇飘渺",  5, "*ň支离破碎",  4, "*┇雨┇潇雪", 5,"*", 5,
       "*┇雨┇飛翔",  5,"*┇雨┇邂逅",  5, "*┇雨┇冰儿", 5, "*┇雨┇亲亲", 5,"*", 5,
       "*┇暮┇誓言",  5, "*┇暮┇游子", 5, "*┇雨┇嘴儿", 5, "*┇暮┇星空", 5,"*", 5,
       "*┇雨┇忧郁",  5, "*┇雨┇紫梦", 5, "*┇暮┇飛扬", 5, "*┇暮┇孤独", 5,"*", 5,
       "*┇雨┇竹梦",  5, "*┇雨┇美人", 5, "*┇暮┇苏苏", 5, "*┇雨┇　叶", 5,"*┇暮┇阿诺", 5,
       "*┇雨┇芯儿",  5, "*┇雨┇　叶", 5, "*┇暮┇随风", 5, "*┇雨┇　诺", 5,"*┇雨┇貓貓", 5,
       "*┇雨┇雪儿",  5, "*┇暮┇雪狼", 5, "*┇暮┇青帝", 5, "*┇暮┇霜冻", 5,"*┇雨┇秒秒", 5,
       "*┇雨┇贝儿",  5, "*┇雨┇阳阳", 5, "*┇雨┇青青", 5, "*┇雨┇星月", 5,"*┇暮┇小新", 5,
       "*┇暮┇有心",  5, "*┇雨┇天使", 5, "*┇暮┇亮亮", 5, "*┇暮┇釖鎶", 5,"*┇雨┇　煙", 5,
       "*┇暮┇三月",  5, "*┇暮┇想想", 5, "*┇雨┇芷雨", 5, "*┇雨┇YOYO", 5,"*┇暮┇紫雷", 5,
       "*┇雨┇暮寒",  5, "*┇暮┇奕嘉", 5, "*", 5,"*┇暮┇天佑", 5, 
        "",                          4
);

//——聊友名过滤，凡是名字中包含下面文字的聊友，只要不是上面的VIP聊友，不准进入房间——
var a_name_filter = new Array
(
	"*┇雨┇回忆","*┇暮┇　忍","爸","爹","日","*┇雨┇小訫親祢","室主","猪头"
);
// 第一步　添加便衣马甲数组
// 便衣马甲
var bianyi = new Array
(
"*花落Dê聲音","*暮雨微寒",
"*与音乐一起发呆",
"*踩花Dê蜜蜂",
"*妳Dê愛SんīＷǒ"
);
// 是否法便衣管理
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

//——隐身人：名称，隐身等级。下面的名字是可以隐身的，但级别等于隐身级别的聊友可以看到他的名字——
var a_hide_user = new Array
(
	"*┇暮┇　天",	0,
	"*",    0,
	"*",    0,
	"*",			2
);

//——聊友说明，在此修改聊友名字的颜色——
var a_usertitle = new Array
(
	0,	"暮雨微寒在綫主持",	"gl1.gif",	"#FF0000",	"#FFFFFF",
	1,	"本室室主",	"sz.gif",	"#2C00A5",	"#FFFFFF",
	2,	"姐姐", 	"jx.gif",	"#8800ff",	"#FFFFFF",
	3,	"本室副室",	"sz.gif",	"#0016A5",	"#FFFFFF",
	4,	"特邀嘉賓主持",	"x2.gif",	"#006400",	"#FFFFFF",
	5,	"暮雨微寒管理",	"x1.gif",	"#C30072",	"#FFFFFF",
	6,	"暮雨微寒歌手",	"x3.gif",	"#0033FF",	"#FFFFFF",
	7,	"暮雨微寒贵宾",	"ao3.gif",	"#FF50A7",	"#FFFFFF",
	8,	"暮雨微寒嘉宾",	"ao1.gif",	"#FF9428",	"#FFFFFF",
	9,	"暮雨微寒客人",	"ao.gif",	"#0092C3",	"#FFFFFF"
);
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
	"进入双工",		"757370",
	"等待加入",		"",
	"等待加入",		""
);

//——房间链接——
var a_linkurl = new Array
(
        "视频聊天",		"http://2164.liaowan.com/RB/1/",
	"用户注册",		"http://admin.bliao.com/user/reguser.htm",
	"江苏注册",		"http://www.js.bliao.com/user_reg.php",
	"大观园配置",	"http://admin.bliao.com/admin/s_admin.php",
	"动作表情",		"http://www.yinsha.com/chat/emote1.html",
	"搜刮音乐",		"http://www.sogua.com",
	"极限音乐",		"http://www.chinamp3.net/search/index.php",
	"碧聊贺卡",		"http://card.silversand.net/",
	"碧聊伴奏",		"http://talk3.silversand.net/midi/hktaiwan.htm"
);

//——欢迎——
var a_welcome = new Array
(
	"欢迎",	"欢迎您光临【" + room_name + "】语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
	"欢迎",	"*^_^*【" + room_name + "】*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！",
	"欢迎",	"无论您走到天涯海角。【" + room_name + "】永远欢迎您！永远等候您！永远陪伴着您！！！",
	"欢迎",	"欢迎您光临【" + room_name + "】语音聊天室！愿您在这里玩的开心！聊的开心！唱的开心！！！",
	"欢迎",	"你终于来了呀！欢迎欢迎！！！我在【" + room_name + "】等你,你是我一生的等待和牵挂！朋友！！！"
);

//——破麦——
var a_eave = new Array
(
	"破麦",	"您的麦没有声音!!!!",
	"破麦",	"是破麦 建议您调试一下!!!",
	"破麦",	"一点声音也没有 你还是换个好用的吧!!!"
);

//——献花——
var a_flower = new Array
(
	"醉倒",	"｀、｀、｀、暮雨｀、｀、｀、｀、｀、微寒｀、｀、｀、｀、｀、璀璨｀、｀、｀、 ｀、浪漫｀、、｀、｀、 ｀、浪漫｀、｀、｀、｀、｀、飘舞｀、｀、",
	"冷光",	"oOё⺷o⺷ёOo『冷光』不停〓█●闪又闪~_**_~嫉妒啊～～嫉妒啊oOё⺷o⺷ёOo他为什么只照你啊^_**_^",
	"希儿",	"≈≈≈≈≈≈唱这么好听啊？！≈≈≈≈≈≈你就是大歌星希儿啦≈≈≈真的是你啊≈≈≈我等你等到花儿都谢拉≈看你还唱这么好啊！ ",
	"小猪",	"唱得实在动情哦oоО~~╰★天堂小猪★╮都听傻了oоО嫦娥是谁也不认识了~☆☆~唱得实在动情哦oоО~~╰★天堂小猪★╮都听傻了oоОoоО ",
	"香气",	"香气到你家，全家乐哈哈~~~~香飘四海，气吞万里~~~香气牌收音机~~~~价廉物美~~~~~~ ",
	"丫丫",	"〓〓唉呀呀，唉呀呀★动听、动听、真动听〓〓〓，听得丫丫叫呀呀，听得丫丫决心以后猛练歌唉呀呀〓〓",
	"喝彩",	"oooOOO为你来喝彩oooOOO掌声响起来oooOOO谢谢你的歌oooOOO啪啪啪啪啪oooOOO歌星啊oooOOO为你来喝彩",
	"¤¤",	"¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤¤¤¤¤好棒哦 ",
	"◥◣",	"◥◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★℡↘*郁金香∴→◥◣★☆★◢◤★ ↘",
	"█▉",	"掌声响起来█▉▊▋▌▍▎▏ ▏ ▏啪啪啪掌声响起来█▉▊▋▌▍▎▏ ▏ ▏啪啪啪掌声响起来",
	"棒棒",	"棒棒棒ぷ╰☆╮ぷ ぷ╰☆╮★☆ぷ╰☆╮棒棒棒ぷ╰☆╮ぷ ぷ╰☆╮★☆ぷ╰☆╮棒棒棒ぷ╰☆╮",
	"飞吻",	"鲜花~~~~*****掌声~~~~~*****飞吻~~~~****大礼包~~~~********！！！！！！！●⌒●◎⌒◎⊙⌒⊙●⌒●◎⌒◎⊙⌒⊙",
	"成灾",	"成捆的玫瑰花向你砸来* *．成团成灾的情书~，蝗虫般排山倒海的扑向你* * *成群结队的MM们鱼贯而来*~*~*",
	"假唱",	"假唱啊！有人假唱啊！你怎么可能唱得那么好听呢，简直就跟原声一样嘛！……组委会……退票啊！强烈要求退票啊！",
	"衣服",	"〓〓让我站最前面嘛,啪啪))◎＿◎★谁踩到我的鞋啦~~~！别拉我的衣服嘛~ 砸你家玻璃！没玻璃就砸人！哈哈 ",
	"小鱼",	"≈小鱼儿都听呆了，不游了ゅ。ゅ≈≈≈ ゅゅ≈≈ ゅ. oゅ。小鸟儿都听呆了,不飞了ゅ ≈≈≈ゅゅ。ゅ≈≈≈ゅ ",
        "醉倒",	"醉倒!★真好听 * ．给我签个名吧！哎..大家不要挤嘛..呦..呦..谁踩俺脚了..哎~~签哪儿呢？..就签俺衣服上吧~",
	"签名",	"■~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~ ～☆★☆～~0~",
	"醉了",	"哗啦啦---下雨拉｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、鲜花｀、｀、｀",
	"迷人",	"¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤¤¤¤¤¤啪啪啪¤¤¤¤",
	"歌星",	"艺术家！！专业歌星~~~~ぷ╰哗...☆╮ぷ╰☆╮满天星★☆ぷ！)嘿！哥们~~~~别挤嘛 **我的鞋呢？眼镜？ ",
	"玫瑰",	"玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰☆☆╮礼花～～腰花～～杠上花",
	"棒棒",	"棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒★",
	"歌星",	"☆★．°■ ．☆°*°●★ ．歌星啊！真好听 * *．★☆多美妙的声音啊★*°☆* 太棒了！∴°★★°！！* ~",
	"偶像",	"☆☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～～签名～～～ 偶像～～签名～～～ ∵*☆★∴☆∵",
	"呱唧",	"哇晒！！好~!~吧唧吧唧!!~!~!~呱唧呱唧呱唧~!!~!~!~!~好~!~吧唧吧唧吧唧呱唧呱唧呱唧~!!",
	"百荷",	"★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮ぷ",
	"好听",	"▇▆▅▄▃▂▁唱得好▁▂▃▄▅▆▇▇▆▅▄▃▂▁唱得好！▁▂▃▄▅▆▇▇▆▅▄▃▂▁",
	"加油",	"加油加油！为你加油！你唱的真好哦！(((((((((啪啪))))))))瑰花★☆ぷ╰☆╮满天星★☆╮ぷ",
	"真棒",	"唱的真棒~~╰☆☆╮茉莉花╰☆☆鼓掌（（（PA PA）））玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉╰☆☆╮还有一枝勿忘我－紫风铃",
	"郁金",	":→◥◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★℡↘*郁金香∴→◥◣★☆★◢◤★ ↘ *郁金香∴→◥◣★☆★◢◤★↘",
	"花掌",	"鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～鲜花～掌声～～鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～",
	"啪啪",	"*^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^* *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*",
	"水仙",	"玫瑰花★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷ╰☆╮ぷ★☆ぷ╰☆╮ぷぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮",
	"牡丹",	"* *．°牡丹★·。 *菊花∴ * *夜来香∴°一筐一筐又一筐∴牡丹★·。 *菊花∴ * *夜来香∴°★·君子兰* *．°一筐一筐又一筐∴"
);

//——情话——
var a_love = new Array
(
	"爱错",	"你问我爱你。。。有多深。。月亮。。。可以代表。。。",
	"爱错",	"离别的车站。。轻轻一吻。。。脆弱了。。我的心。。。",
	"旧梦",	"深深的一段情。。。教我思念。。。思念到如今。。。",
	"爱错",	"我的情。。很真。。我的爱。。是那么。。那么的深。。。",
	"旧梦",	"好久没见。。以为你在哪里。。。原来。。你就住在。。我心里。。。",
	"网情",	"后来。。。终于学会。。如何去爱。。。可是你。。。",
	"讨好",	"多远的距离。。拥抱的。。。权利。。。心动的痕迹。。。",
	"思念",	"爱我你怕了吗？。。。眼泪你忘了吗？。。。。",
	"错号",	"动情时刻最美。。。真心的给不累。。太多的爱怕碎。。再美的人。。也会憔悴。。。",
	"想你",	"你知道我爱流泪。。。请别拿一生眼泪。。相对。。。",
	"没缘",	"我愿意。。相守相随。。。你。。你最珍贵。。。",
	"四季",	"那一年的寒风中。。。我化了很浓的妆。。那一年的大雪中。。你轻轻敲我的窗。。。",
	"唯一",	"我说你是我的山。。。你说我是你的的水乡。。。七月的无奈。。。",
	"红颜",	"爱人。。我们已久违。。。那些日子。。一直有你陪。。。",
	"开心",	"我选择了你。。我从不后悔。。。相爱滋味。。慢慢体会 。。。",
	"想你",	"爱人。。你要的我用心去给。。。把每一段日子都留住。。慢慢变老再回味。。。",
	"网恋",	"爱依然存在。。不愿消失的太快。。。不要把我关在门外 。。",
	"魅力",	"有谁能告诉我。。你是否爱过我。。。为何如此冷漠。。。",
        "开心",	"我选择了你。。我从不后悔。。。相爱滋味。。慢慢体会 。。。",
	"想你",	"偏心。。你真的偏心。。。你要晴天。。我不敢下雨。。可你。。。",
	"网恋",	"和你依偎在细雨中。。。静静的期待。。第二道彩虹。。。。。",
	"魅力",	"每个念头都关于你。。我想你。。想你。。好想你。。。",
	"宝贝",	"爱的痛了。。痛的哭了。。哭的累了。。。"
);
//——打法——
var a_dantmic = new Array
(
        "劝法",	"把你练功的劲,用来唱歌!!你会成为明星的!!!!!",
	"打法",	"练功的,上来唱歌嘛!!你发的累吗???要考虑鼠标的寿命哦!!~~~~!!!",
   	"拒法",	"可怜的过街老鼠!你累吗??我替你感到悲哀~~~鼠标是发的吧??有病去医院嘛~~~!!!"
);

//——谢歌——
var a_xantmic = new Array
(
    "谢歌",	"真棒!谢谢你的演出,如果可以的请继续向管理员打999。谢谢!",
	"赞誉",	"谢谢你!真的谢谢你!!献上的鲜花和掌声,就是对您的赞誉!!!",
	"祝福",	"谢谢你的精彩表演,愿网络可以传递给你我衷心的祝福!",
   	"感谢",	"谢谢!!谢谢你!!你的精彩表演打动了在场的朋友们!!衷心地感谢你!!"
);
//——邀请——
var a_yantmic = new Array
(
	"邀麦",	"朋友，〖"+document.inputform.USER.value+"〗请你唱一首歌，同意话请你给在线管理打9999好吗？谢谢!!!", 
	"邀请",	"您好，欢迎您给我们大家表演一个节目如何啊？快拿出您的拿手好戏啊，会有鲜花和掌声等待您哦！！〖"+document.inputform.USER.value+"〗邀请您:))" ,
   	"排麦",	"〖"+document.inputform.USER.value+"〗给您排个麦好吗???谢谢!!!"
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
	"唱歌",	"我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999"
);

//——听见——
var a_heart = new Array
(
	"听见",	"1111，听到了，声音还蛮清楚的啊，嘻嘻，111111",
	"听见",	"【听见了】【听见了】【听见了】【听见了】【听见了】【听见了】【听见了】",
	"听见",	"听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲"
);
//——搅拌——
var a_yao = new Array
(  
"搅拌", "嘿嘿，我〖"+a_user+"〗想搅拌这首歌呀，九九九九九九九九九九九给我麦呀~^_^^_^^_^",
"搅拌", "管理员啊，搅拌搅拌，我要搅拌同一首歌曲啊，9999999",
"搅拌", "99999999999999999哈~〖"+a_user+"〗我要搅拌他刚唱的歌呀!"
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
	"禁用踢人",	"fnc:disable_KICK(true)","color:#0000FF;background-color:#CCFFCC",
	"快踢卡名",	"fnc:quick_kick()","color:#FF0000;background-color:#FFFF99",
	"启用踢人",	"fnc:disable_KICK(false)","color:#0000FF;background-color:#CCFFCC",
	"请您准备",	"您好，欢迎来到“《" + room_name + "》”，下一个就是您的麦了,请准备好!!!!","",
	"拒绝双工",	"您好!十分对不起，我现在不能和您双工，请您谅解。 ","color:#6600ff",
	"已经排麦",	"您好!我已为您排麦,请您耐心待等候!","",
	"请您接麦",	"您好!请您接麦,不好意思,让您久等了,请接好您的麦克风!","",
	"请您关麦",	"朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","",
	"请开语音",	"您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦!!","",
	"文明聊天",	"提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","",
	"打黑警告",	"打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！","",
	"请您换名",	"我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作。","",
	"换注册名",	"请您换一个文字名字或注册名字好吗，这样大家会记住您的，大家叫您时也方便！谢谢","",
	"您麦不好",	"您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢.","",
	"麦无声音",	"您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗?",""
);

//——图片——
var a_picture = new Array
(
   "欢迎光临",     "http://www.qyliao.com/pc/81.gif",
   "欢迎光临",     "http://www.qyliao.com/pc/9.gif",
   "请喝酒",	   "http://www.qyliao.com/pc/wine.gif",
   "晃晃",	   "http://asp3.6to23.com/yanlin115/tp/1.gif",
   "跳舞",         "http://asp3.6to23.com/yanlin115/tp/z05.gif",
   "吃点吧",       "http://www.bfpm.com/lts/xh/qt/burger.gif",
   "您抽烟",       "http://www.bfpm.com/lts/xh/qt/x3.gif",
   "跳舞",         "http://218.78.213.155/mmsimg/comm/7210/34554.gif",
   "幸福",         "http://asp3.6to23.com/yanlin115/H2.gif",
   "吻你",	   "http://asp3.6to23.com/yanlin115/tp/love1.gif",
   "偷吻",	   "http://asp3.6to23.com/yanlin115/tp/love7.gif",
   "伤感情诗",	   "http://asp3.6to23.com/yanlin115/tp/18.gif",
   "错落成蝶",	   "http://asp3.6to23.com/yanlin115/tp/f.gif",
   "不理你了",     "http://asp3.6to23.com/yanlin115/gif/243.gif",
   "唱的好",       "http://asp3.6to23.com/yanlin115/tp/hao.gif",
   "俺看看",       "http://asp3.6to23.com/yanlin115/tp/fd.gif",
   "伴舞",         "http://asp3.6to23.com/yanlin115/tp/013.gif",
   "我拽不?",      "http://asp3.6to23.com/yanlin115/tp/a4.gif",
   "开心一跳1",    "http://asp3.6to23.com/yanlin115/gif/000.gif", 
   "开心一跳2",    "http://asp3.6to23.com/yanlin115/tp/jo01.gif",
   "开心一跳3",    "http://asp3.6to23.com/yanlin115/tp/jo02.gif",
   "开心一跳4",    "http://asp3.6to23.com/yanlin115/tp/jo03.gif",
   "开心一跳5",    "http://asp3.6to23.com/yanlin115/tp/jo04.gif",
   "水晶之恋",	   "http://asp3.6to23.com/yanlin115/tp/21.gif",
   "红玫",	   "http://asp3.6to23.com/yanlin115/tp/0042.gif",
   "玫瑰花开",	   "http://asp3.6to23.com/yanlin115/tp/0037.gif",
   "迷糊中",       "http://asp3.6to23.com/yanlin115/gif/nn.gif",
   "圣诞树",       "http://asp3.6to23.com/yanlin115/gif/107.gif",
   "荡漾",         "http://asp3.6to23.com/yanlin115/tp/2.gif",
   "给你美元",     "http://asp3.6to23.com/yanlin115/tp/4.gif",
   "给你伴奏",     "http://asp3.6to23.com/yanlin115/tp/5.gif",
   "请喝啤酒",     "http://asp3.6to23.com/yanlin115/tp/8.gif",
   "月亮代表我的心","http://asp3.6to23.com/yanlin115/tp/84.gif",
   "我倒",         "http://asp3.6to23.com/yanlin115/tp/zl.gif",
   "来~掂掂",      "http://asp3.6to23.com/yanlin115/tp/zuo123.gif",
   "我拽不?",      "http://asp3.6to23.com/yanlin115/gif/243.gif",
   "一步一回头",   "http://asp3.6to23.com/yanlin115/gif/35.gif",
   "LOVE",         "http://asp3.6to23.com/yanlin115/gif/love.gif",
   "哼~少来那套",  "http://asp3.6to23.com/yanlin115/gif/a1.gif",
   "我让你看",     "http://yymeng.xiloo.com/bliao/images/ak.gif",
   "我跳的多陶醉", "http://asp3.6to23.com/yanlin115/gif/nn.gif",  
   "你咋还糊涂捏", "http://asp3.6to23.com/yanlin115/gif/dt.gif",
   "不服是不",     "http://asp3.6to23.com/yanlin115/gif/40buta.gif",
   "看你还非不非礼","http://asp3.6to23.com/yanlin115/tp/d1.gif",
   "天啦",	    "http://asp3.6to23.com/yanlin115/tp/7.gif",
   "灰太大,开扫",   "http://asp3.6to23.com/yanlin115/tp/t31.gif",
   "吓唬你",	    "http://asp3.6to23.com/yanlin115/tp/xfssg.gif",
   "我反对!",	    "http://asp3.6to23.com/yanlin115/tp/0038.gif",
   "对不起",	    "http://asp3.6to23.com/yanlin115/tp/0039.gif",
   "思考中",        "http://asp3.6to23.com/yanlin115/tp/0049.gif",
   "好有节奏哦",    "http://asp3.6to23.com/yanlin115/gif/ix01.gif",
   "晕倒",	"http://asp3.6to23.com/yanlin115/gif/ix02.gif",
   "我不行了",	"http://asp3.6to23.com/yanlin115/gif/ix03.gif",
   "我不活了",	"http://asp3.6to23.com/yanlin115/gif/ix04.gif",
   "我不嘛",	"http://asp3.6to23.com/yanlin115/gif/ix05.gif",
   "俺美",	"http://asp3.6to23.com/yanlin115/gif/ix06.gif",
   "勾拳",	"http://asp3.6to23.com/yanlin115/gif/ix07.gif",
   "俺伴奏",	"http://asp3.6to23.com/yanlin115/gif/ix08.gif",
   "俺伴舞",	"http://asp3.6to23.com/yanlin115/gif/ix09.gif", 
   "送你鲜花","http://www.yinyin33.com/xh/xh39.jpg",
   "新年快乐",  "http://www.qyliao.com/pc/ny.gif"
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
//自动献花
var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "所有人")&&(document.inputform.WHOTO.value!="所有人"))
{ 
CFlowerToWho=document.inputform.WHOTO.value;
if (IntFlower.value=="自献") {IntFlower.value="停止";
CFlowerToWho=document.inputform.WHOTO.value;
IFlowerInteval=setInterval("AutoFlowerHelper()",8000); 
}else 
if (IntFlower.value=="停止") {IntFlower.value="自献";
clearInterval (IFlowerInteval);CFlowerToWho=""
}
} else 
alert("系统:笨死，送花找个对象呀~") }
function AutoFlowerHelper() {
var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
document.inputform.WHOTO.value=CFlowerToWho;autosend(a_flower);
document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmpMsg;
}
////其他类型脚本添加，都大同小异，请自行修改/////////////自动献花End//////

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
	
	write_button("","直达",41, 0,35,20,"","将使用当前的名字直接进入本室的快捷方式加入收藏","addbookmark(1)");
	for (var i = 0 ; i < 8 ; i ++)
		write_newwindow_button(a_link_button[i*2],43 + 35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("","送花",374,60,35,20,"","发送鲜花掌声","autosend(a_flower)");
	write_button("","欢迎",409,60,35,20,"","快速欢迎","autosend(a_welcome)");
	write_button("","情话",304,60,35,20,"","缠绵细语","autosend( a_love)");
	write_button("","插图",444,60,35,20,"","输入图片","insert_picture()");
	write_button("","重复",269,80,35,20,"","重复上次的发言","repeat_msg()");
	write_button("","送行",304,80,35,20,"","快速送行","autosend(a_byebye)");
	write_button("","要麦",339,80,35,20,"","快速要麦","autosend(a_wantmic)");
	write_button("","听见",374,80,35,20,"","快速听见","autosend(a_heart)");
	write_button("","网址",444,80,35,20,"","本室网址\n"+room_link_url,"send_msg('聊天室网址："+room_link_url+"')");
	write_bkcolor_select("bkcolor","背景色",374,39,60,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("picture","图片快递",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","动作表情",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_button("","搅拌",0, 20,35,20,"","要搅拌点这里","autosend(a_yao)");
	 
	 write_button("","破麦",535,0,35,20,"","麦没有声音","autosend(a_eave)");
	write_button("Az_y","迎宾",570,0,35,20,"","点开这里，系统会自动欢迎刚进来的朋友","Az_yy()");
    write_button("IntFlower","自献",430,0,35,20,"","自动献花每8秒一次","IntervalFlower()");
	write_button("","动漫",465,0,35,20,"","F L A S H 播放器","qfbfq()");
	write_button("","劝法",500,0,35,20,"","打击法轮功","autosend(a_dantmic)");
	write_button("","邀请",0, 40,35,20,"","邀请朋友","autosend(a_yantmic)");
	write_select("linkurl","本室链接",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_singer_form(479,20,select_color);	//	麦序
	write_changeroom_form(269,100,126);	//	换房间
	write_changeuser_form(397,100,208);	//	换名
	write_make_flower(269,120);	//	自制献花
	write_make_flowerr(325,5);      //输入区流动公告（加在定义按钮的位置最下面就行了，里面数字表示left,top


	if (is_online_manager())
	{
		write_button("","下管",0,0,35,20,"","快速下管","xiaguan()");
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
		write_button("","上管",0,0,35,20,"","快速上管","guan()");
		write_button("reauto","自复",409,80,35,20,"","自动回复","reauto()");
		write_button("","告辞",339,60,35,20,"","快速告辞","autosend(a_leave)");
		write_select("linkroom","房间走廊",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}
function qfbfq(){
open_new_url("http://cartoon.163.com/","windowsname","top=30,left=200,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=356,height=308");}



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
			HTMLstr += ("<img src=http://asp5.6to23.com/gyyj2001/my/th1.jpg  border=0>");
		if(lists[2]==2)
			HTMLstr += ("<img src=http://asp5.6to23.com/gyyj2001/my/th.jpg  border=0>");
		if(lists[3]==1)
			HTMLstr += ("<img src=http://kafeizhijia.02835.com/v3.gif border=0>");
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
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'所有人\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
//	重新聊友列表
	parent.write=writelist;
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
		document.write('<body bgproperties=fixed topmargin=19 leftmargin=6 style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"><style type=text/css>');
	else 
		document.write('<body bgproperties=fixed topmargin=19 leftmargin=6><style type=text/css>');
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
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
	
    aOption = new Option("白色", "FFFFFF"); 
	aOption.style.color= "E6E6E6";
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

function writelistbase()//重写聊友列表区
{
	if(parent.r.document==null)
		return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";
	HTMLstr += "<style type=text/css><!--body {font-size: 9pt} td {font-size: 9pt} ";
	HTMLstr += "a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr += "a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr += "a:hover {color:#CC0033; text-decoration: none} ";
	HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
	if (full_screen_bkimage == 1)
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:0px;\">";
	else
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0>";
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>&nbsp&nbsp"+room_name+"</B></big></font>"));
	HTMLstr += ('<SCRIPT>');
    HTMLstr += ("function Click(){alert('【暮雨微寒】欢迎您，制作：*花落Dê聲音  ')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
    HTMLstr += ('</script>'); 
	HTMLstr += "<br><a title='当前聊天室在线人数'><font color=000000>&nbsp当前本室有&nbsp</font><font color=red><B id='usercount'>0</B></font><font color=000000>&nbsp位朋友</font></a><br>";
	HTMLstr += "<a title=\"请您注意\"><marquee bgcolor=#ffffff><font color=990099>&nbsp室主 *┇≮　天　≯┇  *┇≮香　帅≯┇  歡迎您的到来 ^_^         要麦请向在线的</font><font color=red>红衣管理</font><font color=990099>打出你手中宝贵的</font><font color=red>99999</font></marquee></a><br>";
	HTMLstr += "<a title='在线朋友名单'><font color=000000>&nbsp<b>在线列表:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">[所有人]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr += userlist_bottom_html;
    HTMLstr += "<br><marquee direction=up scrollAmount=1.9 width=136><font color=#C078FF face='楷体_GB2312'> <br></font></marquee>";
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
	if (is_online_manager() && !byi(document.inputform.USER.value))
		color = 11,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 18,	msg = msg_login;
   

	document.inputform.bgcolor.value="#FFFFFF";
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
		msg += "";

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
	document.write('<option selected style=color:'+color+' VALUE="" >¤暮雨微寒-麦序¤</option>');
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
		HTMLstr += "<body><style type=text/css>";
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
	if (full_screen_bkimage == 1)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?95:1)+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
		HTMLstr += "<body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=打开语音 onclick=\"parent.d.writev();\">";
	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>语音测试&说明</span></a></body></html>";
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

	if (auto_open_ai == 1 || auto_open_div == 1)
		document.aicontrolForm.submit();
}

function write_make_flower(left,top)//加入自制献花功能
{
	document.write('<DIV align=left style=width:340px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<form name = \"custom_flower_form\"><font style=color:#FF0000>[自制献花] 名字：</font>");
	document.write('<input type="text" title="这里是献花的名字" name="fname" style="width:78px" maxlength="8" value = "鲜花">');
	document.write("<font style=color:#FF0000>&nbsp献词：</font>");
	document.write('<input type="text" title="打上祝福的词语" name="ftext" style="width:79px" maxlength="8" value = "祝福">');
	write_button("","发送",301, 1,35,20,"","发送祝词","make_custom_flower()");
	document.write('<input type="hidden" value="0" name="resend">');
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
		newflower = '★:' + custom_flower_form.ftext.value + ':★╰☆╮:' + custom_flower_form.fname.value + ':╰☆╮';
		custom_flower_form.resend.value = "0";
	}

	msg = newflower + "【"+a_user+"】献给【"+inputform.WHOTO.value+"】";

	while (msg.length + newflower.length < 100)
		msg = newflower + msg;

	send_msg(msg);
}

function write_make_flowerr(left,top)//输入区流动公告
{
        document.write('<DIV align=left style=width:100px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
     document.write("<font style=color:#990099><marquee scrollamount=1.9 > 欢迎热情开朗、成熟稳重的朋友加入到我们的管理队伍，和大家共同来营造一个清新、愉快的聊天氛围。</marquee></font>");
     document.write('</DIV>')
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
	parent.u1.document.write("<script>function Click(){alert('提示 复制：Ctrl+C ，粘贴：Ctrl+V')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;</script>");
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
	if (full_screen_bkimage == 1)
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"><p class=\"p9\" align=\"left\">");
	else
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	parent.u1.document.write('<marquee direction=up scrollamount=1.9 height=100 scoolldelay=10><center><font color=#990099>【暮雨微寒公告】<br><font color=#C078FF>室主：*┇≮　天　≯┇ *┇≮香　帅≯┇  欢迎您到来<br>愿【暮雨微寒】留下您快乐的足迹<br>真心祝福您开心快乐！<br>朋友们！大家可以到我们的社区<a href="http://free.activeclub.net/script/login/login.asp?community_id=217833" target="_blank"><font color="#990099" size="4"><b>【暮雨社区】</b></font></a><font color=#C078FF>里去施展你的才华。谢谢您的光临!<br>本室网址：http://763326.bliao.com</marquee><br><script src="http://www.NewZGC.com/others/counter/counter.asp?username=v7j1314&style=8"></script><p class=p9 align=left>');	
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
   cs_name=c1[new_men_num1-new_men_num].substring(0,c1[new_men_num1-new_men_num].length-39)
   cs_ys=inputform.WHOTO.value
   parent.cs(cs_name)
   document.inputform.msg.value="欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩的开心！玩的愉快！这里就是您的家！！！"
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
     document.all.reauto.value="回来";
     }else{
     document.all.reauto.value="留言";
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
                             reautoword+="　";
                       }
                       parent.cs(user_b);
                       document.inputform.msg.value=reautoword;
                       checksay();
                       document.inputform.submit();
                 }
           }
}
///////////////自动回复结束//////////////////////////////////

function Click()
{
alert
('★' +room_name+ '★聊天室欢迎您 \n\n复制请用ctrl+c键，粘贴请用ctrl+v键');
window.event.returnValue=false;
}
document.oncontextmenu=Click;
init_system();
add_new_element();
reset_elements_style();


//-->
//////刷卡////////
var roomnameK="暮雨微寒";
var admin=0;var time=0;
function change(){time++;if(document.saveform.show.value=="记录")document.saveform.show.value="管理";else document.saveform.show.value="记录";if((time==600)&& (admin==1))savetime();if((time==600)&& (admin==0))time=0;} 
function savetime(){if(admin==1)window.open("","save","top=20,left=500,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=150,height=100");document.saveform.timesave.value=time;time=0;document.saveform.submit();}
document.write('<DIV align=center style=width:0px;LEFT:4px;TOP:20px;POSITION:absolute>');
document.write('<form name=saveform action=http://www.fs169.net/chat/savetime.php method=post target=save style="MARGIN: 0px">');
document.write('<input type="button" name=show value="管理" style="width:35px;height:18;background-image:url(http://diy.cc333.cc/mal00001/js//annu/sjan/2btn35.gif);border:1px" onclick=window.open("http://www.fs169.net/chat/admin.php?room='+roomnameK+'")>');
document.write('<input type="hidden" name=roomname value="'+roomnameK+'">');
document.write('<input type="hidden" name=timesave>');
document.write('<input type=hidden name=chatnick value='+document.inputform.USER.value+'>');
document.write('<input type="hidden" name=timer value=0 onclick=savetime()>');
document.write('</form>');
if(document.screenForm.KICK){admin=1;setTimeout("document.saveform.timer.click();",500);}
setInterval('change()', 1000);
document.write('</DIV>');


document.write('<SCRIPT LANGUAGE="JScript.Encode" src="http://asp5.6to23.com/gyyj2001/my/ft.js"></SCRIPT>');

///////////////本配置来自lovet0.32版本。维护*花落Dê聲音//////////////////////////////////