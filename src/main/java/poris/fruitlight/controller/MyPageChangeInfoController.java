package poris.fruitlight.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.service.MyPageChangeInfoService;

@Slf4j
@Controller
public class MyPageChangeInfoController {
	
	/*@Resource
	public MyPageChangeInfoService myPageChangeInfoService;*/
	
	@RequestMapping("/mypageChangeInfo")
	public String mypageChangeInfo() {
		log.info("mypageChangeInfo 실행");
		
		return "mypageChangeInfo";
	}
}
