package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.ProductList;

/**
 * 상품 정보와 관련된 DAO.
 * @author 김진성
 *
 */
@Mapper
public interface ProductDao {
   public List<ProductList> MainBanner();
   public List<ProductList> TodayDiscovery();
   public List<ProductList> TodaySeller();
   public List<ProductList> CategoryMain();
   
   /**
    * DB에서 PRODUCT 테이블과 PRODUCT_BOARD 테이블에서 상품 번호를 기준으로 게시판 번호를 조회하는 메소드
    * @author 고재승
    * @param pid - 제품 고유번호
    * @return 상세 게시판 이동을 위한 게시판 번호
    */
   public int SelectDetailView(int pid);
   
}