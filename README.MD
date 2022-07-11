# Lab-6.2-SpringMVC-PizzaLab

6.2  SPRING MVC PIZZA LAB (PART 1)

Task: Create a website for a pizza restaurant. It includes pages for several pre-set specialty pizzas, a custom pizza builder, and a customer reviews page.

Skills: Spring MVC, Links, Forms, URL Query Parameters, JSP Expression Language

What will the application do?
Homepage: The homepage is at the root path (/) and includes a list of links to three or more specialty pizzas. It also includes a link to the custom pizza builder and a link to leave a review.
Review: On the review page, the user fills out a form with their name, a comment, and a rating. When they submit the form, a confirmation page is shown which displays the name, comment, and rating they chose on the form. (Note: The rating information is not actually saved or shown elsewhere at this point.) The page also includes a link back to the homepage.
Specialty Pizzas: There is one controller and one JSP for displaying the name and price of a specialty pizza. The name and price are specified to the controller as URL query parameters (a.k.a. request params), and both are displayed on the JSP. The specialty pizza links on the homepage include these two parameters hard-coded.
Custom Pizza Builder: On the custom pizza builder page, the user fills out a form with the pizza size (HTML <select>), topping count, a checkbox for gluten-free crust or not, and a text area for special instructions. When they submit the form, a result page shows their choices plus a total price. (See below for price calculation.) The page also includes a link back to the homepage.

Build Specifications
Pizza price calculation is based on size, number of topping, and crust option…
For small pizza: $7 + number of toppings × $0.50
For medium pizza: $10 + number of toppings × $1.00
For large pizza: $12 + number of toppings × $1.25
For any size, add $2.00 for gluten-free crust.

Extended Challenges
Add CSS & images.
Experiment with using GET and POST on forms.
Add a pizza-themed Madlib story form and page.
Instead of “true” or “false” for gluten-free crust on the results page, show “yes” or “no”.
Format prices to always have two decimal places.


6.3 SPRING MVC PIZZA LAB (PART 2) - VALIDATION 

Task: Add validation to the pizza website.

Skills: Form validation

Build Specifications
Review Form
Name is required.
The comment is required and must be at least five characters.
Rating is required.
Custom Pizza Builder Form
Topping Count must be between 0 and 10.
Topping Count must be a whole number.

Extended Challenges
Add CSS & images.
