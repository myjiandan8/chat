<!-- #include file="../sys/sys.asp"-->
<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<html><head>
<meta http-equiv="Content-Language" content="en-us">

<title>管理首页</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">

<% call top %>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="68">
    <tr>
      <td width="100%" background="img/bg.gif" height="22"><span lang="zh-cn">&nbsp;<b>UBB 
      企业风采 经典模版</b></span></td>
    </tr>
    <tr>
      <td width="100%" height="44" valign="top">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="95%" id="AutoNumber5">
          <tr>
            <td width="100%">　</td>
          </tr>
          <tr>
            <td width="100%">
            
            
<p><b>什么是UBB代码？ </b></p>
<p>UBB代码是HTML的一个变种,是Ultimate Bulletin Board (国外的一个BBS程序)采用的一种特殊的TAG。您也许已经对它很熟悉了。UBB代码很简单，功能很少，但是由于其Tag语法检查实现非常容易，所以我们的网站引入了这种代码，以方便网友使用显示图片/联接/加粗字体等常见功能。 
</p>
<p><b>UBB代码可以实现那些HTML的功能，及它的使用例子和技巧？</b></p>
<p>1.有两种方法可以加入超级连接，可以连接具体地址或者文字连接</p>
<p><font color="#FF0000" class=RedFont>[URL]</font><a href=http://www.leadbbs.com/>http://www.lwoo.com/</a><font color="#FF0000" class=RedFont>[/URL] 
  </font></p>
