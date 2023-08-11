package poris.fruitlight.service;

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
	public Product getProduct(int pno) {
		Product product = detailViewDao.selectByPno(pno);
		return product;
	}
	@Override
	public List<Product> getOptions(String name) {
		List<Product> list = detailViewDao.selectByName(name);
		return list;
	}
	@Override
	public int addToCart(List<CartProduct> productList) {
		//선택한 상품들 추가
		//xml에 이미 있는 상품이면 수량만 업데이트하도록 작성
		return 0;
	}
	@Override
	public List<ProductInquiry> getProductInquiryList(Pager pager, String pno) {
		pager.setBOARD_NO(Integer.parseInt(pno));
		List<ProductInquiry> list = detailViewDao.selectProductInquiryPager(pager);
		return list;
	}
	@Override
	public int getTotalProductInquiryNum(String pno) {
		int totalProductInquiryNum = detailViewDao.count(Integer.parseInt(pno));
		return totalProductInquiryNum;
	}

}
