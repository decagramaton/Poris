package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductInquiry;

/**
 * 
 * @author 이은지
 *
 */
public interface DetailViewService {
	/**
	 * 
	 * @param pno(상품상세 페이지에서 보여줄 상품 no)
	 * @return Product(상품 DTO)
	 */
	public Product getProduct(int pno);
	/**
	 * 
	 * @param name(상품상세 페이지에서 보여줄 옵션들을 가져오기 위한 기준인 현재 상품 name)
	 * @return List<Product>(같은 이름을 가진 상품 리스트)
	 */
	public List<Product> getOptions(String name);
	/**
	 * 
	 * @param productList(장바구니에 추가될 상품 리스트)
	 * @return int
	 */
	public int addToCart(List<Cart> cart);
	/**
	 * 
	 * @param pager(상품문의 페이저)
	 * @param pno(상품문의 목록을 보여줄 상품 no)
	 * @return List<ProductInquiry>(상품문의 리스트)
	 */
	public List<ProductInquiry> getProductInquiryList(Pager pager, String pno);
	/**
	 * 
	 * @param pno(상품문의 총 개수를 보여줄 상품 no)
	 * @return int(상품문의 총 개수)
	 */
	public int getTotalProductInquiryNum(String pno);
}