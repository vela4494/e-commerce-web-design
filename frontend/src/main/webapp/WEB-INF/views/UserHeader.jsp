<%@ page language="java" contentType="text/html"  import="com.model.User" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar"> 
    <ul class="nav navbar-nav">
      <li><a herf="ClientHome">Home </a></li>
      <li><a href="<c:url value="updateUser/${user.uname}"/>">Profile</a></li>
      <li><a href="#">About</a></li>
      <li><a href="Customer"><span class="glyphicon glyphicon-user"></span> Customer</a></li>
    </ul>
     <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
     <ul class="nav navbar-nav navbar-right">
      <%--  <li><a href="<c:url value="deleteUser/${user.uname}"/>">DELETE</a></li> --%>
       <li><a href="#"><span class="glyphicon glyphicon-user"></span>Welcome ${sessionScope.username}</a></li>
       <li><a href="${pageContext.request.contextPath }/goToCart">My Cart<i class="fa fa-cart-plus" aria-hidden="true"></i></a> </li>
      <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
</body>
</html>