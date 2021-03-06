<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Pizza Builder Result Page</title>
</head>
<body>
	<div class="header">
		<h1>That Pizza Looks Delicious!</h1>
	</div>

	<div class="putMeInABox">
		<h3>Size: ${size}</h3>
		<h3>Toppings: ${toppingCount}</h3>
		<h3>Gluten-Free Crust: ${glutenFree}</h3>
		<h3>Special Instructions: ${specialInstructions}</h3>
		<h3>Price: $${price}</h3>
	</div>

	<div class="spaceHolder"></div>

	<div>
		<a href="/" class="button-32">Return to Home Page</a>
		<a href="/pizzabuilder" class="submit">Build Another Pizza</a>
	</div>
	
</body>
</html>