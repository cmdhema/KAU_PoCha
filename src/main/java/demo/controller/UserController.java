package demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import demo.db.model.User;
import demo.db.persistence.UserMapper;

@RestController
public class UserController {

	@Autowired
	UserMapper userMapper;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");

		return mav;		
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("member_id") String id, @RequestParam("member_passwd") String password) {
		System.out.println("Login Success");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");

		mav.addObject("state", "login");

		return mav;
	}

	/*
	 * @RequestMapping("/property")
	 * 
	 * @ResponseBody public String property(@ModelAttribute("userDto") UserDto
	 * userDto ) { System.out.println(userDto.getUsername());
	 * System.out.println(userDto.getPassword()); return "Hello"; }
	 */
	@RequestMapping("/logout")
	public ModelAndView logout() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");

		mav.addObject("state", "logout");

		return mav;
	}

	@RequestMapping("users")
	public List<User> getUsers() {
		return userMapper.getUsers();
	}
	
	@RequestMapping(value = "/assign", method = RequestMethod.GET)
	public ModelAndView assign() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("assign");

		return mav;
	}

	@RequestMapping(value = "/assign", method = RequestMethod.POST)
	@ResponseBody
	public String property(@ModelAttribute("userVO") User userVO) {
//		System.out.println(userDto.getUsername());
//		System.out.println(userDto.getPassword());
		userMapper.insertUser(userVO);
		return "Hello";
	}
}
