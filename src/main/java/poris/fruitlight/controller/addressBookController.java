package poris.fruitlight.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.AddressBookParam;
import poris.fruitlight.service.AddressBookService;
import poris.fruitlight.util.AlertScript;


@Slf4j
@Controller
public class addressBookController {
	
	@Autowired
	private AddressBookService addrBookService;
	
	
	/**
	 * @author 고재승
	 * @param model - (받는 사람, 받을 주소, 연락처, 배송 요청사항) DTO
	 * @return 배송지 목록 페이지 이동
	 */
	@RequestMapping("/addressBook")
	public String AddressBook(Model model) {
		List<AddressBookParam> addrBookList = addrBookService.getAddressBookList();
		
		if(addrBookList != null) {
			model.addAttribute("addrBookList", addrBookList);
		}
		
		return "addressBook";
	}
	
	/**
	 * @author 고재승
	 * @param changeAddressBook - 변경할 배송지 정보(받는 사람, 받을 주소, 연락처, 배송 요청사항)
	 * @return - 배송지 목록 페이지으로 리다이렉트 
	 */
	@GetMapping("/addressBook/changeAddressBook")
	public String changeAddressBook(AddressBookParam changeAddressBook) {
		boolean result = addrBookService.changeAddressBook(changeAddressBook);
		
		// if(result) {
		//	return "redirect:/addressBook"; }
		// else { return AlertScript.alert(response, "변경에 실패했습니다"); }
		
		return "redirect:/addressBook";
	}
	
	/**
	 * @author 고재승
	 * @return 배송지 추가 페이지 이동
	 */
	@GetMapping("/addressBook/addAddressBook")
	public String addAddressBook() {
		
		return "newAddressBook";
	}
}
