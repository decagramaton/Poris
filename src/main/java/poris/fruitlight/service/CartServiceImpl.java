package poris.fruitlight.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import poris.fruitlight.dto.CartProduct;

@Service
public class CartServiceImpl implements CartService {

	@Override
	public List<CartProduct> getCartProduct(int uid) {
		List<CartProduct> list = new ArrayList<>();
		for(int i=1; i<=3; i++) {
			CartProduct cartProduct = new CartProduct();
			cartProduct.setPid(i);
			/*cartProduct.setImg(img);*/
			cartProduct.setName("고재승 꿀수박");
			cartProduct.setOption(i + "kg");
			cartProduct.setPrice(i * 10000);
			cartProduct.setStock(i);
			cartProduct.setShippingPrice(3000);
			cartProduct.setShippingFreeRule(30000);
			
			list.add(cartProduct);
		}
		return list;
	}

}
