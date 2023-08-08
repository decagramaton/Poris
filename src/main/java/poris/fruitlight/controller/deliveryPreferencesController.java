package poris.fruitlight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.deliveryPreferencesParam;

@Slf4j
@Controller
public class deliveryPreferencesController {
	
	@RequestMapping("/deliveryPreferences")
	public String DeliveryPreferencesPage(Model model) {
		
		return "deliveryPreferences";
	}
	
	
	@PostMapping("/deliveryPreferences/agreeSelect")
	public String agreeSelect(deliveryPreferencesParam deliPreParam) {
		
		log.info("RequiredCheckType : " + deliPreParam.getRequiredCheckType());
		log.info("RequiredMessage : " + deliPreParam.getRequiredMessage());
		log.info("PasswordCheckType : " + deliPreParam.getPasswordCheckType());
		log.info("PasswordMessage : " + deliPreParam.getPasswordMessage());
		
		return "windowsColse";
	}
	
}
