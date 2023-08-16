package poris.fruitlight.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.DeliveryParam;
import poris.fruitlight.dto.OrderHistory;
import poris.fruitlight.dto.OrderParam;
import poris.fruitlight.dto.ReceiptHistory;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.Shopper;
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
	
	@RequestMapping("/order/buyOrder")
	public String buyOrder(
			HttpSession session,
			String payType, 
			String payTypeBank, 
			String payTypeCard, 
			String payTypeTelecom, 
			String payTypeDepositBank,
			String receiptPurpose,
			String cashReceiptRegisterType,
			String cashReceiptRequestNo) {
		
		//로그인 회원 정보(주문자)
		Shopper loginShopper = (Shopper) session.getAttribute("ShopperInfo");
		//상품 목록과 결제 정보
		List<OrderParam> orderParamList = (List<OrderParam>) session.getAttribute("orderParamList");
		int totalPrice = (int) session.getAttribute("totalPrice");
		int discountPrice = (int) session.getAttribute("discountPrice");
		int shippingPrice = (int) session.getAttribute("shippingPrice");
		int orderPrice = (int) session.getAttribute("orderPrice");
		
		//OrderHistory DTO 객체 생성
		OrderHistory order = new OrderHistory();
		//유저 번호
		order.setSHOPPER_NO(loginShopper.getShopperNo());
		//배송지 번호
		order.setADDRESS_NO(1);  //추후 수정
		//결제 날짜
		order.setORDER_DATE(new Date());
		//총 상품가격
		order.setTOTAL_PRICE(totalPrice);
		//할인금액
		order.setDISCOUNT_PRICE(discountPrice);
		//배송비
		order.setSHIPPING_PRICE(shippingPrice);
		//결제금액
		order.setPAYMENT_PRICE(orderPrice);
		
		//결제 유형(계좌이체, 신용/체크카드, 휴대폰, 무통장입금(가상계좌))
		String paymentType = "";
		switch(payType) {
			case "ROCKET_BANK": {
				paymentType = "계좌이체";
				paymentType += " / " + payTypeBank;
				break;
			}
			case "ROCKET_CARD": {
				paymentType = "신용/체크카드"; 
				paymentType += " / " + payTypeCard;
				break;
			}
			case "PHONE": {
				paymentType = "휴대폰"; 
				paymentType += " / " + payTypeTelecom;
				break;
			}
			case "VIRTUALACCOUNT": {
				paymentType = "무통장입금(가상계좌)";
				paymentType += " / " + payTypeDepositBank;
				break;
			}
		}
		order.setPAYMENT_TYPE(paymentType);
		
		//현금영수증 발행목적(소득공제, 지출증빙)
		String cashReciptPurpose = "";
		if(receiptPurpose.equals("incomeDeduction")) {
			cashReciptPurpose = "소득공제";
		} else if(receiptPurpose.equals("proofExpenditure")) {
			cashReciptPurpose = "지출증빙";
		}
		order.setCASH_RECEIPT_PURPOSE(cashReciptPurpose);
		
		//현금영수증 종류(휴대폰번호, 현금영수증카드)
		String cashReceiptType = "";
		if(cashReceiptRegisterType.equals("PHONE_NUMBER")) {
			cashReceiptType = "휴대폰번호";
		} else if(cashReceiptRegisterType.equals("CASH_RECEIPT_CARD_NUMBER")) {
			cashReceiptType = "현금영수증카드";
		}
		order.setCASH_RECEIPT_TYPE(cashReceiptType);
		
		//현금영수증 번호
		order.setCASH_RECEIPT_NO(cashReceiptRequestNo);
		
		//order DB에 저장
		
		
		//ReceiptHistory DTO List 생성
		List<ReceiptHistory> receiptHistoryList = new ArrayList<>();
		for(OrderParam orderParam : orderParamList) {
			//ReceiptHistory DTO 객체 생성
			ReceiptHistory receipt = new ReceiptHistory();
			//상품번호
			receipt.setPRODUCT_NO(orderParam.getProductNo());
			//상품가격
			receipt.setPRICE(orderParam.getProductPrice());
			//상품수량
			receipt.setSTOCK(orderParam.getProductStock());
			
			receiptHistoryList.add(receipt);
		}
		
		//receiptHistoryList DB에 저장
		
		return "order";
	}
	
}
