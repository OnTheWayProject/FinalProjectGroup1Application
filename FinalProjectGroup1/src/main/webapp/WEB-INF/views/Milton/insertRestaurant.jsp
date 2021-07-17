<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
<style type="text/css">
   span.error {
	color: red;
	display: inline-block;
	font-size: 5pt;
}
</style>
<meta charset="UTF-8">
<link rel='stylesheet' href="<c:url value='/css/style.css' />" type="text/css" />
</head>
<body class="left-sidebar is-preload">
	<div id="page-wrapper"></div>

	<!-- Header -->


	<!-- Main -->
	<div align="center">
		<article id="main">
			<h2>我的購物車<br> <em>My Shopping Cart</em></h2>
				<fieldset style="width: 960px;">
					<legend>商品項目</legend>
					<%-- 	    <form:form method="POST" modelAttribute="place" > --%>
					<form:form method="POST" modelAttribute="productinfo" enctype='multipart/form-data'>
						<Table>
						<td>類型：<br>&nbsp;</td>
							<td width='360'>
							<form:select path="type.typeId">
								<form:option label="請挑選" value="-1" />

								<form:options items="${typeList}" itemLabel="typeName"
											itemValue="typeId" />
							</form:select> <br>&nbsp; 
							<form:errors path='type.typeId' cssClass="error" /> 
							</td>
							<tr>

								<td>商品：<br>&nbsp;
								</td>
								<td><form:select path="type.typeId">
										<form:option label="請挑選" value="-1" />

										<form:options items="${productList}" itemLabel="productname"
											itemValue="productid" />
									</form:select> <br>&nbsp;</td>
							</tr>

							<tr>
								<td colspan='4' align='center'><br>&nbsp; <input
									type='submit'></td>
							</tr>
						</Table>
					</form:form>

				</fieldset>

				<br>
				<fieldset style="width: 960px;">
					<legend>產品內容</legend>
					<table border="1px">
						<tr>
							<th align="center">產品類型</th>
							<th align="center">產品名稱</th>
							<th class="right">價格</th>
							<th>&nbsp;</th>

						</tr>


						<c:forEach items="${productList}" var="productList">
							<tr>

								<td align="center">${productList.type.typeName}</td>
								<td align="center">${productList.productname}</td>
								<td align="center">${productList.productprice}</td>
								<td><form method="post">
										<input type="hidden" name="productCode"
											value="${productList.productid}"> <input
											type="submit" value="Add To Cart">
									</form></td>

							</tr>
						</c:forEach>

					</table>
				</fieldset>

				<br>

				<fieldset style="width: 960px;">
					<legend>購物內容</legend>
					<table border="1px">

						<tr>
							<!--               <th>產品數量</th> -->
							<th>產品類型</th>
							<th>產品名稱</th>
							<th>價格</th>
							<th>數量</th>
							<th>操作</th>

						</tr>
						<c:forEach var="item" items="${cart}" varStatus="status">
							<tr>
								<td>${item.productid}</td>
								<td>${item.productname}</td>
								<td>${item.productprice}</td>
								<td>${item.productquantity}</td>
								<!-- 顯示購物車有幾項商品 -->
								<%--               <c:out value="${status.index}"/> --%>



								<td>
									<form action="" method="post">
										<input type="hidden" name="todo" value="remove"> <input
											type="hidden" name="productCode" value="${item.productid}">
										<input type="hidden" name="cartIndex" value="${status.index}">
										<input type="submit" value="Remove Item">

									</form>
								</td>
							</tr>

							<br>
						</c:forEach>
					</table>
					<p>
						<b>To change the quantity</b>, enter the new quantity and click on
						the Update button.
					</p>

					<c:url var="ContinueShopping" value="/shopeCarPage" />
					<form action="${ContinueShopping}" method="post">
						<input type="hidden" name="todo" value="shop"> <input
							type="submit" value="Continue Shopping">
					</form>

					<c:url var="checkout" value="/shopCartCheckOut" />
					<form action="${checkout}" method="post">
						<input type="hidden" name="todo" value="checkout"> <input
							type="submit" value="Checkout">
					</form>


				</fieldset>

				<a href="<c:url value='/'/> ">回前頁</a>
	
	</article>
	</div>


	

	       	

</body>
</html>