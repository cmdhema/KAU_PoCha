package demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import demo.util.GlobalVariable;

@RestController
public class LocationController {

	@RequestMapping("location")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("location");
		if ( GlobalVariable.token != null )
			mav.addObject("state", "login");
		return mav;
	}
}
