package demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CommunityController {

	@RequestMapping("community")
	public ModelAndView index(@RequestParam("board_no") int id) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("community_list");
		if (id == 1) {
			mav.addObject("title", "공지사항");
		} else if (id == 2) {
			mav.addObject("title", "뉴스/이벤트");
		} else if (id == 6) {
			mav.addObject("title", "질문과답변");
		} else if (id == 4) {
			mav.addObject("title", "구매후기");
		} else if (id == 5) {
			mav.addObject("title", "자유게시판");
		}
		
		mav.addObject("board_no", String.valueOf(id));

		return mav;
	}

	@RequestMapping("community/list")
	public ModelAndView list(@RequestParam("board_no") int id) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("community_upload");
		if (id == 1) {
			mav.addObject("title", "공지사항");
		} else if (id == 2) {
			mav.addObject("title", "뉴스/이벤트");
		} else if (id == 6) {
			mav.addObject("title", "질문과답변");
		} else if (id == 4) {
			mav.addObject("title", "구매후기");
		} else if (id == 5) {
			mav.addObject("title", "자유게시판");
		}

		return mav;
	}
}
