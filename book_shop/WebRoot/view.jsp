<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看图书</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  
  <body  >
   <div id="background">
		<div id="page">
			<div id="header">
			<span id="infos">
					<a href="UpdateProfileAction1">修改资料</a>
					<a>|</a>
					<a href="login.jsp">退出登录</a>
				</span>
				<a href="index.jsp" id="logo"></a> <!-- /#logo -->
				<ul id="navigation">
					<li ><a href="index.jsp">主页</a></li>
					<li class="selected"><a href="BookViewAction">查看书籍</a></li>
					<li><a href="search.jsp">搜索图书</a></li>
					<li><a href="CartViewAction">购物车</a></li>
					<li ><a href="OrderViewAction">我的订单</a></li>
					<li><a href="contact-us.jsp">联系我们</a></li>
				</ul>
			</div> <!-- /#header -->
			<div id="contents" align="center">
			<table border="1" >
		    <tr>
		    <th>标准书号</th>
		    <th>书名</th>
		    <th>作者</th>
		    <th>出版社</th>
		    <th>价格</th>
		    <th>存货</th>
		    <th>类型</th>
		    <th>购物车</th>
		    </tr>
		    <s:iterator value="#request.book" id="book">    
		    <tr>    
		    <td >     
		    <s:property value="#book.bookId" ></s:property>   
		    </td>   
		    <td >     
		    <s:property value="#book.bookName" ></s:property>   
		    </td>   
		    <td >   
		   	<s:property value="#book.author" ></s:property>    
		  	</td>  
		   	<td >    
		  	<s:property value="#book.press" ></s:property>     
		    </td>
		    <td >   
		  	<s:property value="#book.price" ></s:property>    
			</td>  
			<td >    
		  	<s:property value="#book.remain" ></s:property>     
		    </td>
		  	<td >   
		 	<s:property value="#book.type" ></s:property>    
		  	</td>  
		  	<td >   
		 	<a href="CartAddAction?book_name=<s:property value="#book.bookName" />&price=<s:property value="#book.price" />&remain=<s:property value="#book.remain" />" >添加</a>    
		  	
		  	</td> 
		   	</tr>  
		    </s:iterator>                 
		    </table>
  
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
