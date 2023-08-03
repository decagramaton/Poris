package poris.fruitlight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainPageController {
	@RequestMapping("/")
	public String main() {
		
		return "main";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		
		return "joinForm";
	}

	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
}
