package demo.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import demo.db.model.Menu;
import demo.util.GlobalVariable;

@RestController
public class MenuController {

	@RequestMapping("/menu")
	public ModelAndView index(@RequestParam("no") int id ) {
		ModelAndView mav = new ModelAndView();
		if ( GlobalVariable.token != null )
			mav.addObject("state", "login");
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
		if ( GlobalVariable.token != null )
			mav.addObject("state", "login");
		mav.setViewName("menu_info");
		
		Menu menu = new Menu();
		
		switch(id) {
		case 16:
			menu.setName("간재미 회무침");
			menu.setCost("20,000원");
			menu.setIngredient("간재미(국산), 오이, 양파, 당근, 미나리");
			menu.setDescription("간재미 회무침 입니다.");
			menu.setPhotoUrl("/resources/img/menu/popular1_gajaeme.png");
			break;
		case 15:
			menu.setName("꼬막");
			menu.setCost("35,000원");
			menu.setIngredient("꼬막(국산)");
			menu.setDescription("꼬막 입니다.");
			menu.setPhotoUrl("/resources/img/menu/popular2_ggomak.png");
			break;
		case 14:
			menu.setName("석화");
			menu.setCost("30,000원");
			menu.setIngredient("석화(국산)");
			menu.setDescription("석화입니다.");
			menu.setPhotoUrl("/resources/img/menu/popular3_sukhwa.png");
			break;
		case 13:
			menu.setName("국물떡볶이");
			menu.setCost("15,000원");
			menu.setIngredient("떡,어묵,양파,마늘,달걀");
			menu.setDescription("국물떡볶이 입니다.");
			menu.setPhotoUrl("/resources/img/menu/popular4_ddukbokgi.png");
			break;
		case 12:
			menu.setName("낚지볶음과 소면");
			menu.setCost("20,000원");
			menu.setIngredient("낙지(국내산),소면,양파,깨");
			menu.setDescription("낚지볶음과 소면 입니다.");
			menu.setPhotoUrl("/resources/img/menu/popular5_nakji.png");
			break;
		case 11:
			menu.setName("닭강정");
			menu.setCost("15,000원");
			menu.setIngredient("닭 가슴살(국산), 마늘");
			menu.setDescription("닭강정 입니다.");
			menu.setPhotoUrl("/resources/img/menu/new_dakkangjung.png");
			break;
		case 10:
			menu.setName("집통마늘소금똥집");
			menu.setCost("20,000원");
			menu.setIngredient("닭고기(국내산),감자,양파,청양고추,대파");
			menu.setDescription("집통마늘소금똥집 입니다.");
			menu.setPhotoUrl("/resources/img/menu/new_ddongjip.png");
			break;
		case 9:
			menu.setName("쫄깃 오삼불고기");
			menu.setCost("15,000원");
			menu.setIngredient("삼겹살(국내산),김치(국내산),홍어(국내산),깻잎(국내산)");
			menu.setDescription("쫄깃 오삼불고기 입니다.");
			menu.setPhotoUrl("/resources/img/menu/new_bulgogi.png");
			break;
		}
		
		mav.addObject("menu", menu);
		
		return mav;
	}
}
