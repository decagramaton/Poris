package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.BoardMedia;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.FoodRequiredInfo;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
import poris.fruitlight.dto.ProductInquiry;

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
	
	
	public List<ProductBoard> selectImgsByBno(int bno);
	public List<Product> selectByName(String name);
	public int updateCartStock(Cart cart);
	public List<ProductInquiry> selectProductInquiryPager(Pager pager);
	public int count(int bno);
}
