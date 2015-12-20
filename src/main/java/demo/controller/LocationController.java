package demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LocationController {

	@RequestMapping("location")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("location");
		
		return mav;
	}
}
