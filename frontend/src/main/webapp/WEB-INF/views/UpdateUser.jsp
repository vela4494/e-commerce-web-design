<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
<form:form action="${pageContext.request.contextPath}//UpdateUser" modelAttribute="user" method="post">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">User Module</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td><form:input path="uname"/></td>
	</tr>
	<tr>
		<td>User Password</td>
		<td><form:input path="pword"/></td>
	</tr>
	
	<tr>
		<td>Mobile Number</td>
		<td><form:input path="mnum"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateUser"/>
			<button type="Customer.jsp"  class="btn btn-lg btn-info">Cancel</button></center>
		</td>
	</tr>
</table>
</form:form>
</body>
</html>