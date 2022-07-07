<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Review Confirmation</title>
</head>
<body>
	<div class="header">
		<h1>Thanks for the Review!</h1>
	</div>

	<div>
		<h3>Your Name: ${name}</h3>
		<h3>Rating: ${starRating}</h3>
		<h3>Review: ${reviewText}</h3>
	</div>

	<div class="spaceHolder"></div>

	<div>
		<a href="/" class="button-32">Return to Home Page</a>
	</div>
	
</body>
</html>