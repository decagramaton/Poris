package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Coupon;

/**
 * 
 * @author 이은지
 *
 */
public interface CartService {
	/**
	 * 
	 * @param sno(보여줄 장바구니 목록을 가진 현재 로그인한 회원 id)
	 * @return List<CartProduct>(장바구니 상품 리스트)
	 */
	public List<CartProduct> getCartProduct(int sno);
	/**
	 * 
	 * @param sno(보여줄 쿠폰 목록을 가진 현재 로그인한 회원 id)
	 * @return List<Coupon>(보유 쿠폰 리스트)
	 */
	public List<Coupon> getCoupon(int sno);
	/**
	 * 
	 * @param pid(장바구니에서 삭제될 상품) 
	 * @return int
	 */
	public void deleteProduct(int pno);
	/**
	 * 
	 * @param cartProduct(수량이 변경될 장바구니 상품)
	 * @return int
	 */
	public void changeStock(Cart cart);
}
