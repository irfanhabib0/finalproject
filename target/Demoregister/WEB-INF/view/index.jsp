<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>guiter</title>
<meta charset="utf-8"/>
		  <meta name="viewport" content="width=device-width, initial-state=1"/>
		  <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.min.css"/>
		 <link type="text/css" rel="stylesheet" href="resources/css/main.css"/>
		 <link type="text/css" rel="stylesheet" href="resources/font-awesome/css/font-awesome.min.css"/>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
  <div class="navbar-header">
  <a href="#" class="navbar-brand">Brand Logo..</a>
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#company" >
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  </button>
  </div>
  <div class="collapse navbar-collapse" id="company">
  <ul class="nav navbar-nav">
         <li><a href="#">Home</a></li>
		 <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Products Category<span class="caret"></span></a>
		 <ul class="dropdown-menu">
		                <li><a href="#">Electric guiter</a></li>
		                <li><a href="#">Acoustic guiter</a></li>
		                <li><a href="#">Alien</a></li>
	                    <li><a href="#">Alesis</a></li>
		 
		 </ul>
		 </li>
		 <li><a href="#">Bestsellers</a></li>
		 <li><a href="#">Sale</a></li>
		 <li><a href="#">Finance</a></li>
		 <li><a href="#">Lessons</a></li>
		 <li><a href="#">ContactUs</a></li>
          
  
  </ul>
  <ul class="nav navbar-nav navbar-right">
         <li><a href="/loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		 <li><a href="#"><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
  </ul>
  </div>
  </div>
  </nav>
  <br><br><br>
<form:form action="productee" method="post" commandName="product" enctype="multipart/form-data">

Name  : <input type="text" name="productname"/><br>


Price : <input type="text" name="productdprice"/><br>
Description: <input type="text" name="productdescrip"/><br>
Brand : <input type="text" name="productdbrand"/><br>
Image : <input type="file" name="file"/><br>


<br>
<br>
<input type="submit" value="submit">
</form:form>
</body>
</html>