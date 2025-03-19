document.oncontextmenu = new Function("return false;");
var RoomName		="梦语居";			//房间名
var RoomNumb		="2150";			//房间号
var BlackRoomName	="私聊房间";			//私聊房间
var BlackRoomNumb	="2168";			//无私聊房间设置为：""
var RoomNick		="梦语";			//房间名简称
var HomePage		="http://"+RoomNumb+".liaowan.com/";	//房间地址
var JsPlace		="http://127.0.0.1/533/";	//脚本地址 
var YinPlace		="http://127.0.0.1/533/yy/yy.htm";	//语音调试地址   
var LogoPic		="http://127.0.0.1/533/pic/logo9.gif"	//房间LOGO图
var EmotePlace		="http://127.0.0.1/533/emote/";		//表情图地址
var HeadPlace		="http://127.0.0.1/533/face/";		//头像图地址
var ButtonPlace		=JsPlace+"button/";		//按钮图地址
var InHelloPic		=HeadPlace+"hi.gif";		//入室哈漏图
var AdminPicTop		=HeadPlace+"em26.gif";		//管理标志
var BgImg1		="http://127.0.0.1/533/pic/mengyu1.jpg";	//聊天区背景图 
var BgImg2		="http://127.0.0.1/533/pic/mengyu3.jpg";	//列表区背景图 
var BgImg3		="http://127.0.0.1/533/pic/mengyu-b.jpg";	//语音区背景图
var BgImg4		="http://127.0.0.1/533/pic/mengyu1.jpg";	//分屏区背景图
var PicSound1		="http://127.0.0.1/533/pic/sound01.gif";	//绿电话图
var PicSound2		="http://127.0.0.1/533/pic/sound02.gif";	//黑电话图
var PicVideo		="http://127.0.0.1/533/pic/video.gif";	//视频头图 

var AutoOpenAi		=1;		//自动打开图音选择，1为自动打开，0为不打开
var AutoOpenDiv		=0;		//自动打开分屏选择，1为自动打开，0为不打开
var AutoOpenNotice	=0;		//自动语音提示选择，1为自动打开，0为不打开
var OnlyChineseName	=0;		//只允许汉字名用户进入,0不限制，1只允许汉字名用户进入
var ZengPing		=617;		//聊友界面是否使用整屏 0不使用，使用时输入背景图高度象素
var mLocation		=3;		//整屏方式时图片的位置 1图片居中，2图片左上，3图片右下 

var ButtonTextColor	="#035E45";	//输入区按钮文字色195976
var ButtonOverTextColor	="#FC05F3";	//输入区鼠标覆盖按钮文字色
var ButtonBkColor	="#FC05F3";	//输入区按钮无图片时背景色
var SelectColor1	="#006898";	//选择框标题文字色
var SelectColor2	="#FC05F3";	//选择框副标题文字色

var SBar3DLightColor	="#ffffff";	//立体滚动条亮边的颜色
var SBarArrowColor	="#ffffff";	//上下按钮上三角箭头的颜色
var SBarBaseColor	="#ffffff";	//滚动条的基本颜色
var SBarTrackColor	="#E2E7C7";	//滚动条的背景颜色
var SBarDarkShadowColor	="#A8BE3A";	//立体滚动条强阴影的颜色
var SBarFaceColor	="#D4E2C9";	//立体滚动条凸出部分的颜色
var SBarHighLightColor	="#D4E2C9";	//滚动条空白部分的颜色
var SBarShadowColor	="#D4E2C9";	//立体滚动条阴影的颜色

var Lastchoice		=new Array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
var Auser		=document.inputform.USER.value;
var Apass		=document.inputform.PASS.value;
var OnTaker		="嗨！"+RoomNick+"的朋友们，大家好！我【"+Auser+"】来喽！";
var OnAdminTaker	="嗨！大家好！要麦或试麦的朋友请向我打999。我【"+Auser+"】上管喽！";
var OutAdminTaker	="【"+Auser+"】先下管了，谢谢大家对我工作的支持！";
var OutTaker		="走了喽，别送哦，看见字已经走了喽，我还会回来的！";
if (typeof(inhi)=="undefined") inhi="这里也许是您心灵的彼岸，这里也许是您停靠的港湾，您也许就是我们心灵的那一岸，您也许就是我们港湾中所需的那只船。来吧！朋友！您到岸了！";

//——室主：名称，头像——
var OwnerPic=new Array(
	"*admin","T01.gif",
	"*室主2","005.gif"
	);
//——脚本维护：名称，头像——
var JsPic=new Array(
        "*梦语居","w02.gif",
        "*维护1","002.gif"
	);
//——隐身人：名称。隐身者可以看到他隐身者的名字——
var Hider=new Array(
	"*隐身1",	"*隐身2"
	); 
//——聊友头像：名称，头像，性别。性别0女性，性别1男性 (根据申请添加头像及性别) ——
var HeadPic=new Array(
	'*人穷志短狗瘦毛长',	'X01.gif','0',
	'*⺷_⺷',		'X02.gif','0',
	'*我是谁?',		'X03.gif','0'
	);

//——聊友名过滤，凡是名字中包含下面文字不准进入房间——
var NameFilter = new Array(
	"屄",		"激情",		"王八",		"上床",		"月经"
	);

//——插图：缩写，图片文字，图名(图片请按格式自行添加)——
var Animated=new Array(
	"插图", "____","",
	"欢迎", "__","",
        "欢迎", RoomName+"欢迎你!", "0056.gif",
	"欢迎", "Welcome you of come", "0043.gif",
	"问好", "__","",
        "你好", "你好!!", "0109.gif",
	"你好", "你好,希望你在梦语玩的开心!", "0113.gif", 
        "哈喽", "哈喽", "0021.gif",
	"告别", "__","",
	"再见", "拜拜,欢迎再次光临梦语!", "0116.gif"
	);

//——聊友类别。类别，说明、列表颜色。(颜色请按需要自行修改)——
var AUserTitle = new Array(

	0,	RoomNick+"隐身人",	"#000000",
	1,	RoomNick+"在线管理",	"#ff0000",
	2,	RoomNick+"在线管理",	"#ff0000",
	3,	RoomNick+"室主",	"#0000FF",
	4,	RoomNick+"脚本维护",	"#0000FF",
	5,	RoomNick+"嘉宾",	"#0000FF",
	6,	RoomNick+"嘉宾",	"#8A03D7",
	7,	RoomNick+"嘉宾",	"#339900",
	8,	RoomNick+"嘉宾",	"#339900"
	); 

//——按钮连接：名称，地址。——
var BarLink=new Array(
	RoomNick+"论坛","http://127.0.0.1/bbsxp/",
	RoomNick+"相册","",
	RoomNick+"头像", JsPlace+"facelist.htm",
	"银沙歌词", "http://www.yinsha.com/lyrics",
	"歌曲大全", "",
	"歌词大全", "",
	"好歌好词", ""   
	);

//——友情通道：房间名，房间号——
var RoomLinks=new Array(
	"☆"+RoomNick+"友情通道☆","____",
	"网络大学","383037"
	);
var scrlstyle="scrollbar-arrow-color:"+SBarArrowColor+";scrollbar-track-color:"+SBarTrackColor+";scrollbar-base-color:"+SBarBaseColor+";scrollbar-face-color:"+SBarFaceColor+";scrollbar-3d-light-color:"+SBar3DLightColor+";scrollbar-darkshadow-color:"+SBarDarkShadowColor+";scrollbar-highlight-color:"+SBarHighLightColor+";scrollbar-shadow-color:"+SBarShadowColor+";";
var tpmeffectevent=" onmouseout=\"this.style.color='"+ButtonTextColor+"'\" onmouseover=\"this.style.color='"+ButtonOverTextColor+"'\" ";
var buttonstyle="font-family:宋体,SimSun;font-size:9pt;color:"+ButtonTextColor+";POSITION:absolute;"
var buttonstyle36=";width:36px;height:20px;"+buttonstyle+"background-image:url("+ButtonPlace+"button36.gif);border:1px";
var buttonstyle44=";width:44px;height:20px;"+buttonstyle+"background-image:url("+ButtonPlace+"button44.gif);border:1px";
var buttonstyle60=";width:60px;height:20px;"+buttonstyle+"background-image:url("+ButtonPlace+"button60.gif);border:1px";
var wleft		=(screen.width-450) /2;
var wtop		=(screen.height-200)/2;
var login_succeed	=true;
var button_pic = new Array(
	12,	"button12.gif",
	19,	"button19.gif",
	28,	"button28.gif",
	36,	"button36.gif",
	40,	"button40.gif",
	44,	"button44.gif",
	47,	"button47.gif",
	57,	"button56.gif",
	60,	"button60.gif",
	70,	"button70.gif",
	114,	"button114.gif"
	);
if (mLocation==1)
	Location="center center";
else if (mLocation==2)
	Location="top left";
else if (mLocation==3)
	Location="bottom right";
else
	Location="";
UserNameFilter()
document.write("<style type=text/css>");
document.write("TD{FONT-SIZE:9pt;}");
document.write("BODY {FONT-FAMILY: 宋体; FONT-SIZE: 11pt; COLOR: #000000;"+scrlstyle+";background-position:top left;background-repeat:repeat;}");
document.write("INPUT {BORDER-BOTTOM-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-COLOR: #cccccc; BORDER-LEFT-WIDTH: 1px; BORDER-RIGHT-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-COLOR: #cccccc; BORDER-TOP-WIDTH: 1px; FONT-SIZE: 9pt; color:"+ButtonTextColor+"; HEIGHT: 19px; PADDING-BOTTOM: 1px;PADDING-TOP: 1px}");
document.write("SELECT {BACKGROUND-COLOR: #efefef; BORDER-BOTTOM-COLOR: #000000; BORDER-BOTTOM-WIDTH: 1px; BORDER-LEFT-COLOR: #000000; BORDER-LEFT-WIDTH: 1px; BORDER-RIGHT-COLOR: #000000; BORDER-RIGHT-WIDTH: 1px; BORDER-TOP-COLOR: #000000; BORDER-TOP-WIDTH: 1px; FONT-FAMILY: 宋体; FONT-SIZE: 9pt; COLOR: #000000}");
document.write("</style>");
function loadclock(){
	if (document.all)setInterval("timeshow()",1000)
	}
function replacetag(){
	document.body.topMargin=19;  
	var c10="FONT-SIZE:10pt;FONT-FAMILY:宋体,SimSun";
	document.all.tags("TABLE")[0].cells(2).innerHTML="";
	screenForm.EAR.style.visibility = "hidden";
	screenForm.SHOW.style.visibility = "hidden";
	inputform.WHOTO.style.cssText=c10+";WIDTH:100px";
	screenForm.object.style.cssText=c10+";WIDTH:65px";
	inputform.msg.style.width=337; 
	}
//document.write('<body onload="replacetag()">');
setTimeout("replacetag()",100);
function killErrors() {return true;}
window.onerror = killErrors;

var AutoChat1=new Array(//献花
	"鲜花~~~~鲜花~~~~鲜花~~~~鲜花~~~~鲜花~~~~鲜花~~~~鲜花~~~~鲜花~~~~鲜花~~~~鲜花~~~~鲜花~~~~",
	"。°☆．°·☆°·啪啪~~°☆．°.oоО○.oоО○·．∴°☆．°·☆°·啪啪~~°☆．°.oоО○.oоО○·．∴°☆．°·☆",
	"｀、｀、｀、流星｀、｀、｀、本是天上一仙媛｀、｀、｀、常恋人间来看看｀、｀、｀、带给大家好心情｀、｀、｀、：) 许愿：） ｀、｀、｀、",
	"☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～～签名～～～∵*☆★∴☆∵*☆★∴☆∵∵*☆★∴☆∵*☆★∴☆∵偶像～～签名",
	"★⌒_⌒★╰☆╮★⌒_⌒★╰☆╮好╰☆╮ぷ∞★※¤∮∴▓?☆真棒╰☆╮ぷ∞★※¤∮▓?☆啪啪啪啪啪╰☆╮ぷ∞★※¤∮飞吻¤¤",
	"≈小鱼儿都听呆了，不游了ゅ。ゅ≈≈≈ ゅゅ≈≈ ゅ. oゅ。小鸟儿都听呆了,不飞了ゅ ≈≈≈ゅゅ。ゅ≈≈≈ゅ叶儿也听呆了，永远青青了ゅ≈≈ . ゅ。ゅ ≈≈≈ゅ 真动听",
	"啪啪啪!~~!~~!~~!~~!~~! 啪啪啪!~~!~~!~~!~~!~~! ",
	"加油加油!嘿修嘿修!为你加油，嘿修嘿修！超级汽油，狂加，送给每位给人间带来欢乐的人!你唱的真好哦! (((((((((啪啪))))))))瑰花★☆ぷ",
	"·☆°·啪啪~~°☆．°.oO○.oO○·．∴°☆．°·☆°·啪啪~~°☆．°.oO○.oO○·．∴°☆．°·☆°·oO○·．∴°☆．°·☆",
	"。ゅoОゅ.。ゅoОゅゅoОゅ.。ゅoОゅ.。ゅoОゅ.。ゅoОゅゅoОゅ.。ゅoОゅ.。ゅoОゅ.。ゅoОゅゅoОゅ.。ゅoОゅ.。ゅoОゅ。",
	"╭╮∩╭╮∩╭╮啪，啪，啪∩╭╮∩╭╮∩╭╮∩啪，啪，啪╭╮∩╭╮∩╭╮啪，啪，啪∩╭╮∩╭╮∩╭╮∩╭╮啪，啪，啪∩╭╮",
	"棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓★",
	"¤╬╭╮∩☆◢啪啪◣☆¤╬╭╮∩☆◢啪啪◣☆¤╬╭╮∩☆◢啪啪◣☆¤╬╭╮∩☆◢啪啪◣☆¤╬╭╮∩☆◢啪啪◣☆¤╬╭╮∩☆",
	"*^_^*《啪》*^_^*《啪》*^_^*《啪》*^_^*《啪》*^_^*《啪》*^_^**^_^*《啪》*^_^*《啪》*^_^*《啪》*^_^*《啪》*^_^*",
	"╬╬╬╬╬╬╬╬╬╬(((((啪啪)))))╬╬╬╬╬(((((啪啪)))))╬╬╬╬╬(((((啪啪)))))╬╬╬╬╬╬╬╬╬╬",
	"★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍★囍囍★囍囍★囍囍★囍囍★囍囍★囍囍★",
	"╰●╮〓╰●╮~*~啪~*~〓╰●╮~*~啪~*~〓╰●╮~*~啪~*~〓╰●╮~*~啪~*~〓╰●╮~*~啪~*~〓╰●╮~*~啪~*~〓╰●╮~*~啪~*~〓╰●╮",
	"ぷ╰☆╮ぷぷ╰☆╮★☆ぷ╰☆╮啪啪啪！∴。**．°°．∴°★·此曲只应天上有人间哪得几回闻°°真好听！°╰☆╮★☆ぷ╰☆╮☆★☆",
	"咿呀咿呀咿呀咿呀哦~~~~~~嘻哩吗哈，叽里呱啦，呜哩吗呱，嘀哩呀哈，吗哒咕唧，噼里啪啦，哇哇呱呱，好棒哟！~~",
	"送给你的～、**玫瑰**．°☆牡丹☆·。*∴郁金香∴**∴°·**一筐一筐又一筐**玫瑰**．°牡丹☆·。*郁金香∴**∴°☆一筐一筐又一筐",
	"唱的真棒~~送你玫瑰花╰☆☆╮牡丹花☆╮╮茉莉花╰☆☆为你鼓掌（（（PAPAPA）））╰☆☆╮玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉");
