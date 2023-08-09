package poris.fruitlight.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.CartProduct;

/**
 * 
 * @author 이은지
 *
 */
@Service
@Slf4j
public class CartProductServiceImpl implements CartProductService {
	//장바구니 목록 가져오기
	@Override
	public List<CartProduct> getCartProduct(int uid) {
		List<CartProduct> list = new ArrayList<>();
		for(int i=1; i<=5; i++) {
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
	
	//상품삭제
	@Override
	public int deleteProduct(int pid) {
		return 1;
	}
	
	//수량변경
	@Override
	public int changeStock(CartProduct cartProduct) {
		int pid = cartProduct.getPid();
		int stock = cartProduct.getStock();
		
		return 1;
	}

}
