/* Menu Rolloverfunktionen */
function goOn(obj,level) {
	obj.className = "navactive";
}
function goOff(obj,level) {
	obj.className = "navoff";
}
function goOnIcon(obj,level,objImg,icon) {
	goOn(obj,level);
	objImg.className = "Menu"+level+"on";
	objImg.src = icon;
}
function goOffIcon(obj,level,objImg,icon) {
	goOff(obj,level);
	objImg.className = "Menu"+level+"off";
	objImg.src = icon;
}
function goOnTableIcon(objTable,level,objTd,objImg,icon) {
	goOn(objTable,level);
	goOn(objTd,level);
	objImg.className = "Menu"+level+"on";
	objImg.src = icon;
}
function goOffTableIcon(objTable,level,objTd,objImg,icon) {
	goOff(objTable,level);
	goOff(objTd,level);
	objImg.className = "Menu"+level+"off";
	objImg.src = icon;
}
function goTo(url,target) {
	if(target != "null") {
		if(parent.frames[target]){ parent.frames[target].document.location = url;
		} else if(target == 'main') {	parent.document.location = url;
		} else if(target == '_top') {	parent.parent.document.location = url;
		} else { window.open(url); }
	} else {
		document.location = url;
	}
}