var AutoChat2=new Array(//掌声
	);
var AutoChat3=new Array(//赞美
	"你是那样地美，美得象一首抒情诗。你全身充溢着少女的纯情和青春的风采。留给我印象最深的是你那双湖水般清澈的眸子，以及长长的、一闪一闪的睫毛。像是探询，像是关切，像是问候。",
	"你像一片轻柔的云在我眼前飘来飘去，你清丽秀雅的脸上荡漾着春天般美丽的笑容。在你那双又大又亮的眼睛里，我总能捕捉到你的宁静，你的热烈，你的聪颖，你的敏感。",
	"其实，我最先认识你是在照片上。照片上的你托腮凝眸，若有所思。那份温柔、那份美感、那份妩媚，使我久久难以忘怀。",
	"瀑布一般的长发，淡雅的连衣裙，标准的瓜子脸，聪明的杏仁眼，那稳重端庄的气质，再调皮的人见了你都会小心翼翼。",
	"远远地，我目送你的背影，你那用一束大红色绸带扎在脑后的黑发，宛如幽静的月夜里从山涧中倾泻下来的一壁瀑布。",
	"你蹦蹦跳跳地走进来，一件红尼大衣，紧束着腰带，显得那么轻盈，那么矫健，简直就像天边飘来一朵红云。",
	"你笑起来的样子最为动人，两片薄薄的嘴唇在笑，长长的眼睛在笑，腮上两个陷得很举动的酒窝也在笑。",
	"平心而论，你虽和“巧笑倩兮，美目盼兮”的形象有距离，但你肤色白皙，身材苗条，五官端正而显得秀气，颇有“清水出芙蓉”之感。和你刚刚接触的一瞬间，我就强烈地感到你身上散发出一种妙不可言的温柔气息。",
	"在人流中，我一眼就发现了你。我不敢说你是她们中最漂亮的一个，可是我敢说，你是她们中最出色的一个。那欣长健美的身材，优雅迷人的风度，尤其是那一头乌亮的秀发，有一种说不出的魅力。",
	"我不知道该怎样表达你留在我心中最强最深的印象。是你丰满颀长的身材？白皙的皮肤？乌黑幽深的眼睛？小巧红润的嘴唇？但还有一种说不出、捉不到的丰仪在煽动着我的心。",
	"你慢慢地向我走来：棕绿色的春衫，镶着白花边的翻颈；墨绿色的裤子，两条裤丝似刀削一样；乳白色的高跟鞋……啊，简真是一尊婷婷玉立的悲翠雕像！",
	"你那瓜子形的脸，那么白净，弯弯的一双眉毛，那么修长；水汪汪的一对眼睛，那么明亮！");
var AutoChat4=new Array(//思念
	"山川河流可以使人与人互相阻隔，却无法将心与心阻隔，无论你走到天涯海角。我的心永远陪伴着你。",
	"是怎样的缘份，指引我们相识？在生命的际遇里，牵连着你我的是丝丝真情搓成的红线。",
	"我想你，我的相思就像缠树的青藤一样，在春日的雨露中飞长，而你，就是我心中那棵常春树。",
	"回想我们在一起相聚的日子，我的心绪迷迷朦朦。你那充满朝气的身躯总是伴着月光入我梦来，让我牵挂不停。",
	"思念中我一千次一万次地问鸿雁问明月问春风，愿鸿雁将我的眷恋捎给你；愿明月将我的问候带给你；愿春风将我的关切送给你！",
	"我仍旧受着期待的煎熬，心中仍在把你思念。你的容颜一次又一次地出现在我的面前，还是那么亲切、美丽，但却无法亲近，就像天上的星星。",
	"无可奈何中，再重翻你往昔的情书，不禁泪落如雨！心中忍不住升起一阵愤恨，竟把它们烧成了纸灰，和泪吞下。倘若有一朝纸灰能复燃，请它把我那深藏着爱情之火的热心肠也燃烧成灰吧！",
	"假如您心里还有一个微小的我，请你回我一封信，痴心的我，苦等着您的回信！只有您的信，才能把我援救。",
	"整夜里我叹息，不得好睡，当膝陇的曙色升起，那燕子又绕着我的四周，絮絮不休。小燕子啊，静静吧，让我再睡一下，也许我会入梦，梦见她温柔的手臂绕着我。",
	"虽然只分别了两个星期，可是对我来说，好像是几个世纪了！我在这里，看见和你差不多的女孩就会情不自禁地想起你，并且偷偷地和你比较－－－放心，还没有一个能和你比的！",
	"每一天醒来，你的清影就在我眼前转。不管手里干什么事，一会儿，准走神儿了，呆呆的只想你，算着你什么时候回来。");
var AutoChat5=new Array(//爱慕
	"自从那次见了你之后，我的灵魂好像被你摄去了一般，你的影子，占据了我每一个记忆。你能理解我的痴心吗？",
	"我绞尽脑汁想写首赞美你的诗，但我失败了，因为即使全世界最美的言辞集中起来，也不能形容你美丽的万分之一呀！",
	"你的身影越来越频繁地出现在我的眼前，渐渐地，意如呼吸一般，一秒钟也不中断，弄得我吃不好饭，睡不好觉。",
	"我爱你的容貌，更爱你的心灵，即使我不能使你幸福，至少也要愿幸福与你同在。只要你幸福、快乐，我也就心满意足了.",
	"你像那天边的云，飘泊不定，叫人难以追寻；你像那水中的萍，流移四方，叫我难以琢磨。你能告诉我吗？怎样才能追上你的身影，怎样才能与你相伴不离？",
	"最难忘的是你的微笑，当它绽开在你的脸上时，我仿佛感到拂过一阵春风，暖融融的，把我的心都溶化了。",
	"你说，我们的心是相通的。确实，每次看见你，就像看见我自己，你想说什么，做什么，我总是事先感觉到，许多事我们不谋而合，我简直怀疑我俩前生是一个人。",
	"我知道，你爱我如上帝爱着羔羊，慈母爱着婴儿，你这种仁慈而善良的情感，简真使我受着万种温馨，万种沉醉。",
	"现在我的生和死，快乐和痛苦，完全操纵在你的手中，你能够赐予我圣洁的爱吗？",
	"愿把我的心嵌入你的心，使我俩的爱永远不变。",
	"你这个美丽可爱的小鸟，你要把我的心衔到什么地方去呢？",
	"爱之火，在我俩的心中燃起，从此我俩将被熔在一块。",
	"谁说现在是冬天呢？当你在我身旁时，我感到百花齐放，鸟唱蝉鸣。",
	"我感到世界上的一切，全部属于我了，因为你爱上了我。",
	"海可以枯，石可以烂，我对你的爱，永不会变。",
	"这么多年来，我一直在寻找理想的爱情，但没有一个人能像你那样在最初的时刻打动了我，而且越来越深沉的打动。");
var AutoChat6=new Array(//情话
	"今生有缘情悠绵，相思无荩心摧残。天隔地阻情不变，爱你之心到永远。",
	"平平淡淡遇上你，不知不觉爱上你，每天想你又念你，一生最爱就是你！",
	"我是你天冷的外套从来不说不好我是你用力的依靠短信里的微笑最快乐时候的拥抱",
	"你开心的时候，是我无上的享受；你悲伤的时候，是我无尽的折磨。这一切只因你是我唯一的至爱。",
	"我只想大声告诉你，你是我今生最美的遭遇；我想我不会忘记你，想贪婪地霸占你整个的心…让我靠近",
	"有时会忘了自己，有时会丢了记忆，永不放弃，我们的爱情！",
	"我的脚步被你牵引着，当你在哪停泊，你就是我的港湾，你飘泊时，而我是你身旁的一阵风。",
	"心里的一朵玫瑰花为你而绽放我的心为你而跳动，我的生命为你而诞生我的一切都是为了你",
	"我不敢说我是最爱你的人，但我可以保证，你是我最爱的人",
	"我的每一下心跳想你一次，直到我生命停止，心不再跳动！我爱你！",
	"爱你是一种感觉。想你是一个思念。让我们在一起的是缘份",
	"情深的云里有淡淡的诗，淡淡的诗里有绵绵的情，绵绵的情里有我轻轻的问候!!!",
	"书不尽言，言不尽意，意不尽情，情不自禁地对你说声--我真的好想你！",
	"你是我的心，你是我的肝，你是我生命的四分之三。你是我的胃，你是我的肺，你是我心中的红玫瑰！",
	"我对你的心，就像天上的恒星。永远不变。你是世上唯一能给我幸福的人。所以我会用一生的时候爱你。",
	"不是因为寂寞才想你，而是因为想你才寂寞。孤独的感觉之所以如此之重，只是想你太深。",
	"遇见你纯属天意，爱上你一心一意，苦恋你从无悔意，想念你让我失意，得到你才会满意。",
	"寂寞的夜为思念你而失眠，我失去了做梦的心情，但并非从此就没有梦了，而是梦里依然有你!",
	"你，对于整个世界，似一颗尘埃，但，对于我，却是整个世界",
	"心里的一朵玫瑰花为你而绽放我的心为你而跳动，我的生命为你而诞生我的一切都是为了你");
var AutoChat7=new Array(//告辞
	"轻轻的我走了，正如我轻轻的来；我轻轻的招手，作别西天的云彩……",
	"悄悄的我走了，正如我悄悄的来；我挥一挥衣袖，不带走一片云彩……",
	"其实不想走其实我想留，留下来陪你每个春夏秋冬，你要相信我再不用多久，我要你和我今生一起度过...",
	"【●】各位网友，网虫。网迷。网痴，网魔朋友们▅▆▇█俺这就拜拜了█▇▆▅祝大家聊得愉快▅▆▇█goodbye▅祝大家每天都有好亲密，明早拣到钱！【●】",
	"▅█拜拜了█▅一曲离歌泪千行,不知何日再逢君.大家多保重,有红包收吗，有的话，可以再多留三秒···",
	"依依不舍地望着大家，真是舍不得啊....我会想你们的..你们不用想我的，也不一定要把我放在心里好啦，只要今晚有梦，梦里有我就行啦%¤%￥∮#·@",
	"【●】祝大家聊得愉快█拜拜了█有缘我们下次再聊！！█祝大家聊得愉快█拜拜了█祝大家聊得愉快拜拜了【●】有缘我们下次再聊！",
	"痛苦挣扎地说：同志们，我不行了，我就先撤退啦，你们要坚持斗争！");
var AutoChat8=new Array(//要麦
	"我要麦呀999999我要麦呀999999我要麦呀999999",
	"我要麦╭┳≡●9999♀ 要麦╭┳≡●99999♀要麦99999●≡┳╮",
	"我要唱歌呀999999999999999999我要唱歌呀9999999☆★☆★我要唱歌呀",
	"999999╭┳＝●我要麦∮999999╭┳＝●∮急死我了！●≡┳╮999999",
	"999999╭┳＝●主持人！999999╭┳＝●快给我麦呀！999999╭┳＝●");
var AutoChat9=new Array(//听见
	"111111111111111111111111111111111111111111111",
	"【听见了】【听见了】【听见了】【听见了】【听见了】",
	"听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲",
	"【清楚，听见了】【清楚，听见了】【清楚，听见了】");
