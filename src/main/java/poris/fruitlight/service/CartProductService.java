package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.CartProduct;

/**
 * 
 * @author 이은지
 *
 */
public interface CartProductService {
	/**
	 * 
	 * @param uid(보여줄 장바구니 목록을 가진 현재 로그인한 회원 id)
	 * @return List<CartProduct>(장바구니 상품 리스트)
	 */
	public List<CartProduct> getCartProduct(int uid);
	/**
	 * 
	 * @param pid(장바구니에서 삭제될 상품) 
	 * @return int
	 */
	public int deleteProduct(int pid);
	/**
	 * 
	 * @param cartProduct(수량이 변경될 장바구니 상품)
	 * @return int
	 */
	public int changeStock(CartProduct cartProduct);
}
