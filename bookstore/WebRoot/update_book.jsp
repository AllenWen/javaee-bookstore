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
    
    <title>编辑图书信息</title>
    
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
			<font size=5>更新图书信息</font>
			 <s:iterator value="#request.book" id="book"></s:iterator>	
			<form name="update_book"  action="BookUpdateAction2" style="display:inline">
			  <p>书号
			  <label for="book_id"></label>
			  <input type="text" name="book_id" id="book_id" value="<s:property value="#book.bookId"/>">
			  </p>
			  <p>书名
			  <label for="book_name"></label>
			    <input type="text" name="book_name" id="book_name"  value="<s:property value="#book.bookName"/>">
			  </p>
			    <p>作者
			  <label for="author"></label>
			    <input type="text" name="author" id="author" value="<s:property value="#book.author"/>">
			  </p> 
			   <p>出版社
			  <label for="press"></label>
			    <input type="text" name="press" id="press" value="<s:property value="#book.press"/>">
			  </p> 
			   <p>价格
			  <label for="price"></label>
			    <input type="text" name="price" id="price"  value="<s:property value="#book.price"/>">
			  </p>
			   <p>存货
			  <label  for="remain"></label>
			    <input type="text" name="remain" id="remain" value="<s:property value="#book.remain"/>">
			  </p> 
			  <p>类型
			  <label  for="type"></label>
			    <input type="text" name="type" id="type" value="<s:property value="#book.type"/>">
			  </p> 
			    <input name="update" type="submit" id="update" value="更改"style="height:50px;width:120px">
			  </form>
			  <form action="BookScanAction"  style="display:inline">
			  <input name="cancel" type="submit" id="cancel" value="取消"style="height:50px;width:120px" >
			  </form>
			  <div><font size=2>·若修改成功，页面将跳转！</font></div>
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
