package poris.fruitlight.service;

import poris.fruitlight.dto.JoinParam;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.ShopperParam;

public interface orderService {
	public ShopperParam getShopperInfo(String userId);
	public ShippingAddressParam getShippingAddressInfo(String userId);
}
