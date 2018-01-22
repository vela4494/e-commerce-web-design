<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Appliance</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<form:form action="${pageContext.request.contextPath}//UpdateProduct" modelAttribute="product">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Product Module</td>
	</tr>
	<tr>
		<td>Product ID</td>
		<td><form:input path="pid"/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input path="pname"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		<td><form:input path="pdesc"/></td>
	</tr>
	<tr>
	<td>Product Stock</td>
		<td><form:input path="pstock"/></td>
	</tr>
	<tr>
	<td>Product price</td>
		<td><form:input path="pprice"/></td>
	</tr>
	<tr>
	<td>CatId</td>
		<td><form:input path="catname"/></td>
	</tr>
	<tr>
	<td>SupId</td>
		<td><form:input path="supid"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateProduct"/>
			<button type="Product.jsp"  class="btn btn-default">Cancel</button></center>
		</td>
	</tr>
	
</table>
</form:form>

</body>
</html>