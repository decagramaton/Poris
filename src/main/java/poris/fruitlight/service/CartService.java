package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.CartProduct;

public interface CartService {
	public List<CartProduct> getCartProduct(String uid);
}
