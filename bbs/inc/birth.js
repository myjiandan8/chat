function getpet (birthday) {
abc=birthday.split("-")
if (abc.length < 3){return("");}
birthyear=(abc[0]*1)
b="��|��|��|��|��|ţ|��|��|��|��|��|��";
var list= b.split ('|');
return(list[birthyear%12]);
}



function astro(birth)
{
abc=birth.split("-")
if (abc.length < 3){return("");}
mm=(abc[1]*1)
dd=(abc[2]*1)
if (mm=='1'){
if(dd>=21){return('<img src=images/star/h.gif alt=ˮƿ��>');}
else{return('<img src=images/star/g.gif alt=ħ����>');}
}

if (mm=='2'){
if(dd>=20){return('<img src=images/star/i.gif alt=˫����>');}
else{return('<img src=images/star/h.gif alt=ˮƿ��>');}
}

if (mm=='3'){
if(dd>=21){return('<img src=images/star/^.gif alt=������>');}
else{return('<img src=images/star/i.gif alt=˫����>');}
}

if (mm=='4'){
if(dd>=21){return('<img src=images/star/_.gif alt=��ţ��>');}
else{return('<img src=images/star/^.gif alt=������>');}
}

if (mm=='5'){
if(dd>=22){return('<img src=images/star/`.gif alt=˫����>');}
else{return('<img src=images/star/_.gif alt=��ţ��>');}
}

if (mm=='6'){
if(dd>=22){return('<img src=images/star/a.gif alt=��з��>');}
else{return('<img src=images/star/`.gif alt=˫����>');}
}

if (mm=='7'){
if(dd>=23){return('<img src=images/star/b.gif alt=ʨ����>');}
else{return('<img src=images/star/a.gif alt=��з��>');}
}

if (mm=='8'){
if(dd>=24){return('<img src=images/star/c.gif alt=��Ů��>');}
else{return('<img src=images/star/b.gif alt=ʨ����>');}
}

if (mm=='9'){
if(dd>=24){return('<img src=images/star/d.gif alt=�����>');}
else{return('<img src=images/star/c.gif alt=��Ů��>');}
}

if (mm=='10'){
if(dd>=24){return('<img src=images/star/e.gif alt=��Ы��>');}
else{return('<img src=images/star/d.gif alt=�����>');}
}

if (mm=='11'){
if(dd>=23){return('<img src=images/star/f.gif alt=������>');}
else{return('<img src=images/star/e.gif alt=��Ы��>');}
}

if (mm=='12'){
if(dd>=22){return('<img src=images/star/g.gif alt=ħ����>');}
else{return('<img src=images/star/f.gif alt=������>');}
}

}