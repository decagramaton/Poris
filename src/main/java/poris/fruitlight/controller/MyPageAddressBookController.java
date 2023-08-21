package poris.fruitlight.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.AddressBook;
import poris.fruitlight.dto.OrderHistoryOrderList;
import poris.fruitlight.dto.OrderSearchParam;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.service.AddressBookService;
import poris.fruitlight.service.MyPageChangeInfoService;
import poris.fruitlight.service.MyPageOrderedService;
import poris.fruitlight.util.AlertScript;

@Slf4j
@Controller
public class MyPageAddressBookController {
	
	@Autowired
	private AddressBookService addrBookService;
	
	/**
	 * @author 김진성
	 * @param session
	 * @param model - (받는 사람, 받을 주소, 연락처, 배송 요청사항) DTO
	 * @param response - 쿠키를 응답으로 전송하기 위해 사용
	 * @return 마이페이지 (배송지 정보) 페이지 이동
	 */
	@RequestMapping("/mypageAddressBook")
	public String mypageAddressBook(HttpSession session, Model model, HttpServletResponse response) {
		// Step1. 회원 정보 조회 - 회원 고유번호 획득
		Shopper shopper = (Shopper) session.getAttribute("ShopperInfo");
		
		// Step2. 회원 번호를 기준으로 배송지 목록 조회
		List<AddressBook> addrBookList = addrBookService.getAddressBookList(shopper);
		
		if(addrBookList == null) {
			try {
				AlertScript.alertAndMovePage(response, "로그인을 해주세요", "/fruitlight/login");
			} catch (IOException e) {
				return "redirect:/main";
			}
		}
		log.info(addrBookList.toString());
		// Step3. 배송지 목록을 JSP으로 전달
		model.addAttribute("addrBookList", addrBookList);
		
		return "mypageAddressBook";
	}
	
	/**
	 * @author 김진성
	 * @param addressNo - 배송지 번호
	 * @return 마이페이지 (배송지 정보) 페이지 이동
	 */
	@GetMapping("/mypageAddressBook/deleteAddressBook")
	public String deleteAddressBook(int addressNo) {
		addrBookService.deleteAddressBook(addressNo);
		log.info("실행");
		return "redirect:/mypageAddressBook";
	}
	
	/**
	 * @author 김진성
	 * @return 마이페이지 (배송지 정보) - 배송지 추가 페이지
	 */
	@GetMapping("/mypageNewAddressBook")
	public String mypageNewAddressBook() {
		
		return "mypageNewAddressBook";
	}
	
	/**
	 * @author 김진성
	 * @return 마이페이지 (배송지 정보) 페이지 이동
	 */
	@PostMapping("/mypageAddAddressBook")
	public String mypageAddAddressBook(AddressBook addressBook) {
		log.info("addressBook :" + addressBook.toString());
		addrBookService.createAddressBook(addressBook);
		
		return "redirect:/mypageAddressBook";
	}
}
