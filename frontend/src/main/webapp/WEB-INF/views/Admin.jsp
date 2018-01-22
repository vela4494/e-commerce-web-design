<%@ page language="java" contentType="text/html"  import="com.model.Supplier" %>
<%@ page language="java" contentType="text/html"  import="com.model.Category" %>
<%@ page language="java" contentType="text/html"  import="com.model.Product" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>Admin Page</title>
</head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid color:#151719">
    <div class="collapse navbar-collapse" id="myNavbar"> 
    <ul class="nav navbar-nav">
      <li><a href="Supplier">Supplier </a></li>
      <li><a href="Category">Catogery </a>
      <li><a href="Product">Product</a></li>
    </ul>
    </div>
    </div>
    </nav>
    <div class="tab-content">
      <h3>HOME</h3>
      <br>
       <button type="submit" class="btn btn-default">Check Suppiler</button>
      <button type="submit" class="btn btn-default">Check Category</button>
       <button type="submit" class="btn btn-default">Check Product</button>
    </div> -->
<div class="container">
  <h2>WECOME ADMIN</h2>
  <ul class="nav nav-tabs">
    <li><a href="#home">Home</a></li>
    <li><a href="#menu1">Suppiler</a></li>
    <li><a href="#menu2">Category</a></li>
    <li><a href="#menu3">Product</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <a href="Supplier"> <button type="submit" class="btn btn-default">Check Suppiler</button></a>
      <a href="Category"><button type="submit" class="btn btn-default">Check Category</button></a>
      <a href="Product"><button type="submit" class="btn btn-default">Check Product</button></a>
    </div>
    <div id="menu1" class="tab-pane fade">
    <div class="container">
  <h2>Enter Suppiler Details</h2>
  <form:form  class="form-horizontal" action="addsupplier" modelAttribute="supplier" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2">ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  placeholder="Enter ID" name="sid">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Name" name="sname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Adress:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Adress" name="sadr">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Mobile Number:</label>
      <div class="col-sm-10">          
        <input type="number" class="form-control"  placeholder="Enter Mobile Number" name="snum">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form:form>
</div>
      
    </div>
    <div id="menu2" class="tab-pane fade">
       <div class="container">
  <h2>Enter Category Details</h2>
  <form:form  class="form-horizontal" action="AddCategory" modelAttribute="category" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2">ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  placeholder="Enter Catogery ID" name="catid">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Catogery Name" name="catname">
      </div>
    </div>
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form:form>
</div>
       
    </div>
     <div id="menu3" class="tab-pane fade">
      <div class="container">
  <fieldset>
  <legend>ENTER PRODUCT DETAILS</legend>
  <form class="form-horizontal" action="AddProduct" modelAttribute="product" enctype="multipart/form-data" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  placeholder="Enter Product ID" name="pid">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT NAME:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Product Name" name="pname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT PRICE:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Price" name="pprice">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT STOCK:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Stock" name="pstock">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT DESCRIPTION:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Description" name="pdesc">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT IMAGE:</label>
      <div class="col-sm-10">
      <table>
       <tr><td> <input type="file" name="pimage" accept="image/*"></td>
  </table>
      </div>
    </div>
    <%-- <div class="form-group">
				<h3 class="input-title">Category Name:</h3>
			<td>	<select class="form-control" name="catname" >
				<option value="">----category choices----</option>
				<c:forEach items="${catList}" var="category">
				<option value="${category.catname}">${category.catname}</option></c:forEach>
					
				</select></td>
			</div>
			<div class="form-group">
				<h3 class="input-title">Supplier Id:</h3>
			<td>	<select class="form-control" name="sid" >
				<option value=""> ----supplier choices----</option>
				<c:forEach items="${supList}" var="supplier">
				<option value="${supplier.sid}">${supplier.sid}</option></c:forEach>
				</select></td>
			</div> --%>
		
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
        <button type="reset" class="btn btn-default">Reset</button>
      </div>
    </div>
  </form>
 
</div>
      
    </div>
     </fieldset>
  </div>
</div>

<script>
$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
});
</script>
</body>
</html>