package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.MyPageChangeInfo;
import poris.fruitlight.dto.Shopper;
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
	
	@PostMapping("/mypageChangeInfo/checkPw")
	public String checkPw(HttpSession session, Model model) {
		
		// Step1. 로그인 세션 정보 조회
		Shopper shopper = (Shopper) session.getAttribute("ShopperInfo");
		
		// Step2. Service에 입력 PW와 DB에 저장된 PW 비교 요청 메소드 실행
		boolean resultCheckPw = myPageChangeInfoService.isShopperPw(shopper);
		
		// Model에 결과 값을 넣어 JSP에 전달
		model.addAttribute("resultCheckPw", resultCheckPw);
		
		return "mypageChangeInfo";
	}
}
