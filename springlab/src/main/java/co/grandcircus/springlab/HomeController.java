package co.grandcircus.springlab;

import java.text.DecimalFormat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showIndex() {
		return "index";
	}

	@RequestMapping("/reviewform")
	public String showReviewForm() {
		return "reviewform";
	}

	@PostMapping("/reviewform")
	public String submitReviewForm(@RequestParam int rating, @RequestParam String name, @RequestParam String review,
			Model model) {
		if (rating < 1 || rating > 5 || review.length() < 5 || review.length() > 1000 || name.equals("")) {
			return "entryError";
		}
		model.addAttribute("starRating", rating);
		model.addAttribute("name", name);
		model.addAttribute("reviewText", review);
		return "reviewconfirm";
	}

	@RequestMapping("/specialtypizza")
	public String showSpecialtyPizza(@RequestParam String name, @RequestParam String price, Model model) {
		String toppings = "";
		System.out.println(name);

		switch (name) {
		case "P.E.T.A's Nightmare":
			price = "15.00";
			toppings = SpecialPizzaToppings.petaNightmare;
			break;
		case "Texas Heartache":
			price = "13.00";
			toppings = SpecialPizzaToppings.texasHeartache;
			break;
		case "The High Schooler":
			price = "12.00";
			toppings = SpecialPizzaToppings.theHighSchooler;
			break;
		default:
			name = "You are a hacker";
			price = "Jailtime";
			toppings = "Congratulations on your website vulnerability find, but please don't try to make your own pizzas without a health permit.";
		}

		model.addAttribute("name", name);
		model.addAttribute("price", price);
		model.addAttribute("toppings", toppings);

		return "displayspecialtypizza";
	}

	@RequestMapping("/pizzabuilder")
	public String showPizzaBuilder() {
		return "pizzabuilder";
	}

	@PostMapping("/pizzabuilder")
	public String submitPizzaBuilderForm(@RequestParam String size, @RequestParam int toppingCount,
			@RequestParam(value = "glutenFree", required = false) String glutenFree,
			@RequestParam String specialInstructions, Model model) {
		if (glutenFree == null) {
			glutenFree = "no";
		}

		final DecimalFormat df = new DecimalFormat("0.00");
		double sizePrice = (size.equals("small") ? 7.00 : (size.equals("medium") ? 10.00 : 12.00));
		double toppingsPrice = (size.equals("small") ? toppingCount * .5
				: (size.equals("medium") ? toppingCount * 1.00 : toppingCount * 1.25));
		double glutenFreePrice = (glutenFree.equals("yes") ? 2.00 : 0.00);

		model.addAttribute("price", df.format(sizePrice + toppingsPrice + glutenFreePrice));
		model.addAttribute("toppingCount", toppingCount);
		model.addAttribute("glutenFree", glutenFree);
		model.addAttribute("specialInstructions", specialInstructions);
		model.addAttribute("size", size);

		return "pizzaBuilderResult";
	}

}
