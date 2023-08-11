package poris.fruitlight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.DetailViewDao;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductInquiry;

@Slf4j
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
	public int addToCart(List<Cart> cartList) {
		for(Cart cartProduct : cartList) {
			log.info("SHOPPER_NO: " + cartProduct.getSHOPPER_NO());
			log.info("PRODUCT_NO: " + cartProduct.getPRODUCT_NO());
			log.info("CART_PRODUCT_STOCK: " + cartProduct.getCART_PRODUCT_STOCK());
			detailViewDao.updateCartStock(cartProduct);
		}
		/*detailViewDao.updateCartStock(cartList);*/
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
