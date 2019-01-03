<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<%@include file="Head.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 align="Center">EditProductPage</h3>

<form action=<c:url value="/UpdateProduct"/> method="post">
<table>
<tr>
	<td>productId</td>
	<td><input type="text"  id="productId" name="productId" value="${product.productId}"/></td>
	</tr>
	<tr>
	<td>productName</td>
	<td><input type="text" id="productName" name="productName" value="${product.productName}"/></td>
	</tr>
	<tr>
	<td>productDesc</td>
	<td><input type="text" id="productDesc" name="productDesc" value="${product.productDesc}"/></td>
	</tr>  
	<td>productPrice</td>
	<td><input type="text" id="price" name="price" value="${product.price}"/></td>
	</tr>
	<td>productStock</td>
	<td><input type="text" id="stock" name="stock" value="${product.stock}"/></td>
	</tr>
	<tr>
		<center>
		<td colspan="2"><input type="submit" class="btn btn-danger" value="EditProduct"/></td>
		</center>
	</tr>
    </table>
     </form>
    

</body>
</html>