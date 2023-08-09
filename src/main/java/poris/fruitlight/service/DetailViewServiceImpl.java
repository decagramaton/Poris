package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.DetailViewProduct;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.ProductInquiry;

@Service
public class DetailViewServiceImpl implements DetailViewService {
	@Override
	public DetailViewProduct getProduct(int pid) {
		List<DetailViewProduct> list = new ArrayList<>();
		DetailViewProduct product = new DetailViewProduct();
		product.setPid(1);
		/*cartProduct.setImg(img);*/
		product.setName("과일엔 미국산 생체리");
		product.setPrice(6900);
		product.setShippingPrice(0);
		product.setOption("100g x 1팩");
		return product;
	}
	@Override
	public List<DetailViewProduct> getOptions(String name) {
		List<DetailViewProduct> list = new ArrayList<>();
		//같은 이름을 가진 product들을 select
		for(int i=1; i<=3; i++) {
			DetailViewProduct product = new DetailViewProduct();
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
	@Override
	public List<ProductInquiry> getProductInquiryList(Pager pager, String pid) {
		List<ProductInquiry> list = new ArrayList<>();
		
		for(int i=1; i<=5; i++) {
			ProductInquiry productInquiry = new ProductInquiry();
			productInquiry.setInquiryId(i);
			productInquiry.setInquiryContent("체리 맛있나여");
			productInquiry.setInquiryDate(new Date());
			productInquiry.setEmptAnswer(false);
			productInquiry.setAnswerContent("냠냠굿" + i);
			productInquiry.setAnswerDate(new Date());
			
			list.add(productInquiry);
		}
		
		return list;
	}
	@Override
	public int getTotalProductInquiryNum(String pid) {
		
		return 10;
	}

}