var AutoChat10=new Array(//欢迎
	"你好，欢迎您光临欢迎来到☆"+RoomName+"☆",
	"欢迎光临欢迎来到☆"+RoomName+"☆，这里就是您的家!!",
	"你好，┣┓┯⺷┯┏┫请上坐，请喝茶!! ",
	"我想你在365天,可是我有366天失忆,但梦语居却不能少了你,因为,我一直想记起你!",
	"欢迎您光临☆"+RoomName+"☆!这就是您的家,愿您在这里玩儿的开心、玩儿的愉快!",
	"欢迎来到☆"+RoomName+"☆，愿您在这里开心愉快，永葆一份好心情!");
var AutoChat11=new Array(//邀请
	"您好!亲爱的朋友,欢迎你的到来,你可以给大家唱一首歌吗？：）谢谢☆⌒_⌒");
var AutoChat12=new Array(//准备
	"您好!下一位到您接麦了,请您做好准备~~!谢谢! ");
var AutoChat13=new Array(//文明
	"//alert");
var AutoChat14=new Array(//稍后
	"您好!请稍后好吗?我们会在短时间内把麦克交到您的手上,请不要再打999喽,这样会影响我们的屏幕,也会影响网友聊天的.谢谢您的理解与支持!! ");
var AutoChat15=new Array(//接麦
	"您好!请您接麦,不好意思,让你久等了,请接好您的麦克风!(请对着您的麦克风说话或是唱歌,这样我们就能听到你的声音了☆⌒_⌒．☆°) ");
var AutoChat16=new Array(//拒双
	"您好!十分对不起，因为我正在上管主持，不能和聊友双工，请您谅解。等有时间我们再双工！实在抱歉了！");
var AutoChat17=new Array(//送别
	"临别，送上我诚挚的祝福：不管你走到哪里，幸运将时刻陪伴着你!",
	"人生最大的痛苦莫过于此！*^_^*"+RoomName+"*^_^*已把你当为知己。短暂的分离不算什么。我们明天见，好吗？一路顺风",
	"望着你离去的背影渐渐消失，两滴晶莹的泪花悄悄从腮边滑落。向对象用力的挥了挥手大声说到：“一定要记得我与你在一起不见不散。。。”",
	"*^_^*☆*^_^*希望您有空常回*^_^*"+RoomName+"*^_^*来看看╰☆☆╮临走送好亲密给您!*^_^*生活愉快*^_^*吉祥如意*^_^*合家欢乐*^_^**^_^*",
	"对着对象抱拳道“青山不改，绿水常流，咱们后会有期！手里拿着大堆礼物，语重心长的对[你]说：“这是一点心意，留着路上慢~慢~吃~！~”",
	"好吧，好吧，只是分开数小时，明天见。老地方。聊天室门前第三根电线杆不见不散！我想念你！！",
	"人生最大的痛苦莫过于此！*^_^*"+RoomName+"*^_^*已把你当为知己。短暂的分离不算什么。我们明天见，好吗？一路顺风",
	"好的，再见。感谢您的光临！欢迎您经常光临*^_^*"+RoomName+"*^_^*，我们随时欢迎您的到来！！！");
var AutoChat18=new Array(//网址
	"欢迎光临"+RoomName+"语音聊天室，本聊天室网址:"+HomePage);
var AutoChat19=new Array(//上管
	"//ADMIN");
var AutoChat20=new Array(
        RoomName+"欢迎你!", 			"0056.gif",
	"Welcome you of come", 			"0043.gif",
        "你好!!!", 				"0109.gif",
	"你好,希望你在"+RoomName+"玩的开心!", 	"0113.gif", 
        "哈喽!!!", 				"0021.gif",
        "欢迎光临"+RoomName+"!",		"0074.gif",
	RoomName+"欢迎您!",			"0085.gif",
	"愿您在"+RoomName+"开心!",		"0015.gif");

function WriteRoomLink(ALeft, ATop, AWidth){
	WriteSelectStartH("RoomLink", ALeft, ATop, AWidth, "gotoroom(RoomLink)");
  	WriteSelectOption(RoomLinks);
	WriteSelectEnd();
	}
function WriteGoodLink(ALeft, ATop, AWidth){
	var GoodLinks=new Array(
	"☆"+RoomNick+"酷站连接☆","____",
	"聊湾梦语","http://2001.liaowan.com/",	
	"精彩网址","http://www.5566.net",
	"TOM 音乐","http://fm974.tom.com/life/waichang/index.html",
	"可乐乐园","http://www.kele8.com/game/login.htm",
	"南都歌词","http://www.nytv.com.cn/nytvweb/geci/default.asp",
	"极限歌词","http://www.chinamp3.net/search/index.php",
	"碧沙歌词","http://www.yinsha.com/lyrics",
	"搜刮音乐","http://www.sogua.com",
	"音乐视听","http://app.tom.com/music/searchsong.php",
	"北海数据","http://www.beihai-go.com/index.html",
	"榕树文学","http://www.rongshuxia.com/",
	"电子相册","http://photos.gznet.com/",
	"素材精品","http://www.tucoo.com/ai/photo/Style0226/index.htm",
	"时代图霸","http://www.cj888.com/photo/photo.htm");
	WriteSelectStartH("GoodLink", ALeft, ATop, AWidth, "GoToWhere(GoodLink)");
  	WriteSelectOption(GoodLinks);
	WriteSelectEnd();
	}
function WriteBkColor(ALeft, ATop, AWidth){
	var BackColors=new Array(
	"背色","____",
	"恢复","#ffffff",
	"浅黄","#FFFFCC",
	"浅紫","#CCCCFF",
	"浅绿","#99FFCC",
	"浅橘","#FFCC99",
	"浅蓝","#CCFFFF",
	"粉色","#FFCCFF",
	"淡灰","#c0c0c0",
	"淡青","#00ffff",
	"淡蓝","#0088ff",
	"浅褐","rosybrown");
	WriteSelectStart("BackColor",ALeft, ATop, AWidth, "SetbkColor(BackColor)");
	WriteSelectOptionCol(BackColors);
	WriteSelectEnd();
	}  
function WriteFlowers(ALeft, ATop, AWidth){
	var Flowers=new Array(
	"☆"+RoomNick+"常用词语☆","____",
	"☆本室☆","本聊天室地址："+HomePage,
	"☆要麦☆","╭┳≡●～♀♀我要麦♀♀我要麦♀♀我要为我喜欢我歌的人唱一首歌呢!主持!主持!!!快给我麦呀!♀♀♀～～～∮∮∮急死我了! ●≡┳╮",
	"☆搅拌☆","╭┳≡●～♀我要麦♀我要搅拌!我要搅拌!!主持!主持!!!请给我麦,我要搅拌他唱的歌!! ",
	"☆加油☆","加油加油！为你加油，超级汽油，狂加，送给每位给人间带来欢乐的人！你唱的真好哦！(((((((((啪啪))))))))瑰花★☆ぷ╰☆╮满天星★☆╮ぷ",
	"☆花篮☆","真好送你一个大花篮∴°* *玫瑰* *．°☆牡丹☆?。 *康乃欣∴ * *∴°茉莉花 ☆?。*．郁金香 * *∴°海棠花∴° ．* *还有一只勿忘我~~~",
	"☆精彩☆","这不会是真的吧！你也该给我们来一首……今晚有你真精彩……歌美人也美今晚有你真精彩……今晚有你真精彩……今晚有你真精彩……",
	"☆喝彩☆","oooOOO为你来喝彩oooOOO掌声响起来oooOOO谢谢你的歌oooOOO啪啪啪啪啪oooOOO歌星啊oooOOO",
	"☆送酒☆","唱的真好~~送茅台酒~~ 送五粮液~~ 送二锅头~~ 送茅台酒~~ 送五粮液~~ 送二锅头~~送茅台酒~~ 送五粮液~~ 送二锅头~~送茅台酒~~ 送五粮液~~",
	"☆咿呀☆","咿呀咿呀咿呀咿呀哦~~~~~~嘻哩吗哈，叽里呱啦，呜哩吗呱，嘀哩呀哈，吗哒咕唧，噼里啪啦，哇哇呱呱，好棒哟！~~",
	"☆啵啵☆","@_@(啵）@_@(啵）@_@(啵）@_@(啵）@_@(啵)@_@(啵）@_@(啵）@_@(啵）@_@(啵）@_@(啵）@_@(啵）@_@(啵）@_@(啵）@_@(啵）@_@(啵）宝贝的吻",
	"☆版权☆","啪~啪~啪~啪~ ゅoОゅゅゅoОゅ.。ゅoゅ.。ゅoОゅ.。ゅoОゅ.。ゅoО啪~啪~啪~啪~啪~啪~啪 ゅ。ゅ㊣版权所有㊣违者必究㊣!oОゅ! oОゅ",
	"☆可爱☆","☆．°·～_～·°．☆☆．°·～_～·°．☆☆．°·～_～·°．☆☆．°·～_～·°．☆☆．°·～_～·°．☆☆．°·～_～·°．☆",
	"☆8G8G☆","鼓掌！8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G8G",
	"☆下雨☆","哗啦啦---下雨拉｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、｀、｀、｀、鲜花｀、｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀",
	"☆醉了☆","~!!～~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~～☆★☆～~哇~～!～☆★☆～~哇~～!～~唱的太棒了~～☆★☆～~",
	"☆听呆☆","≈小鱼儿都听呆了，不游了ゅ。ゅ≈≈≈ゅゅ≈≈ゅ.oゅ。小鸟儿都听呆了，,不飞了ゅ≈≈≈ゅゅ。ゅ≈≈≈ゅ叶儿也听呆了，永远青青了ゅゅ真动听",
	"☆陶醉☆","．·°★°∴°拉起你的小手．·°★°∴°翩翩跳起了．·°★°∴°酒醉的探戈．·°★°∴°两人陶醉在．·°★°∴°这夜的浪漫之中……．·°★",
	"☆啪啪☆","╬╬╬╬╬╬╬╬╬╬(((((啪啪)))))╬╬╬╬╬(((((啪啪)))))╬╬╬╬╬(((((啪啪)))))╬╬╬╬╬╬╬╬╬╬",
	"☆女婿☆","真好听~~这是谁家的女婿啊~唱歌忒好听拉~~~~~扔酒瓶啊~~~~~~~扔网管啊~扔眼泪啊~~唱歌忒好听拉~~这是谁家的女婿啊~唱歌真好听~~~~~扔酒瓶啊~~~~~~~扔网管啊~扔眼泪啊~~",
	"☆闺女☆","真好听~~这是谁家的闺女啊~唱歌忒好听拉~~~~~扔酒瓶啊~~~~~~~扔网管啊~扔眼泪啊~~咋恁好听呀~~这是谁家的闺女啊~忒厉害拉~~~~~扔酒瓶啊~~~~~~~扔网管啊~扔眼泪啊~~",
	"☆媳妇☆","真好听~~这是谁家的媳妇啊~唱歌忒好听拉~~~~扔酒瓶啊~~~~~~~扔网管啊~扔眼泪啊~~咋恁好听呀~~这是谁家的媳妇啊~唱歌真好听~~~~~扔酒瓶啊~~~~~~~扔网管啊~扔眼泪啊~~",
	"☆妹妹☆","===========●救命呀.怎么可以唱歌这么好听呀！oоО○.oоО○●帥呆了!!!（^Θ^）天呀~!妹妹们上呀!追他到天涯海角!!!~呱唧呱唧呱唧~!",
	"☆弟弟☆","===========●救命呀.怎么可以唱歌这么好听呀！oоО○.oоО○●醉死了!!!（^Θ^）天呀~!弟弟们上呀!爱她到地久天长!!!~呱唧呱唧呱唧~!",
	"☆生日☆"," ~0~ 祝您生日快乐～☆■☆～~～☆～~天天快乐~～☆～☆■☆～～~祝~生日快乐~～☆■☆～~天天快乐~～～☆■☆～☆～~祝~生日快乐~～～☆■☆～☆～",
	"☆拜拜☆","【●】祝大家聊得愉快╰●╮我有事╰●╮先走一步╰●╮真的舍不得你们╰●╮愿大家开心、愉快!! 拜拜了╰●╮【●】");

	WriteSelectStartH("Flower", ALeft, ATop, AWidth, "setmsg(Flower,true,'','')");
	WriteSelectOption(Flowers);
	if(typeof(ExtraFlowers)!='undefined') WriteSelectOption(ExtraFlowers);
	WriteSelectEnd();
	}
