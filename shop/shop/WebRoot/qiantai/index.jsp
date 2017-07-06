<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/Common.css" rel="stylesheet" type="text/css" />
    <link href="css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="css/index.css" />
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
    </script>
  </head>
  
<body >
<!-- head如果图片高度不合适。请修改Common.ces里面的".Header .HeaderTop"的高度。和".Header"的高度-->
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    
<!-- head-->	
	
	
	
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter" >
	     <div id="navigation" class="naivgation">
				<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
		 </div>
		 <div class="NewContainer770" >
				<div class="BoxHeader">
				    <div class="BoxHeader-center MarginTop10">
						<span style="float:left">最新课程</span>
						<span style="float:right"><a href="<%=path %>/goodsAll.action">更多>></a>&nbsp;&nbsp;&nbsp;&nbsp;</span>
			        </div>
				</div>
				<div class="Slot" >
				    <table cellspacing="9" cellpadding="9" align="left" width="505" height="317">
				          <tr>
				               <c:forEach items="${requestScope.goodsNoTejiaList}" var="goods" varStatus="sta">
				                  <c:if test="${sta.index%5==0}">
				                     </tr><tr>
				                  </c:if>
				                  <td align="center">
									   <a href="<%=path %>/goodsDetailQian.action?goodsId=${goods.goodsId }">  
									      <img width="130" height="130" src="<%=path %>/${goods.goodsPic }" style="border:1px solid #ccc; padding:3px;"/>
									      <center>${goods.goodsName }</center>
									      (￥:${goods.goodsShichangjia }元)
									   </a>
				                       
				                  </td>
				              </c:forEach>
				          </tr>
					</table>				    
                </div>
		 </div>
		 <div class="NewContainer770" >
				<div class="BoxHeader">
				    <div class="BoxHeader-center MarginTop10">
						<span style="float:left">销售排行</span>
						<span style="float:right">&nbsp;&nbsp;&nbsp;&nbsp;</span>
			        </div>
				</div>
				<div class="Slot" >
				    <table cellspacing="9" cellpadding="9" align="left" width="505" height="140">
				          <tr>
				               <c:forEach items="${requestScope.goodsList}" var="goods" varStatus="sta">
				                  <c:if test="${sta.index%5==0}">
				                     </tr><tr>
				                  </c:if>
				                  <td align="center">
									   <a href="<%=path %>/goodsDetailQian.action?goodsId=${goods.goodsId }">  
									      <img width="130" height="130" src="<%=path %>/${goods.goodsPic }" style="border:1px solid #ccc; padding:3px;"/>
									      <center>${goods.goodsName }</center>
									      (￥:${goods.goodsShichangjia }元)
									   </a>
				                       
				                  </td>
				              </c:forEach>
				          </tr>
					</table>				    
                </div>
		 </div>
		 <div class="NewContainer770" >
				<div class="BoxHeader">
				    <div class="BoxHeader-center MarginTop10">
						<span style="float:left">特价课程</span>
						<span style="float:right"><a href="<%=path %>/goods_tejia.action">更多>></a>&nbsp;&nbsp;&nbsp;&nbsp;</span>
			        </div>
				</div>
				<div class="Slot" >
				    <table cellspacing="9" cellpadding="9" align="left" width="505" height="140">
				          <tr>
				               <c:forEach items="${requestScope.goodsTejiaList}" var="goods" varStatus="sta">
				                  <c:if test="${sta.index%5==0}">
				                     </tr><tr>
				                  </c:if>
				                  <td align="center">
									   <a href="<%=path %>/goodsDetailQian.action?goodsId=${goods.goodsId }">  
									      <img width="130" height="130" src="<%=path %>/${goods.goodsPic }" style="border:1px solid #ccc; padding:3px;"/>
									      <center>${goods.goodsName }</center>
									      (￥:${goods.goodsShichangjia }元)
									   </a>
				                       
				                  </td>
				              </c:forEach>
				          </tr>
					</table>				    
                </div>
		 </div>
		 
