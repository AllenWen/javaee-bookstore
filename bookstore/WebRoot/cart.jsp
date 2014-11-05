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
    
    <title>购物车</title>
    <script type="text/javascript">
		    function test()
        	{
             	var tab=document.getElementById("cart_table");
            	var t;
            	var arr={};
            	var book={};
          	 	for(var i=1;i<tab.rows.length;i++)
            	{
                	t = tab.rows[i].cells[3].childNodes[1];
                	arr[i-1]=t.value;
            	}
            	for(var j=1;j<tab.rows.length;j++)
            	{
                	t = tab.rows[j].cells[0];
                	book[j-1]=t.innerText;
            	}
            	var arrJsonStr = JSON.stringify(arr);
                document.getElementById("count").href="CountAction?nums="+arrJsonStr;
        	}
		    </script>
		    
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
				
				<span id="infos">
					<a href="UpdateProfileAction1">修改资料</a>
					<a>|</a>
					<a href="login.jsp">退出登录</a>
				</span>
				<a href="index.jsp" id="logo"></a> <!-- /#logo -->
				<ul id="navigation">
					<li><a href="index.jsp">主页</a></li>
					<li><a href="BookViewAction">查看书籍</a></li>
					<li><a href="search.jsp">搜索图书</a></li>
					<li class="selected"><a href="CartViewAction">购物车</a></li>
					<li ><a href="OrderViewAction">我的订单</a></li>
					<li><a href="contact-us.jsp">联系我们</a></li>
				</ul>
			</div> <!-- /#header -->
			<div id="contents" align="center">
			<table id="cart_table" border="1" >
		    <tr>
		    <th>书名</th>
		    <th>价格</th>
		    <th>存货</th>
		    <th>购买数量</th>
		    <th>取消购买</th>
		    </tr>
		    <s:iterator value="#request.cart" id="cart">    
		    <tr>      
		    <td >     
		    <s:property value="#cart.bookName" ></s:property>   
		    </td>   
		    <td >   
		  	<s:property value="#cart.price" ></s:property>    
			</td>  
			<td >    
		  	<s:property value="#cart.remain" ></s:property>     
		    </td>
		    <td > 
	    	  <select name = "num"  id="num" style="width:80px;height:25px">
	    	  <option value=0>限购5本</option>
	    	  <option value =1>1</option>
	    	  <option value = 2>2</option>
	    	  <option value = 3>3</option>
	    	  <option value = 4>4</option>
	    	  <option value =5>5</option>
	    	  </select>
		    </td>
		  	<td >   
		 	<a href="CartDeleteAction?book_name=<s:property value="#cart.bookName" />">删除</a>    
		  	</td> 
		   	</tr>  
		    </s:iterator>                    
		    </table>
		    
			 <a  id="count"  onclick="test()" href="">马上结算</a>
			</div>
			<div id="footer">
				<div id="description">
					<div>
						<a href="index.jsp" class="logo"></a>
						<span>&copy; Copyright 2014 <a href="http://sse.bupt.edu.cn/">BUPTSSE</a> All rights reserved</span>
					</div>
					<p>
						感谢您使用<a href="index.jsp">网上书店</a>。本网站所展示的图书信息仅供参考，如有雷同，纯属巧合。我们希望您对本网站提出宝贵的意见，具体流程请<a href="contact-us.jsp">联系我们</a>。本网站由北京邮电大学软件学院所有，请使用者仔细阅读使用协议和版权声明。
					</p>
				</div>
			</div> <!-- /#footer -->
		</div> <!-- /#page -->
	</div> <!-- /#background -->
</body>
</html>
