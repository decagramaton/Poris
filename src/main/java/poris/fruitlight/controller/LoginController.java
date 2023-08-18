package poris.fruitlight.controller;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.service.LoginService;
import poris.fruitlight.service.ShopperService;
import poris.fruitlight.util.AlertScript;

@Slf4j
@Controller
public class LoginController {
	
	@Autowired
	private ShopperService shopperService;
	
	
	/**
	 * 로그인 페이지 접속 메소드
	 * @author 고재승
	 * @return 로그인 페이지 이동
	 */
	@RequestMapping("/login")
	public String MainPage(HttpSession session) {
		
		if(session.getAttribute("ShopperInfo") != null) {
			return "redirect:/main";
		}
		
		return "login";
	}
	
	/**
	 * 로그인 요청 처리 메소드
	 * @param loginParam - (유저ID, 유저PW, 자동로그인 여부)
	 * @param response - 쿠키를 응답으로 전송하기 위해 사용
	 * @param session - 로그인 성공 시 유저 정보를 브라우저 내 공유하기 위해 사용
	 * @param model - 로그인 실패 시, 에러 사유 메세지와 유저가 입력한 값을 전달하기 위해 사용
	 * @return 메인 페이지로 리다이렉트
	 * @throws IOException 
	 */
	@PostMapping("/login/askLogin")
	public String askLogin(Shopper shopper, HttpServletResponse response , HttpSession session, Model model) throws IOException {
		Shopper dbShopper = null;
		
		if( (shopper.getShopperId() != null) && (shopper.getShopperPw() != null) ) {
			// Stpe1. JSP에서 유저 로그인 값을 얻고, userID 정보로 DB에서 Select로 회원 유무 확인
			dbShopper = shopperService.getShopperById(shopper);
		} else {
			return "redirect:/login";
		}
		
		// Step3. 회원 정보가 없으면 JSP에 에러 콘솔 출력 (에러 처리)
		if(dbShopper == null) {
			AlertScript.alertAndBackPage(response, "회원정보를 찾을 수 없습니다.");
			session.setAttribute("Shopper", shopper);
			return "redirect:/login";
		} else {
			
			if(dbShopper.getActivate().equals("N")) {
				return "redirect:/login";
			}
			
			shopper.setShopperNo(dbShopper.getShopperNo());
			if(shopper.getShopperAutoLogin() != null) {
				shopperService.setShopperAutoLogin(shopper);
			} else {
				shopper.setShopperAutoLogin("0");
				shopperService.setShopperAutoLogin(shopper);
			}
			
			// Step4-1. 세션에 Shopper 정보 저장
			session.setAttribute("ShopperInfo", dbShopper);
			session.removeAttribute("Shopper");
			
			// Step4-2. 자동로그인이 체크되었다면, 클라이언트에게 쿠키 생성
			if(shopper.getShopperAutoLogin().equals("0")) {
				
				Cookie cookie = new Cookie("ShopperID", Integer.toString(dbShopper.getShopperNo()));
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
