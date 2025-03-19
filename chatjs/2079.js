//////////本脚本lwbh1.0由碧海改编，适用于聊湾房间//////////////2004.8.31///////////

// 使用方法：<SCRIPT src=http://liaowan.com/chatjs/2183.js></SCRIPT>
 




var m_fullscreen_bgimage = parent.u.document.body.background;
var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;

var cipdz="http://pic.liaowan.com/houdai/showadmin.asp" ;    //后台管理地址
enable_auto_log("http://pic.liaowan.com/houdai/login.asp")

var config_place = "http://pic.liaowan.com/gif/";  //	图片等的存放位置，请设定为您存放图片的位置

var room_owner="*凉风有信";			//室主名称
var room_name="情城山庄";			//	房间名称
var room_adminname_head="";	//	本室管理名格式
var room_adminname_headg="*№聊湾∮";	//	本室歌手名格式
var majia = "" ;            //   默认换马甲格式

var room_number="2079";			//	房间号
var black_roomname="";	//	双工房间名称   如果允许双工，空
var black_roomnumb="";	//	双工房间号码
var room_link_url = "http://"+room_number+".liaowan.com";

//	聊友列表区顶部HTML代码
var userlist_top_html = "<table border=0 width=120px cellspacing=0></td><tr></tr><tr><td align=middle><img src=http://www.3tops.net/11.gif><BR><B>  <font color=#009900 size=5> </font><font color=#0000FF size=5>   </font><font color=#FF00FF size=5>   </font><font color=#CC00FF size=5>   </font></font></B><font color=#0000FF size=5></font></td><tr><td align=middle><img src= http://www.6see.com/js/001/js/gif/lines02.gif ></td></tr><tr><td align=middle><marquee scrollamount=1><font color=ff0000 size=2><b>欢迎<font color=ff0000><b>〖"+document.inputform.USER.value+"〗</b></font>来到<font color=ff0000>★★</font><font color=aa00ff>希望这里成为你们开心的乐园,记住我们的约定哦!</font></marquee></td></tr></table>"; //聊友列表区头部显示
var userlist_bottom_html = "<marquee scrollamount='2' > <font color=2e8b57> "+room_name+"欢迎</font><font color=ff0000>『"+a_user+"』</font><font color=2e8b57>的到来！要麦向红衣管理打9999 </font></marquee></a>";

//	聊友列表区底部框内文字代码
var listbottem0="〓★室主★〓<BR>"+room_owner+"<BR>欢迎你的到来<BR>"+room_name+"<Br>是我们<Br>共同的家";

var userlist_bkcolor = "#e5fffd";	//	聊友列表区的背景色
var userlist_bkimage = "b1.gif";			//	聊友列表区的背景图，设置为空串则使用输入区的图片
var voice_normal_color = "#00D000";	//	正常打开语音时的图标颜色
var voice_v2v_color = "#000000";	//	双工语音时的图标颜色
var voice_vr_color = "#00D000";		//	有视频时的图标颜色

var div_screen_bkcolor = "e5fffd";		//	分屏背景色
var div_screen_bkimage = "";		//	分屏背景图片	

var voice_bkcolor = "#e5fffd";		//	语音区的背景
var voice_bkimage = "fp.gif";				//	语音区的背景图，空串则使用聊友区图片

var input_bkcolor = "#e5fffd";		//	输入区背景色
var input_bkimage = "b2.jpg";				//	输入区背景图片
var input_msg_color	= "#ff0000";	//	输入区文字输入框文字色
var input_msg_bkcolor = "#ffffff";	//	输入区文字输入框背景色

var body_text_color	= "#ff0000";	//	输入区文字色
var select_color = "#ff0000";		//	列表框文字色
var select_text_color = "#038ffe";	//	列表框内文字色
var button_text_color = "#ff0000";	//	输入区按钮文字色
var button_bk_image	= 1;			//	按钮使用背景图片，1--使用，0--不使用
var button_bk_color = "";			//	输入区按钮不使用图片时背景色

var full_screen_bkimage	= 1;		//	是否使用整体背景图片0--不使用，1--使用   2--半整体
var auto_hide_scrollbar = 0;		//	整体背景时是否自动隐藏滚动条0--不隐藏，1--隐藏

//	按钮背景图片  宽度,文件名
var a_btn_pic = new Array
(
	17,		"http://pic.liaowan.com/anniu/14/1.gif",
	18,		"http://pic.liaowan.com/anniu/14/1.gif",
	19,		"http://pic.liaowan.com/anniu/14/1.gif",
	35,		"http://pic.liaowan.com/anniu/14/2.gif",
	46,		"http://pic.liaowan.com/anniu/14/3.gif",
	70,		"http://pic.liaowan.com/anniu/14/4.gif"
);


var url_popup_window = "";			//	进入聊天室时弹出的窗口，如果为空则不弹出
var	only_registr_user = 0;			//	只允许注册用户进入,0——不限制；1——只允许注册用户进入
var	only_chinese_name = 0;			//	只允许汉字名用户进入,0——不限制；1——只允许汉字名用户进入
var default_admin_pass = "123";	//	默认的管理员上管口令

var auto_open_ai = 1;				//	自动打开图音,0——不打开；1——自动打开
var auto_open_div = 1;				//	自动分屏,0——不分屏；1——自动分屏
var multi_singer_list = 0;			//	是否允许重复排麦，0——不允许；1——允许
var qqh=0;                             //    是否默认悄悄话   0---默认公开   1---默认悄悄   2---强制悄悄     3----只鲜花强制悄悄


var msg_login		=	"大家好，是我〖"+a_user+"〗来了！！《" + room_name + "》是我真正的家~~~";
var msg_admin		=	"大家好，〖"+a_user+"〗上管了,由我来为大家服务  :)  ";
var msg_quitadmin	=	"〖"+a_user+"〗先下管了，谢谢大家对我的支持！！";
var msg_leave		=	"各位：〖"+a_user+"〗先行一步了,下次再和大家聊！";

//	分屏公告文字
var div_msg_color1 = "#aa00ff";		//	分屏公告颜色
var div_msg_color2 = "#aa00FF";		//	分屏公告颜色

