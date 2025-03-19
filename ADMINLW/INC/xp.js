
//½ûÖ¹ctrl+nºÍ½ûÖ¹ctrl+rºÍ½ûÖ¹shift+f10½ûÖ¹Êó±êÓÒ¼üor×óÓÒ¼üºÍ½ûÖ¹f5
var oLastBtn=0,bIsMenu=false

if (window.Event)
{
document.captureEvents(Event.MOUSEUP); 
}

function nocontextmenu()
{ 
event.cancelBubble=true;
event.returnValue=false; 
return false; 
}
	
function norightclick(e) 

{ 
	if(window.Event) 
	{ 
	if (e.which !=1)
		{
		return false; 
		}
	} 
	else 
	if(event.button!=1) 
		{ 
		event.cancelBubble=true;
		event.returnValue=false; 
		return false; 
		} 
}

document.oncontextmenu=nocontextmenu; 
document.onmousedown=norightclick; 

function onKeyDown()
{
	if ((event.altKey)||((event.keyCode==8)&&(event.srcElement.type!="text"&&event.srcElement.type!="textarea"&&event.srcElement.type!="password"))||((event.ctrlKey)&&((event.keyCode==78)||(event.keyCode==82)))||(event.keyCode==116))
	{
	event.keyCode=0;
	event.returnValue=false;
	}
}
