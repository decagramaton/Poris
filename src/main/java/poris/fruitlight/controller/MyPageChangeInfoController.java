package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.MyPageChangeInfo;
import poris.fruitlight.service.MyPageChangeInfoService;

@Slf4j
@Controller
public class MyPageChangeInfoController {
	
	@Resource
	public MyPageChangeInfoService myPageChangeInfoService;
	
	@RequestMapping("/mypageChangeInfo")
	public String mypageChangeInfo(Model model) {
		log.info("mypageChangeInfo 실행");
		List<MyPageChangeInfo> mypageChangeInfo = myPageChangeInfoService.getList("김진성");
		model.addAttribute("mypageChangeInfo", mypageChangeInfo);
		
		return "mypageChangeInfo";
	}
}