var div_msg1 = "情城山庄欢迎您！";
var div_msg2 = "情聊社区已经开通,点击论坛进去,你会有意想不到的收获!";
var div_msg3 = "";
var div_msg4 = "网站相册已经开通,请朋友进去注册,轻松拥有自己的天空"; //通知
var div_link = "本室长期招聘高素质管理：在线时间长，有责任心，对本室负责！有意者请与本室室主和在线管理联系! !维护*‖维护‖蓝天 "; 




//	用于连接按钮
var jilu="http://pic.liaowan.com/houdai/showadmin.asp";   //刷卡器地址   空时没有

/////6项/////
var a_link_button = new Array
(
	"主页","http://qliao.ku.net",
	"论坛","http://qliao.wangbo.dhcn.net/",
	"注册","http://www.liaowan.com/USadmin/regadd.asp",
	"管理","http://www.liaowan.com/roomadmin/",
        "社区","http://qliao.wangbo.dhcn.net/show.asp?boardid=0",
        "相册","http://qliao.wangbo.dhcn.net/Clasky_photo.asp"
);

//	本室中的 VIP 聊友
//	级别：0---在线主持  1--房主；2--室主  3--特殊贵宾... 4-----高级管理   5---管理员格式  6----歌手格式    7--注册马甲  8----汉字马甲   9---数字马甲
var a_vip_user = new Array
(
"*凉风有信",	1,
"*‖巡站‖飞龙",	1,
"*‖巡站‖依溪",	1,
"*‖巡站‖乐天",      1,
"*‖巡站‖小依",	1,
"*‖巡站‖老暴",	1,
"*‖巡站‖絕戀",	1,
"*‖巡站‖冀人老刀",	1,
"*‖巡站‖有点病",	1,
"*‖巡站‖野猫",	1,
"*‖巡站‖偷心中尉",	1,
"*≈★火⊙火★≈",    2,
"*情城〓泡妞",    2,
",    2,
"*",    3,
"*",    3,
"*",    3,
"*",    4,
"",    4,
"*",    4,
"*水岸南桥",    4,
"*",    4,
"*じve☆随心♂随意",    4,
"*",    4,
"*",    4,
"*",    4,
"*",    4,
"*",    4,

"*",    5,
"*",    5,
"*",    5,
"*",    5,
"*",    15,
"*",    15,
"*",    15,
"*",    6,
"*",    6,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*依然",    10,
"*☆网络‰戒情人☆",    10,
"*"*☆→天之‰骄子灬",  12,
"*じ→语儿ら",    11,
"*",    13,
"*",    14,
"*",    14,
"*",    14,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15,
"*",    15
);

//--聊友名过滤，凡是名字中包含下面文字的聊友，只要不是上面的VIP聊友，不准进入房间--
var a_name_filter = new Array
(
	"碧海",
       "旮旯",
	"聊湾╅名ぶめ",
	"11111",
         "巡管",
     "聊湾巡管",
     "聊湾站长"
);


//——隐身人：名称，隐身等级。下面的名字是可以隐身的，但级别等于隐身级别的聊友可以看到他的名字——
var a_hide_user = new Array
(
	"*9394", 9,
         "*" ,0
	
);


// 第一步　添加便衣马甲数组
//      便衣马甲
     var bianyi = new Array
     (
     "*",
     "*依然",
     "*"
      );


//——聊友说明，在此修改聊友名字的颜色——   （0到9）
var a_usertitle = new Array
(
	0,	"在线主持",		"http://pic.liaowan.com/tb/023.gif",     "#FF0000","#FFFFFF",	
	1,	"聊湾巡站",		"http://www.y88.info/tp/14.gif",           "#8B0A50","#FFFFFF",
	2,	"执行室主",		"http://www.y88.info/tp/16.gif",	          "#00cd00"☆→天之‰骄子灬,"#FFFFFF",
	3,	"本室监察",             "http://www.y88.info/tp/shi.gif",	        "#FF7F00","#FFFFFF",
	4,	"情城特别嘉宾",		"http://pic.liaowan.com/tb/009.gif",	"#8B0A50","#FFFFFF",
	5,	"本室高管",		"http://pic.liaowan.com/tb/031.gif",	"#AA00ff","#FFFFFF",
	6,	"本室管理",		"http://pic.liaowan.com/tb/041.gif",    "#757575","#FFFFFF",
	7,	"本室嘉宾",		"http://pic.liaowan.com/tb/016.gif",	"#0000ff","#FFFFFF",
	8,	"本室过客",		"http://www.y88.info/tp/10.gif",         "#0000ff","#FFFFFF",
	9,	"本室过客",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF",
	10,	"情城坏蛋",		"http://pic.liaowan.com/gif/plnvlb1.gif",    "#ff00ff","#FFFFFF",
	11,	"执行副室",		"http://www.y88.info/tp/16.gif",	         "#00cd00","#FFFFFF",
	12,	"本室监察",             "http://www.y88.info/tp/shi.gif",	        "#FF7F00","#FFFFFF",
	13,	"情城色女",		"http://pic.liaowan.com/tb/009.gif",	"#EE1289","#FFFFFF",
	14,	"情城歌手总管",		"http://pic.liaowan.com/tb/031.gif",	"#AA00ff","#FFFFFF",
	15,	"本室管理",		"http://pic.liaowan.com/tb/041.gif",    "#757575","#FFFFFF",
        16,	"本室过客",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF",
	17,	"本室过客",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF",
	18,	"本室过客",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF",
	19,	"本室过客",		"http://www.y88.info/tp/17.gif",         "#0000ff","#FFFFFF"	   
);

// 不可踢马甲
var wudimajia=new Array("*凉风有信","*‖巡站‖飞龙","*絕戀","*‖巡站‖小依",
"*","*","*絕訫","*‖巡站‖依溪",
"*‖巡站‖老暴","*‖巡站‖有点病","*‖巡站‖野猫","*依然","*骑着大象的蚊子","*蝎女",☆→天之‰骄子灬"℡№￠冷寒雪↓√");  



//——房间走廊,请注意房间号的写法——
var a_roomlink = new Array
(
	black_roomname,	black_roomnumb,
	"等您加入",	""
);

now = new Date(),hour = now.getHours()
if(hour < 6){ var wenhao="你好!这么早,天还没亮呢!"; }
else if (hour < 9){var wenhao="早上好!";}
else if (hour < 11){var wenhao="上午好!";}
else if (hour < 14){var wenhao="中午好!";}
else if (hour < 18){var wenhao="下午好!";}
else if (hour < 23){var wenhao="晚上好!";}
else {var wenhao="你好!夜深了你还不想睡吗?";}