function WriteManagement(ALeft, ATop, AWidth){
	var Managements=new Array(
	"☆"+RoomNick+"管理词语☆","____",
//	RoomNick+"管理", "____", 
//	"关  闭","",
	"本室网址","欢迎光临"+RoomName+"语音聊天室，本聊天室网址:"+HomePage,
	"哈罗你好","//hello",
	"热烈欢迎","//welcome",
	"朋友您好","您好！欢迎光临“"+RoomName+"”。",
	"欢迎之一","*^_^*《"+RoomName+"》*^_^*全体管理员热烈欢迎您的到来！祝您在这里玩得愉快。",
	"欢迎之二","*^_^*《"+RoomName+"》*^_^*欢迎您！▇祝愿生活愉快▇▇吉祥如意▇▇合家欢乐▇生活愉快▇▇吉祥如意▇▇合家欢乐▇",
	"欢迎之三","一年又是一年，我们成熟了很多╰☆●"+RoomName+"●☆╮在这里祝福所有的男士都潇洒，所有的女士都靓丽！所有的梦想都能实现！！！永远快乐！！！！永远开心！！！！！",
	"欢迎之四","欢迎大家光临~~~*^_^*《"+RoomName+"》*^_^*语音室！愿欢歌笑语伴随着您在"+RoomName+"的每一天，祝福您及您的家人幸福快乐！这儿就是您的家！！",
	"欢迎之五","欢迎您光临“"+RoomName+"”语音聊天室！网络我和你，真情你我她！愿歌声能够给您带来欢乐！愿您在这里玩儿的开心！玩儿的愉快！这就是您的家！",
	"请您打九","欢迎光临☆"+RoomName+"☆，请打开语音!不发言就请自觉关闭掉自己的麦克,要麦克请打999,愿您给大家带来欢乐！",
	"本室特点","本室宗旨：围绕音乐和歌曲，以歌交友，以歌会友。本室特点：汇集碧聊顶尖歌手，以高水平的演唱，带给你高雅的艺术享受。本室黄金时段：晚九点至十二点！",
	"聊天说明","新来的朋友！为了能够尊重别人的说话和唱歌，请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！",
	"抢麦要求","您可以自由抢麦！但有一个小小的要求：当其他人说话和唱歌时您可不要断麦噢！因为这是对您和大家的尊重！理解万岁！网速慢的朋友不要着急！请您给我们打9999，我们会为您服务的！",
	"聊天守则","大家好，欢迎您的来到，要麦的朋友请给在线管理员打9999报名！",
	"文明警示","您好!请您文明用语，也请您注意您说话的语气，谢谢您的合作与理解，祝您玩得开心玩得快乐!",
	"玩笑警示","提醒**请文明聊天，注意自己的语言或名称，是和朋友开玩笑请用悄悄话，否则将被请出聊天室，谢谢合作！",
	"警告之一","==■■■警告■■■请〓〓注意〓〓您的〓〓言行！如果〓〓再不〓〓悔改〓〓将请〓〓您〓〓离开〓〓聊天室！",
	"警告之二","==■■■警告■■■请遵守游戏规则。不要有不文雅名字、刷屏、过激的文字和语言攻击他人的行为。谢谢您的合作！！！",
	"禁黑警告","提醒您本聊天室严禁长时间黑电话，有事黑电话请长话短说，或者请通过快速通道进入我们为您准备的“双工用房”，否则将被请出聊天室，谢谢合作！",
	"打黑警告","为了聊天室的整体气氛，聊天室严禁黑电话，打黑！打黑！打黑！请速出来！否则将被请出聊天室,谢谢合作！",
	"拒绝双工","您好!十分对不起，因为我正在上管主持，不能和聊友双工，请您谅解。",
	"已经排麦","您好!您的要麦的名单已经记下了，请您稍后，也请您调试一下你的麦，谢谢您光临本聊天室，祝你玩得开心玩得快乐!",
	"准备接麦","马上就是您的麦了，请您做好准备，您的精彩表演将获得掌声的侍候和鲜花的陪伴。",
	"准备之一","让您久等了、不好意思，快到您了，请你做好准备。谢谢。",
	"接麦失败","您好！系统：“您”尚未打开语音或处于双工语音状态,请你打开语音或是退全双工对话，否则我们是递不了麦给你的哦。谢谢支持与理解!!",
	"麦克无声","您好！亲爱的朋友，可能是您的麦有问题或是网速太慢,我们递麦给您,您的麦没有声音，请您再调试一下麦克,再向我们打999好吗?",
	"麦有杂音","您好！可能是您的麦有问题或是网速太慢，我们递麦给您听到的却是断断续续的声音，请你再调试一下再打999,好吗?谢谢.",
	"谢你歌声","您好！谢谢您为大家献上的歌曲，是非常的动听，如果有时间再为大家献上一曲吧，我们感谢您..同时也欢迎您常来!!",
	"邀请唱歌","您好！亲爱的朋友,欢迎你的到来，你可以给大家唱一首歌吗？：）谢谢☆⌒_⌒☆",
	"请求麦克","当其他人说话和唱歌时您可不要断麦噢！因为这是对您和大家的尊重！理解万岁！网速慢的朋友不要着急！请您给我们管理员拨打9999999，我们会为您服务的！",
	"请麦之一","您好！您可以自由抢麦！但有一个小小的要求：当其他人说话和唱歌时您可不要断麦噢！这是对您和大家的尊重！理解万岁！网速慢的朋友请您给值班网管“99999999”，网管会把麦克送入您的手中！",
	"关闭麦克","新来的朋友！为了能够尊重别人的说话和唱歌，请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！",
	"关麦之一","[请关麦]右下脚“全双工对话”按钮上有两条横线，上边调整耳机音量，下边调整话筒音量，鼠标左键点话筒型蓝图标(下横线左面)，当有红叉出现，即关麦。想说话时点掉红叉，说完顺手关麦。",
	"晚会禁图","==■■■忠告■■■为了聊天室的整体环境，聊天室严禁发送超大图片，不健康图片，否则将被请出聊天室,谢谢合作!!!!!",
	"晚会禁花","==■■■忠告■■■为了保证晚会期间聊天室的网速，请不要多次献花，您的心情歌手是能理解的，谢谢合作!!!!!",
	"送别朋友","把鲜花带走、把歌声和欢笑留下、愿您记住这里每分每秒带给您和大家的欢歌笑语，下次一定要到“《"+RoomName+"》”来作客哟，祝你快乐，想着这里哟~~~",
	"请您换名","对不起朋友，本室不欢迎这样的名字，请您点“更换姓名”再进来，不然我将请您出去，谢谢合作。",
	"请您稍等","请您稍等好吗?*^_^*",
	"我要下了","我要下线了，祝您愉快，再见。*^_^*",
	"有空再来","好的，欢迎你有空再来玩，再见。*^_^*",
	"谢谢鼓励","谢谢您的鼓励，*^_^*",
	"谢谢您了","谢谢您了！*^_^*",
	"谢谢掌声","谢谢您的掌声和鲜花！*^_^*",
	"多谢支持","多谢您的支持！*^_^*",
	"您客气了","您太客气了！*^_^*",
	"不用客气","不用客气！没关系的。*^_^*",
	"您过奖了","您过奖了！谢谢您！*^_^*",
	"临别再见","感谢您的到来，我将时刻期待着您的再次光临，再见。",
	"一路走好","再见了朋友，一路走好，希望能够再次见到您！",
	"请您再来","谢谢您的光临和参与，真舍不得您走，可又不得不再见，可要记住来这里的路呀！《"+RoomName+"》的地址是："+HomePage,
	"请多保重","再见，请多保重！",
	"祝您晚安","祝您晚安，做个好梦。",
	"提醒","//alert",
	"禁刷","//jg");

	WriteSelectStartH("Management", ALeft, ATop, AWidth,"setmsg(Management,true,'','')");
	WriteSelectOption(Managements);
	WriteSelectEnd();
	}
function WriteAutosend(ALeft, ATop, AWidth){
	var Autosends=new Array( 
	"状态", "____",
	"关闭", "",
	"有事","你好，我现在有事不在，一会儿再和你联系。",
	"工作","你好，我在工作中，请勿打扰。",
        "暂离","你好，我有事离开一会儿，马上回来。",
	"吃饭","你好，我去吃饭了，一会儿再联系。");

	WriteSelectStartH("Autosend", ALeft, ATop, AWidth,"setmsg(Autosend,true,'','')");
	WriteSelectOption(Autosends);
	WriteSelectEnd();
	}
function WriteEmoteCmds(ALeft, ATop, AWidth){ 
	var Emotecmds=new Array( 
	"表情", "____",
	"问候", "__",
	"你好", "hello   ", "招呼", "greet   ", "欢迎", "welcome ", "握手", "hand    ", "关照", "visit   ", "有礼", "boy     ", 
	"愉快", ":)      ", "笑笑", ":)2     ", "拥抱", "bearhug ", "一起", "sit     ", "鞠躬", "bow     ", "客气", "welcome2",
	"发财", "happy   ", "事成", "bless   ", "快乐", "birthday", "鼓掌", "clap    ", "加油", "addoil  ", "玟瑰", "rose    ",
	"牛奶", "milk    ", "包子", "tea     ", "再说", "wine    ", "擦汗", "sweat   ", "蘑菇", "gzxj    ", "打哈", "ha      ", 
	"哈哈", "haha    ", "看着", "?       ", "过奖", "cool    ", "开饭", "eat     ", "鬼脸", "face    ", "真好", "thank   ",
	"呆笑", "giggle  ", "傻笑", "hehe    ", "想说", "en      ", "吐舌", ":p      ", "惊讶", "ah      ", "看开", "shou    ",
	"调情", "__",
	"誓爱", "ai      ", "望著", "@@      ", "去街", "date    ", "昏倒", "faint   ", "飞去", "fly     ", "堵你", "ds      ",
	"痴望", "flook   ", "女人", "girl    ", "答讪", "go      ", "赞美", "beauty  ", "情歌", "sing    ", "摇篮", "sleep   ",
	"喜欢", "ppp     ", "爱你", "love    ", "是你", "miss    ", "等你", "waiting ", "花谢", "wait3   ", "天作", "love2   ",
	"含情", "love3   ", "月证", "loveu   ", "眼眸", "lovesee ", "含情", "lovelook", "诱惑", "lure    ", "睡不", "night   ",
	"求婚", "marry   ", "见过", "mm      ", "好热", "shy     ", "欲仙", "smoke   ", "跳舞", "dance   ", "无辜", "inn     ",
	"擦鞋", "caxie   ", "轻抱", "hug     ", "拥抱", "hug2    ", "缠住", "spider  ", "轻摸", "care    ", "抚摸", "caress  ", 
	"抚摸", "touch   ", "拍头", "pat     ", "依偎", "lean    ", "怀里", "jump    ", "亲下", "kiss    ", "额吻", "kiss2   ", 
	"脸吻", "kiss3   ", "拥吻", "smooch  ", "轻吻", "ykiss   ", "亲了", "lly     ", "疯吻", "xixi    ", "折磨", "zhemo   ",
	"做姐", "qsister ", "做妹", "qsister1", "做弟", "qbrother", "哥哥", "qbrother1","疙瘩", "cold    ", "苦水", ":(      ",  
	"怜悯", "cringe  ", "趴哭", "cry     ", "叹气", "sigh    ", "安慰", "comfort ",	"面包", "comfort1", "伤疤", "sad     ",
	"打斗", "__",
	"鸡蛋", "allen   ", "口水", "drivel  ", "欺负", "bad     ", "哇哇", "bite    ", "变态", "bt      ", "臭虫", "bug     ",
	"恶毒", "crazy   ", "剁块", "cut     ", "桃花", "da      ", "放狗", "dog     ", "听话", "dove    ", "砒霜", "drug    ", 
	"看你", "ds2     ", "喷嚏", "ds3     ", "烦你", "duo     ", "面子", "faceless", "催肥", "fat     ", "怕了", "fear    ",
	"羞脸", "blush   ", "奸笑", "heihei  ", "冷笑", "heng    ", "原谅", "forgive ", "饺子", "grin    ", "咆哮", "grow    ",
	"铁锤", "hammer  ", "屁屁", "handpat ", "正中", "hit     ", "冰雕", "ice     ", "离婚", "nolove  ", "肚子", "nudge   ",
	"灰烬", "zap     ", "扔出", "tu      ", "耳光", "slap    ", "手捅", "poke    ", "捅捅", "poke2   ", "膏药", "paste   ",
	"拧青", "pinch   ", "吐你", "puke    ", "狠揍", "punch   ", "刀落", "qia     ", "一枪", "qian    ", "无聊", "zzz     ",
	"狂笑", "znw     ", "脑袋", "ti      ", "不怀", "look3   ", "叽歪", "jjww    ", "所谓", "joe     ", "屁屁", "kick    ",
	"杀死", "kill    ", "主意", "look    ", "拜服", "wait2   ", "傻冒", "beaut   ", "人工", "breath  ", "篮球", "koxia   ",
	"告别", "__",
	"有期", "goodbye2", "吻别", "cu2     ", "隐退", "wait    ", "再见", "bye     ", "背影", "cu3     ", "陪俺", "stw     ",
	"保重", "goodbye ", "要哭", "tear    ", "留吃", "tea1    ", "挥手", "wave    ", "拜拜", "bye     ", 
	"其他", "__",
	"同意", "agree   ", "定了", "so      ", "错了", "wrong   ", "蛋糕", "bb      ", "懒理", "angry   ", "复机", "bbb     ", 
	"帮助", "hp      ", "舒服", "ill     ", "出名", "know    ", "问题", "fool    ", "别问", "wen     ", "不知", "no      ",
	"出身", "work    ", "知晓", "who     ", "捧腹", "laugh   ", "想说", "look2   ", "发呆", "lonely  ", "模糊", "no2     ",
	"关系", "noask   ", "点头", "nod     ", "正传", "now     ", "猪慢", "pig     ", "说对", "right   ", "摇头", "shake   ",
	"电脑", "slow    ", "微笑", "smile   ", "道歉", "sorry   ", "眼神", "stare   ", "脑袋", "think   ", "好累", "tired   ",
	"胜利", "yeah    ");
  	WriteSelectStart("Emotecmd", ALeft, ATop, AWidth,"setmsg(Emotecmd,true,'//','')");
  	WriteSelectOption(Emotecmds);
  	WriteSelectEnd();
	}
function WriteAnimated(ALeft, ATop, AWidth){
  	WriteSelectStart("Animatedpic", ALeft, ATop, AWidth,"sendpic(Animatedpic,Animated)");
  	WriteSelectOptionPic(Animated);
  	WriteSelectEnd();
  	if(typeof(DisablePicture)!='undefined')	Animatedpic.disabled = true;
	}
