<%@include file="Head.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <h3 align="center">Your orders</h3>
  
    <table class="table bordered">
      <tr bg color="red">
          <td>ProductName</td>
          <td>Quantity</td>
          <td>price</td>
          <td>TotalPrice</td>
      </tr>
<c:forEach items="${cartItems}" var="cart">

<tr>
	<td>${cart.productname}</td>
	<td>${cart.quantity}</td>
	<td>${cart.price}</td>
	<td>${cart.quantity * cart.price}/-</td>
	
	
</tr>	

</c:forEach>
<tr bgcolor="cyan">
    <td colspan="3">GrandTotal</td>
    <td colspan="2">${grandTotal}/-</td>

</tr>

    <tr bgcolor="yellow">
    		<td colspan="3"><a href="<c:url value="/cart"/>">Edit Cart</a>
</table>

<br/>

<div>
<form action="payment" method="post">
<table class="table bordered">

		<tr bgcolor="orange">
		<td>Payment Detail</td>
		</tr>
		<tr>
		<td>Payment Type</td>
		<td>
		<input type="radio" name="pmode" value="COD">Cash on Delivery
		<input type="radio" name="pmode" value="COD">Credit Card
		</td>
		</tr>
		
<tr bgcolor="orange">
<td>credit card</td>
<td> 
		<input type="text" name="creditcard"/>
</td>
</tr>

<tr bgcolor="orange">
 <td>cvv<input type="text" name="cvv"/></td>
 <td>valid upto<input type="text" name="valid"/></td>
</tr>

<tr bgcolor="cyan">
<td colspan="2"> <input type="submit" value="pay"/></td>
</tr>
 
 
</table>
</form>
</div>
</html>