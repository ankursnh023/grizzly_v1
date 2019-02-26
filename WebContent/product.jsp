<%@page import="java.util.List"%>
<%@page import="com.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% List<Product> pL=(List)request.getAttribute("products");
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Grizzly Store</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <form class="navbar-form navbar-left" action="">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    <form class="navbar-form navbar-right" action="logout">
    <button type="submit" class="btn btn-default" >Logout</button>
    </form>
    
  </div>
</nav>

<!-- profile -->

<div class="container">

<div class="col-md-3">
	
	<nav class="nav navbar-light bg-light">
                    <a class="navbar-brand" href="#">Profile</a>
                </nav>


                <img src="/images/product-add.jpg"  alt="Profile picture" class="mx-auto d-block mt-4" />


                <h4 class="text-center mt-4">Name</h4>
	
</div>
<div class="col-md-9">
<a href="add"><button type="button" class="btn btn-secondary">Add Product</button></a>

<table class="table table-borderless">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Category</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <% for(int i=0;i<pL.size();i++){ %>
    <tr>
      <th scope="row"><%=pL.get(i).getName()%></th>
      <td><%=pL.get(i).getCategory()%></td>
      <td><%=pL.get(i).getDescription()%></td>
      <td><%=pL.get(i).getPrice()%></td>
      <td><a href="">View</a></td>
      <td><a href="">Block</a></td>
      <td><a href="delete?id=<%= pL.get(i).getId() %>">Remove</a></td>
    </tr><%} %>
  </tbody>
</table>

</div>

</div>
</body>
</html>