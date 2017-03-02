<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>WELCOME TO SHOPPINGCART</h1>




<hr>
<hr>
<c:if test="${not empty content}">
<a href="logout">LogOut</a>
<a href="mycart">MyCart</a>

</c:if>
<h2>${content}</h2>
<h2>${successmessage}</h2>
<h2>${errormessage}</h2>
<c:if test="${empty content}">
<a href="loginpage">Login</a>
<a href="mycart">MyCart</a>
</c:if>




</body>
</html>