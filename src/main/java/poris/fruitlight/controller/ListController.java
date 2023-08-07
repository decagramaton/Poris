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
@RequestMapping("/list")
public class ListController {
	
	@Resource
	private ListService listService;
	
	@RequestMapping("/")
	public String list(Model model) {
		log.info("list 실행");
		List<ListProduct> products = listService.getList(1);
		model.addAttribute("products", products);
		
		return "list";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		
		return "joinForm";
	}
	
	
	@GetMapping("/detailView")
	public String detailView(){
		
		return "detailView";
	}
	
	@GetMapping("/cart")
	public String cart() {
		
		return "cart";
	}
	
	
	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
}
