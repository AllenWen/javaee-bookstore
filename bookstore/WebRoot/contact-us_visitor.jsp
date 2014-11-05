<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>联系我们-游客</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/visitor_style.css"/>

  </head>
  
  <body>
	<div id="background">
		<div id="page">
			<div id="header">
			
				<span id="infos">
					<a href="login.jsp">马上登录</a>
				</span>
				<a href="index_visitor.jsp" id="logo"></a> <!-- /#logo -->
				<ul id="navigation">
					<li><a href="index_visitor.jsp">主页</a></li>
					<li><a href="search_visitor.jsp">搜索图书</a></li>
					<li class="selected"><a href="contact-us_visitor.jsp">联系我们</a></li>
				</ul>
			</div> <!-- /#header -->
			<div id="contents">
				<div id="main" align="center">
					<p>
						
					</p>
					<address>
						<span>电话号码:</span>
						<font size=5>555-1234567 or 555-7654321</font>
						<span>电子邮箱:</span>
						<font size=5>rjxy@bupt.edu.cn</font>
						<span>公司地址:</span>
						<font size=5>北京市海淀区西土城路10号</font>
					</address>
				</div>
			</div> <!-- /#contents -->
			<div id="footer">
				<div id="description">
					<div>
						<a href="index_visitor.jsp" class="logo"></a>
						<span>&copy; Copyright 2014 <a href="http://sse.bupt.edu.cn/">BUPTSSE</a> All rights reserved</span>
					</div>
					<p>
						感谢您使用<a href="index_visitor.jsp">网上书店</a>。本网站所展示的图书信息仅供参考，如有雷同，纯属巧合。我们希望您对本网站提出宝贵的意见，具体流程请<a href="contact-us_visitor.jsp">联系我们</a>。本网站由北京邮电大学软件学院所有，请使用者仔细阅读使用协议和版权声明。
					</p>
				</div>
			</div> <!-- /#footer -->
		</div> <!-- /#page -->
	</div> <!-- /#background -->
  </body>
</html>