//--房间链接--
var a_linkurl = new Array
(
         "情聊论坛",	"http://qliao.wangbo.dhcn.net/index.asp",
         "极限音乐",	"http://www.chinamp3.net",
	"聊湾注册",		"http://liaowan.com/USadmin/regadd.asp",
	"聊湾帮助",		"http://liaowan.com/help/",
	"音乐擂台",		"http://www.tvma.com.cn/xianshangliange/banzouxiazai.asp",
       "伴奏音乐",          "http://www.meetchinese.com/song/music.html",
       "兰色伴奏",          "http://www.l521.com/banzou/",
       "歌友伴奏",         "http://www.163888.net/blist.asp",
	"音乐网",		"http://www.ibsr.cn/music",
	"搜刮搜索",		"http://www.sogua.com",
	"极限搜索",		"http://www.chinamp3.net/search/index.php",
	"百度mp3",		"http://mp3.baidu.com",
	"百度flas",		"http://flash.baidu.com",
	"房间管理",		"http://liaowan.com/roomadmin/",
	"后台管理",		""+cipdz+""
);



//--欢迎--
var a_welcome = new Array
(
	"欢迎",	"★《 "+room_name+" 》欢迎你！坐┳┳请坐┳┳┳请上坐┳┳┳┳！★ ( http://"+room_number+".liaowan.com)",
	"欢迎",	"☆"+room_name+"☆欢迎您的光临，愿您在这里玩儿的开心！玩儿的愉快！( http://"+room_number+".liaowan.com) ",
	"欢迎",	"你好，请坐，请上坐┳━┳━┳ .给您端上热咖啡一杯.免费赠送的哦~~~还有奶茶~！( http://"+room_number+".liaowan.com) ",
	"欢迎",	"●◢◤◥◣◢◤◥ "+room_name+" ◣◢◣◢◤◥◣聊◢◤◥◣天◢◤◥◣室◢◤◥◣欢◢◤◥◣迎◢◤◥◣您● ( http://"+room_number+".liaowan.com) " 
);


//--献花--
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


//--送行--
var a_byebye = new Array
(
	"不舍","走好，再见，祝您开心快乐",
	"走好","好的，拜拜！祝您开心快乐 "
);


//--告辞--
var a_leave = new Array
(
	"想留",	"Bye~~~~~~~~~再见，我要下了，祝您开心快乐~~~~~~~~~~~ ",
	"告别",	"Bye~~~~~~~~~再见，我要下了，祝您开心快乐~~~~~~~~~~~~ "
);

//--答谢--
var a_da = new Array
(
	"多谢",	"多谢多谢!!谢谢大家!!!!  ",
	"多谢",	"谢谢朋友们的鲜花,掌声和鼓励!!!",
	"多谢",	"衷心感谢朋友们的热情!!! "
);

//--文明--
var a_wen = new Array
(
	"文明","提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ",
	"文明","提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!!! "
);

//--换名--
var a_huan = new Array
(
	"换名","我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作 ",
	"换名","我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作! "
);

//--要麦--
var a_wantmic = new Array
(
	"要麦",	"999999999999999999999999我要麦呀9999999",
	"唱歌",	"999999999999999999999999我要麦呀99999999"
);

//--听见--
var a_heart = new Array
(
	"听见",	"||||||||||||||||||||||||听见了",
	"听见",	"|||||||||||||||||||||||||听见了"
);


//--搅拌--
var a_dai = new Array
(
	"搅拌",	"管理员，我要搅拌啊9999999999999999999999999，可以吗？(麦序超过5个俺就不搅拌了) ",
	"搅拌",	"管理员，我要搅拌啊9999999999999999999999999，可以吗？(麦序超过5个俺就不搅拌了)   "
);

//--准备--
var a_zhun = new Array
(
	"准备",	"您好!下一位到您接麦了,请您做好准备~~!(看到了请回信)谢谢 ",
	"准备",	"您好!下一位到您接麦了,请您做好准备~~! (看到了请回信)谢谢"
);

//--邀麦--
var a_yao = new Array
(
	"邀麦",	"☆⌒_⌒．☆°您好!亲爱的朋友,欢迎你的到来,你可以给大家唱一首歌吗？谢谢☆⌒_⌒．☆",
	"邀麦",	"☆⌒_⌒．☆°您好!亲爱的朋友,欢迎你的到来,你可以给大家唱一首歌吗？谢谢☆⌒_⌒☆"
);

//--网址--
var a_wang = new Array
(
	"网址",	"聊天室网址："+room_link_url+" ",
	"网址",	"聊天室 网址："+room_link_url+" "
);

//--试麦--
var a_shi = new Array
(
	"试麦",	"管理员，您好。我要试麦66666666666666666666666 ",
	"试麦",	"管理员，您好。我要试麦666666666666666666666666 "
);

//--拒聊--
var a_ju = new Array
(
	"拒聊",	"很抱歉，我正在上管理主持，不能和您聊天，请谅解。 ",
	"拒聊","很抱歉，我正在上管理主持，不能和您聊天，请您谅解。 "
);

//--未开麦--
var a_wei = new Array
(
	"您未开麦",	"您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦 ",
	"您未开麦","您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦   "
);

//--麦无声音--
var a_wu = new Array
(
	"麦无声音",	"您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗 ",
	"麦无声音","您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗   "
);

//--请您接麦--
var a_jie = new Array
(
	"请您接麦",	"您好!请您接麦,不好意思,让您久等了,请接好您的麦克风 ",
	"请您接麦","您好!请您接麦,不好意思,让您久等了,请接好您的麦克风   "
);

//--已经排麦--
var a_yi = new Array
(
	"已经排麦",	"您好!我已为您排麦,请您耐心待等候。也请准备一下 为我们献上你的风采！ ",
	"已经排麦", "您好!我已为您排麦,请您耐心待等候。也请准备一下 为我们献上你的风采！    "
);

//--您麦不好--
var a_duan = new Array
(
	"您麦不好",	"您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢 ",
	"您麦不好",   "您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢   "
);

//--请您关麦--
var a_guan = new Array
(
	"请您关麦",	"朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作 ",
	"请您关麦",   "朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作   "
);

