package poris.fruitlight.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.DeliveryParam;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.ShopperParam;
import poris.fruitlight.service.orderService;

@Slf4j
@Controller
public class OrderController {
	
	@Autowired
	private orderService orderService;
	
	
	@RequestMapping("/order")
	public String DetailViewPage(Model model) {
		// Step1.구매자 정보, 도착지 정보, 배송 목록을 DB에서 가져오기
		ShopperParam shopperInfo = orderService.getShopperInfo("1");
		ShippingAddressParam shipAddress = orderService.getShippingAddressInfo("1");
		List<DeliveryParam> deliveryInfo = orderService.getDeliveryInfo();
		
		log.info(deliveryInfo.toString());
		// Step2. 객체 설정 및 결제 페이지로 전송
		model.addAttribute("shopperInfo", shopperInfo);
		model.addAttribute("shipAddress", shipAddress);
		model.addAttribute("deliveryInfo", deliveryInfo);
		
		return "order";
	}
	
}
