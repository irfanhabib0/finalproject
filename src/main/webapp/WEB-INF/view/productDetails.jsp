<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		                   <li><a href="${ctx}/getview/">All Products</a></li>
		                <li><a href="${ctx}/getview/electric">Electric guiter</a></li>
		                <li><a href="${ctx}/getview/acoustic">Acoustic guiter</a></li>
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
<div class="container">
 <div class="row col-md-6 col-md-offset-2 custyle">
<table class="table table-striped">
<table class="table table-striped custab">
<thead>
<tr>
    <th>id</th>
    <th>name</th>
    <th>price</th>
     <th class="text-center">description</th>
      <th class="text-center">description</th>
     <th>picture</th>
     
    
 </tr>
 </thead>
 
 <c:forEach items="${products}" var="p">
 <tr>
 
   <td>${p.productid}</td>
   <td>${p.productname}</td> 
   <td>${p.productdprice}</td>
   <td>${p.productdescrip}</td>
    <td>${p.productdbrand}</td>
   <td><img alt=""  src="${ctx}/resources/images/product/${p.productid}.jpg" height="200px" width="200px" /></td>
   <td class="text-center"><a class='btn btn-info btn-xs' href="${ctx}/productUpd/${p.productid}"><span class="glyphicon glyphicon-edit"></span> Edit</a> 
   <a href="${ctx}/productDet/${p.productid}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
  
   </tr>
   </c:forEach>    
</table>
</table>
</div>

</div>

<script src="resources/js/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script> 
</body>
</html>