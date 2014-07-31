<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>修改个人资料</title>
    
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
			<font size=5>请更新您的个人资料</font>
			 <s:iterator value="#request.user" id="user"></s:iterator>		
			<form name="update"  action="UpdateProfileAction2">  
			  <p>账号
			  <label for="user_id"></label>
			  <input type="text" name="user_id" id="user_id" value="<s:property value="#user.userId"/>" readonly>
			  </p>
			  <p>密码
			  <label for="password"></label>
			    <input type="password" name="password" id="password" value="<s:property value="#user.password"/>">
			  </p>
			    <p>真实姓名
			  <label for="user_name"></label>
			    <input type="text" name="user_name" id="user_name" value="<s:property value="#user.userName"/>">
			  </p> 
			   <p>住址
			  <label for="address"></label>
			    <input type="text" name="address" id="address" value="<s:property value="#user.address"/>">
			  </p> 
			   <p>电话
			  <label for="phone_num"></label>
			    <input type="text" name="phone_num" id="phone_num"  value="<s:property value="#user.phoneNum"/>">
			  </p>
			   <p>邮编
			  <label  for="post_code"></label>
			    <input type="text" name="post_code" id="post_code" value="<s:property value="#user.postCode"/>">
			  </p> 
			  <p > 
			   	<input name="cancel" type="button" id="cancel" value="取消"style="height:50px;width:120px" onclick="window.location.href='index.jsp'">
			    <input name="update" type="submit" id="update" value="更改"style="height:50px;width:120px">
			  </p>
			  <div><font size=2>·若修改成功，页面将跳转！</font></div>
			  
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
