package demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import demo.util.GlobalVariable;

@RestController
public class CartController {

	@RequestMapping("cart")
	public ModelAndView index(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cart");
		if ( GlobalVariable.token != null )
			mav.addObject("state", "login");
		return mav;
	}
}
