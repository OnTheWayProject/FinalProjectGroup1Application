<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
結帳成功<br>
<c:url var="checkout" value="/checkOutSuccessMessage"/>
<c:set var="totalPrice" scope="session" value="${totalPrice}"/>
<c:out value="${totalPrice}"/>
${successMessage}<br>

<a href="<c:url value='/'/> " >回前頁</a>

</body>
</html>