function WriteSelectStart(AName, ALeft, ATop, AWidth, Action){
	document.write('<DIV style=WIDTH:'+AWidth+'px;LEFT:'+ALeft+'px;TOP:'+ATop+'px;POSITION:absolute>');
	if(AWidth == 0) 
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="font-family:宋体,SimSun;font-size:9pt">');
	else
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style=font-family:宋体,SimSun;font-size:9pt;WIDTH:'+AWidth+'px;">');
	}
function WriteSelectStartH(AName, ALeft, ATop, AWidth, Action){
	document.write('<DIV style=WIDTH:'+AWidth+'px;LEFT:'+ALeft+'px;TOP:'+ATop+'px;POSITION:absolute>');
	if(AWidth == 0) 
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="visibility:hidden;font-family:宋体,SimSun;font-size:9pt">');
	else
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="visibility:hidden;font-family:宋体,SimSun;font-size:9pt;WIDTH:'+AWidth+'px;">');
	}
function WriteSelectOption(AArray){
	var linki=0;
	for(linki=0;linki<AArray.length/2;linki++){
		if(AArray[linki*2+1]=="____"){
			document.write('<OPTION STYLE=COLOR:'+SelectColor1+' VALUE="">'+AArray[linki*2]);
		}else if(AArray[linki*2+1]=="__"){
			document.write('<OPTION STYLE=COLOR:'+SelectColor2+' VALUE="">'+AArray[linki*2]);
		}else
			document.write('<option value=\"'+AArray[linki*2+1]+'\">'+AArray[linki*2]);
		}
	}
function WriteSelectOptionPic(AArray){
	var linki=0;
	for(linki=0;linki<AArray.length/3;linki++){
		if(AArray[linki*3+1]=="____"){
			document.write('<OPTION STYLE=COLOR:'+SelectColor1+' VALUE="">'+AArray[linki*3]);
		}else if(AArray[linki*3+1]=="__"){
			document.write('<OPTION STYLE=COLOR:'+SelectColor2+' VALUE="">'+AArray[linki*3]);
		}else
			document.write('<option value=\"'+AArray[linki*3+2]+'\">'+AArray[linki*3]);
		}
	}
function makeselect_begin(AName, ALeft, ATop, AWidth, Action, BGColor) {
	document.write('<DIV style=WIDTH:'+AWidth+'px;LEFT:'+ALeft+'px;TOP:'+ATop+'px;POSITION:absolute>');
	if(AWidth == 0) 
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="BACKGROUND-COLOR:'+BGColor+';font-family:宋体,SimSun;font-size:9pt">');
	else
		document.write('<SELECT NAME='+AName+' onchange="'+Action+'" style="BACKGROUND-COLOR:'+BGColor+';font-family:宋体,SimSun;font-size:9pt;WIDTH:'+AWidth+'px;">');
}
function WriteSelectOptionCol(AArray){
	var linki=0;
	for(linki=0;linki<AArray.length/2;linki++){
		if(AArray[linki*2+1]=="____")
			document.write('<OPTION STYLE=COLOR:'+SelectColor1+' VALUE="">'+AArray[linki*2]);
		else
			document.write('<option style=\"BACKGROUND-COLOR:'+AArray[linki*2+1]+'\" value=\"'+AArray[linki*2+1]+'\">'+AArray[linki*2]);
		}
	}
function WriteSelectEnd(){
	document.write('</SELECT></DIV>');
	}
function gotoroom(selection){
	if(selection==BlackRoomNumb){
		var roomurl="http://202.96.140.86/cgi-bin/login.cgi?roomid=" + selection+"&USER="+Auser+"&PASS="+Apass;
  		window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");
		}
	else if(selection.value!=""){  	
		var roomurl="http://202.96.140.86/cgi-bin/login.cgi?roomid=" + selection.value+"&USER="+Auser+"&PASS="+Apass;
  		window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");
		} 
	}
function GoToWhere(selection){
  	if(selection.value!=""){
    		var TheHttp='http://';
      		if(selection.value.search('http://')!=-1) TheHttp='';
      		var d=TheHttp+selection.value;
      		if(selection.value.charAt(0)=='#')
        		document.location=selection.value;
      		else
        		window.open(d);
      		selection.selectedIndex=0;    		
	  	}
	}
function SetbkColor(selection){
	inputform.elements[11].name="bgcolor";
	inputform.elements[11].value=selection.value;
	}
function setmsg(selections, autosubmit, prefix, target){
	if (selections==Autosend){Autosends()}
	if(selections.value!=""){
		inputform.msg.value=prefix+selections.value+target;
		if(autosubmit){
       			checksay();
       			inputform.submit();
      			}
    		}
	else if (selections==Management){switchadmin()}


  	inputform.msg.focus();
	}
function sendpic(selection,AArray){
  	if(!inputform.AI.checked){
    		document.inputform.AI.checked=true;
    		document.aicontrolForm.AI.value='on';
    		document.aicontrolForm.submit();
    		selection.selectedIndex=0;
  	}else if(selection.value!=""){
    		inputform.IMGURL.value = EmotePlace+selection.value;
    		if(inputform.msg.value=='')
			inputform.msg.value = AArray[selection.selectedIndex*3+1];
		checksay();
    		inputform.submit();
    		selection.selectedIndex=0;
 		}
	}
function Selectbutton(){
	if(selectdivs.value=="选择"){
		intime.style.visibility="hidden";
		RoomLink.style.visibility="visible";
		selectdivs.value="通道"}
	else if(selectdivs.value=="通道"){
		RoomLink.style.visibility="hidden";
		if(document.screenForm.KICK){
			Management.style.visibility="visible"
			selectdivs.value="管理"
		}else{
			Flower.style.visibility="visible";
			selectdivs.value="献花"	
			}
		}
	else if(selectdivs.value=="管理"){
		Flower.style.visibility="visible";
		Management.style.visibility="hidden"
		selectdivs.value="献花"}
	else if(selectdivs.value=="献花"){
		Flower.style.visibility="hidden";
		GoodLink.style.visibility="visible";
		selectdivs.value="连接"}
	else if(selectdivs.value=="连接"){
		GoodLink.style.visibility="hidden";
		intime.style.visibility="visible";
		selectdivs.value="选择"}
	}
function divscreenk(){ 
	if(opendivs.value=="分屏"){
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='50%,*';
		document.screenForm.INBOX.disabled=false;
		document.screenForm.OUTBOX.disabled=false;
		document.screenForm.BOXLIST.disabled=false;
		INBOX1.disabled=false;
		OUTBOX1.disabled=false;
		BOXLIST1.disabled=false;
		opendivs.value="合屏"}
	else{
		if(opendivs.value=="合屏"){
			document.aicontrolForm.divs.value='off';
			parent.bodyframe.rows='100%,*';
			document.screenForm.INBOX.disabled=true;
			document.screenForm.OUTBOX.disabled=true;
			document.screenForm.BOXLIST.disabled=true;
			INBOX1.disabled=true;
			OUTBOX1.disabled=true;
			BOXLIST1.disabled=true;
			opendivs.value="分屏"}
		}
	document.aicontrolForm.submit(); 
	}
function genghuans(){
	if (genghuan.value=="更换马甲"){
		huan.style.visibility="visible";
		genghuan.value="取消更换";
	}else if(genghuan.value=="取消更换"){
		huan.style.visibility="hidden";
		genghuan.value="更换马甲"; }
	}
function REVERT_pp(){
	document.inputform.msg.value = "" + document.inputform.SAYS.value +" 〖重复〗";
	}
function enter(){
	if(validname(document.form1.elements[0])){ 	
		document.form1.action="http://202.96.140.86/cgi-bin/login.cgi";
  		launchchat(); 
  		document.form1.submit();
		window.close();
  		}
	}
function validname(str1){
	if (str1.value.length <1) {
		alert("请输入您的大名，名字不能为空！");
		str1.focus();
      		return false;
   	}
	str=str1.value.toString();
	if( ((str.search("#")!=-1)||(str.search('&')!=-1))){
		alert("名字中不能包含特殊字符: # & .");
 		str1.focus();
      		return false;
   		}
	return true;
	}
function launchchat() { 
	return true;} 
document.write('<DIV id=huan align=left style=visibility:hidden;width:320px;LEFT:42px;TOP:38px;POSITION:absolute>')
document.write('<form action=http://talk3.silversand.net/cgi-bin/login.cgi method=post name=form1 target="_top">')
document.write('<font style="font-family:宋体,SimSun;font-size:9pt">');
document.write('名字：<input type="text"  title="输入你的名字" name="USER"  size="14"  maxlength="15" >')
document.write('密码：<input type="password"  title="注册用户输入密码" name="PASS"  size="11" maxlength="15" >')   
document.write('<input name="roomid" type="hidden" value='+RoomNumb+'>')   
document.write('<input type="button" title="换衣" value="换名" onClick=enter() name="button">')   
document.write('</form> ')
document.write('</DIV>')

//function Sadmin(){Management.style.visibility="visible";openadmin.style.visibility="hidden"};
//function switchadmin(){Management.style.visibility="hidden";openadmin.style.visibility="visible"};
function autosendss(){
	alert("您已经选择自动发言，请在下拉表单中选择你需要的语句系\n\n统将自动将您选择的语句每隔30秒发送一次。如要停止，请\n\n选择“取消自动”选项。");
	autobutton.style.visibility="hidden"
	Autosend.style.visibility="visible"}
tsec=0;
idt1=setTimeout("Autosends();",10);
function Autosends(){
	tsec++;
	var tn=Autosend.selectedIndex;
	var temp=Autosend.options[tn].value;
//	var tcolor=inputform.color.value;
	if((tn>0)&&(temp=="")){
		autobutton.style.visibility="visible"
		Autosend.style.visibility="hidden"
		Autosend.options[0].selected=true;}
	if ((tsec==50)&&(tn>0)&&(temp!="")){
		document.inputform.color.value="008800";
		var twho=inputform.WHOTO.value
		parent.cs("所有人");
		document.inputform.SAYS.value=temp;
		document.inputform.submit();
		document.inputform.color.value=tcolor;
		document.inputform.WHOTO.value=twho;
		}	
	if(tsec==100){tsec=0;}
	idt1=setTimeout("Autosends();",500);
	}
function Fgongkai(){
	if (gongkai.value=="公悄Ｘ"){
		document.screenForm.SHOW.checked=true;
		document.aicontrolForm.SHOW.value='on';
		gongkai.value="公悄√";
	}else if(gongkai.value=="公悄√"){
		document.screenForm.SHOW.checked=false;
		document.aicontrolForm.SHOW.value='off';
		gongkai.value="公悄Ｘ"; }
		document.aicontrolForm.submit();
	}
function Fjieshou(){
	if (jieshou.value=="接悄√"){
		document.screenForm.EAR.checked=false;
		document.aicontrolForm.EAR.value='off';
		jieshou.value="接悄Ｘ";
	}else if(jieshou.value=="接悄Ｘ"){
		document.screenForm.EAR.checked=true;
		document.aicontrolForm.EAR.value='on';
		jieshou.value="接悄√"; }
		document.aicontrolForm.submit();
	}
function Fshengyin(){
	if (shengyin.value=="声音√"){
		document.screenForm.NOTICE.checked=false;
		document.aicontrolForm.NOTICE.value='off';
		shengyin.value="声音Ｘ";
	}else if(shengyin.value=="声音Ｘ"){
		document.screenForm.NOTICE.checked=true;
		document.aicontrolForm.NOTICE.value='on';
		shengyin.value="声音√"; }
		document.aicontrolForm.submit();
	}
function psend(){
	checksay();
	inputform.submit();
	}
function sendpicurl(){
	document.inputform.IMGURL.value=getimgurlnew("请输入图片或音乐的URL::")
	}
function getimgurlnew(p) {
	imgurl = prompt(p,'http://');
	if(!imgurl){return '';}
	imgurl=trim(imgurl);
	if(imgurl=="http://"){
		document.inputform.msg.focus();
		return '';
		}
	imgurl=imgurl.toLowerCase();
	if( (imgurl.search("gif")==-1) &&  (imgurl.search("jpg")==-1)) {
		getimgurlnew("请输入文件扩展名为'gif'、'jpg'之类的URL:");
		}
	document.inputform.msg.focus();
	if(imgurl){return imgurl;}else{return '';}
	}
function autosendflower(AName,Finger){
  	inputform.msg.value=AName[Lastchoice[Finger]];
  	checksay();
  	document.inputform.submit();
	Lastchoice[Finger]=Lastchoice[Finger]+1;
	if (Lastchoice[Finger]==AName.length) Lastchoice[Finger]=0;
	}
Isws=true
function autosendflower1(AName,Finger){
	var IsWisper=inputform.ws.checked;
	if (Isws==false) inputform.ws.checked=true;
  	inputform.msg.value=AName[Lastchoice[Finger]];
  	checksay();
  	document.inputform.submit();
	Lastchoice[Finger]=Lastchoice[Finger]+1;
	if (Lastchoice[Finger]==AName.length) Lastchoice[Finger]=0;
	Isws=!Isws
	inputform.ws.checked=IsWisper;
	}
function autosendflower2(AName,Finger){
	var IsWisper=inputform.ws.checked;
	inputform.ws.checked=true;
  	inputform.msg.value=AName[Lastchoice[Finger]];
  	checksay();
  	document.inputform.submit();
	Lastchoice[Finger]=Lastchoice[Finger]+1;
	if (Lastchoice[Finger]==AName.length) Lastchoice[Finger]=0;
	inputform.ws.checked=IsWisper;
	}
