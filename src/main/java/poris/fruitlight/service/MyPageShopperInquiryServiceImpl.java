package poris.fruitlight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.DetailViewDao;
import poris.fruitlight.dao.MyPageShopperInquiryDao;
import poris.fruitlight.dto.BoardMedia;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.FoodRequiredInfo;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
import poris.fruitlight.dto.ProductInquiry;
import poris.fruitlight.dto.Review;

@Slf4j
@Service
public class MyPageShopperInquiryServiceImpl implements MyPageShopperInquiryService {
	@Autowired
	MyPageShopperInquiryDao myPageShopperInquiryDao;
	
	@Override
	public List<ProductInquiry> getShopperInquiryList(Pager pager, int sno) {
		pager.setShopperNo(sno);
		List<ProductInquiry> list = myPageShopperInquiryDao.selectShopperInquiryPager(pager);
		return list;
	}

	@Override
	public int getTotalShopperInquiryNum(int sno) {
		int totalProductInquiryNum = myPageShopperInquiryDao.countShopperInquiry(sno);
		return totalProductInquiryNum;
	}

	@Override
	public void deleteShopperInquiry(int ino) {
		myPageShopperInquiryDao.deleteShopperInquiry(ino);
	}
}
