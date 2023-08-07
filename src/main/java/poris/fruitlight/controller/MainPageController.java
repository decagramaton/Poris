package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.ListProduct;
import poris.fruitlight.service.ListService;

@Slf4j
@Controller
public class MainPageController {

	@Resource
	private ListService listService;
	
	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		
		return "joinForm";
	}

	
	@GetMapping("/list")
	public String list(Model model) {
		log.info("list 실행");
		List<ListProduct> products = listService.getList(1);
		model.addAttribute("products", products);
		
		return "list";
	}
	
	@GetMapping("/detailView")
	public String detailView(){
		
		return "detailView";
	}
	
	@GetMapping("/order")
	public String order() {
		
		return "order";
	}
	
	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@GetMapping("/mypage")
	public String mypage() {
		
		return "mypage";
	}
	
	
}