function autosendflower3(AName,Finger){
	document.inputform.msg.value=AName[Lastchoice[Finger]];
	document.inputform.IMGURL.value = EmotePlace+AName[Lastchoice[Finger]+1];
  	checksay();
  	document.inputform.submit();
	Lastchoice[Finger]=Lastchoice[Finger]+2;
	if (Lastchoice[Finger]==AName.length) Lastchoice[Finger]=0;
	}
var Digital1=new Date()
var Dtime1=Digital1.getTime()
var flag=60;
var flag1=180;
loadclock()
function timeshow(){
	var Digital=new Date()
	var Dt=Digital.getTime() - Digital1.getTime()
	var hours=Math.floor(Dt/3600000)
	var minutes=Math.floor((Dt-(hours * 3600000))/60000)
	var seconds=Math.floor(((Dt - hours * 60 * 60000 - minutes * 60000)/1000))
	var secondss=Math.floor(Dt/60000)
	if (hours<=9)hours="0"+hours
	if (minutes<=9)minutes="0"+minutes
	if (seconds<=9)seconds="0"+seconds
	time =hours+":"+minutes+":"+seconds;
	if (secondss<=flag1){
		if (secondss==flag && secondss<flag1){
			tishi='你已经在'+RoomName+'玩了【' + flag + '分钟】了，阿土提示你，请你注意休息保护好自己的眼睛!'
			MakePUP(tishi,"土公子提示","350","145","70","关 闭");
			flag+=60;} 
		if (secondss==flag1){
			tishi='你是一个精力充沛的家伙，已经在'+RoomName+'玩了【' + flag1 + '分钟】了，阿土决定放弃时间提示，希望你玩的开心!'
			MakePUP(tishi,"土公子提示","350","145","70","关 闭");
			flag1-=1;} 
		}
	if (!document.all) document.form1.button.value =time;
	else document.intime.button.value =time;
	}
function MakePUP(tishiy,Ttitle,Twidth,Tleft,Ttop,Tbutton){
	PUP=window.open('','PUP','width='+Twidth+',height=10,left='+wleft+',top='+wtop+',toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=1');
	PUP.document.write('<HTML><HEAD><TITLE>'+Ttitle+'</TITLE>');
	PUP.document.write('<script language="">function iftime\(\){setTimeout\("close\(\)",10000\)}</script></HEAD>');
	PUP.document.write('<BODY BGCOLOR="#EBF5D3" background='+BgImg3+' TEXT="#000000">');
	PUP.document.write('<font style="font-family:宋体,SimSun;font-size:10pt">');
	PUP.document.write('&nbsp;&nbsp;&nbsp;&nbsp;'+tishiy);
	PUP.document.write('<CENTER><INPUT TYPE="button" VALUE=" '+Tbutton+' " style=height:20px;LEFT:'+Tleft+'px;top:'+Ttop+'px;'+buttonstyle60+' onClick="self.close()"></CENTER></FORM></BODY></HTML>');
	PUP.document.close();
	}
function prepare(){
	if(document.singerform.singer.value!=""){
		inputform.msg.value="谢谢你的耐心等待，请准备接麦~~";
		parent.cs(singerform.singer.value);
 	}else{
		parent.cs("所有人");}
 		inputform.msg.focus();
	}
var fcj=1;
var fcl=0;
var fcsdx='';
function listsingers(){
	fcl=singerform.singer.length;
 	fcsdx='';
 	if(fcl>1){
  		for(fcj=1;fcj<fcl;fcj++){
   			fcsdx=fcsdx + '[' + singerform.singer.options[fcj].value + ']'
  			}
  		fcsdx='麦序:'+ fcsdx;
 		}
	if(fcsdx.length>=85){
		fcsdx1=fcsdx.substring(0,85);
		for(i=85;fcsdx.charAt(fcsdx1.length-1)!="]";i--){
			fcsdx1=fcsdx.substring(0,i);}
	}else{
		fcsdx1=fcsdx}
	inputform.msg.value=fcsdx1;
	inputform.msg.focus();
	}
function clearsinger(){
   	if (confirm("警告:本操作无法恢复!\n您确定要清除当前的麦序吗?")){
     		var k1=0;
     		for (k1=1;k1<=singerform.singer.length+2;k1++){
			singerform.singer.options.remove(k1);   
			}
		for (k1=1;k1<=singerform.singer.length+2;k1++){
			singerform.singer.options.remove(k1);   
			}
		inputform.msg.value="本室麦序为空~~"; 
		}
	}
function removesinger(){
	if(singerform.singer.length > 0){
		if(singerform.singer.selectedIndex > 0){
			singerform.singer.options.remove(singerform.singer.selectedIndex);
			if(singerform.singer.length > 0){
				singerform.singer.selectedIndex=1
			}else{
				singerform.singer.selectedIndex=0
				}
			}
		listsingers();
		}else{
			singerform.singer.selectedIndex=0
			}
	inputform.msg.focus();
	}
function addsinger(){
	if(inputform.WHOTO.value!='所有人'){
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		singerform.singer.options.add(newoption);
		singerform.singer.selectedIndex=1;
		document.inputform.SAYS.value="按我们的麦序你是No."+fcj+" ，请你关注麦序变化且耐心等待，谢谢合作!";
		document.inputform.submit();
		listsingers();
		}
	inputform.msg.focus();
	}
function insertsinger(){
	if(inputform.WHOTO.value!='所有人'){
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		if(singerform.singer.selectedIndex>0){
			singerform.singer.options.add(newoption,singerform.singer.selectedIndex);
		}else{
			singerform.singer.options.add(newoption,1)
			}
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
   			if(fcsdx.charAt(fcj)!='[' && fcscount==1){
				fcsinger=fcsinger+fcsdx.charAt(fcj);
				}
  			}   
 		}
 	listsingers();
 	inputform.msg.focus();
	}
function SwitchOrder() {
	if (openlist.value=="开序"){
		singerform.style.visibility="visible";
		openlist.value="关序";
	} else if(openlist.value=="关序"){
			singerform.style.visibility="hidden";
			openlist.value="开序"; 
			}
		}
function linkonclick(linkurl){
	var llll=screen.width-326;
	window.open(linkurl , "mplist", " width=326 ,left="+llll+", height=0 , top=0 , scrollbars=auto , resizable=no , copyhistory=no , status=no");
	}
//function OpenManagement(){Management.style.visibility="visible";}
function adminquit(){
	question = confirm("阿土提示\n\n谢谢你的管理，现在下管您现有的麦序将丢失，请点[确定]退管\n\n如果继续管理，请点[取消]续管")
	if (question != "0"){
        	inputform.msg.value ="//ADMIN quit";
		checksay();document.inputform.submit();
    		}
	}
function get_button_pic(width){
	var pic = "";
	var nearw = 0;
	var mindeff = 100;
	for (i = 0 ; i < button_pic.length ; i+=2)
		if (Math.abs(button_pic[i] - width) <= mindeff){
			pic = button_pic[i + 1];
			nearw = button_pic[i];
			mindeff = Math.abs(button_pic[i] - width);
			}
	return pic;
	}
function write_button(name,value,left,top,width,height,color,title,action){
	var button_style=";WIDTH:"+width+"px;HEIGHT="+height+"px;"+buttonstyle+"background-image:url("+ButtonPlace+get_button_pic(width)+");border:1px";
	document.write('<input TYPE="button" NAME="'+name+'" VALUE="'+value+'" style="LEFT:'+left+';TOP:'+top+';'+button_style+'" onclick="'+action+'" TITLE="'+title+'"'+tpmeffectevent+'>');
	}
WriteBkColor	(377,20,50);
WriteEmoteCmds	(377,79,50);
WriteAnimated 	(377,59,50);
WriteRoomLink 	(490,0,114);
WriteGoodLink	(490,0,114);
WriteFlowers  	(490,0,114);
WriteManagement	(490,0,114);
WriteAutosend	(547,40,57);
var Lstep=59;
write_button("",BarLink[0], 11+Lstep*0/2, 0,59,20,"","","window.open(BarLink[1])" );
write_button("",BarLink[2], 11+Lstep*2/2, 0,59,20,"","","window.open(BarLink[3])" );
write_button("",BarLink[4], 11+Lstep*4/2, 0,59,20,"","","window.open(BarLink[5])" );
write_button("",BarLink[6], 11+Lstep*6/2, 0,59,20,"","","window.open(BarLink[7])" );
write_button("",BarLink[8], 11+Lstep*8/2, 0,59,20,"","","window.open(BarLink[9])" );
write_button("",BarLink[10],11+Lstep*10/2,0,59,20,"","","window.open(BarLink[11])");
write_button("",BarLink[12],11+Lstep*12/2,0,59,20,"","","linkonclick(BarLink[13])");
write_button("","屏蔽",10,60,34,20,"","屏蔽“对象”中所指定的人的发言。最多可以屏蔽10人。","screenForm.SCREEN.click()");
write_button("","解除",44,60,34,20,"","解除对“对象”中所指定的人发言的屏蔽。","screenForm.NOSCREEN.click()");
write_button("","插 图 音",490,20,57,20,"","点这里弹出输入窗口，然后在输入框填上图片或者音乐的网址(URL)。","sendpicurl()");

write_button("","告辞",256,60,40,20,"","","autosendflower(AutoChat7,7)");
write_button("","欢迎",296,60,40,20,"","","autosendflower(AutoChat10,10)");
write_button("","要麦",336,60,40,20,"","","autosendflower(AutoChat8,8)");
write_button("","送别",256,79,40,20,"","","autosendflower(AutoChat17,17)");
write_button("","网址",296,79,40,20,"","","autosendflower(AutoChat18,18)");
write_button("","听见",336,79,40,20,"","","autosendflower(AutoChat9,9)");

