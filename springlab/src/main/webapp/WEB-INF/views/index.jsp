<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>

</head>

<body>

	<div class="header">
		<h1>Welcome to Spring Pizza</h1>
		<h2>a framework for configuring amazing food</h2>
	</div>

	<div class="pizzaMenu">
		<div>
			<h2>Specialty Pizza</h2>
		</div>
		<div class="items">
			<div class="pizza">
				<a href="/specialtypizza?name=P.E.T.A's Nightmare&price=15.00">P.E.T.A. Nightmare</a>
			</div>

			<div class="pizza">
				<a href="/specialtypizza?name=Texas Heartache&price=13.00">Texas Heartache</a>
			</div>

			<div class="pizza">
				<a href="/specialtypizza?name=The High Schooler&price=12.00">The High Schooler</a>
			</div>

		</div>
		<div>
			<h2>Custom Pizza</h2>
		</div>
		<div class=buildPizza>
			<div class="pizza">
				<a href="/pizzabuilder">Build Your Own Pizza!</a>
			</div>
		</div>

	</div>

	<div class="reviews">
		<h2>Had a great experience?</h2>
		<div>
			<a href="/reviewform" class="button-32">Leave a review here</a>
			</div>
	</div>
</body>
</html>