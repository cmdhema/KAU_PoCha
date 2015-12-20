package demo.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import demo.db.model.User;
import demo.db.persistence.UserMapper;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@RestController
public class UserController {

	@Autowired
	UserMapper userMapper;
	@Autowired
	StringRedisTemplate redis;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");

		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public RedirectView login(@ModelAttribute("loginForm") User user, HttpServletResponse response) {
		User dbUser = userMapper.getUser(user);
		System.out.println("Login");
		if (dbUser != null) {
			System.out.println("Login DB user : " + dbUser.getEmail());
			String token = Jwts.builder().setSubject(dbUser.getEmail()).signWith(SignatureAlgorithm.HS512, "secret").compact();
			ValueOperations<String, String> ops = this.redis.opsForValue();
			ops.set(token, dbUser.getEmail());
			response.addCookie(new Cookie("token", token));
		} else {
			System.out.println("Login no user");
		}
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/");
		return redirectView;
	}

	@RequestMapping("/logout")
	public RedirectView logout(@CookieValue(value = "token", defaultValue = "null") String cookieToken, HttpServletResponse response) {
		System.out.println("Logout");
		redis.delete(cookieToken);
		Cookie cookie = new Cookie("token", null);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/");
		return redirectView;
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
	public RedirectView property(@ModelAttribute("userVO") User userVO) {
		userMapper.insertUser(userVO);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("/");
		return redirectView;
	}
}