write_button("selectdivs","选择",434,0,47,20,"","选择自己需要的功能条","Selectbutton()");
write_button("opendivs","分屏",434,20,47,20,"","建立/取消聊天包厢","divscreenk()");
write_button("","发送",434,40,47,20,"","发送聊天的内容和插入的动作、图片或音乐。","psend()");
write_button("","重复",434,60,47,20,"","重复发送上一条信息","REVERT_pp()");
write_button("","鲜花",434,79,47,20,"","自动鲜花","autosendflower1(AutoChat1,1)");
document.write('<DIV><center><form name="intime"><input type=button value="Click!" name=button title="您在房间停留的时间" style="left:490px;top:0px;width:114px;'+buttonstyle+'background-image:url('+ButtonPlace+'button114.gif);border:1px;height:20px;font-family:宋体,SimSun;font-size:10pt;font-weight: bold;color:#045627;POSITION:absolute;";//background-color:#F5E6D4;"></form></center></DIV>');
if(document.screenForm.KICK){
	write_button("openlist","开序",490,40,29,20,"","打开关闭麦序","SwitchOrder()");
	write_button("AutoHi","自动迎宾",547,20,57,20,"","点开这里，系统会自动欢迎刚进来的朋友","AutoWel()");
	write_button("","递  麦",519,40,57,20,"","把麦克风交给对象","screenForm.MIC.click()");
	write_button("","下管",576,40,29,20,"","管理员点击这里退出管理状态","adminquit()");
	write_button("","邀请",490,60,29,20,"","","autosendflower(AutoChat11,11)");
	write_button("AutoSendMic","护麦",519,60,29,20,"","每30秒自动护麦","AutoKeepMic()");
	write_button("","收麦",547,60,29,20,"","不用点你的名字,点此可把麦递给自已","CallBackMic()");
	write_button("","拒双",576,60,29,20,"","","autosendflower(AutoChat16,16)");
	write_button("","准备",490,79,29,20,"","","autosendflower(AutoChat12,12)");
	write_button("","接麦",519,79,29,20,"","","autosendflower(AutoChat15,15)");
	write_button("","稍后",547,79,29,20,"","","autosendflower(AutoChat14,14)");
	write_button("","文明",576,79,29,20,"","","autosendflower(AutoChat13,13)");

	write_button("","踢人",112,60,34,20,"","踢人，管理员必须先通过密码确认。按此钮将把对象所指的人踢出去","screenForm.KICK.click()");
	write_button("","踢IP",112,79,34,20,"","踢IP，管理员必须先通过密码确认。按此钮将把对象所在的踢出去","screenForm.KICKIP.click()");
	write_button("","禁音",10, 79,34,20,"","禁止对象出声","screenForm.NOMIC.click()");
	write_button("","禁言",44, 79,34,20,"","禁止对象发言5分钟","screenForm.DUMB.click()");
	write_button("","列踢",78, 79,34,20,"","列出当前处于被踢状态的人和IP","screenForm.KLIST.click()");
	write_button("","关门",146,60,34,20,"","关门","screenForm.CDOOR.click()");
	write_button("","开门",146,79,34,20,"","开门","screenForm.ODOOR.click()");
	write_button("","请进",180,60,34,20,"","","screenForm.LIN.click()");
	write_button("","拒进",180,79,34,20,"","","screenForm.LOUT.click()");
	write_button("","刷新",214,60,36,20,"","刷新聊天显示区","{parent.u.location.reload();parent.writeu1();if(ZengPing != 0)setInterval('keepBg()', 1000);setTimeout(divscreen(),5000);}");
	write_button("","列表",78, 60,34,20,"","列出全部被您屏蔽的人。","screenForm.SHOWSCREEN.click()");
	write_button("INBOX1",  "+",214,79,12,20,"","加入到您的包厢显示列表","screenForm.INBOX.click()");
	write_button("OUTBOX1", "-",226,79,12,20,"","从您的包厢显示列表删除","screenForm.OUTBOX.click()");
	write_button("BOXLIST1","L",238,79,12,20,"","列出您的包厢显示列表中的人员","screenForm.BOXLIST.click()");
	write_button("","视频连接", 10, 98,70,20,"","","screenForm.VREQ.click()");
	write_button("","刷新列表", 80, 98,70,20,"","视频连接","parent.refreshclick=true;parent.writeuserlist();this.blur();document.inputform.msg.focus();");
	document.write('<DIV align=center style=width:0px;LEFT:490px;TOP:0px;POSITION:absolute;visibility:hidden>');
	document.write('<FORM name="singerform">');
	Ostep=19
	write_button("addtolist","加"		,Ostep*0,20,19,20,"","加入名字到名单排序末尾",			"addsinger()");
	write_button("tolist","插"		,Ostep*1,20,19,20,"","插入名字到选定人之前",			"insertsinger()");
	write_button("removefromlist","删"	,Ostep*2,20,19,20,"","从名单排序中删除所选择的名字",		"removesinger()");
	write_button("clearlist","清"		,Ostep*3,20,19,20,"","从名单排序清除所有项目",			"clearsinger()");
	write_button("addlist","批"		,Ostep*4,20,19,20,"","将发言栏里的名单批量加入到名单排序中",	"passlist()");
	write_button("listing","序"		,Ostep*5,20,19,20,"","公布名单排序",				"listsingers()");
	document.write('<select name="singer" onchange="prepare()" style="left:0px;top:0px;width:114px;position=absolute">');
	document.write('<option selected VALUE="">'+RoomName+'☆麦序</option>');
	document.write('</SELECT></form></DIV>');
}else{
	write_button("","动作列表",547,20,57,20,"","点这里列出所有的EMOTE。","window.open('http://www.yinsha.com/chat/emote1.html') ");
	write_button("","上 管",490,40,57,20,"","管理员点击这里进入管理状态，管理麦序等功能在进入管理状态下才可用","autosendflower(AutoChat19,19)");
	write_button("autobutton","自动语",547,40,57,20,"","打开自动发言下拉表单","autosendss()");
	write_button("","赞美",490,60,57,20,"","悄悄发的，放心用吧","autosendflower2(AutoChat3,3)");
	write_button("","思念",547,60,57,20,"","悄悄发的，放心用吧","autosendflower2(AutoChat4,4)");
	write_button("","爱慕",490,79,57,20,"","悄悄发的，放心用吧","autosendflower2(AutoChat5,5)");
	write_button("","情话",547,79,57,20,"","悄悄发的，放心用吧","autosendflower2(AutoChat6,6)");
	write_button("genghuan","更换马甲",195,60,56,20,"","更改你的名字","genghuans()");
	write_button("","注册名字",195,79,56,20,"","注册名字","window.open('http://admin.bliao.com/user/login.htm')");
	write_button("","配置",148,79,47,20,"","","window.open('http://garden.bliao.com')");
	write_button("","刷新",148,60,47,20,"","刷新聊天显示区","{parent.u.location.reload();parent.writeu1();if(ZengPing != 0)setInterval('keepBg()', 1000);setTimeout(divscreen(),5000);}");
	write_button("gongkai","公悄Ｘ",10,79,46,20,"","公开／不公开悄悄话","Fgongkai()");
	write_button("jieshou","接悄√",56,79,46,20,"","接受／不接受悄悄话","Fjieshou()");
	write_button("shengyin","声音Ｘ",102,79,46,20,"","控制是否设置声音提示","Fshengyin()");
	write_button("","列表",78,60,34,20,"","列出全部被您屏蔽的人。","screenForm.SHOWSCREEN.click()");
	write_button("INBOX1","+",112,60,12,20,"","加入到您的包厢显示列表","screenForm.INBOX.click()");
	write_button("OUTBOX1","-",124,60,12,20,"","从您的包厢显示列表删除","screenForm.OUTBOX.click()");
	write_button("BOXLIST1","L",136,60,12,20,"","列出您的包厢显示列表中的人员","screenForm.BOXLIST.click()");
	write_button("","视频连接",101,98,70,20,"","视频连接","screenForm.VREQ.click()");
	write_button("","刷新列表",181,98,70,20,"","视频连接","parent.refreshclick=true;parent.writeuserlist();this.blur();document.inputform.msg.focus();");
	}
function writev_change(){
	if(parent.v.document==null)return;
	var Murl = parent.u.document.body.background;
	if (parent.v.document.body.style.backgroundImage=="")
        	parent.v.document.body.style.backgroundImage="url("+BgImg3+")";
	//parent.v.document.blueskyvoice.RecOn();	
	for(var i=0; i<parent.v.f.elements.length; i++){ 		           
		obj=parent.v.f.elements(i);
		switch (obj.type){
			case 'button':
				obj.style.visibility = "hidden";
			break;
			}
		}
	parent.v.f.v2vv.onclick=new Function("return parent.d.v2v()")
	parent.v.f.filtervoice.onclick=new Function("window.open('"+YinPlace+"')")
	if (BlackRoomNumb=="")
		parent.v.f.v2vv.value="双工"
	else
		parent.v.f.v2vv.value="私聊"
		parent.v.f.v2vv.title="邀请某人去私聊室" 
	parent.v.f.close.value="关闭"
	parent.v.f.mainmic.value="主麦"
	parent.v.f.secondmic.value="附麦"
	parent.v.f.getmic.value="收麦"
	parent.v.f.cutmic.value="切麦"
	parent.v.f.freemic.value="自由"
	parent.v.f.filtervoice.title="语音设置方法"
 	parent.v.f.filtervoice.value="设置"

	if(document.screenForm.KICK){
	parent.v.f.requestmic.style.cssText 	= "LEFT:  5px;top:70px"+buttonstyle36;
	parent.v.f.releasemic.style.cssText 	= "LEFT: 43px;top:70px"+buttonstyle36;
	parent.v.f.mainmic.style.cssText 	= "LEFT: 81px;top:70px"+buttonstyle36;
	parent.v.f.secondmic.style.cssText 	= "LEFT:119px;top:70px"+buttonstyle36;

	parent.v.f.getmic.style.cssText 	= "LEFT:  5px;top:94px"+buttonstyle36;
	parent.v.f.cutmic.style.cssText		= "LEFT: 43px;top:94px"+buttonstyle36;
	parent.v.f.freemic.style.cssText 	= "LEFT: 81px;top:94px"+buttonstyle36; 
	parent.v.f.close.style.cssText 		= "LEFT:119px;top:94px"+buttonstyle36; 

	parent.v.f.mainmic.disabled=false;
	parent.v.f.secondmic.disabled=false;
	parent.v.f.getmic.disabled=false;
	parent.v.f.cutmic.disabled=false;
	parent.v.f.freemic.disabled=false;
	}else{
	parent.v.f.close.value="关闭语音"
	parent.v.f.filtervoice.value="语音设置"
	parent.v.f.requestmic.style.cssText 	= "LEFT: 12px;top:70px"+buttonstyle44;
	parent.v.f.releasemic.style.cssText 	= "LEFT: 56px;top:70px"+buttonstyle44;
	parent.v.f.v2vv.style.cssText 		= "LEFT:100px;top:70px"+buttonstyle44;
	parent.v.f.close.style.cssText 		= "LEFT: 12px;top:94px"+buttonstyle60; 
	parent.v.f.filtervoice.style.cssText	= "LEFT: 84px;top:94px"+buttonstyle60;
	parent.v.f.filtervoice.disabled=false;
	}
	}  
function writecv_new(){ 
	if(parent.v.document==null)return; 
	parent.voiceframe.rows="0,*" 
	parent.v.document.open(); 
	parent.v.document.writeln("<html><head><meta http-equiv='Content-Type' content='text/html; charset=gb2312'>"); 
	parent.v.document.writeln("</head><body bgcolor="+parent.d.document.body.bgColor+" background="+BgImg3+">"); 
	parent.v.document.writeln("<p class='p9'>"); 
	parent.v.document.writeln("<form name=ov><input type=button name=ceshi value=话筒测试 style=height:20px;LEFT:80px;top:30px;"+buttonstyle60+" onclick=window.open('http://chat.yinsha.com/voice.htm')>"); 
	parent.v.document.writeln("<input type=button name=closev value=打开语音 style=height:20px;LEFT:15px;top:30px;"+buttonstyle60+" onclick='parent.writev_new();parent.d.writev_change()'>");
	parent.v.document.writeln("</form><Br><Br><center></form><Br><br><table width='96' border='1' cellspacing='0' cellpadding='0' bgcolor='#B6F2F9' bordercolordark='#000000' bordercolorlight='#FFFFFF' height='15'><tr><td width='140' align='center'><p align='center'><span style='font-size: 8.7pt;COLOR:000000'>版权:"+RoomName+"<Br>房号:"+RoomNumb+"</SPAN></p></td></tr></table>"); 
	parent.v.document.write("<form name=f>");
	parent.v.document.write("<input type=hidden name=mainmic value='主'>");
	parent.v.document.write("<input type=hidden name=secondmic value='附'>");
	parent.v.document.write("<input type=hidden name=getmic value='收'>");
	parent.v.document.write("<input type=hidden name=cutmic value='切'>");
	parent.v.document.write("<input type=hidden name=freemic value='F'>");
	parent.v.document.writeln("</form></body></html>"); 
	parent.v.document.close();
	}
function v2v2(){
	if(inputform.WHOTO.value=='所有人')return; 
	if(confirm('\n　万分对不起,由于此房间容量有限,故此室 \n不允许黑电话！\n\n　如果你想和你朋友黑电话，我们为你准备了　　\n更清净的房间“'+BlackRoomName+'”。\n\n请点确定即可进入！')){ 
		inputform.msg.value='有事情找你私聊，我去“'+BlackRoomName+'”等你了，你先点我的名字再点右下角的私聊室 或则 直接点友情房间里的私聊室， 就可私聊了，快点进来哦!'; 
		checksay(); 
		inputform.submit(); 
		gotoroom(BlackRoomNumb); 
		}
	}
function v2v(){
	if(inputform.WHOTO.value=='所有人')
		return;
	if (BlackRoomNumb == ""){
		if (parent.v.document.f.v2vv.value == "双工"){
			parent.v.document.f.v2vv.value="退双";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
			}
		else if (parent.v.document.f.v2vv.value == "退双"){
			parent.v.document.f.v2vv.value="双工";
			parent.d.v2vForm.TOONE.value=0;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
			}
		}
	else
		if(confirm('\n　万分对不起,由于此房间容量有限,故此室 \n不允许黑电话！\n\n　如果你想和你朋友黑电话，我们为你准备了　　\n更清净的房间“'+BlackRoomName+'”。\n\n请点确定即可进入！')){ 
			inputform.msg.value='有事情找你私聊，我去“'+BlackRoomName+'”等你了，你先点我的名字再点右下角的私聊室 或则 直接点友情房间里的私聊室， 就可私聊了，快点进来哦!'; 
			checksay(); 
			inputform.submit(); 
			gotoroom(BlackRoomNumb); 
			}
	}
function DoNotHide(AStr){
	for(i=0;i<Hider.length;i++){
  		if(AStr==Hider[i]) return false;
		}
  	return true;
	}
function IsNumeric(AStr){
  	for(var j=0;j<AStr.length;j++){
    		if(AStr.charCodeAt(j)>=256) return false;
  		}
  	return true;
	}
function FOwnerPic(AStr){
	for(i=0;i<OwnerPic.length/2;i++){
		if(AStr==OwnerPic[i*2])
			return HeadPlace+OwnerPic[i*2+1];
		}
	return "";
	}
function FJsPic(AStr){
	for(i=0;i<JsPic.length/2;i++){
		if(AStr==JsPic[i*2])
			return HeadPlace+JsPic[i*2+1];
		}
	return "";
	}
function FHeadPic(AStr){
	for(i=0;i<HeadPic.length;i+=3){
		if(AStr==HeadPic[i])
			return HeadPlace+HeadPic[i+1];
		}
	return "";
	}
function IsOnlineManager(){
	return (document.screenForm.KICK);
	}
function FOwner(AStr){
	for(i=0;i<OwnerPic.length/2;i++){
		if(AStr==OwnerPic[i*2])
			return true;
		}
	return false;
	}
function FJs(AStr){
	for(i=0;i<JsPic.length/2;i++){
		if(AStr==JsPic[i*2])
			return true;
		}
	return false;
	}
function Usertitle(AStr){
	for(i=0;i<AUserTitle.length;i+=3){
		if(AStr==AUserTitle[i])
			return AUserTitle[i+1]+"&"+AUserTitle[i+2];
		}
	return "";
	}
function UserType(AStr){
	for(i=0;i<HeadPic.length;i+=3){
		if(AStr==HeadPic[i])
			return HeadPic[i+2];
		}
	return "";
	}
function LoginMsg(){
	if (!login_succeed)
		return;
	if (!DoNotHide(Auser))
		return;
	if (FJs(Auser))
		return;
	var msg;
	if ((IsOnlineManager())&&(!FOwner(Auser))){
		msg = OnAdminTaker;}
	else if (((this.location.toString().search("BOTTOMADM"))!=-1)&&(!FOwner(Auser)))
		msg = OutAdminTaker;
	else if (FOwner(Auser))
		msg = "//xinku3";
	else if (UserType(Auser)=="0")
		msg = "//g_hi";
	else if (UserType(Auser)=="1")
		msg = "//xinku";
	else
		msg = OnTaker;
	document.inputform.msg.value=msg;
	document.inputform.IMGURL.value = InHelloPic;
	checksay();document.inputform.submit();
	}
