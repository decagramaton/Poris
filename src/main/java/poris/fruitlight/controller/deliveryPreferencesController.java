package poris.fruitlight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class deliveryPreferencesController {
	
	@RequestMapping("/deliveryPreferences")
	public String DeliveryPreferencesPage(Model model) {
		
		
		return "deliveryPreferences";
	}
	
}
