<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container justify-content-center">
	<form action="insert" >
	<div class="form-group row">
    <div class="col-sm-3">
    <label class="col-sm-2 col-form-label">Name</label>
      <input type="text" class="form-control" name="name" placeholder="Enter name" required>
    </div>
  </div>
	
  <div class="form-group row">
    <div class="col-sm-3">
    <label class="col-sm-2 col-form-label">Category</label>
      <input type="text" class="form-control" name="category" placeholder="Enter Product category" required>
    </div>
  </div>
  
  <div class="form-group row">
    <div class="col-sm-3">
    <label class="col-sm-2 col-form-label">Description</label>
      <input type="text"  class="form-control" name="description" placeholder="Enter description" required>
    </div>
  </div>
   <div class="form-group row">
    <div class="col-sm-3">
    <label class="col-sm-2 col-form-label">Price</label>
      <input type="number" step="0.01" class="form-control" name="price" placeholder="Enter price" required>
    </div>
  </div>
  

  <div class="form-group row">
    <div class="row-sm-10 m-2">
      <button type="submit" class="btn btn-primary">Add</button>
    </div>
    <div class="row-sm-10 m-2">
      <button type="submit" class="btn btn-primary">Cancel</button>
    </div>
  </div>
</form>
	
</div>

</body>
</html>