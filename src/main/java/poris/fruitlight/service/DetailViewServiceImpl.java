package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.detailViewProduct;

@Service
public class DetailViewServiceImpl implements DetailViewService {
	@Override
	public detailViewProduct getProduct(int pid) {
		List<detailViewProduct> list = new ArrayList<>();
		detailViewProduct product = new detailViewProduct();
		product.setPid(1);
		/*cartProduct.setImg(img);*/
		product.setName("과일엔 미국산 생체리");
		product.setPrice(6900);
		product.setShippingPrice(0);
		product.setOption("100g x 1팩");
		return product;
	}
	@Override
	public List<detailViewProduct> getOptions(String name) {
		List<detailViewProduct> list = new ArrayList<>();
		//같은 이름을 가진 product들을 select
		for(int i=1; i<=3; i++) {
			detailViewProduct product = new detailViewProduct();
			product.setPid(i);
			product.setName("과일엔 미국산 생체리");
			product.setPrice(6900 + i);
			product.setOption(i * 100 + "g x 1팩");
			
			list.add(product);
		}
		return list;
	}
	@Override
	public int addToCart(List<CartProduct> productList) {
		//선택한 상품들 추가
		//xml에 이미 있는 상품이면 수량만 업데이트하도록 작성
		return 0;
	}

}
