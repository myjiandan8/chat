<!-- #include file="chat_inc.asp" -->
<title><%=roomname%> - 聊湾视频社区 - 视频聊天 - 语音聊天</title>
<body style="MARGIN: 0px" scroll=no onResize=javascript:parent.carnoc.location.reload()>
<script>
if(self!=top){top.location=self.location;}
function switchSysBar(){
if (switchPoint.innerText==3){
switchPoint.innerText=4;
switchPoint1.innerText="打开菜单";
document.all("frmTitle").style.display="none";
}else{
switchPoint.innerText=3;
switchPoint1.innerText="关闭菜单";
document.all("frmTitle").style.display="";
}}
</script>

<style type="text/css">.navPoint {COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt}
</style>

<table border="0" cellPadding="0" cellSpacing="0" height="100%" width="100%">
  <tr>
    <td align="middle" noWrap vAlign="center" id="frmTitle">
    
    
    <iframe frameBorder="0" id="carnoc" name="carnoc" src="left1.asp?roomid=<%=roomid%>" style="HEIGHT: 100%; VISIBILITY: inherit; WIDTH: 146px; Z-INDEX: 2" target="main">
    </iframe>
    
    

    </td>
    <td bgcolor="#CC5200" style="WIDTH: 9pt">
    <table border="0" cellPadding="0" cellSpacing="0" height="100%">
      <tr>
        <td style="HEIGHT: 100%" onclick="switchSysBar()">
        <font style="FONT-SIZE: 9pt; CURSOR: default; COLOR: #ffffff">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <span id="switchPoint1" title="关闭/打开左栏">打开菜单</span> </font>
        <br>
        <br>
        <br>
        <span class="navPoint" id="switchPoint" title="关闭/打开左栏">3</span><br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        </td>
      </tr>
    </table>
    </td>
    <td style="WIDTH: 100%">

    <iframe frameBorder="0" id="main" name="main" scrolling="yes" src="Default.asp" style="HEIGHT: 100%; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 1">
    </iframe>

    </td>
  </tr>
</table>
</html>
<script>
if(window.screen.width<'1408'){switchSysBar()}
</script>