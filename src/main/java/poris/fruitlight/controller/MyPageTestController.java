package poris.fruitlight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class MyPageTestController {
	@RequestMapping("/myPageTest")
	public String myPageTest() {
		return "myPageTest";
	}
}