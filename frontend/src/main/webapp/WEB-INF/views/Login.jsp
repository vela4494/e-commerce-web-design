<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<br>
<br>
<br>
<br>
<div class="container">
<div class="jumbotron">
<h2><font color="black">Login Page</font></h2>
<div class="row">
  
  <form action="perform_login" method="post">  
   
    <div class="form-group">
    <div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input type="text" class="form-control" placeholder="Enter ID" name="username" required>
    </div>
    </div>
    
    
    <div class="form-group">
    <div style="margin-bottom: 25px" class="input-group">
     <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input type="password" class="form-control" placeholder="Enter password" name="password" size="35" required>
    </div>
    </div>
       
    
    <button type="button" class="btn btn-lg btn"><a href="User">Create Account</a></button>
	<button type="submit" class="btn btn-lg btn">Submit</button>	    
    
  </form>
  </div>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>