<p><font color="#FF0000" class=RedFont>[URL=</font><a href=http://www.leadbbs.com/>http://www.lwoo.com/</a><font color="#FF0000" class=RedFont>]</font><font class=RedFont><span lang="zh-cn">龙网企业</span></font><font color="#FF0000" class=RedFont>[/URL]</font></p>
<p>2.显示为粗体效果</p>
<p><font color="#FF0000" class=RedFont>[B]</font>文字<font color="#FF0000" class=RedFont>[/B]</font></p>
<p>3.显示为斜体效果</p>
<p><font color="#FF0000" class=RedFont>[I]</font>文字<font color="#FF0000" class=RedFont>[/I]</font></p>
<p>4.显示为下划线效果</p>
<p><font color="#FF0000">[U]</font>文字<font color="#FF0000">[/U]</font></p>
<p>5.文字位置控制</p>
<p>在文字的位置可以任意加入您需要的字符，<font color="#0000FF" class=BlueFont>center</font>位置<font color="#FF0000" class=RedFont>center</font>表示居中，<font color="#FF0000" class=RedFont>left</font>表示居左，<font color="#FF0000" class=RedFont>right</font>表示居右</p>
<p><font color="#FF0000" class=RedFont>[ALIGN=<font color="#0000FF" class=BlueFont>center</font>]</font><br>
  文字段落<br>
  <font color="#FF0000" class=RedFont>[/ALIGN]</font></p>
<p>6.加入邮件连接有两种方法可以，可以连接具体地址或者文字连接<br>
</p>
<p><font color="#FF0000" class=RedFont>[EMAIL]</font>webmaster@LeadBBS.com<font color="#FF0000" class=RedFont>[/EMAIL] 
  </font></p>
<p><font color="#FF0000" class=RedFont>[EMAIL=Mailto:</font>webmaster@LeadBBS.com<font color="#FF0000" class=RedFont>]</font>LeadBBS<font color="#FF0000" class=RedFont>[/EMAIL]</font></p>
<p>7.插入图片</p>
<p><font color="#FF0000" class=RedFont>[IMG]</font>http://www.LeadBBS.com/images/flag.gif<font color="#FF0000" class=RedFont>[/IMG]</font><br>
<br>插入图片，并可以点击图片打开新窗口查看图片<br><br>
<font color="#FF0000" class=RedFont>[IMGA]</font>http://www.LeadBBS.com/images/flag.gif<font color="#FF0000" class=RedFont>[/IMGA]</font></p>
<p>8.插入MicroMedia的Flash</p>
<p><font color="#FF0000" class=RedFont>[Flash]</font>http://www.test.com/flag.swf<font color="#FF0000" class=RedFont>[/Flash]</font></p>
<p><font color="#FF0000" class=RedFont>[Flash=<font color="#0000FF" class=BlueFont>宽度,高度</font>]</font>http://www.test.com/flag.swf<font color="#FF0000" class=RedFont>[/Flash]</font></p>
<p>9.实现HTML中的段落功能(相当于&lt;pre&gt;标签)</p>
<p><font color="#FF0000" class=RedFont>[CODE]<br>
  </font>文字段落<br>
  <font color="#FF0000" class=RedFont>[/CODE]</font></p>
<p>10.引用效果，相当于html中的&lt;BLOCKQUOTE&gt;功能，并在上下两端加上横条</p>
<p><font color="#FF0000" class=RedFont>[QUOTE]</font><br>
  引用段落<br>
  <font color="#FF0000" class=RedFont>[/QUOTE]</font></p>
<p>11.实现HTML目录效果</p>
<p><font color="#FF0000" class=RedFont>[LIST]</font>文字<font color="#FF0000" class=RedFont>[/LIST]</font> - 
  相当于html中的&lt;ul&gt;功能<br>
  <font color="#FF0000" class=RedFont>[LIST=a]</font>文字<font color="#FF0000" class=RedFont>[/LIST]</font> 
  - 相当于html中的&lt;ol type=1&gt;<br>
  <font color="#FF0000" class=RedFont>[LIST=1]</font>文字<font color="#FF0000" class=RedFont>[/LIST]</font> 
  - 相当于html中的&lt;ol type=a&gt;</p>
<p>12.实现文字来回飘动效果</p>
<p><font color="#FF0000" class=RedFont>[FLY]</font>文字<font color="#FF0000" class=RedFont>[/FLY]</font></p>
<p>13.实现文字飞翔效果(跑马灯)，相当于html中的&lt;marquee&gt;</p>
<p><font color="#FF0000" class=RedFont>[MOVE]</font>文字<font color="#FF0000" class=RedFont>[/MOVE]</font></p>
<p>14.实现文字发光特效，GLOW内属性依次为宽度、颜色和边界大小</p>
<p><font color="#FF0000" class=RedFont>[GLOW=</font><font color="#0000FF" class=BlueFont>255,RED,2</font><font color="#FF0000" class=RedFont>]</font>文字<font color="#FF0000" class=RedFont>[/GLOW]</font></p>
<p>15.实现文字阴影特效，SHADOW内属性依次为宽度、颜色和边界大小</p>
<p><font color="#FF0000" class=RedFont>[SHADOW=</font><font color="#0000FF" class=BlueFont>255,RED,2</font><font color="#FF0000" class=RedFont>]</font>文字<font color="#FF0000" class=RedFont>[/SHADOW]</font></p>
<p>16.实现文字颜色改变</p>
<p><font color="#FF0000" class=RedFont>[COLOR=</font><font color="#0000FF" class=BlueFont>颜色代码</font><font color="#FF0000" class=RedFont>]</font>文字<font color="#FF0000" class=RedFont>[/COLOR]</font></p>
<p>17.实现文字大小改变</p>
<p><font color="#FF0000" class=RedFont>[SIZE=</font><font color="#0000FF" class=BlueFont>数字</font><font color="#FF0000" class=RedFont>]</font>文字<font color="#FF0000" class=RedFont>[/SIZE]</font></p>
<p>18.实现文字字体转换</p>
<p><font color="#FF0000" class=RedFont>[FACE=</font><font color="#0000FF" class=BlueFont>字体</font><font color="#FF0000" class=RedFont>]</font>文字<font color="#FF0000" class=RedFont>[/FACE]</font></p>
<p>19.嵌入HTML代码并直接显示(仅对管理员开放)</p>
<p><font color="#FF0000" class=RedFont>[HTML]</font>文字<font color="#FF0000" class=RedFont>[/HTML]</font></p>

<p>20.插入ShockWave格式文件，中间的数字为宽度和长度</p>
<p><font color="#FF0000" class=RedFont>[DIR=<font color="#0000FF" class=BlueFont>宽度,高度</font>]</font>http://....<font color="#FF0000" class=RedFont>[/DIR]</font></p>

<p>21.插入RealPlayer格式的rm文件，中间的数字为宽度和长度</p>
<p><font color="#FF0000" class=RedFont>[RM=<font color="#0000FF" class=BlueFont>宽度,高度</font>]</font>http://....<font color="#FF0000" class=RedFont>[/RM]</font></p>

<p>22.插入为Midia Player格式的文件，中间的数字为宽度和长度</p>
<p><font color="#FF0000" class=RedFont>[MP=<font color="#0000FF" class=BlueFont>宽度,高度</font>]</font>http://....<font color="#FF0000" class=RedFont>[/MP]</font></p>

<p>23.插入为QuickTime格式的文件，中间的数字为宽度和长度</p>
<p><font color="#FF0000" class=RedFont>[QT=<font color="#0000FF" class=BlueFont>宽度,高度</font>]</font>http://....<font color="#FF0000" class=RedFont>[/QT]</font></p>

<p>24.上标文字</p>
<p><font color="#FF0000" class=RedFont>[sup]</font>文字<font color="#FF0000" class=RedFont>[/sup]</font>，效果：LWOO<sup>2</sup></p>

<p>25.下标文字</p>
<p><font color="#FF0000" class=RedFont>[sub]</font>文字<font color="#FF0000" class=RedFont>[/sub]</font>，效果：LWOO<sub>2</sub></p>


            
            </td>
          </tr>
          <tr>
            <td width="100%">　</td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>
<p>
<br>

<% call di  %> </p>

</body>

</html>