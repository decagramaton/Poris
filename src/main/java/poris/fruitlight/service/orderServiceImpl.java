package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poris.fruitlight.dao.OrderHistoryDao;
import poris.fruitlight.dao.ShippingAddressDao;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.dto.DeliveryParam;
import poris.fruitlight.dto.OrderHistory;
import poris.fruitlight.dto.OrderParam;
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

	@Override
	public void useCoupon(Coupon coupon) {
		orderHistoryDao.deleteCoupon(coupon);
	}


	@Override
	public void changeProductStock(OrderParam orderParam) {
		orderHistoryDao.updateProductStock(orderParam);
	}
}
