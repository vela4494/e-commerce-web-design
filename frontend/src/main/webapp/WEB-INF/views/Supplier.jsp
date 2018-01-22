<%@ page language="java" contentType="text/html"  import="com.model.Supplier" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	<th>Supplier ID</th>
	<th>Supplier Name</th>
	<th>Supplier Address</th>
	<th>Mobile Number</th>
	<th>Action</th>
</tr>
</thead>
<tbody>
<c:forEach items="${supplierList}" var="supplier">
	<tr>
		<td>${supplier.sid}</td>
		<td>${supplier.sname}</td>
		<td>${supplier.sadr}</td>
		<td>${supplier.snum}</td>
		<td>
			<a href="<c:url value="deleteSupplier/${supplier.sid}"/>">DELETE</a>
			<a href="<c:url value="updateSupplier/${supplier.sid}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>