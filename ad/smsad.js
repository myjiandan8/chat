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
	{	window.alert("�ֻ��ţ������ƶ�����ͨ��С��ͨ������Ϊ�գ��������ֻ��ţ�");
		form.mobile_num.focus();
		return false;
	}
	if (isNumberString(form.mobile_num.value,"1234567890")!=1) { 
		alert('�й��ġ��ƶ�����ͨ��С��ͨ��������������ϣ��磺13900000000��01081980000�������������룡');
		form.mobile_num.focus();return false;
	}
	var m=form.mobile_num.value.substring(0,3);
	var x=form.mobile_num.value.substring(0,1);
	if(m!="134" && m!="135" && m!="136" && m!="137" && m!="138" && m!="139" && x!="0"){
		alert("ϵͳ��ʱֻ�����ƶ���С��ͨ������ʮʡ��ע�ᣡ");
		form.mobile_num.focus();
		return false;
	}
	if(form.mobile_num.value.substring(0,2)=="13" ){
		if(form.mobile_num.value.length!=11)
		{	window.alert("�й����ƶ�����ͨ�ֻ����롱�ĳ���Ϊ11λ�������������룡");
			form.mobile_num.focus();
			return false;
		}
	}else{
		if(form.mobile_num.value.substring(0,1)!="0" ){
			window.alert("��С��ͨ���롱�������ż�С��ͨ�ŵ���������磺01081980000���ֻ������磺13900000000�����������룡");
			form.mobile_num.focus();
			return false;
		}
		if(form.mobile_num.value.length!=11&&form.mobile_num.value.length!=12)
		{	window.alert("�й���С��ͨ���롱�ĳ���Ϊ11��12λ���磺01081980000�������������룡");
			form.mobile_num.focus();
			return false;
		}
	}
	form.unionid.value = unionid;
	return true;
}


function smsdaymoviecheckReg(form){
	if(form.mobile_num.value=="")
	{	window.alert("�ֻ��ţ������ƶ�����ͨ��С��ͨ������Ϊ�գ��������ֻ��ţ�");
		form.mobile_num.focus();
		return false;
	}
	if (isNumberString(form.mobile_num.value,"1234567890")!=1) { 
		alert('�й��ġ��ƶ�����ͨ��С��ͨ��������������ϣ��磺13900000000��01081980000�������������룡');
		form.mobile_num.focus();return false;
	}
	var m=form.mobile_num.value.substring(0,3);
	var x=form.mobile_num.value.substring(0,1);
	if(m!="134" && m!="135" && m!="136" && m!="137" && m!="138" && m!="139" && x!="0"){
		alert("ϵͳ��ʱֻ�����ƶ���С��ͨ������ʮʡ��ע�ᣡ");
		form.mobile_num.focus();
		return false;
	}
	if(form.mobile_num.value.substring(0,2)=="13" ){
		if(form.mobile_num.value.length!=11)
		{	window.alert("�й����ƶ�����ͨ�ֻ����롱�ĳ���Ϊ11λ�������������룡");
			form.mobile_num.focus();
			return false;
		}
	}else{
		if(form.mobile_num.value.substring(0,1)!="0" ){
			window.alert("��С��ͨ���롱�������ż�С��ͨ�ŵ���������磺01081980000���ֻ������磺13900000000�����������룡");
			form.mobile_num.focus();
			return false;
		}
		if(form.mobile_num.value.length!=11&&form.mobile_num.value.length!=12)
		{	window.alert("�й���С��ͨ���롱�ĳ���Ϊ11��12λ���磺01081980000�������������룡");
			form.mobile_num.focus();
			return false;
		}
	}
	form.unionid.value = unionid;
	return true;
}

