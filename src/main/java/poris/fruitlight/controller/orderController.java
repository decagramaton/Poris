package poris.fruitlight.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.JoinParam;
import poris.fruitlight.dto.RecipientParam;
import poris.fruitlight.dto.ShopperParam;
import poris.fruitlight.service.JoinService;
import poris.fruitlight.service.orderService;
import poris.fruitlight.util.AlertScript;

@Slf4j
@Controller
@RequestMapping("/order")
public class orderController {
	
	@Autowired
	private orderService orderService;
	
	
	@RequestMapping("/")
	public String DetailViewPage(Model model) {
		log.info("실행");
		
		ShopperParam shopperInfo = orderService.getShopperInfo("1");
		RecipientParam recipientInfo = orderService.getRecipientInfo("1");
		
		model.addAttribute("shopperInfo", shopperInfo);
		model.addAttribute("recipientInfo", recipientInfo);
		
		
		return "order";
	}
	
}
