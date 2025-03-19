var mpUndefined= 0;
var mpStopped= 1;
var mpPaused= 2;
var mpPlaying= 3;
var mpScanForword= 4;
var mpScanReverse= 5;
var mpBuffering= 6;
var mpWaiting= 7;
var mpMediaEnded= 8;
var mpTransitioning= 9;
var mpReady = 10;
var mpReconnection= 11;

function StartMeUp(songID)
{		
	var mmsplayer=document.all("mmsplayer");
	
	if (!mmsplayer)
	  return false	
	
	Free = false ;
	var userstatus=CheckUserInfo();
	if(userstatus!="0")
	{	  
		//mmsplayer.closedCaption.CaptioningID = "CapText"	

		var URL=PlayListURL+"?ID="+songID+"&rand="+Math.random();
	   
		mmsplayer.URL=URL;
	    
		//mmsplayer.closedCaption.SAMIFileName = SMIURL + songID +".smi"
		mmsplayer.controls.play();
	}
}
//���ŵ�̨
function AutoDrowListPlay(songID)
{
  if(songID=="900001")
     AutoPlay(songID);
  else
    StartMeUp(songID);

}

//�����û�����
function AutoPlay(songID)
{		
	var mmsplayer=document.all("mmsplayer");
	Free = true;
	if (!mmsplayer)
	  return false	
	  
//	mmsplayer.closedCaption.CaptioningID = "CapText"
 

    var URL=PlayListURL+"?ID="+songID+"&rand="+Math.random();
   
    mmsplayer.URL=URL;
    
	//mmsplayer.closedCaption.SAMIFileName = SMIURL + songID +".smi"
	mmsplayer.controls.play();
}

function ShutMeDown () 
{
    var mmsplayer=document.all("mmsplayer");
	
	if (!mmsplayer)
	  return false	
	  
    state_list.innerText="";
    mmsplayer.controls.stop();
}
function Pause()
{
   var mmsplayer=document.all("mmsplayer");	
	if (!mmsplayer)
	  return false		  
   mmsplayer.controls.pause();
}
/*����*/
function play()
{
  var mmsplayer=document.all("mmsplayer");	
	if (!mmsplayer)
	  return false		  
   mmsplayer.controls.play();
}
/*��һ��*/
function Next()
{
  var mmsplayer=document.all("mmsplayer");	
	if (!mmsplayer)
	  return false		
 
  if (mmsplayer.controls.isAvailable('Next'))      
  {  
    mmsplayer.controls.next();  
    if(!mmsplayer.controls.isAvailable('Next'))
    {
      //�жϵ������һ�ף����¿�ʼ
      play();
    }
  }
}
/*��һ��*/
function previous()
{
  var mmsplayer=document.all("mmsplayer");	
	if (!mmsplayer)
	  return false		  
   if (mmsplayer.controls.isAvailable('Previous'))
     mmsplayer.controls.previous();
}

/* �������� */
function SetVolumeNum(gene)
{
   var mmsplayer=document.all("mmsplayer");	
	if (!mmsplayer)
	  return false		  
	var vol = mmsplayer.settings.Volume;
	vol = vol + gene;
	if (vol > 100) vol=100;
	if (vol < 0) vol=0;
	
	mmsplayer.Settings.Volume = vol;
	
	//alert(vol);
	var soundscr=document.all("TabSound");
	if(vol>80)
       soundscr.background="player_v5.gif";
    if(vol>60 && vol<=80)
       soundscr.background="player_v4.gif";
    if(vol>40 && vol<=60)
       soundscr.background="player_v3.gif";
    if(vol>20 && vol<=40)
       soundscr.background="player_v2.gif";
    if(vol>0 && vol<=20)
       soundscr.background="player_v1.gif";
       
    if(vol<=0)
       soundscr.background="player_v0.gif";
       
	
	
	
	
	
}

/* ���� */
function mmsPlayerMute()
{
    var mmsplayer=document.all("mmsplayer");	
	if (!mmsplayer)
	  return false	
	  
	if (mmsplayer.Settings.mute == true) {
		mmsplayer.Settings.mute= false;
		//mute_button.src= "/../images/volume_on.gif";
		imgSound.alt= "����";
	}
	else {
		mmsplayer.Settings.mute= true;
		//mute_button.src= "/../images/volume_disable.gif";
		imgSound.alt= "������";
	}
}

/* ���/���� */
function FastForward(gene)
{
    var mmsplayer=document.all("mmsplayer");	
	if (!mmsplayer)
	  return false	
	mmsplayer.Controls.currentPosition = mmsplayer.Controls.currentPosition + gene;	
}
/*ѭ��*/
function  Repeat() {
    var mmsplayer=document.all("mmsplayer");	
	 if (!mmsplayer)
	   return false	
	if(mmsplayer.settings.getMode('loop'))
	{
	   mmsplayer.settings.setMode('loop',false);
	   imgXH.src="images/player_xhoff.gif"
	}
	else
	{
	   mmsplayer.settings.setMode('loop',true);
	   imgXH.src="images/player_xhon.gif"
	}
}
/*˳�򲥷�*/
function PlayRandomSX()
{
    var mmsplayer=document.all("mmsplayer");	
	 if (!mmsplayer)
	   return false	
	if(mmsplayer.settings.getMode('shuffle'))
	{   mmsplayer.settings.setMode('shuffle',false);
	    imgSX.src="images/player_sxon.gif";
	    imgSJ.src="images/player_sjoff.gif";
	}
	//else
	//   mmsplayer.settings.setMode('shuffle',true);
	
}
/*�������*/
function PlayRandomSJ()
{
    var mmsplayer=document.all("mmsplayer");	
	 if (!mmsplayer)
	   return false	
	if(!mmsplayer.settings.getMode('shuffle'))	
	{
	  mmsplayer.settings.setMode('shuffle',true);
	   imgSX.src="images/player_sxoff.gif";
	    imgSJ.src="images/player_sjon.gif";
	}	
}