</div>
</div>
<!--body-->
			<div class="left6" >
				<div class="first louT">
				<img src="images/tao3.png"/>
				<span style="font-size: 18px; font-weight: bold;">老师简介</span>
				</div>
				<div style="clear:both;"></div>
			</div>
			<div class="left71" style="border:none;height:40px;overflow:hidden;">
				<div class="left711" style="display:none;">
					<div class="left721">
						<span style="color: white;font-size: 15px;"><b>蔡颖</b></span>
						<br />
						<ul style="list-style: none;font-size: 12px;">
							<li>上海师范</li>
							<li>音乐学院</li>
							<li>钢琴</li>
							<li>教龄：12</li>
							<li>粉丝：17</li>
							<li>1课时起售</li>
							<li>45分钟</li>
							<li>一对一</li>
						</ul>
					</div>
				</div>
				<table style="display:none;" border="1" cellspacing="0" cellpadding="0" width="310px" height="310px"style="float: right;">
					<tr>
						<td width="310px" height="310px">
				            <img src="img/caiying1.jpg" width="310px" height="310px" />   
						</td>
					</tr>
				</table>
			</div>
			
			<div class="left81"  style="margin-left:200px;">
				<div class="left711">
					<div class="left721" style="background-color: #796AC6;">
						<span style="color: white;font-size: 15px;"><b>葛晓云</b></span>
						<br />
						<ul style="list-style: none;font-size: 12px;">
							<li style="background-color: #9488D2;">上海师范</li>
							<li style="background-color: #9488D2;">音乐学院</li>
							<li style="background-color: #9488D2;">琵琶</li>
							<li style="background-color: #9488D2;">阮</li>
							<li style="background-color: #9488D2;">教龄：4</li>
							<li style="background-color: #9488D2;">粉丝：2</li>
							<li style="background-color: #9488D2;">1课时起售</li>
							<li style="background-color: #9488D2;">45分钟</li>
							<li style="background-color: #9488D2;">1对1</li>
							
						</ul>
					</div>
				</div>
				<table border="1" cellspacing="0" cellpadding="0" width="310px" height="310px"style="float: right;">
					<tr>
						<td width="310px" height="310px">
				            <a href="queren.html"><img src="images/ge1.jpg" width="310px" height="310px" /></a>
						</td>
					</tr>
				</table>
			</div>
			<div class="left82">
				<div class="left711">
					<div class="left721" style="background-color: #FFA401;">
						<span style="color: white;font-size: 15px;"><b>周良</b></span>
						<br />
						<ul style="list-style: none;font-size: 12px;">
							<li style="background-color: #FFB634;">上海师范大学</li>
							<li style="background-color: #FFB634;">古琴</li>
							<li style="background-color: #FFB634;">吉他</li>
							<li style="background-color: #FFB634;">教龄：20</li>
							<li style="background-color: #FFB634;">粉丝：6</li>
							<li style="background-color: #FFB634;">1课时起售</li>
							<li style="background-color: #FFB634;">60分钟</li>
							<li style="background-color: #FFB634;">1对1</li>
							
						</ul>
					</div>
				</div>
				<table border="1" cellspacing="0" cellpadding="0" width="310px" height="310px"style="float: right;">
					<tr>
						<td width="310px" height="310px">
				            <img src="images/zhou1.jpg" width="310px" height="310px" />   
						</td>
					</tr>
				</table>
			</div>
			<div class="left9" >
				<div class="second louT">
				<img src="images/tao4.png"/>
				<span style="font-size: 18px; font-weight: bold;">老师风采</span>
				</div>
			</div>
			<div class="left10"  style="margin-left:200px;">
				<div class="left101">
					<table border="1" cellspacing="0" cellpadding="0" >
						<tr>
							<td rowspan="2">
								<img src="images/ge2.jpg" height="280px" width="100%" />
							</td>	
						</tr>	
					</table>
				</div>
				<div class="left101">
					<table border="1" cellspacing="0" cellpadding="0" >
						<tr>
							<td rowspan="2">
								<img src="images/caiying2.jpg" height="280px" width="100%" />
							</td>	
						</tr>	
					</table>
				</div>
				<div class="left101">
					<table border="1" cellspacing="0" cellpadding="0" >
						<tr>
							<td rowspan="2">
								<img src="images/zhou2.jpg" height="280px" width="100%" />
							</td>	
						</tr>	
					</table>
				</div>
				<div class="left101">
					<table border="1" cellspacing="0" cellpadding="0" >
						<tr>
							<td rowspan="2">
								<img src="images/liu2.jpg" height="280px" width="100%" />
							</td>	
						</tr>	
					</table>
				</div>
			</div>
			<div class="left12"  style="margin-left:200px;">
				<div class="left101">
					<table border="1" cellspacing="0" cellpadding="0" >
						<tr>
							<td rowspan="2">
								<img src="images/ge1.jpg" height="280px" width="100%" />
							</td>	
						</tr>	
					</table>
				</div>
				<div class="left101">
					<table border="1" cellspacing="0" cellpadding="0" >
						<tr>
							<td rowspan="2">
								<img src="images/caiying1.jpg" height="280px" width="100%" />
							</td>	
						</tr>	
					</table>
				</div>
				<div class="left101">
					<table border="1" cellspacing="0" cellpadding="0" >
						<tr>
							<td rowspan="2">
								<img src="images/zhou1.jpg" height="280px" width="100%" />
							</td>	
						</tr>	
					</table>
				</div>
				<div class="left101">
					<table border="1" cellspacing="0" cellpadding="0" >
						<tr>
							<td rowspan="2">
								<img src="images/liu1.jpg" height="280px" width="100%" />
							</td>	
						</tr>	
					</table>
				</div>
			</div>
		</div>	
	
	
<!--foot -->	
<div align="center" class="Wrapper">
	<div id="footer" align="center" class="Footer">
		 <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	</div>
</div>
<!--foot -->	
</body>
</html>