Exchange0=new Array()
Exchange1=new Array()
Exchange2=new Array()
function Achang(L1, L2){
	for(var i=0;i<L2.length;i++)
	L1[i]=L2[i];
	}
function AutoWelcome() {
	var Aname="", Bname="", _Aname="", _Bname="";
	Achang(Exchange1,parent.list);
	Achang(Exchange2,parent.list);
	for(var i=1;i<Exchange1.length;i++) {
       		for(var n=1;n<Exchange0.length;n++){
			_Aname=Exchange0[n].split("-'");
			_Bname=Exchange1[i].split("-'"); 
           		if(_Aname[0] == _Bname[0]){
				Exchange0[n]="";
				Exchange1[i]="";
				}
           		}
      		}
    	Achang(Exchange0,Exchange2);
	for(var i=1;i<Exchange1.length;i++){
    		if(Exchange1[i] != ""){
    			_Bname=Exchange1[i].split("-'");
			Aname=_Bname[0];
    			Bname=inputform.WHOTO.value;
			if (DoNotHide(Auser)){
	    			parent.cs(Aname);
				autosendflower3(AutoChat20,20);
    				parent.cs(Bname);
				} 
			}
    		}
	}
function AutoWel(){
	if (AutoHi.value=="自动迎宾"){
		AutoHi.value="关闭迎宾"
		AutoHiTimer=window.setInterval("AutoWelcome()",15000);
	} else if(AutoHi.value=="关闭迎宾"){
		AutoHi.value="自动迎宾"
		window.clearInterval(AutoHiTimer);
		}
	}
function AutoKeepMic() {
	if (AutoSendMic.value=="护麦") { 
		AutoSendMic.value="停护";
		CurrentSendMicUser=inputform.WHOTO.value;
		AutoMicTimer=window.setInterval("SendMic()",30000);
	} else {
		window.clearInterval(AutoMicTimer);
		AutoSendMic.value="护麦";
		CurrentSendMicUser="";
		}
	}
function SendMic() {
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(CurrentSendMicUser);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
	}
function CallBackMic(){
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(Auser);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
	}
function UserNameFilter(){
	for(i=0;i<HeadPic.length;i+=3){
		if(Auser==HeadPic[i])
			return;
		}
	for (var i=0;i<NameFilter.length;i++)
		if (Auser.indexOf(NameFilter[i])!=-1){
			login_succeed = false;
			document.controlForm.LEAVEIT.onclick();
			alert('您好：['+Auser+']。\n\n万分抱歉，您现在所用的名字中含有本房间限制的文字。\n\n我们请您换用其它名字进来，愿您在此开心愉快。');
			parent.close();
			return;
			}
	if (OnlyChineseName==1 && IsNumeric(Auser)){
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('您好：['+Auser+']。\n\n万分抱歉，本房间暂时只允许包含汉字的网名进入。\n\n请您换用汉字名进来，愿您在此开心愉快。');
		parent.close();
		}
	}
var login_timer = 270;
var autolog_timer_id;
function auto_log_func(){
	setTimeout("login_form.submit();",20000);
	}
function enable_auto_log(action){
	if (action != ""){
		var HTMLstr ='<form METHOD="POST" target="bl" ACTION="'+action+'" NAME="login_form">';
		HTMLstr += '<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+RoomNumb+'">';
		HTMLstr += '<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+Auser+'">';
		HTMLstr += '<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(document.screenForm.KICK?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">';
		HTMLstr += '<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
		document.write(HTMLstr);
		autolog_timer_id = setInterval("auto_log_func()",login_timer*1000);
		}
	}
function enable_auto_face(){
	var roomurl=AdminPlace+"facelist.asp?roomid="+RoomNumb+"&name="+Auser;
  	window.open(roomurl);
	}
function writelist(){
	if(parent.r.document==null)return;
	var bkcolor=parent.r.document.body.bgColor;
	var user_type;
	var user_str;
	var user_pic;
	var user_Title
	var user_array = new Array();
	var pic="";
	for(var i=1;i<parent.list.length;i++){
		TempStr = parent.list[i];
		if(TempStr!=null){
      			voicelists=TempStr.split("'-");
      			if(!voicelists[1]) voicelists[1]='0';
			if(!voicelists[2]) voicelists[2]='0';
			lists=voicelists[0].split("-'");
      			if(!lists[1])lists[1]='0';
			AUserName = lists[0];
			if(!DoNotHide(AUserName)){
				parent.count=parent.count-1;
				user_type = 0;
				user_pic = "";
				user_Title = Usertitle(user_type);
				}
			else if(FOwnerPic(AUserName)!=""){
				user_type = 3;
				user_pic = FOwnerPic(AUserName);
				user_Title = Usertitle(user_type);
				}
			else if(FJsPic(AUserName)!=""){
				user_type = 4;
				user_pic = FJsPic(AUserName);
				user_Title = Usertitle(user_type);
				}
			else if(lists[1]==1)
				if(FHeadPic(AUserName)!=""){
					user_type = 1;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
					}
				else{
					user_type = 2;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
					}
  			else if(AUserName.charAt(0)=='*')
				if(FHeadPic(AUserName)!=""){
					user_type = 5;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
					}
				else{
					user_type = 6;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
					}
	  		else if(!IsNumeric(AUserName)){
					user_type = 7;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
  					}
				else{
					user_type = 8;
					user_pic = FHeadPic(AUserName);
					user_Title = Usertitle(user_type);
	  				}
			user_str = user_type + "&";
			user_str += user_pic + "&";
			user_str += lists[0] + "&";
			user_str += user_Title + "&";
			user_str += voicelists[1] + "&";
			user_str += voicelists[2];
			user_array[user_array.length] = user_str;
  			}
 		}
	parent.r.document.open();
	parent.r.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">");
	parent.r.document.writeln("<style type=text/css>");
	parent.r.document.writeln("<!--");
	parent.r.document.writeln(".p9 {font-size: 9pt}");
	parent.r.document.writeln("a:visited {color: #0000FF; text-decoration: none}");
	parent.r.document.writeln("a:link {color: #0000FF; text-decoration: none}");
	parent.r.document.writeln("a:hover {color: #FF0000}");
	parent.r.document.writeln("BODY{"+scrlstyle+"background-position:top left;background-repeat:no-repeat;}");
	parent.r.document.writeln("-->");  
	parent.r.document.writeln("</style>");
	parent.r.document.writeln("</head><body topmargin=0 leftmargin=10 bottommargin=0 rightmargin=0 widthmargin=180 bgcolor="+parent.d.document.body.bgColor+" background="+BgImg2+" bgproperties=fixed>");
	if (typeof(LogoPic)=="undefined"){
		parent.r.document.writeln("<table width=100% cellpadding=1 cellspacing=1 border=0 >"); 
		parent.r.document.writeln("<tr><th height=25 >【"+RoomName+"】</th></tr>");	
		parent.r.document.writeln("</table>");}
	else
		parent.r.document.writeln("<img src="+LogoPic+"  border=0>");
	parent.r.document.writeln("<div align=center style=LEFT:12px;top:35px;POSITION:absolute><font color=000000 size=2>当前有</font><font color=red size=2>"+parent.count+"</font><font color=000000 size=2>位朋友在线</font></div>")
	parent.r.document.writeln("<div style=LEFT:10px;top:45px;POSITION:absolute><hr color=#99CCFF width=100% size=1></div>");
	parent.r.document.writeln("<div style=LEFT:10px;top:60px;POSITION:absolute>")
	parent.r.document.writeln('<table border=0 width=200 cellpadding=11 cellspacing=10>');
	parent.r.document.writeln("<p class='p9'>");
	parent.r.document.writeln("<font color=000000><b>在线列表:</b><a target=d href=\"javascript:parent.cs('所有人')\">所有人</font></a> <a href=\"javascript:history.go(0);\">[刷新]</a></font><br>");
	user_array.sort();
	for(i = 0 ; i < user_array.length;i++){
		lists=user_array[i].split("&");
		if(!DoNotHide(Auser)||FOwner(Auser)){
			HTMLstr=""
			if((lists[0]==1)||(lists[0]==2))
				HTMLstr += "<a><IMG src="+AdminPicTop+">";
			if((lists[0]==1)||(lists[0]==3)||(lists[0]==4)||(lists[0]==5))
				HTMLstr +="<a><IMG src="+lists[1]+">"
			HTMLstr +="<a target=d href=\"javascript:parent.cs('"+lists[2]+"')\"title=\""+lists[3]+"\"><font color="+lists[4]+" style='Height:10pt; padding:1px;cursor:hand'>"+lists[2]+"</font></a>"
			if(lists[5]==1)
				HTMLstr +="<IMG src="+PicSound1+">"
			if(lists[5]==2)
				HTMLstr +="<IMG src="+PicSound2+">"
			if(lists[6]!=0)
				HTMLstr +="<IMG src="+PicVideo+">"
			parent.r.document.writeln(HTMLstr);
			parent.r.document.writeln("<br>");
			}
		else if(DoNotHide(lists[2])){
			HTMLstr=""
			if((lists[0]==1)||(lists[0]==2))
				HTMLstr += "<a><IMG src="+AdminPicTop+">";
			if((lists[0]==1)||(lists[0]==3)||(lists[0]==4)||(lists[0]==5))
				HTMLstr +="<a><IMG src="+lists[1]+">"
			HTMLstr +="<a target=d href=\"javascript:parent.cs('"+lists[2]+"')\"title=\""+lists[3]+"\"><font color="+lists[4]+" style='Height:10pt; padding:1px;cursor:hand'>"+lists[2]+"</font></a>"
			if(lists[5]==1)
				HTMLstr +="<IMG src="+PicSound1+">"
			if(lists[5]==2)
				HTMLstr +="<IMG src="+PicSound2+">"
			if(lists[6]!=0)
				HTMLstr +="<IMG src="+PicVideo+">"
			parent.r.document.writeln(HTMLstr);
			parent.r.document.writeln("<br>");
			}
		}
	parent.r.document.writeln('</table></div></hr></body></html>');
	parent.r.document.close();
	}
function writeu1() {
	document.aicontrolForm.submit();
	parent.u1.document.write('<html><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">.p9 { font-family:宋体; font-size: 9pt; line-height: 16pt};a:hover { color: #FF0000};a:link { color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}</style></head>');
	parent.u1.document.write('<p class="p9" align="left"><body bgproperties=fixed scroll=yes></body>');
	parent.u1.document.write('<style>BODY{'+scrlstyle+'background-position:'+Location+';background-repeat:no-repeat;}</style>');
	parent.u1.document.body.style.backgroundImage="url("+BgImg4+")";
	}
function keepBg(){	
	var url,ux,uy,ry;
	if(typeof(window.keepBgUX)=="undefined")window.keepBgUX=0;
	if(typeof(window.keepBgUY)=="undefined")window.keepBgUY=0;
	if(keepBgUX!=parent.u.document.body.offsetWidth || keepBgUY!=parent.u.document.body.offsetHeight){
		url="url("+parent.u.document.body.background+")";
		uy =parent.u.document.body.offsetHeight;
		u1y=parent.u1.document.body.offsetHeight;
		parent.u1.document.body.style.backgroundImage=url;
		if (mLocation==1){
			parent.u.document.body.style.backgroundAttachment="fixed";
			parent.u.document.body.style.backgroundPositionY=(uy+u1y-ZengPing)/2;
			parent.u1.document.body.style.backgroundAttachment="fixed";
			parent.u1.document.body.style.backgroundPositionY=(uy+u1y-ZengPing)/2-1-uy;}
		else if (mLocation==2){
			parent.u1.document.body.style.backgroundAttachment="fixed";
			parent.u1.document.body.style.backgroundPositionY=-uy-1;}
		else if (mLocation==3){
			parent.u.document.body.style.backgroundAttachment="fixed";
			parent.u.document.body.style.backgroundPositionY=uy+u1y-ZengPing+1;}
		keepBgUX=parent.u.document.body.offsetWidth;
		keepBgUY=parent.u.document.body.offsetHeight;
		}
	}	
function OverWriteParentWrite(){
  	parent.write_new=writelist;
	parent.writeu1=writeu1;
	parent.writecv_new= writecv_new
	setTimeout("writev_change()",500);
	}
function FAutoOpenAi(){
	if (AutoOpenAi == 1){
		document.inputform.AI.checked=true;
		document.aicontrolForm.AI.value='on';
		}
	if (AutoOpenDiv == 1){
		divscreenk()
		document.inputform.divs.checked=true;
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='50%,*';
		document.screenForm.INBOX.disabled=false;
		document.screenForm.OUTBOX.disabled=false;
		document.screenForm.BOXLIST.disabled=false;
		}
	if (AutoOpenAi == 1 || AutoOpenDiv == 1)
		document.aicontrolForm.submit();
	setTimeout("LoginMsg()",1000);
//	Ttitle=RoomName+"欢迎您";
//	Thallo="亲爱的"+Auser+"，您好！非常欢迎您来到"+RoomName+"，"+inhi;
//	MakePUP(Thallo,Ttitle,"450","195","70","请 进");
	}
setTimeout("FAutoOpenAi()",4000);
if(ZengPing != 0)setInterval("keepBg()", 1000); 
OverWriteParentWrite();
if (AutoOpenNotice == 1)
	Fshengyin()
else{
	document.screenForm.NOTICE.checked=false;
	document.aicontrolForm.NOTICE.value='off';
	}
                    