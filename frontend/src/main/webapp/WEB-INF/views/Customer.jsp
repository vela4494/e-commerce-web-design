<%@ page language="java" contentType="text/html"  import="com.model.Product" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Product</title>
<style type="text/css">
.thumbnail{
width: 100%;
overflow: hidden;
}
img{
-webkit-transition: all 0.5s ease;
}
img:hover{
transform: scale(1,2);
}
</style>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h1><center>Welcome Customer</center></h1>
<jsp:include page="UserHeader.jsp"></jsp:include>
<div class="container">
<div class="row">
<c:forEach items="${productList}" var="product">
<div class="col-md-3">
<div class="thumbnail">
         <a href="ProductDetails/${product.pid}">
		<img src="<c:url value="/resources/Images/${product.pid }.jpg"/>">
		</div>
		
		<h5><center>${product.pname}</center></h5>
        <h6><center>Rs. ${product.pprice} /-</center></h6></a>
</div>
</c:forEach>
</div>
</div>
</body>
</html>