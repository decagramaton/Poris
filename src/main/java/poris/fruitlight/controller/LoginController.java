package poris.fruitlight.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.LoginParam;
import poris.fruitlight.dto.Member;
import poris.fruitlight.service.LoginService;

@Slf4j
@Controller
public class LoginController {
	

	@Autowired
	private LoginService loginservice;
	
	
	/**
	 * 로그인 페이지 접속 메소드
	 * @author 고재승
	 * @return 로그인 페이지 이동
	 */
	@RequestMapping("/login")
	public String MainPage() {
		return "login";
	}
	
	/**
	 * 로그인 요청 처리 메소드
	 * @param loginParam - (유저ID, 유저PW, 자동로그인 여부)
	 * @param response - 쿠키를 응답으로 전송하기 위해 사용
	 * @param session - 로그인 성공 시 유저 정보를 브라우저 내 공유하기 위해 사용
	 * @param model - 로그인 실패 시, 에러 사유 메세지와 유저가 입력한 값을 전달하기 위해 사용
	 * @return 메인 페이지로 리다이렉트
	 */
	@PostMapping("/login/askLogin")
	public String askLogin(LoginParam loginParam, HttpServletResponse response , HttpSession session, Model model) {
		// Step1. JSP에서 유저 로그인 값 얻기
		log.info(loginParam.toString());
		
		
		
		if(loginParam.getUserId().equals("") || loginParam.getUserPw().equals("")) {
			return "redirect:/login";
		}
		
		// Stpe2. JSP에서 유저 로그인 값을 얻고, userID 정보로 DB에서 Select로 회원 유무 확인
		Member member = loginservice.getMemberInfo();
		
		// Step3. 회원 정보가 없으면 JSP에 에러 콘솔 출력 (에러 처리)
		if(member == null) {
			model.addAttribute("error", "정보가 잘못됨. 다시입력");
			model.addAttribute("loginParam", loginParam);
			return "login";
		} else {
			// Step4-1. 회원 정보가 있으면, 최근 로그인 날짜를 DB member Table에 Update
			loginservice.setLastLoginDate(new Date());
			
			// Step4-2. 세션에 member 정보 저장
			session.setAttribute("memberInfo", member);
			
			// Step4-3. 자동로그인이 체크되었다면, 클라이언트에게 쿠키 생성
			if(loginParam.getAutoLogin() != null) {
				Cookie cookie = new Cookie("userId", loginParam.getUserId());
				cookie.setPath("/");
				cookie.setMaxAge(86400);
				cookie.setHttpOnly(true);
				cookie.setSecure(false);
				
				response.addCookie(cookie);
			}
			
			// Step4-4. 메인페이지로 리다이렉트
			return "redirect:/";
		}
	}
}
