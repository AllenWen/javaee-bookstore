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
    
    <title>收银台</title>
    <script type="text/javascript">
		    function pay()
        	{
             	var c=document.getElementById("choice");
            	var sel=c.options[c.selectedIndex].text;
            	if(sel=="请选择付款方式"){
            		alert(sel);
            	}else{
            		alert("成功支付! 支付方式是:"+sel);
            		document.getElementById("paynow").href="PayAction";
            	}
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
					
			</div> <!-- /#header -->
			<div id="contents" align="center">
			<font size=5>您好！这是您的订单</font>
				
				<table border="1">
    			<tr>
			    <th>明细</th>
			    <th>下单日期</th>
			    <th>总价</th>
			    </tr>
			    <s:iterator value="#request.count" id="count">
			    <tr>
			    <td>
			    <s:property value="#count.detail" ></s:property> 
			    </td>
			     <td>
			    <s:property value="#count.curDate" ></s:property> 
			    </td>
			     <td>
			    <s:property value="#count.totalPriceStr" ></s:property> 
			    </td>
			    </tr>
			    </s:iterator>          
			    </table>
			   
			     <select id="choice" style="width:120px;height:25px">
	    	 	 <option value=0>请选择付款方式</option>
		    	  	<option value =1>货到付款</option>
		    	  	<option value = 2>网银支付</option>
		    	  	<option value = 3>信用卡支付</option>
	    	  	</select>		  
			      <a id="paynow" href="javascript:void(0);" onclick="pay()">立即支付</a>
			       <a id="paycancel" href="PayCancelAction">取消订单</a>
				<div id="featured">
				</div>
			</div> <!-- /#contents -->
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
			</div> 
		</div> <!-- /#page -->
	</div> <!-- /#background -->
  </body>
</html>
