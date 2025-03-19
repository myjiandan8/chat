<table border=0 cellpadding=0 cellspacing=0 width="100%" height="100%">
<tr> <form name=loading>
<td align=center> 
<span id="addobject"></span>
<br><br><input type=text name=chart size=46 style="font-family:Arial; font-weight:bolder; color:#555555; padding:0px; border-style:none;">
<br><br><input type=text name=percent size=46 style="font-family:Arial; color:#555555; text-align:center; border-width:medium; border-style:none;">
<br><br><script>
var bar = 0 
var line = "||" 
var amount ="||" 
count() 
function count(){ 
bar= bar+2 
amount =amount + line 
document.loading.chart.value=amount 
document.loading.percent.value=bar+"%" 
if (bar<99) 
{
setTimeout("count()",100);
} 
else 
{
document.loading.percent.value="" 
addobject.innerHTML ="<font color=\"#555555\" style=\"font-size: 9pt\" >加载完毕马上进入.....</font>";
//alert("载入完毕");
//window.location = "";
} 
}
</script></td></form></tr></table>
</body></html>

 
