package poris.fruitlight.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
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

}
