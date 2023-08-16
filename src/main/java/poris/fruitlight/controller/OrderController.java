package poris.fruitlight.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.DeliveryParam;
import poris.fruitlight.dto.OrderParam;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.dto.ShopperParam;
import poris.fruitlight.service.ShopperService;
import poris.fruitlight.service.orderService;
import poris.fruitlight.util.AlertScript;

@Slf4j
@Controller
public class OrderController {
	
	@Autowired
	private orderService orderService;
	
	@Autowired
	private ShopperService shopperService;
	
	
	@RequestMapping("/order")
	public String DetailViewPage(HttpServletResponse response,HttpSession session, Model model) {
		// Step1. 로그인 세션 정보 Load
		if(session.getAttribute("ShopperInfo") == null) {
			try {
				AlertScript.alertAndMovePage(response, "로그인을 해주세요", "/fruitlight/login");
			} catch (IOException e) {
				return "redirect:/main";
			}
		} else {
			Shopper shopper = (Shopper) session.getAttribute("ShopperInfo");
			
			// Step2.구매자 정보, 도착지 정보, 배송 목록을 DB에서 가져오기
			Shopper shopperInfo = shopperService.getShopperById(shopper);
			ShippingAddressParam shipAddress = orderService.getShippingAddressInfo("1");
			List<DeliveryParam> deliveryInfo = orderService.getDeliveryInfo();
			
			
			// Step3. 상품 목록과 결제 정보를 Session으로 조회
			List<OrderParam> orderParam = (List<OrderParam>) session.getAttribute("orderParamList");
			int totalPrice = (int) session.getAttribute("totalPrice");
			int discountPrice = (int) session.getAttribute("discountPrice");
			int shippingPrice = (int) session.getAttribute("shippingPrice");
			int orderPrice = (int) session.getAttribute("orderPrice");
			
			log.info(orderParam.toString());
			log.info("totalPrice : " + totalPrice);
			log.info("discountPrice : " + discountPrice);
			log.info("shippingPrice : " + shippingPrice);
			log.info("orderPrice : " + orderPrice);
			
			// finish. 객체 설정 및 결제 페이지로 전송
			model.addAttribute("shopperInfo", shopperInfo);
			model.addAttribute("shipAddress", shipAddress);
			model.addAttribute("deliveryInfo", deliveryInfo);
		}
		
		return "order";
	}
	
}
