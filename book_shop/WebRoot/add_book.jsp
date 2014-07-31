<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>添加图书</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/admin_style.css"/>

  </head>
  
  <body>
   <div id="background">
		<div id="page">
			<div id="header">
			</div> <!-- /#header -->
			<div id="contents" align="center">
			<font size=5>请正确填写图书信息</font>
			<form name="add_book"  action="BookAddAction" style="display:inline">
  	<p>标准书号
    <label for="book_id"></label>
    <input type="text" name="book_id" id=book_id>
  </p>
  <p>书名
  <label for="book_name"></label>
    <input type="text" name="book_name" id="book_name">
  </p>
    <p>作者
  <label for="author"></label>
    <input type="text" name="author" id="author">
  </p> 
   <p>出版社
  <label for="press"></label>
    <input type="text" name="press" id="press">
  </p> 
   <p>价格
  <label for="price"></label>
    <input type="text" name="price" id="price"  >
  </p>
   <p>存货
  <label  for="remain"></label>
    <input type="text" name="remain" id="remain">
  </p> 
   <p>类型
  <label  for="type"></label>
    <input type="text" name="type" id="type" >
  </p> 
  	
    <input name="add_book" type="submit" id="add_book" value="添加"style="height:50px;width:120px">
  </form>
  <form action="BookScanAction" style="display:inline">
  <input name="back" type="submit" id="back" value="返回"style="height:50px;width:120px" >
  </form>
  <div><font size=2>·若注册成功，页面将跳转！</font></div>

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
