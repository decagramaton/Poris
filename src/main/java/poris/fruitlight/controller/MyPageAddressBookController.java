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
	
	@RequestMapping("/mypageAddressBook")
	public String mypageAddressBook(HttpSession session, Model model) {
		// Step1. 회원 정보 조회 - 회원 고유번호 획득
		Shopper shopper = (Shopper) session.getAttribute("ShopperInfo");
		
		// Step2. 회원 번호를 기준으로 배송지 목록 조회
		List<AddressBook> addrBookList = addrBookService.getAddressBookList(shopper);
		
		if(addrBookList == null) {
			return "addressBook";
		}
		log.info(addrBookList.toString());
		// Step3. 배송지 목록을 JSP으로 전달
		model.addAttribute("addrBookList", addrBookList);
		
		return "mypageAddressBook";
	}
	
	@GetMapping("/mypageAddressBook/deleteAddressBook")
	public String deleteAddressBook(int addressNo) {
		addrBookService.deleteAddressBook(addressNo);
		log.info("실행");
		return "redirect:/mypageAddressBook";
	}
	
	@GetMapping("/mypageAddressBook/newAddressBook")
	public String newAddressBook() {
		
		return "newAddressBook";
	}
	
	@PostMapping("/mypageAddressBook/addAddressBook")
	public String addAddressBook(AddressBook addressBook) {
		log.info("addressBook :" + addressBook.toString());
		addrBookService.createAddressBook(addressBook);
		
		return "redirect:/mypageAddressBook";
	}
}
