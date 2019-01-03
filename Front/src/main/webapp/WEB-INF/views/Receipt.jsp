<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
    <%@include file="Head.jsp" %>
    
    <div class="container">
    <h3 align="center">Receipt</h3>
    
    <table class="table bordered">
    <tr bgcolor="cyan">
    	<td>Order Id</td>
    	<td>${paymentDetail.orderId}
    	<td>Order Date</td>
    	<td>${paymentDetail.orderDate}
    </tr>
    
    <tr bgcolor="red">
    	<td>customer</td>
    	<td>${userdetail.username}
    	<td>Payment Mode</td>
    	<td>${paymentDetail.pmode}
    	
   </tr>
   
   <tr bgcolor="green">
   		<td>Address</td>
   		<td colspan="3">${userdetail.address}</td>
   </tr>
   
       </table>
    
    
    
    
    
     <table class="table bordered">
      <tr bg color="red">
          <td>OrderId</td>
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
    <td colspan="2">${paymentDetail.totalShoppingAmount}/-</td>

</tr>

</table>
</div>
    
    
    