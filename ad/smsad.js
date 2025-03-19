var xhost = "www.smsday.com";
var imghost = "www.smsday.com";
var unionid = '3279'; //3286
function isNumberString (InString,RefString)
{
	if(InString.length==0) return (false);
	for (Count=0; Count < InString.length; Count++)  {
			TempChar= InString.substring (Count, Count+1);
			if (RefString.indexOf (TempChar, 0)==-1)
			return (false);
	}
	return (true);
}
function smsdaychatcheckReg(form){
	if(form.mobile_num.value=="")
	{	window.alert("手机号（包括移动、联通、小灵通）不能为空，请输入手机号！");
		form.mobile_num.focus();
		return false;
	}
	if (isNumberString(form.mobile_num.value,"1234567890")!=1) { 
		alert('中国的“移动、联通、小灵通”号码是数字组合，如：13900000000、01081980000，请您重新输入！');
		form.mobile_num.focus();return false;
	}
	var m=form.mobile_num.value.substring(0,3);
	var x=form.mobile_num.value.substring(0,1);
	if(m!="134" && m!="135" && m!="136" && m!="137" && m!="138" && m!="139" && x!="0"){
		alert("系统暂时只接受移动和小灵通（北方十省）注册！");
		form.mobile_num.focus();
		return false;
	}
	if(form.mobile_num.value.substring(0,2)=="13" ){
		if(form.mobile_num.value.length!=11)
		{	window.alert("中国“移动或联通手机号码”的长度为11位，请您重新输入！");
			form.mobile_num.focus();
			return false;
		}
	}else{
		if(form.mobile_num.value.substring(0,1)!="0" ){
			window.alert("“小灵通号码”是以区号加小灵通号的数字组合如：01081980000，手机号码如：13900000000，请重新输入！");
			form.mobile_num.focus();
			return false;
		}
		if(form.mobile_num.value.length!=11&&form.mobile_num.value.length!=12)
		{	window.alert("中国“小灵通号码”的长度为11或12位，如：01081980000，请您重新输入！");
			form.mobile_num.focus();
			return false;
		}
	}
	form.unionid.value = unionid;
	return true;
}


function smsdaymoviecheckReg(form){
	if(form.mobile_num.value=="")
	{	window.alert("手机号（包括移动、联通、小灵通）不能为空，请输入手机号！");
		form.mobile_num.focus();
		return false;
	}
	if (isNumberString(form.mobile_num.value,"1234567890")!=1) { 
		alert('中国的“移动、联通、小灵通”号码是数字组合，如：13900000000、01081980000，请您重新输入！');
		form.mobile_num.focus();return false;
	}
	var m=form.mobile_num.value.substring(0,3);
	var x=form.mobile_num.value.substring(0,1);
	if(m!="134" && m!="135" && m!="136" && m!="137" && m!="138" && m!="139" && x!="0"){
		alert("系统暂时只接受移动和小灵通（北方十省）注册！");
		form.mobile_num.focus();
		return false;
	}
	if(form.mobile_num.value.substring(0,2)=="13" ){
		if(form.mobile_num.value.length!=11)
		{	window.alert("中国“移动或联通手机号码”的长度为11位，请您重新输入！");
			form.mobile_num.focus();
			return false;
		}
	}else{
		if(form.mobile_num.value.substring(0,1)!="0" ){
			window.alert("“小灵通号码”是以区号加小灵通号的数字组合如：01081980000，手机号码如：13900000000，请重新输入！");
			form.mobile_num.focus();
			return false;
		}
		if(form.mobile_num.value.length!=11&&form.mobile_num.value.length!=12)
		{	window.alert("中国“小灵通号码”的长度为11或12位，如：01081980000，请您重新输入！");
			form.mobile_num.focus();
			return false;
		}
	}
	form.unionid.value = unionid;
	return true;
}

