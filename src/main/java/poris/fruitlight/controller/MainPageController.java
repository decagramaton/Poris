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

	@GetMapping("/mypage")
	public String mypage() {
		
		return "mypage";
	}
	
	
}
