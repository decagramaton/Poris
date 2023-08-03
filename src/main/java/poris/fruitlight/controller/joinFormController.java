package poris.fruitlight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.service.LoginService;

@Slf4j
@Controller
@RequestMapping("/joinForm")
public class joinFormController {
	
	@RequestMapping("/")
	public String MainPage() {
		return "joinForm";
	}
	
	@PostMapping("/askJoinForm")
	public String askJoinForm() {
		
		
		
		
		
		
		return "main";
	}
}
