package poris.fruitlight.service;

import poris.fruitlight.dto.JoinParam;
import poris.fruitlight.dto.RecipientParam;
import poris.fruitlight.dto.ShopperParam;

public interface orderService {
	public ShopperParam getShopperInfo(String userId);
	public RecipientParam getRecipientInfo(String userId);
}
