<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="Head.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
</head>
<body>
<div class=container>
<h5 alingn="center">....WELCOME TO ONLINE SHOPPING...</h5>
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<c:url value="/resources/images/caurosel/11.jpg"/>" alt="" width="500" height="500">
    </div>
    <div class="carousel-item">
      <img src="<c:url value="/resources/images/caurosel/12.jpg"/>" alt="" width="500" height="500">
    </div>
    <div class="carousel-item">
      <img src="<c:url value="/resources/images/caurosel/13.jpg"/>" alt="" width="500" height="500">
    </div>
     <div class="carousel-item">
      <img src="<c:url value="/resources/images/caurosel/14.jpg"/>" alt="" width="500" height="500">
    </div>
     <div class="carousel-item">
      <img src="<c:url value="/resources/images/caurosel/15.jpg"/>" alt="" width="500" height="500">
    </div>
     <div class="carousel-item">
      <img src="<c:url value="/resources/images/caurosel/16.jpg"/>" alt="" width="500" height="500">
    </div>
     
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</div>
</body>
</html>

