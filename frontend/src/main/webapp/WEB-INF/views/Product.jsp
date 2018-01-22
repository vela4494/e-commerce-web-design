<%@ page language="java" contentType="text/html"  import="com.model.Product" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Product</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<div class="container">
<table class="table table-bordered table-hover">
<thead>
<tr>
		<th>PRODUCT ID:</th>
	    <th>PRODUCT NAME:</th>
	    <th>PRODUCT DESCRIPTION:</th>
	    <th>PRODUCT STOCK:</th>
	    <th>PRODUCT PRICE:</th>
	    <th>CATEGORY ID:</th>
	    <th>SUPPLIER ID:</th> 
	    <th>IMAGES:</th>
	    <th>ACTION:</th>
	</tr>
	</thead>
	<tbody>
	 <c:forEach items="${productList}" var="product">
	 <tr bgcolor="cyan">
		<td>${product.pid}</td>
		<td>${product.pname}</td>
		<td>${product.pdesc}</td>
		<td>${product.pstock}</td>
		<td>${product.pprice}</td>
		<td>${product.catname}</td>
		<td>${product.supid}</td>
		<td>
		<img src="<c:url value="/resources/Images/${product.pid }.jpg"/>" width="100px" height="100px">
		</td>
		<td>
			<a href="<c:url value="deleteProduct/${product.pid}"/>">DELETE</a>
			<a href="<c:url value="updateProduct/${product.pid}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>