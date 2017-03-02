<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="${ctx}/productUpd" method="post" modelAttribute="p">
<input type="hidden" name="productid" value="${p.productid}"/>
name:<input type="text" name="productname" value="${p.productname}"/>
price:<input type="text" name="productdprice" value="${p.productdprice}"/>
<input type="submit" value="save" />
</form:form>

</body>
</html>