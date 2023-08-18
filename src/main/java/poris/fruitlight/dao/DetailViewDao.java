package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import poris.fruitlight.dto.BoardMedia;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.FoodRequiredInfo;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
import poris.fruitlight.dto.ProductInquiry;
import poris.fruitlight.dto.Review;

@Mapper
public interface DetailViewDao {
	public ProductBoard selectByBno(int bno);
	/**
	 * 게시글 번호를 기준으로 식품 필수 표기 정보의 모든 정보를 조회하는 메소드
	 * @author 고재승
	 * @since 2023.08.16
	 * @param boardNo - 게시판 번호
	 * @return 식품 필수 표기 정보 DTO
	 */
	public FoodRequiredInfo SelectRequiredInfoByBoardNo(int boardNo);
	
	/**
	 * 게시글의 고유 번호를 기준으로 상품의 미디어 파일을 조회하는 메소드
	 * @author 고재승
	 * @since 2023.08.16
	 * @param boardNo - 게시판 번호
	 * @return 식품 필수 표기 정보 DTO
	 */
	public List<BoardMedia> SelectProductContentByBoardNo(int boardNo);
	
	/**
	 * 게시글의 고유 번호를 기준으로 리뷰 글 개수를 조회하는 메소드
	 * @author 고재승
	 * @since 2023.08.17
	 * @param boardNo - 게시판 번호
	 * @return 총 리뷰 개수 정보
	 */
	public int SelectTotalReviewStock(int boardNo);
	
	/**
	 * 페이저 객체로 페이지별 설정한 개수만큼 리뷰 목록을 조회하는 메소드
	 * @author 고재승
	 * @since 2023.08.17
	 * @param pager
	 * @return 리뷰 목록
	 */
	public List<Review> selectReviewList(Pager pager);
	
	/**
	 * 페이저 객체로 페이지별 설정한 개수만큼 리뷰 목록을 조회하는 메소드
	 * @author 고재승
	 * @since 2023.08.18
	 * @param pager
	 * @return 검색 조건에 해당하는 리뷰 목록
	 */
	public List<Review> selectSearchReviewList(@Param("Pager") Pager pager, @Param("Keyword") String searchKeyword);
	
	public void updateAddHelpPoint(String reviewNo);
	
	
	public List<ProductBoard> selectImgsByBno(int bno);
	public List<Product> selectByName(String name);
	public int updateCartStock(Cart cart);
	public List<ProductInquiry> selectProductInquiryPager(Pager pager);
	public int count(int bno);
}
