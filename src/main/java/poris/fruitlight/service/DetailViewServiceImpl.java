package poris.fruitlight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.DetailViewDao;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
import poris.fruitlight.dto.ProductInquiry;

@Slf4j
@Service
public class DetailViewServiceImpl implements DetailViewService {
	@Autowired
	DetailViewDao detailViewDao;
	
	@Override
	public ProductBoard getProduct(int bno) {
		ProductBoard product = detailViewDao.selectByBno(bno);
		return product;
	}
	@Override
	public List<Product> getOptions(String name) {
		List<Product> list = detailViewDao.selectByName(name);
		return list;
	}
	@Override
	public List<ProductBoard> getImages(int bno) {
		List<ProductBoard> list = detailViewDao.selectByBnoTest(bno);
		return list;
	}
	@Override
	public int addToCart(List<Cart> cartList) {
		for(Cart cartProduct : cartList) {
			detailViewDao.updateCartStock(cartProduct);
		}
		return 0;
	}
	@Override
	public List<ProductInquiry> getProductInquiryList(Pager pager, int bno) {
		pager.setBOARD_NO(bno);
		List<ProductInquiry> list = detailViewDao.selectProductInquiryPager(pager);
		return list;
	}
	@Override
	public int getTotalProductInquiryNum(int bno) {
		int totalProductInquiryNum = detailViewDao.count(bno);
		return totalProductInquiryNum;
	}
}
