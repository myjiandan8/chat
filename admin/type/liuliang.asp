<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>密码修改</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; 流量统计</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="370" align="center" bgcolor="#FFFFFF">
            
★该聊天室流量统计<br>

              <table border="1" cellpadding="0" cellspacing="0" width="220" id="AutoNumber3">
                <tr>
                  <td width="136" bgcolor="#000080" align="center">
                  <font color="#FFFFFF">项目</font></td>
                  <td width="78" bgcolor="#000080" align="center">
                  <font color="#FFFFFF">人数</font></td>
                </tr>
                <tr>
                  <td width="136" align="center">人气指数</td>
                  <td width="78" align="center"><%=renqi%>　</td>
                </tr>
                <tr>
                  <td width="136" align="center">总 流 量</td>
                  <td width="78" align="center"><%=TOTAL%>　</td>
                </tr>
                <tr>
                  <td width="136" align="center">上月流量</td>
                  <td width="78" align="center"><%=BMONTH%>　</td>
                </tr>
                <tr>
                  <td width="136" align="center">本月流量</td>
                  <td width="78" align="center"><%=MONTHS%>　</td>
                </tr>
                <tr>
                  <td width="136" align="center">昨天流量</td>
                  <td width="78" align="center"><%=TODAY%>　</td>
                </tr>
                <tr>
                  <td width="136" align="center">今日流量</td>
                  <td width="78" align="center"><%=YESTERDAY%>　</td>
                </tr>
              </table>

            
  
            </td>
            </tr>

        </table>
        </center>
      </div>
            
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>