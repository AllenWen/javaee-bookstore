<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>注册用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css"/>

  </head>
  
  <body>
   <div id="background">
		<div id="page">
			<div id="header">
			</div> <!-- /#header -->
			<div id="contents" align="center">
			<font size=5>请正确填写个人资料</font>
			<form name="sign_in"  action="UserRegisterAction">
  	<p>用户名
    <label for="user_id"></label>
    <input type="text" name="user_id" id="user_id">
  </p>
  <p>密码
  <label for="password"></label>
    <input type="password" name="password" id="password">
  </p>
    <p>真实姓名
  <label for="user_name"></label>
    <input type="text" name="user_name" id="user_name">
  </p> 
   <p>住址
  <label for="address"></label>
    <input type="text" name="address" id="address">
  </p> 
   <p>电话
  <label for="phone_num"></label>
    <input type="text" name="phone_num" id="phone_num"  >
  </p>
   <p>邮编
  <label  for="post_code"></label>
    <input type="text" name="post_code" id="post_code">
  </p> 
  <p > 
  	<input name="back" type="button" id="back" value="返回"style="height:50px;width:120px" onclick="window.location.href='login.jsp'">
    <input name="sign_in" type="submit" id="sign_in" value="提交"style="height:50px;width:120px">
  </p>
  <div><font size=2>·若注册成功，页面将跳转！</font></div>
</form>
			</div>
			   <div id="footer">
				<div id="description">
					<div>
						<a class="logo"></a>
						<span>&copy; Copyright 2014 <a href="http://sse.bupt.edu.cn/">BUPTSSE</a> All rights reserved</span>
					</div>
					<p>
						感谢您使用网上书店。本网站所展示的图书信息仅供参考，如有雷同，纯属巧合。我们希望您对本网站提出宝贵的意见，具体流程请联系我们。本网站由北京邮电大学软件学院所有，请使用者仔细阅读使用协议和版权声明。
					</p>
				</div>
			</div> 
		</div> <!-- /#page -->
	</div> <!-- /#background -->
  </body>

</html>