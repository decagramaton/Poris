package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poris.fruitlight.dao.OrderHistoryDao;
import poris.fruitlight.dao.ShippingAddressDao;
import poris.fruitlight.dto.DeliveryParam;
import poris.fruitlight.dto.OrderHistory;
import poris.fruitlight.dto.ReceiptHistory;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.dto.ShopperParam;

@Service
public class orderServiceImpl implements orderService{
	
	@Autowired
	ShippingAddressDao shippingAddressDao;
	
	@Autowired
	OrderHistoryDao orderHistoryDao;
	
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
	public ShippingAddressParam getShippingAddressInfo(Shopper shopper) {
		return shippingAddressDao.selectShippingAddressById(shopper);
	}
	

	@Override
	public void addOrder(OrderHistory orderHistory) {
		orderHistoryDao.insertOrderHistory(orderHistory);
	}

	@Override
	public void addReceipt(ReceiptHistory receiptHistory) {
		orderHistoryDao.insertReceiptHistory(receiptHistory);
	}
}