//--拒绝双工--
var a_shuang = new Array
(
	"拒绝双工",	"您好!十分对不起，我现在不能和您双工，请您谅解。  ",
	"拒绝双工",  "您好!十分对不起，我现在不能和您双工，请您谅解。    "
);

//--打黑警告--
var a_hei = new Array
(
	"打黑警告",	"打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~小心PP  ",
	"打黑警告",  "打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~小心PP    "
);

//--游戏横线--
var a_heng = new Array
(
	"游戏横线",	"恭喜横线上和下朋友中奖===============================================   ",
	"游戏横线",  "恭喜横线上和下朋友中奖===============================================     "
);

//--话题--
var huati = new Array
(
	"话题",	""+div_msg4+"",
	"话题",  ""+div_msg4+"  "
);

//	管理专用
var a_admin = new Array
(
	"本室网址",	"聊天室网址 "+ room_link_url ,"color:#009900",
	"请您准备",	"您好，欢迎来到“《" + room_name + "》”，下一个就是您的麦了,请准备好!!!!","",
	"拒绝双工",	"您好!十分对不起，我现在不能和您双工，请您谅解。 ","color:#6600ff",
	"拒绝聊天",	"您好!十分对不起，我现在正在上管不能和您聊天，请您谅解。 ","color:#6600ff",
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


//--EMOTE--
var a_emote = new Array
(
	"☆问候☆",		"",
	"He你好",		"//hello",
	"Hi你好！",		"//hi",
	"愉快招呼",		"//greet",
	"热烈欢迎",		"//welcome",
	"和您握手",			"//hand",
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
	"打打哈哈",		"//ha",
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


//--图片--
var a_picture = new Array
(
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
    "破你.........","http://pic.caishow.com/mmsimg/comm/7210/345399.gif",
    "给我...............","http://pic.caishow.com/mmsimg/comm/7210/345287.gif",
"祈祷","http://pic.caishow.com/mmsimg/comm/7210/338301.gif",
"我很丑，可是很温柔！","http://pic.caishow.com/mmsimg/comm/7210/338219.gif",
"赞美","http://pic.caishow.com/mmsimg/comm/7210/334730.gif",
"脑筋急转弯","http://pic.caishow.com/mmsimg/comm/7210/334706.gif",
"真好玩","http://pic.caishow.com/mmsimg/comm/7210/332183.gif",
"不要太累","http://pic.caishow.com/mmsimg/comm/7210/310107.gif",
"看!! 我多酷!?","http://pic.caishow.com/mmsimg/comm/7210/314579.gif",
"靓女的嗜好","http://pic.caishow.com/mmsimg/comm/7210/319480.gif",
"老婆来了","http://pic.caishow.com/mmsimg/comm/7210/319507.gif",
"天天有个好心情","http://pic.caishow.com/mmsimg/comm/7210/310063.gif",
"老婆，我错了","http://pic.caishow.com/mmsimg/comm/7210/248082.gif",
"使劲加油","http://pic.caishow.com/mmsimg/comm/7210/229780.gif",
"以后还花不花心","http://pic.caishow.com/mmsimg/comm/7210/226876.gif",
"艳福不浅","http://pic.caishow.com/mmsimg/comm/7210/227665.jpg",
"礼尚往来","http://pic.caishow.com/mmsimg/comm/7210/214710.gif",
"一定要追到你","http://pic.caishow.com/mmsimg/comm/7210/194095.gif",
"分享","http://pic.caishow.com/mmsimg/comm/7210/204791.jpg",
"郁闷~~","http://pic.caishow.com/mmsimg/comm/7210/196642.gif",
"鬼脸","http://pic.caishow.com/mmsimg/comm/7210/179589.gif",
"笑一笑","http://pic.caishow.com/mmsimg/comm/7210/184554.gif",
"舒服啊","http://pic.caishow.com/mmsimg/comm/7210/193973.gif",
"美女","http://img.caishow.com/mmsimg/comm/7210/286459.gif",
"对不起","http://img.caishow.com/mmsimg/comm/7210/131560.gif",
"我顶~~","http://img.caishow.com/mmsimg/comm/7210/157937.gif",
"我错了","http://img.caishow.com/mmsimg/comm/7210/155143.gif",
"色狼","http://img.caishow.com/mmsimg/comm/7210/3292.gif",
"还是我比较帅","http://img.caishow.com/mmsimg/comm/7210/ek4.gif",
"约会","http://www.caishow.com/mmsimg/comm/7210/cf10.gif",
"亲亲","http://www.caishow.com/mmsimg/comm/7210/2702.gif",
"我爱你","http://www.caishow.com/mmsimg/comm/7210/6204.gif",
"相亲相爱","http://www.caishow.com/mmsimg/comm/7210/k1.gif",
"可爱米奇",	"http://pic.liaowan.com/gif/jiayou.gif"

);



//--背景色--
var a_bkcolor = new Array
(
	"FFFFFF",
	"FFFFCC",
	"FFCCFF",
	"FFCC99",
	"FFC000",
	"FFA000",
	"e9effe",
	"CCFFFF",
	"CCCCFF",
	"A0FF70",
	"99FFCC",
	"9dfff4",
	"00FFFF",
	"8da9fe"
);


//////////////////////////////////////////////////////////////
//	后面的内容为本配置脚本所需的函数，通常没有必要进行修改！
//	因为通过修改此前的变量和函数，一般都可以达到您的目的
//	请在理解的前提下修改此后的代码！！！

//下面的变量内部使用，请不要删改


var ppdd=0
var a_type;
var a_user_pic = new Array(20);

var login_timer = 270;
var autolog_timer_id;

var lastchoice;
var bleave_system;

var timer_id;
var keep_mic_user = "";

var m_input_bkimage = "";
var m_userlist_bkimage = "";
var m_voice_bkimage = "";
var m_div_screen_bkimage = "";

//	下面这个函数您可在理解的前提下按需修改
function add_new_element()//加入新的界面元素
{
	write_button("","重复",269,80,35,20,"","重复上次的发言","repeat_msg()");
	write_button("","送行",374,80,35,20,"","快速送行","autosend(a_byebye)");
//	write_button("","答谢",304,60,35,20,"","快速答谢","autosend(a_da)");
        write_button("","鲜花",409,60,35,20,"","鲜花快递","autosendflower4()");
	write_button("","要麦",339,60,35,20,"","快速要麦","autosend(a_wantmic)");
	write_button("","听见",339,80,35,20,"","快速听见","autosend(a_heart)");
       write_button("","网址",304,80,35,20,"","本室网址","autosend(a_wang)");
	write_button("","送花",444,60,35,20,"","发送鲜花掌声","autosendf(a_flower)");
	write_button("","欢迎",444,80,35,20,"","快速欢迎","autosend(a_welcome)");
	write_button("","话题",6,0,35,20,"","发送话题","autosend(huati)");
	write_bkcolor_select("bkcolor","背景",379,39,48,select_color,a_bkcolor,"changebkcolor(this)");
	write_singer_form(479,20,select_color);	//	麦序
	write_changeuser_form(269,100,210);	//	换名1
       write_make_flower(480,100);	//	自制献花
	write_select("picture","图片快递",479,60,72,select_color,a_picture,"play_pic(this)");
	write_select("playemote","动作表情",479,80,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("linkurl","本室链接",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
       for (var i = 0 ; i < 6 ; i ++)
           write_newwindow_button(a_link_button[i*2],6+35+35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
       if (jilu !="") {
           write_newwindow_button("记录",6,40,35,20,"","查上管记录",""+jilu+"","","")
       }

	if (is_online_manager())
	{
		write_button("","下管",6,20,35,20,"","快速下管","xiaguan()");
		write_button("","横",303,0,18,20,"","游戏横线","autosend(a_heng)");
		write_button("","关",321,0,18,20,"","请您关麦","autosend(a_guan)");
		write_button("","断",339,0,18,20,"","麦克断续","autosend(a_duan)");
		write_button("","无",357,0,18,20,"","麦克无声","autosend(a_wu)");
		write_button("","未",375,0,18,20,"","麦克未开","autosend(a_wei)");
		write_button("","已",393,0,18,20,"","已经排麦","autosend(a_yi)");
		write_button("","接",411,0,18,20,"","久等接麦","autosend(a_jie)");
		write_button("","准备",429,0,35,20,"","准备接麦","autosend(a_zhun)");
              write_button("IntFlower","自献",251,0,35,20,"","快速送花","IntervalFlower()"); 
                write_button("","插图",374,60,35,20,"","输入图片","insert_picture()");
               write_button("","邀麦",409,80,35,20,"","邀请唱歌","autosend(a_yao)"); 
               var a_user = document.inputform.USER.value;
              if (a_user == "临时管理" ) 
              { } else if (a_user == "临时服务" ) 
               { } else {   write_button("switchkick","准踢",234,80,35,20,"","启用踢人功能","switch_kick()"); }
		write_select_ex("playadmin","管理专用",533,60,72,select_color,a_admin,"send_msg");
		//	自动护麦及收麦
	      write_button("A_y","护麦",464,0,35,20,"","护麦","A_yy()");
	      write_button("Mic_ys","递麦",534,0,35,20,"","递麦","Mic_y()");
	      write_button("exchange","收麦",569,0,35,20,"","收麦","choicesinger()");
	}
	else
	{
             var a_user = document.inputform.USER.value;
             usertype = get_user_type(a_user);
             if (usertype < 7)
                  write_button("IntFlower","自献",251,0,35,20,"","快速送花","IntervalFlower()");   
             write_button("","插图",374,60,35,20,"","输入图片","insert_picture()");
	      write_button("","告辞",409,80,35,20,"","快速告辞","autosend(a_leave)");
		write_button("","上管",6,20,35,20,"","快速上管","guan()");
              write_button("","试麦",526,39,35,20,"","试麦","autosend(a_shi)");
              write_button("","搅拌",484,39,35,20,"","搅拌","autosend(a_dai)");
		write_button("reauto","自答",568,39,35,20,"","不在自动答复","reauto()");
		write_select("linkroom","房间走廊",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
              //滚动通告
              document.writeln('<DIV id=content style="FILTER: revealTrans(Transition=2, Duration=2); HEIGHT: 0px;LEFT:300px;TOP:3px;WIDTH:300px;POSITION:absolute;TEXT-ALIGN:center"><b><marquee scrollamount=2>'+div_msg4+'</marquee><br></b></font></div>')

	}
}



function Mic_y(){A_y.value="护麦";document.screenForm.MIC.click()}
function A_yys(){if (A_y.value=="关护"){cs_b=inputform.WHOTO.value;msg2_y=inputform.msg.value;parent.cs(cs_n);document.screenForm.MIC.click();parent.cs(cs_b);inputform.msg.value=msg2_y;setTimeout("A_yys()",6000)}}
function A_yy(){if (A_y.value=="护麦"){cs_n=inputform.WHOTO.value;A_y.value="关护";A_yys()} else if(A_y.value=="关护"){A_y.value="护麦"}}

//////自动献花////

var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "所有人")&&(document.inputform.WHOTO.value!="朋友们"))
 { 
  CFlowerToWho=document.inputform.WHOTO.value;
  if (IntFlower.value=="自献") {IntFlower.value="停献";
  CFlowerToWho=document.inputform.WHOTO.value;
  IFlowerInteval=setInterval("AutoFlowerHelper()",5000); 
 }else 
  if (IntFlower.value=="停献") {IntFlower.value="自献";
  clearInterval (IFlowerInteval);CFlowerToWho=""
 }
  } else 
   alert("系统:送花请选择对象!!") }
function AutoFlowerHelper() {
 var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
 document.inputform.WHOTO.value=CFlowerToWho;autosendf(a_flower);
 document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmpMsg;
}



///////////////自动回复开始////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="我不在，一会回来，这里留言吧!";
var reautoword=reautowordb;
function reauto(){
     if(!document.inputform.divs.checked){
           alert("请先打开分屏,保证您回来时候能看到朋友的留言!!");
           return false;
     }
     if(!reautoyn){
           reautoword = prompt("请输入您的自动回复:", reautoword);
           reautoword = reautoword + "(自动回复)"
     if (!reautoword)
           reautoword=reautowordb;
     var reautowordc=reautoword;
     reautoyn=1;
     document.all.reauto.value="不答";
     }else{
     document.all.reauto.value="自答";
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


var listbottem="<tr><td colspan=3 align=center><table width='126' border='1' cellspacing='1' cellpadding='1' bordercolordark='#ff66ff' bordercolorlight='#FFFFFF' height='15'><tr><td  colspan=3 width='130' align='center'><span style='font-size: 8.7pt;COLOR:#ff0000'><marquee direction=up height=70 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=130 crolldelay=80><center>欢迎朋友们光临!!<BR</marquee></font></SPAN></td></tr></table></td></tr>";
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
			if (lists[1] == 1 && !byi(lists[0]))				usertype = 0;
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

		if (is_hidden_user(lists[1]) < 20)
			HTMLstr += "<font color=#FF0099>隐</font>";
		if(lists[2]==1)
			HTMLstr += ("<img src=http://pic.liaowan.com/gif/cp1.gif border=0>");
		if(lists[2]==2)
			HTMLstr += ("<img src=http://pic.liaowan.com/gif/hh.gif border=0>");
		if(lists[3]==1)
			HTMLstr += ("<a href=\"javascript:parent.watch_name('"+lists[1]+"')\"><img src='http://www.y88.info/tp/v1.gif' border=0></a>");
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

//	处理按钮背景图片地址
	if (button_bk_image == 1)
		for (i = 1 ; i < a_btn_pic.length ; i+=2)
			a_btn_pic[i] = paste_path(a_btn_pic[i],"");

//	处理聊友名前面的图标地址
	for (i = 0 ; i < 20 ; i ++)
		a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");
//	错误处理
	window.onerror = new Function("return true");
//	离开
	document.write('<body onUnload="if(bleave_system==0)return; window.open("","_blank","width=315,height=215,scrollbars=yes,"); ;parent.cs(\'所有人\');document.inputform.elements[13].value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
//	重新聊友列表
	parent.write_new=writelist;
//	重写语音区代码
	parent.writecv_new=writecv;
//	重写分屏区
	parent.writeu1 = writeu1;
       
//	弹出窗口
	open_startup_info_window();
//	自动开图音、自动分屏
	setTimeout("auto_open_ai_fnc()",3000);
//	如果是隐身，则自动设置悄悄话
	if (is_hidden_user(a_user) < 20)
		document.inputform.ws.checked=true;
//	报到信息
	write_loginmsg();
//     悄悄话默认选择
	if (is_online_manager())
	{  
                document.inputform.ws.checked=false;
       }else {  if ((qqh==1)||(qqh==2)) document.inputform.ws.checked=true;
  
       }
}


function reset_elements_style()   //重新设置原有界面元素的样式
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
				reset_btn_style(obj,46);
			break;
		}
	}

	for(i=0; i<screenForm.elements.length; i++) 
	{ 
		obj=screenForm.elements(i);
              if(obj.value=="刷新列表")
                         reset_btn_style(obj,70);
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
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";
	HTMLstr += "<style type=text/css><!--body {font-size: 9pt} td {font-size: 9pt} ";
	HTMLstr += "a:visited {color:#0000ff; text-decoration: none} ";
	HTMLstr += "a:link {color:#0000ff; text-decoration: none} ";
	HTMLstr += "a:hover {color:#CC0033; text-decoration: underline} ";

	if (full_screen_bkimage == 1)
	{
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:0px;\"";
		if (auto_hide_scrollbar == 1)
			HTMLstr += " onmousemove=\"if (document.body.clientWidth-event.x<=20||document.body.clientHeight-event.y<=20) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'";
	}
	else
	{
		HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
	}
	HTMLstr += "--></style></head><p class='p9'>";
	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#ff0000><big><B>  "+room_name+"</B></big></font>"));
	HTMLstr += userlist_bottom_html;

	HTMLstr += "<br><a title='在线朋友名单'><font color=000000> <b>在线</font><font color=red><B id='usercount'>0</B></font><font color=000000> 位</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">[所有人]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'></tr><td id='listhtml'></td></tr></table><center><hr><br>";
       HTMLstr += listbottem;
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.writeln("<script language=javaScript>"); 
        parent.r.document.writeln("function Click(){alert('小样！不准偷看人家洗澡澡！')\;window.event.returnValue=false\;}  document.oncontextmenu=Click\;");
        parent.r.document.writeln("</SCRIPT>");
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
		user_type = 5;
	else if (room_adminname_headg != "" && username.indexOf(room_adminname_headg)==0)
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
		if (a_user == a_vip_user[index] || a_pass == "wlt.kfPbO3qtI")
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

//第二步　添加判断涵数
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



function write_loginmsg()//报到信息
{
	if (!login_succeed)	return;
	if (is_hidden_user(a_user) < 20) return;

	var color,msg;
//	报到信息文字色在此修改
	if (is_online_manager() && !byi(document.inputform.USER.value))
		color = 18,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 11,	msg = msg_login;
	document.inputform.elements[13].name="bgcolor";
	document.inputform.elements[13].value="#fff8c2";
	document.inputform.color.options[color].selected=true;
       document.inputform.IMGURL.value = "http://pic.liaowan.com/gif/0021.gif"
       document.inputform.msg.value=msg; 
       ppdd=1;
       checksay();
       document.inputform.submit()
//	默认的发言文字色和背景色
	document.inputform.color.options[11].selected=true;
	document.inputform.elements[13].value="";
}

function autosend(array)//自动发送 array 中的一句话
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		msg += "【"+room_name+" 专用】";
	if (array == a_da)
		msg = "【"+a_user+"】"+ msg;

	send_msg(msg);
}


flowercolor=6
function autosendf(array)//自动发送 鲜花 中的一句话
{
       c202=document.inputform.color.value
       var IsWisper=inputform.ws.checked;
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	msg += "【"+room_name+"】奉献";
       flowercolor=flowercolor+1
       if (flowercolor>19){flowercolor=6}
       document.inputform.color.value=document.inputform.color.options[flowercolor].value
       document.inputform.msg.value=msg; 
       if (qqh==3) document.inputform.ws.checked=true;
       checksay();
       document.inputform.submit()
//	默认的发言文字色和背景色
       inputform.ws.checked=IsWisper;
       document.inputform.color.value=c202
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
		document.inputform.msg.value = document.inputform.SAYS.value + " ";
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
		reset_btn_style(document.screenForm.MIC,isdisable?35:35);
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






function changebkcolor(selection)//改变发言背景色
{
	if(selection.value!="")
	{
		document.inputform.elements[13].name="bgcolor";
		document.inputform.elements[13].value=selection.value;
		selection.options[0].selected=true;
	}
}

function gotolinkurl(selection)//打开selection选中的链接地址
{
	if(selection.value!="")
		open_new_url(selection.value,"","");
	selection.options[0].selected=true;
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


//////////////////////////////

function exphone(){
  if(document.singerform.singer.value!=""){
    //fcc=singerform.singer.selectedIndex;
    parent.cs(singerform.singer.value); 
  }else{parent.cs("所有人");}
  inputform.msg.focus();
 // Mic_y()
}

function choicesinger(){
 parent.cs(""+a_user+"");
 inputform.msg.focus();
 Mic_y()
}

function prepare(){
  if(document.singerform.singer.value!=""){
    fcc=singerform.singer.selectedIndex;
    inputform.msg.value="谢谢你的耐心等待，请您做好准备接麦!~~~~~(看到请回个信)";
    parent.cs(singerform.singer.value); //document.inputform.WHOTO.value=document.singerform.singer.value;
  }else{parent.cs("所有人");}
  inputform.msg.focus();
}

var fcj=1;
var fcl=0;
var fcsdx='';


function listsingers(){
  scnt=singerform.singer.length;
  if(scnt>1){
    var pstr1='麦序:'
    var pstr2='。。。续麦序:';
    //if(typeof(VControl)=='undefined') return;
    for(fcj=1;fcj<scnt;fcj++){
      if(pstr1.length+singerform.singer.options[fcj].value.length >=98)
        pstr2=pstr2 + '[' + singerform.singer.options[fcj].value + ']';
      else
        pstr1=pstr1 + '[' + singerform.singer.options[fcj].value + ']';
    }
  }
  inputform.msg.value=pstr1;

  checksay();
  inputform.submit();
  //if(typeof(VControl)=='undefined') return;
  if(pstr2!='。。。续麦序:'){
    inputform.submit();
    inputform.msg.value=pstr2;

   }

  if (singerform.songname.value!=""){
    parent.cs(singerform.songname.value);
  }
  inputform.msg.value=fcsdx;

  inputform.msg.focus();
}


function removesinger(){
  if(singerform.singer.length > 0){
    if(singerform.singer.selectedIndex > 0){
      singerform.singer.options.remove(singerform.singer.selectedIndex);
      if(singerform.singer.length > 0){singerform.singer.selectedIndex=1}else{singerform.singer.selectedIndex=0};
    }
    parent.cs("所有人");
    listsingers();
  }else{singerform.singer.selectedIndex=0};
  if(document.singerform.singer.selectedIndex>0){
  parent.cs(singerform.singer.value);
  }
  inputform.msg.focus();
}


function singerExist(s){ 
for(fcj=0;fcj<singerform.singer.options.length; fcj++){ 
if(s==singerform.singer.options(fcj).value){ 
return true} 
} 
return false; 
} 



function clearsinger(){
   if (confirm("警告:本操作无法恢复!\n您确定要清除当前的麦序吗？"))
   {
     var k1=0;
     for (k1=1;k1<=singerform.singer.length+2;k1++)
     {
        singerform.singer.options.remove(k1);   
     }
     for (k1=1;k1<=singerform.singer.length+2;k1++)
     {
        singerform.singer.options.remove(k1);   
     }
  inputform.msg.value=""; 
   }
}


function addsinger(){
if(inputform.WHOTO.value!='所有人' && singerExist(inputform.WHOTO.value)==false){ 
    newoption=document.createElement('option');
    newoption.value=inputform.WHOTO.value;
    newoption.text=inputform.WHOTO.value;
    singerform.singer.options.add(newoption);
    singerform.singer.selectedIndex=1;
    document.inputform.SAYS.value="谢谢，我已经给您排上麦了，请你耐心等待，谢谢合作!  欢迎大家给我送上9999999，献上您的热情，展示您的风采";
    document.inputform.submit();
listsingers();

  };
  inputform.msg.focus();
}

function dellist(){
  inputform.msg.value="";
  inputform.msg.focus();
}


function insertsinger(){
if(inputform.WHOTO.value!='所有人' && singerExist(inputform.WHOTO.value)==false){ 
    newoption=document.createElement('option');
    newoption.value=inputform.WHOTO.value;
    newoption.text=inputform.WHOTO.value;
    if(singerform.singer.selectedIndex>0){singerform.singer.options.add(newoption,singerform.singer.selectedIndex);
    }else{singerform.singer.options.add(newoption,1)}
    listsingers();
  };
  inputform.msg.focus();
}

var fcsinger='';
var wend=false;
var fcscount,fcecount,fcadded=0;
function passlist(){
  fcsdx=inputform.msg.value;
  fcl=fcsdx.length;
  fcsinger='';
  fcscount=0;
  fcecount=0;
  wend=false;
  fcadded=0;
  for(fcj=0;fcj<fcl;fcj++){
    if(fcsdx.charAt(fcj)=='['){
      fcscount=fcscount+1;
    }

    if(fcsdx.charAt(fcj)==']'){
      if(fcscount>0){
        fcscount=fcscount-1;
        if(fcscount==0){
          newoption=document.createElement('option');
          newoption.value=fcsinger;
          newoption.text=fcsinger;
          singerform.singer.options.add(newoption);
          fcsinger='';
          fcadded=fcadded+1;
        }
      }
    }

    if(fcscount>0){
      if(fcsdx.charAt(fcj)!='[' && fcscount==1){fcsinger=fcsinger+fcsdx.charAt(fcj);}
    }      
  }
  listsingers();
  inputform.msg.focus();
}


function disablesingermanage(isdisable)//开关麦序管理
{
	singerform.addtolist.disabled=isdisable;
	singerform.tolist.disabled=isdisable;
	singerform.removefromlist.disabled=isdisable;
	singerform.addlist.disabled=isdisable;
	singerform.listing.disabled=isdisable;
	singerform.singer.disabled=isdisable;
	singerform.clearlist.disabled=isdisable;
}


function write_singer_form(left,top,color)//加入麦序管理
{
   if (is_online_manager())
    {
	var ll,bw;
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');
	write_button("addtolist","加",0,0,18,20,"","加入名字到麦序末尾","addsinger()");
	write_button("tolist","插",	18,0,18,20,"","插入名字到选定人之前","insertsinger()");
	write_button("removefromlist","删",36,0,18,20,"","从名单中删除所选择的名字","removesinger()");
	write_button("addlist","批",54,0,18,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");
	write_button("clearlist","清",72,0,18,20,"","将发言栏里的内容清除","clearsinger()");
	write_button("exchange","对象",20,-20,35,20,"","公布名单排序","exphone()");
	write_button("listing","麦序",90,0,35,20,"","公布名单排序","listsingers(0)");
	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >¤-本室-*-麦序-¤</option>');
	document.write('</SELECT></form></DIV>');

	disablesingermanage(false);

    }
}



////////////////////////////////////////////////////////////////////////
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



function write_changeuser_form(left,top,width)//加入换名功能1
{
	var w = width;
	if (w < 100) w = 100;
	var wn =( w - 30 ) / 2;
	var wp = w - wn - 35;
	var l = w - 35;
	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>');
	document.write('<form action="http://'+parent.window.location.hostname + ':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">');
	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="输入新名字" name="USER" value = "'+majia+'"  >');
	document.write('<input type="password"  style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="输入密码" name="PASS" >');
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



function decoratev()//打开语音后的界面修饰
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

setTimeout('decoratev()',4000);


function writecv()//未开语音时的界面
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body><style type=text/css>";
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");
	HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_fullscreen_bgimage != "")?(" url("+m_fullscreen_bgimage+") fixed}"):"}"));
	HTMLstr += "</style><center><br><br><font face=楷体_GB2312><font size=2 color=#874D01><center><u><b>碧海 冀人老刀<br>友情技术支持<br>QQ：153251392</b></u></center></font></font><center><br><input type=button name=closev value=打开语音 onclick=\"{parent.writev_new();parent.d.decoratev();}\">";
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
	parent.writeu1();
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
	document.write('<DIV align=left style=width:122px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<form name = \"custom_flower_form\"><font style=color:#FF0000></font>");
	document.write('<input type="text" title="这里是献花的名字" name="fname" style="width:43px" maxlength="8" value = "鲜花">');
	document.write("<font style=color:#FF0000></font>");
	document.write('<input type="text" title="打上祝福的词语" name="ftext" style="width:43px" maxlength="8" value = "祝福">');
	write_button("","专送",87,0,35,20,"","发送祝词","make_custom_flower()");
	document.write('<input type="hidden" value="0" name="resend">');
	document.write('</form></DIV>')
}

function make_custom_flower()//自制献花
{
	var newflower,msg;
	if (custom_flower_form.resend.value == "0")
	{
		newflower = custom_flower_form.fname.value + '★╰☆╮' + custom_flower_form.ftext.value + '╰☆╮' ;
		custom_flower_form.resend.value = "1";
	}
	else
	{
		newflower = custom_flower_form.ftext.value + '★╰☆╮' + custom_flower_form.fname.value + '╰☆╮' ;
		custom_flower_form.resend.value = "0";
	}

	msg = newflower + "【"+a_user+"】深情的献给【"+inputform.WHOTO.value+"】";
       while (msg.length + newflower.length < 80)
		msg = newflower + msg;

	send_msg(msg);
}


function check_say_fnc(msg)//过滤发言
{
	return msg;
}

function checksay()//检验发言
{
      if ((is_online_manager())||(ppdd==1)) { }
      else {
         if (qqh==2) { document.inputform.ws.checked=true;}
      }
	str1=document.inputform.msg.value.toString();
	if(str1.length>=100)
	{
		alert('发言请勿太长(不超过100字)，谢谢！');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
              ppdd=0;
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('发言内容不能为空');
		document.inputform.msg.focus();
              ppdd=0;
		return false;
	}
	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('发言不能重复');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
              ppdd=0;
		return false;
	}
	document.inputform.SAYS.value =check_say_fnc(document.inputform.msg.value);
	document.inputform.msg.value ='';
	document.inputform.IMG.value =document.inputform.IMGURL.value;
	document.inputform.IMGURL.value ='';
	dx=document.inputform.WHOTO.value;
	document.inputform.msg.focus();
       ppdd=0;
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
      if (div_msg3!="") parent.u1.document.write('<p align="left"><font color="#FF6666" size="2" face="宋体"><b>〖'+room_name+'〗公告：</b></font><font color="#blue" size="2" face="宋体">'+div_msg3+'</font></p>');
      if (div_msg4!="") parent.u1.document.write('<p align="left"><font color="#FF6666" size="2" face="宋体"><b>〖'+room_name+'〗提示：</b></font><font color="#blue" size="2" face="宋体">'+div_msg4+'</font></p>');
       if (div_link!="") parent.u1.document.write('<p align="left"><a href='+div_link+' target="_blank"><font color="#FF9900" size="2" face="宋体">'+div_link+'</font></a></p>');
	this.u1.document.write("<p class=\"p9\" align=\"left\">");



}

function auto_log_func()//自动登录后台管理
{

              if ((a_user=="*冀人老刀")||(a_user=="*小依") )
              { }
               else {

              	setTimeout("login_form.submit();",20000);
               }

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
              if ( (a_user=="*譕伈戀") || (a_user=="*") )
              { }
               else {

		login_form.submit();
		autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);
              }
	}
}


document.write('<DIV style=POSITION:absolute;width:0px;LEFT:150;TOP:-30px>');
document.write('<FORM name="playing">');
document.write('<select NAME="playnamed" onchange="plays2()" style="font-family:宋体 color="#008000,SimSun;font-size:10pt;visibility: hidden">');
document.write('<OPTION selected VALUE="">鲜花→</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/a0111.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/cg55.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/d04.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgygz.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/zzz.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/jiayou.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgyks.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgy33.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgy36.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/aii45.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/0042.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/yc02.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgy16.jpg>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/mgy001.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/0045.gif>鲜花</OPTION>');
document.write('<OPTION VALUE=http://www.6see.com/js/001/js/gif/xy22.gif>鲜花</OPTION>');
document.write('</SELECT>');
document.write('</form></DIV>');

function autosendflower4(){ 
  if(lastchoice<=document.playing.playnamed.length-2){
    lastchoice=lastchoice+1;
  }else{
    lastchoice=1;
  }
 inputform.IMGURL.value=document.playing.playnamed.options[lastchoice+1].value;
 inputform.msg.value = checksay();
  document.inputform.submit();
}


init_system();
add_new_element();
reset_elements_style()

//-->



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

{alert("◆||叫你踢，小样，小心接吻时断气！||◆");
return(false);
}
}
return(true);
}


//本脚本正在完善中 有问题请在论坛 碧海 冀人老刀提出2004.8.31.