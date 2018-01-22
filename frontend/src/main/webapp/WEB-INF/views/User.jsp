 <%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>  

<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body onload="document.registration.userid.focus();">

<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<form:form action="AddUser" modelAttribute="user" name="myform"> 
<div class="col-lg-12">

	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>    
    <input id="login-userName" type="text" class="form-control" name="userName" value="" placeholder="username or email"required>                                        
    </div>
    </div>    
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>    
    <input id="userEmail" type="text" class="form-control" name="userEmail" value="" placeholder="Please enter your email"required>                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>    
    <input id="userPassword" type="password" class="form-control" name="userPassword" value="" placeholder="Please type the password"required>                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>    
    <input id="userPhone" type="text" class="form-control" name="userPhone" value="" placeholder="Enter phone number"required>                                        
    </div>
    </div>
    
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>    
    <input id="userAddress" type="text" class="form-control" name="userAddress" value="" placeholder="Enter address"required>                                        
    </div>
    </div>
		
	<button type="submit" class="btn btn-lg btn" onclick="return fn_PhoneNumberValidation();">Submit</button>
	
	<button type="reset"  class="btn btn-lg btn">Cancel</button>
	
		
</div>


</form:form>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html> 