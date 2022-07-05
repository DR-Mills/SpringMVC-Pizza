package co.grandcircus.springlab;

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
	public String submitReviewForm(
			@RequestParam String star_rating,
			@RequestParam String name,
			@RequestParam String review_text,
			Model model) {
		model.addAttribute("starRating", star_rating);
		model.addAttribute("ratingTitle", name);
		model.addAttribute("reviewText", review_text);
		return "reviewconfirm";
	}
	
	@RequestMapping("/specialtypizza")
	public String showSpecialtyPizza(
			@RequestParam String pizza_name,
			@RequestParam String pizza_price,
			Model model) {
		model.addAttribute("name", pizza_name);
		model.addAttribute("price", pizza_price);
		
		return "displayspecialtypizza";
	}
}
