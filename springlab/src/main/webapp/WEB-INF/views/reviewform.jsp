<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Review Form</title>
</head>
<body>
	<div class="header">
		<h1>Reviews Page</h1>
	</div>

	<h3>We appreciate your feedback. Please leave your review below.</h3>
	<div class="form">
		<form action="/reviewform" method="post">
			Rating:  </br>
			<input type="radio" value="1" id="1-star" name="rating" required/>
			<label for="1-star">1 (terrible!)</label> 
			<input type="radio" value="2" id="2-star" name="rating"/> 
			<label for="2-star">2</label>
			<input type="radio" value="3" id="3-star" name="rating"/>
			<label for="3-star">3</label> 
			<input type="radio" value="4" id="4-star" name="rating"/> 
			<label for="4-star">4</label>
			<input type="radio" value="5" id="5-star" name="rating"/>
			<label for="5-star">5 (amazing!)</label> </br>
			Name:  </br>
			<input type="text" name="name" required/> </br>
			Review:  </br>
			<textarea name="review" cols="80" rows="10" minlength=5 maxlength="1000" required></textarea> </br>
			<input class="submit" type="submit"/>
		</form>
	</div>
	<div class="spaceHolder"></div>

	<div>
		<a href="/" class="button-32">Return to Home Page</a>
	</div>
</body>
</html>