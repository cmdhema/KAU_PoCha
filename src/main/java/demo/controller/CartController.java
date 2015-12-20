package demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CartController {

	@RequestMapping("cart")
	public ModelAndView index(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cart");
		return mav;
	}
}
