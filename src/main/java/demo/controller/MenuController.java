package demo.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MenuController {

	@RequestMapping("menu")
	public ModelAndView index(@RequestParam("no") int id ) {
		ModelAndView mav = new ModelAndView();
		
		if ( id == 0 ) {
			mav.setViewName("menu_all");
		} else if ( id == 1 ) {
			mav.setViewName("menu_popular");
		} else if ( id == 2 ) {
			mav.setViewName("menu_new");
		}
		return mav;
	}
	
	@RequestMapping("/menu/{id}")
	public ModelAndView info(@PathVariable int id ) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("menu_info");
		
		return mav;
	}
}
