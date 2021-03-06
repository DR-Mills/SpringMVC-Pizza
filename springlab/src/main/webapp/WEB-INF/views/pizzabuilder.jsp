<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Custom Pizza Builder</title>
</head>
<body>
	<div class="header">
		<h1>Custom Pizza Builder</h1>
	</div>
	
	<h3>Build your own pizza!</h3>
	
	<div class="form">
	
		<form action="/pizzabuilder" method="post">
		
			<label for="size">Size:</label>
			<select name="size" id="size">
				<option value="small">Small</option>
				<option value="medium">Medium</option>
				<option value="large">Large</option>
			</select> </br>
		
			<label for="toppingCount">How many toppings? (between 0-10):</label>
			<input type="number" id="toppingCount" name="toppingCount" min="0" max="10" step="1" oninput="validity.valid||(value='');" required/> </br>
			
			<label for="glutenFree">Gluten-Free Crust? (add $2.00)</label>
			<input type="checkbox" name="glutenFree" id="glutenFree" value="yes"/> </br>
			
			<label for="specialInstructions">Special Instructions (Optional)</label> </br>
			<textarea name="specialInstructions" id="specialInstructions" cols="80" rows="5" maxlength="500"></textarea> </br>
		
			<input class="submit" type ="submit" value="Calculate Price & Order"/>
		
		</form>
	
	</div>
	
	<div class="spaceHolder"></div>

	<div>
		<a href="/" class="button-32">Return to Home Page</a>
	</div>
	
</body>
</html>