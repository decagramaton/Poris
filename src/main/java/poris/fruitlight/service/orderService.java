package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.DeliveryParam;
import poris.fruitlight.dto.OrderHistory;
import poris.fruitlight.dto.ReceiptHistory;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.ShopperParam;

public interface orderService {
	public ShopperParam getShopperInfo(String userId);
	public ShippingAddressParam getShippingAddressInfo(String userId);
	public List<DeliveryParam> getDeliveryInfo();
	
	/**
	 * 작성자: 이은지
	 * 결제 시 ORDER_HISTORY에 추가
	 * @param orderHistory
	 */
	public void addOrder(OrderHistory orderHistory);
	/**
	 * 작성자: 이은지
	 * 결제 시 RECEIPT_HISTORY에 추가
	 * @param receiptHistory
	 */
	public void addReceipt(ReceiptHistory receiptHistory);
}
