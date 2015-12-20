package demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AboutusController {
	
	@RequestMapping("aboutus")
	public ModelAndView introduce(@RequestParam("no") int id) {
		
		ModelAndView mav = new ModelAndView();
		
		if ( id == 0 ) {
			mav.setViewName("aboutus_introduce");
		} else if ( id == 1 ) {
			mav.setViewName("aboutus_usage");
		}
		
		
		return mav;
	}
	
}
