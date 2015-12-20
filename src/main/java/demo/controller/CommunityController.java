package demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import demo.db.model.Board;
import demo.db.persistence.CommunityMapper;
import demo.util.GlobalVariable;

@RestController
public class CommunityController {

	@Autowired
	CommunityMapper mapper;
	
	@RequestMapping("community")
	public ModelAndView index(@RequestParam("board_no") int id) {
		ModelAndView mav = new ModelAndView();
		
		List<Board> boardList = mapper.getBoards(id);
		System.out.println("게시판 글 개수 : " + boardList.size());
		
		if ( GlobalVariable.token != null )
			mav.addObject("state", "login");
		mav.setViewName("community_list");
		if ( GlobalVariable.token != null )
			mav.addObject("state", "login");
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
		if ( boardList.size() > 0 ) {
			mav.addObject("count", "1");
			mav.addObject("boardList", boardList);
		} else {
			mav.addObject("count", "0");
		}
		return mav;
	}

	@RequestMapping(value="/community/post")
	public ModelAndView post(@RequestParam("board_no") int id ) {
		ModelAndView mav = new ModelAndView("community_upload");
		
		if ( GlobalVariable.token != null )
			mav.addObject("state", "login");
		
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
	
	@RequestMapping(value="/community/content/{id}")
	public ModelAndView contents(@PathVariable("id") int id ) {
		ModelAndView mav = new ModelAndView("community_content");
		Board content = mapper.getBoard(id);
		mav.addObject("board", content);
		if (content.getBoardId() == 1) {
			mav.addObject("title", "공지사항");
		} else if (content.getBoardId() == 2) {
			mav.addObject("title", "뉴스/이벤트");
		} else if (content.getBoardId() == 6) {
			mav.addObject("title", "질문과답변");
		} else if (content.getBoardId() == 4) {
			mav.addObject("title", "구매후기");
		} else if (content.getBoardId() == 5) {
			mav.addObject("title", "자유게시판");
		}
		return mav;
	}
	@RequestMapping(value = "/community/{boardId}", method = RequestMethod.POST)
	public RedirectView post(@ModelAttribute("boardForm") Board board, @PathVariable("boardId") int boardId) {
		System.out.println("new Board");
		board.setUserId(GlobalVariable.currentUserId);
		mapper.insertBoard(board);
		RedirectView view = new RedirectView("/community?board_no=" + boardId);
		return view;
	}
}
