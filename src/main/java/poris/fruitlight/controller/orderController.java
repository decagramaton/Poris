package poris.fruitlight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.ShopperParam;
import poris.fruitlight.service.orderService;

@Slf4j
@Controller
public class orderController {
	
	@Autowired
	private orderService orderService;
	
	
	@RequestMapping("/order")
	public String DetailViewPage(Model model) {
		log.info("실행");
		
		ShopperParam shopperInfo = orderService.getShopperInfo("1");
		ShippingAddressParam shipAddress = orderService.getShippingAddressInfo("1");
		
		model.addAttribute("shopperInfo", shopperInfo);
		model.addAttribute("shipAddress", shipAddress);
		
		
		return "order";
	}
	
}
