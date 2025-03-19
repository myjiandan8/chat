<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->

<%
Set UP = Nothing
Set UP = Server.CreateObject("lw.up")

DIM PicName,PicHeight,PicWidth,PicSize


EER=0 '出错判定
eid=HTMLEncode(Trim(UP.form("id")))
zhiwu=HTMLEncode(Trim(UP.form("zhiwu")))
username=HTMLEncode(Trim(UP.form("username")))
userid=Clng(HTMLEncode(UP.form("userid")))
jianjie=HTMLEncode(Trim(UP.form("jianjie")))
txt=HTMLEncode(Trim(UP.form("txt")))
PicName=""

if userid<10000 or userid>1000000 then
Call errstr("聊湾ID填写错误 应该是10000-1000000！！")
end if

sql = "Select * from xiangce where roomid="& id &" and id="&eid
rs.open sql,chatconn,1,3
if rs.eof then
Call errstr("你图片不存在！！")
end if

if username="" or zhiwu="" or jianjie="" or txt="" then
Call errstr("请填写完整！！")
end if

if len(txt)>250 then
Call errstr("说明控制250字以内！！")
end if



if EER=0 then

	'rs.addnew
	rs("roomid")=id
	rs("username")=username
	rs("zhiwu")=zhiwu
	rs("userid")=userid
	rs("jianjie")=jianjie
	rs("txt")=txt
	
	'日期信息
	'rs("times")=date()
	rs.update
	rs.close
	

	response.write "编辑成功！"
	response.write "<p><a href=edit.asp>继续添加</a></p>"
	

end if


set UP = Nothing


%>