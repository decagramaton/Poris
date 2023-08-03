package poris.fruitlight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainPageController {
	
	@GetMapping("/joinForm")
	public String joinForm() {
		log.info("실행");
		
		return "joinForm";
	}

	@GetMapping("/login")
	public String login() {
		log.info("실행");
		
		return "login";
	}
}
