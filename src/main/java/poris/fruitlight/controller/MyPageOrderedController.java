package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.MyPageOrdered;
import poris.fruitlight.service.MyPageOrderedService;

@Slf4j
@Controller
public class MyPageOrderedController {
	
	@Resource
	public MyPageOrderedService myPageOrderedService;
	
	@RequestMapping("/mypageOrdered")
	public String myPageOrdered(Model model) {
		log.info("mypageOrdered 실행");
		List<MyPageOrdered> mypageOrdered = myPageOrderedService.getList(1);
		model.addAttribute("mypageOrdered", mypageOrdered);
		
		log.info(mypageOrdered.toString());
		return "mypageOrdered";
	}
}
