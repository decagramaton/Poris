package poris.fruitlight.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.AddressBookParam;
import poris.fruitlight.service.AddressBookService;

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
	
}
