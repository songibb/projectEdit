<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie productCookie = new Cookie("productCId", String.valueOf("productId"));
	productCookie.setPath("/");
	productCookie.setMaxAge(24*60*60);
	response.addCookie(productCookie);
%>
</body>
</html>