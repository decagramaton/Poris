package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poris.fruitlight.dao.DetailViewDao;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductInquiry;

@Service
public class DetailViewServiceImpl implements DetailViewService {
	@Autowired
	DetailViewDao detailViewDao;
	
	@Override
	public Product getProduct(int pid) {
		List<Product> list = new ArrayList<>();
		Product product = new Product();
		return product;
	}
	@Override
	public List<Product> getOptions(String name) {
		List<Product> list = new ArrayList<>();
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
