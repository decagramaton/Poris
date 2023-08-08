package poris.fruitlight.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

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
	public void agreeSelect(deliveryPreferencesParam deliPreParam, HttpServletResponse response) {
		
		log.info("RequiredCheckType : " + deliPreParam.getRequiredCheckType());
		log.info("RequiredMessage : " + deliPreParam.getRequiredMessage());
		log.info("PasswordCheckType : " + deliPreParam.getPasswordCheckType());
		log.info("PasswordMessage : " + deliPreParam.getPasswordMessage());
		
		
		try {
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out;
			out = response.getWriter();
			out.println("<script>windowClose();</script> ");
			out.flush();
		} catch (IOException e) {}
	}
	
}
