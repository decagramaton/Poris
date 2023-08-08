package poris.fruitlight.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class deliveryPreferencesController {
	
	@RequestMapping("/deliveryPreferences")
	public String DeliveryPreferencesPage(Model model) {
		
		return "deliveryPreferences";
	}
	
	
	@PostMapping("/deliveryPreferences/agreeSelect")
	public String agreeSelect(String required_label, String optional_check_checkbox, String required_message) {

		log.info("required_label : " + required_label);
		log.info("required_message : " + required_message);
		log.info("optional_check_checkbox : " + optional_check_checkbox);
		
		return "windowsColse";
	}
	
}
