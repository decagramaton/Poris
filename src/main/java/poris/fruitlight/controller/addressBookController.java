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
	
	@RequestMapping("/addressBook")
	public String AddressBook(Model model) {
		List<AddressBookParam> addrBookList = addrBookService.getAddressBookList();
		
		if(addrBookList != null) {
			model.addAttribute("addrBookList", addrBookList);
		}
		
		return "addressBook";
	}
	
	@GetMapping("/addressBook/changeAddressBook")
	public String changeAddressBook(AddressBookParam changeAddressBook) {
		boolean result = addrBookService.changeAddressBook(changeAddressBook);
		
		// if(result) {
		//	return "redirect:/addressBook"; }
		// else { return AlertScript.alert(response, "변경에 실패했습니다"); }
		
		return "redirect:/addressBook";
	}
}
