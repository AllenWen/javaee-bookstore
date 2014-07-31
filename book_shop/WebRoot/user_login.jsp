<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
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
			
			<form name="user_login" action="UserLoginAction">
  	<p>用户名
    <label for="user_id"></label>
    <input type="text" name="user_id" id="user_id">
  </p>
  <p>密码
  <label for="pwd"></label>
    <input type="password"  name="password" id="password">
  </p>
  <p>
    <input name="back" type="button" id="back" value="返回 "style="height:50px;width:120px" onclick="window.location.href='login.jsp'">
    <input name="login" type="submit" id="login" value="登录"style="height:50px;width:120px">
  </p>
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
