package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

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

}
