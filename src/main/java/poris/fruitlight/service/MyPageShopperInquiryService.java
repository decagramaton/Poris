package poris.fruitlight.service;

import java.util.List;

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
public interface MyPageShopperInquiryService {
	/**
	 * 내 상품문의 가져오기 - 추후 위치 이동
	 * @param pager(상품문의 페이저)
	 * @param sno(상품문의 목록을 보여줄 SHOPPER_NO)
	 * @return List<ProductInquiry>(상품문의 리스트)
	 */
	public List<ProductInquiry> getShopperInquiryList(Pager pager, int sno);
	/**
	 * 
	 * @param sno(상품문의 총 개수를 보여줄 SHOPPER_NO)
	 * @return int(회원별 상품문의 총 개수)
	 */
	public int getTotalShopperInquiryNum(int sno);
	/**
	 * 
	 * @param ino(삭제할 상품문의 번호)
	 */
	public void deleteShopperInquiry(int ino);
}
