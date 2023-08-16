package poris.fruitlight.service;

import poris.fruitlight.dto.OrderHistory;
import poris.fruitlight.dto.ReceiptHistory;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.dto.ShopperParam;

public interface orderService {
	
	/**
	 * 
	 * @author 고재승
	 * @since 2023.08.16
	 * @param shopper
	 * @return
	 */
	public ShippingAddressParam getShippingAddressInfo(Shopper shopper);
	
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
