var frmact = new Array();
 frmact[1]="http://www.baidu.com/s";
 frmact[2]="http://news.baidu.com/ns"
 frmact[3]="http://post.baidu.com/f";
 frmact[4]="http://mp3.baidu.com/m";
 frmact[6]="http://image.baidu.com/i";
 var frmtn = new Array();
 frmtn[1]="vcucn";
 frmtn[2]="news";
 frmtn[3]="baiduPostSearch";
 frmtn[4]="baidump3";
 frmtn[6]="baiduimage";
 var frmct = new Array();
 frmct[1] = "";
 frmct[2] = "";
 frmct[3] = "352321536";
 frmct[4] = "134217728";
 frmct[6] = "201326592";
 var frmlm = new Array();
 frmlm[1] = "";
 frmlm[2] = "";
 frmlm[3] = "65536";
 frmlm[4] = "-1";
 frmlm[6] = "-1";
 var frmz = new Array();
 frmz[1] = "";
 frmz[2] = "";
 frmz[3] = "";
 frmz[4] = "";
 frmz[6] = "0";
 var frmrn = new Array();
 frmrn[1] = "";
 frmrn[2] = "";
 frmrn[3] = "10";
 frmrn[4] = "";
 frmrn[6] = "";

 var bd_idx="1";

function bd_chg_idx(idx)
{
 bd_idx=idx;
}

function gowhere(formname)
{
 var url;
 var idx = bd_idx;
 if (frmact[idx] == null || frmact[idx] == "")  idx = "1";
 url = frmact[idx];
 if (frmtn[idx] != "") document.search_form.tn.value = frmtn[idx];
 if (frmct[idx] != "") document.search_form.ct.value = frmct[idx];
 if (frmlm[idx] != "") document.search_form.lm.value = frmlm[idx];
 if (frmz[idx] != "") document.search_form.z.value = frmz[idx];
 if (frmrn[idx] != "") document.search_form.rn.value = frmrn[idx];
 formname.method = "get";
 formname.action = url;
 return true;
} 