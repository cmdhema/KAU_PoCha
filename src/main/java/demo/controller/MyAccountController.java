package demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MyAccountController {

	@RequestMapping("myaccount")
	public ModelAndView index(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("myaccount");
		
		return mav;
	}
	
}
