package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import demo.db.persistence.CommunityMapper;
import demo.db.persistence.UserMapper;
import demo.util.GlobalVariable;

@RestController
public class InitController {
	
	@Autowired
	CommunityMapper communityMapper;
	
	@Autowired
	StringRedisTemplate redis;
	
	@Autowired
	UserMapper userMapper;
	
	@RequestMapping("/")
	public ModelAndView index(@CookieValue(value="token", defaultValue="null") String cookieToken) {
		ModelAndView mv = new ModelAndView("index");
		System.out.println("Index cookie : " + cookieToken);
		ValueOperations<String, String> ops = this.redis.opsForValue();
		
		if ( communityMapper.getBoards(1).size() == 0 ) {
			mv.addObject("notice", "등록된 공지사항이 없습니다.");
		} else
			mv.addObject("notice", communityMapper.getBoards(1).get(0).getTitle());

		if ( communityMapper.getBoards(6).size() == 0 ) {
			mv.addObject("qanda", "등록된 Q&A 없습니다.");
		} else
			mv.addObject("qanda", communityMapper.getBoards(6).get(0).getTitle());
		
		if ( communityMapper.getBoards(4).size() == 0 ) {
			mv.addObject("review", "등록된 리뷰 없습니다.");
		} else
			mv.addObject("review", communityMapper.getBoards(4).get(0).getTitle());
		
		
		if ( cookieToken.equals("null") ) {
			return mv;
		} else {
			GlobalVariable.token = ops.get(cookieToken);
			String userId = ops.get(cookieToken);
			if ( userId.length() > 0 ) {
				GlobalVariable.currentUserId = userId;
				System.out.println("Index redis token : " + ops.get(cookieToken));
				mv.addObject("state", "login");
			} else {
				mv.setViewName("error");
			}
		}
		return mv;
	}
}
