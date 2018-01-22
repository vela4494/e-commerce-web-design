<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="UserHeader.jsp"></jsp:include>
<div class="container">
<div class="row">
<div class="col-xs-4 item-photo">
<img src="<c:url value="/resources/Images/${product.pid}.jpg"/>"  width="300px" height="300px" />
</div>

<div class="col-xs-5" style="border:0px solid gray">

<h3>${product.pname}</h3>
<h4>${product.pdesc}</h4>
<h4>${product.pprice} Rs.</h4>
<%-- <h5>${product.supplier.supplierName }</h5> --%>
<div class="section" style="padding-bottom:20px;">

<form action="${pageContext.request.contextPath}/addToCart" method="post">
	<input type="hidden" value="${product.pid}" name="pid">
	<input type="hidden" value="${product.pprice}" name="pprice">
	<input type="hidden" value="${product.pname}" name="pname">
	<input type="hidden" value="${product.pimage}" name="pimage">
	<input type="hidden" value="${product.pstock}" name="pstock">
	
	<input type="number" class="form-control" name="quantity" required>
	
	<input class="btn btn-primary btn-lg" type="submit" value="Add To Cart">

</div>
</div>
<div class="col-xs-9">
<ul class="menu-items">
<li class="active">Details of product</li>
</ul>
</div>
</form>
</div>

</body>
</html>