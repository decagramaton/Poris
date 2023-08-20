package poris.fruitlight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.MyPageShopperInquiryDao;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.ProductInquiry;

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
	
	//쿠폰 목록 가져오기
	@Override
	public List<Coupon> getCoupon(int sno) {
		List<Coupon> list = myPageShopperInquiryDao.selectCouponBySno(sno);
		return list;
	}
}
