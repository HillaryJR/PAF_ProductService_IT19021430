<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Product" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.0.min.js"></script>
<script src="Components/ProductService.js"></script>

<meta charset="ISO-8859-1">
<title>Product Service</title>
</head>
<body>


	<div class="container">
	<div class="row">
		<div class="col-6">
			<h1>Product Management</h1>
			<form id="formProduct" name="formProduct">
				 Product Code:
				 <input id="productCode" name="productCode" type="text" class="form-control form-control-sm" >
				 <br> 
				 Product Name:
				 <input id="productName" name="productName" type="text" class="form-control form-control-sm">
				 <br> 
				 Product Price:
				 <input id="productPrice" name="productPrice" type="text" class="form-control form-control-sm">
				 <br> 
				 Product Description:
				 <input id="productDesc" name="productDesc" type="text" class="form-control form-control-sm">
				 <br>
				 Product Category:
				 <input id="productCat" name="productCat" type="text" class="form-control form-control-sm">
				 <br>
				 Product Quantity:
				 <input id="productQty" name="productQty" type="text" class="form-control form-control-sm">
				 <br>
				 
				 
				 <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
				 <input type="hidden" id="hidProductIDSave" name="hidProductIDSave" value="">
				 
			</form>
			
			<div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>
			
			<br>
			
			<div id="divProductsGrid">
			 <%
				 Product prodObj = new Product();
				 out.print(prodObj.readProduct());
			 %>
			</div>
			
		</div> 	
	</div>
	</div>



</body>
</html>