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
    
    <title>用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/admin_style.css">
  </head>
  <body>
   <div id="background">
		<div id="page">
			<div id="header">
			<span id="infos">
					<a href="admin_index.jsp">返回</a>
					<a>|</a>
					<a href="login.jsp">退出登录</a>
				</span>
			</div> <!-- /#header -->
			<div id="contents" align="center">
			 <input type="button" id="sign_in" value="添加用户 "style="width:80px;height:30px" onclick="window.location.href='add_user.jsp'">
			    <table border="1">
    			<tr>
			    <th>账号</th>
			    <th>密码</th>
			    <th>真实姓名</th>
			    <th>地址</th>
			    <th>电话</th>
			    <th>邮编</th>
			    <th>删除</th>
		    	<th>编辑</th>
			    </tr>
			    <s:iterator value="#request.user" id="user">
			    <tr>
			    <td>
			    <s:property value="#user.userId" ></s:property> 
			    </td>
			     <td>
			    <s:property value="#user.password" ></s:property> 
			    </td>
			     <td>
			    <s:property value="#user.userName" ></s:property> 
			    </td>
			     <td>
			    <s:property value="#user.address" ></s:property> 
			    </td>
			     <td>
			    <s:property value="#user.phoneNum" ></s:property> 
			    </td>
			     <td>
			    <s:property value="#user.postCode" ></s:property> 
			    </td>
			    <td >   
		 		<a href="UserDeleteAction?user_id=<s:property value="#user.userId" />">删除</a>    
		  		</td> 
		  		<td >   
		 		<a href="UserUpdateAction1?user_id=<s:property value="#user.userId" />">编辑</a>    
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
