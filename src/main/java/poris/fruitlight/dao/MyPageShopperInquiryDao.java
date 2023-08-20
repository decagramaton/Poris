package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.ProductInquiry;

/**
 * 
 * @author 이은지
 *
 */
@Mapper
public interface MyPageShopperInquiryDao {
	public List<ProductInquiry> selectShopperInquiryPager(Pager pager);
	public int countShopperInquiry(int sno);
	public int deleteShopperInquiry(int ino);
	
	/**
	 * 보유한 쿠폰 리스트 보여줌
	 * @param sno
	 * @return
	 */
	public List<Coupon> selectCouponBySno(int sno);
}
