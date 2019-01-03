<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<%@include file="Head.jsp" %>
<html>
    <h3 align="center">Cart</h3>
    
    <table class="table bordered">
      <tr>
          <td>ProductName</td>
          <td>Quantity</td>
          <td>price</td>
          <td>TotalPrice</td>
          <td>Operation</td>
      </tr>
<c:forEach items="${cartItems}" var="cart">
<form action="<c:url value="/updateCartItem/${cart.cartId}"/>" method="get">
<tr>
	<td>${cart.productname}</td>
	<td><input type="text" name="quantity" value="${cart.quantity}"/></td>
	<td>${cart.price}</td>
	<td>${cart.quantity * cart.price}/-</td>
	<td>
		<input type="submit" value="update" class="btn btn-success"/>
		<a class="btn btn-danger" href="<c:url value="/deleteCartItem/${cart.cartId}"/>" method="get">delete</a>
	</td>
	
</tr>	
</form>
</c:forEach>
<tr bgcolor="yellow">
    <td colspan="3">GrandTotal</td>
    <td colspan="2">${grandTotal}/-</td>

</tr>

<tr bgcolor="cyan">
    <td colspan="3"><a href="<c:url value="/productdisplay"/>">continue shopping</a></td>
    <td colspan="3"><a href="<c:url value="/checkout"/>">checkout</a></td>

</tr>
</table>
</html>