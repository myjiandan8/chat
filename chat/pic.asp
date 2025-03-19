<html>
<head>
<title>upload........</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
body {  font-size: 9pt}
td {  font-size: 9pt}
a {  color: #000000; text-decoration: none}
a:hover {  text-decoration: underline}
.tx {  height: 20px; width: 60px; border-color: black black #000000; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; font-size: 9pt; background-color: #eeeeee; color: #000000}
.bt {  font-size: 9pt; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; height: 16px; width: 80px; background-color: #eeeeee; cursor: hand}
.tx1 { height: 20px; width: 30px; font-size: 9pt; border: 1px solid; border-color: black black #000000; color: #000000;background-color: #eeeeee}
-->
</style>
</head>

<body bgcolor="#FFFFFF" text="#000000">

  
<table width="271" border="0" cellspacing="0" cellpadding="0">
  <form name="form1" method="post" action="upfile1a.asp" enctype="multipart/form-data" >
    <tr align="center" valign="middle"> 
      <td width="271" align="left" id="upid"><input type="hidden" name="act" value="upload"> 
        <script language="javascript">
	  function setid()
	  {
	  str='<br>';
	  if(!window.form1.upcount.value)
	   window.form1.upcount.value=1;
 	  for(i=1;i<=window.form1.upcount.value;i++)
	     str+='文件'+i+':<input type="file" name="file'+i+'" style="width:400" class="tx1"><br><br>';
	  window.upid.innerHTML=str+'<br>';
	  }
	  </script> <input type="hidden" name="upcount" class="tx" value="1"> <input type="hidden" name="Button" class="bt" onClick="setid();" value=" 设定 "> 
        <input type="hidden" name="filepath" class="tx" style="width:350" value="/pic">
        <br>
        实际图: 
        <input type="file" name="file1" class="tx1" style="width:200" value=""> 
        <br>
        缩略图: 
        <input type="file" name="file2" class="tx1" style="width:200" value=""> 
      </td>
    </tr>
    <tr align="center" valign="middle"> 
      <td height="32" align="center" id="upid"> 
        <input name="Submit" type="submit" class="tx" value=" 提交 ">
      </td>
    </tr>
  </form>
</table>
file1:<%=request.cookies("0")%><br>
file2:<%=request.cookies("1")%><br>
</body>
</html>
<script language="javascript">

setid();
</script>