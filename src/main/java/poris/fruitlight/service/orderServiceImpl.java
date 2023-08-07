package poris.fruitlight.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import poris.fruitlight.dto.JoinParam;
import poris.fruitlight.dto.RecipientParam;
import poris.fruitlight.dto.ShopperParam;

@Service
public class orderServiceImpl implements orderService{
	
	@Override
	public ShopperParam getShopperInfo(String userId) {
		
		// JSP 화면 출력용 테스트 더미 데이터, 추후 DB 연결시 변경 필수
		ShopperParam shopper = new ShopperParam();
		shopper.setName("Hethod");
		shopper.setEmail("hethod@gmail.com");
		shopper.setTel("010-1234-1234");
		
		return shopper;
	}
	
	@Override
	public RecipientParam getRecipientInfo(String userId) {
		return null;
	}
}
