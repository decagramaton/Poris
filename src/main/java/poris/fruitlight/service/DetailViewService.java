package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.BoardMedia;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.FoodRequiredInfo;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
import poris.fruitlight.dto.ProductInquiry;
import poris.fruitlight.dto.Review;

/**
 * 
 * @author 고재승, 이은지
 *
 */
public interface DetailViewService {
	/**
	 * @author 고재승
	 * @since 2023.08.13
	 * @param bno - 상품 게시글 번호
	 * @return ProductBoard(상품 게시글 DTO)
	 */
	public ProductBoard getProduct(int bno);
	
	
	/**
	 * @author 고재승
	 * @since 2023.08.16
	 * @param bno - 상품 게시글 번호
	 * @return FoodRequiredInfo(상품 필수 표기 정보 DTO)
	 */
	public FoodRequiredInfo getFoodRequiredInfoByBoardNo(int boardNo);
	
	
	/**
	 * @author 고재승
	 * @since 2023.08.16
	 * @param boardNo - 상품 게시글 번호
	 * @return BoardMedia(게시글 미디어 파일 정보 DTO)
	 */
	public List<BoardMedia> getProductContentList(int boardNo);
	
	/**
	 * @author 고재승
	 * @since 2023.08.17
	 * @param boardNo - 상품 게시글 번호
	 * @return 리뷰 글 개수
	 */
	public int getTotalReviewStock(int boardNo);
	
	/**
	 * @author 고재승
	 * @since 2023.08.17
	 * @param pager - 페이지 정보
	 * @param boardNo - 출력할 게시글 번호
	 * @return 페이지내 출력 개수만큼의 Review 객체 목록
	 */
	public List<Review> getReviewList(Pager pager, int boardNo);
	
	/**
	 * 
	 * @param name(상품상세 페이지에서 보여줄 옵션들을 가져오기 위한 기준인 현재 상품 name)
	 * @return List<Product>(같은 이름을 가진 상품 리스트)
	 */
	public List<Product> getOptions(String name);
	
	
	/**
	 * 
	 * @param bno(상품 게시글 번호)
	 * @return List<Product>
	 */
	public List<ProductBoard> getImages(int bno);
	
	
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
	public List<ProductInquiry> getProductInquiryList(Pager pager, int bno);
	
	
	/**
	 * 
	 * @param pno(상품문의 총 개수를 보여줄 상품 no)
	 * @return int(상품문의 총 개수)
	 */
	public int getTotalProductInquiryNum(int bno);
	
	
	/**
	 * 
	 */
	public void addHelpPoint(String reviewNo);
}