package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class InitController {
	
	@Autowired
	StringRedisTemplate redis;
	
	@RequestMapping("/")
	public ModelAndView index(@CookieValue(value="token", defaultValue="null") String cookieToken) {
		ModelAndView mv = new ModelAndView("index");
		System.out.println("Index cookie : " + cookieToken);
		ValueOperations<String, String> ops = this.redis.opsForValue();
		if ( cookieToken.equals("null") ) {
			return mv;
		} else {
			if ( ops.get(cookieToken).length() > 0 ) {
				System.out.println("Index redis token : " + ops.get(cookieToken));
				mv.addObject("state", "login");
			} else {
				mv.setViewName("error");
			}
		}
		return mv;
	}
}
