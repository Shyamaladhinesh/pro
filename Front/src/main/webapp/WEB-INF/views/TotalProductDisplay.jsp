<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
 <%@include file="Head.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<form action="<c:url value="/addToCart/${listproduct.productId}"/>">
<div class="container">
    <h3 class="h3"> </h3>
    <div class="row">
        <div class="col-lg-3 col-md-4 col-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="#">
                        <img src=<c:url value="/resources/images/${listproduct.productId}.jpg"/> alt=" " width="100" height="100">
                    </a>
                    
                    <ul class="social">
                       <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                    </ul>
                    
                    <span class="product-new-label">Sale</span>
                    <span class="product-discount-label">20%</span>
                </div>
                <ul class="rating">
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star disable"></li>
                </ul>
                <div class="product-content">
                    <h3>${listproduct.productName}</h3>
                    
                    <h4 class="title-desc">
                    		<small>Description:${listproduct.productDesc}</small>
                    </h4>
                    
                    
                    <div class="price">
                        <h3>Price:${listproduct.price}/-</h3>
                    </div>
                   <h4 class="title-desc">
                    		<small>Stock:${listproduct.stock}</small>
                    </h4>
                    <p data-th="Quantity">
                    <input name="quantity" type="number" class="form-control text-center" value="1">
                    
                    </p>
                    <input type="submit" value="add to cart">
                </div>
            </div>
        </div>
        <hr>
        </div>
        </div>
      </form> 
       
 </body>
 </html>