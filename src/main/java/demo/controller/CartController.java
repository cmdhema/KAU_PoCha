package demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import demo.db.model.Menu;
import demo.util.GlobalVariable;

@RestController
public class CartController {
	
	List<Menu> cartList = new ArrayList<>();
	@RequestMapping("/cart")
	public ModelAndView index(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cart");
		int sum = 0;
		
		for ( Menu menu : cartList) {
			sum += Integer.parseInt(menu.getCost());
		}
		mav.addObject("cartList", cartList);
		mav.addObject("cost", sum);
		if (GlobalVariable.token != null)
			mav.addObject("state", "login");
		return mav;
	}

	@RequestMapping(value = "/cart/add", method = RequestMethod.POST, headers = { "Content-type=application/json" })
	@ResponseBody
	public RedirectView addCart(@RequestBody Menu menu) {
		RedirectView view = new RedirectView("/cart");
		System.out.println(menu.getCost());
		System.out.println(menu.getPhotoUrl());
		System.out.println(menu.getName());
		
		cartList.add(menu);
		
		System.out.println("Cart size : " + cartList.size());
		return view;
	}

}
