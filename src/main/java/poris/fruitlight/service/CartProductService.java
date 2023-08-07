package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.CartProduct;

public interface CartProductService {
	public List<CartProduct> getCartProduct(int uid);
	public int deleteProduct(int pid);
	public int changeStock(CartProduct cartProduct);
}
