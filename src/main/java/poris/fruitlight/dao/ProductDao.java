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
   public List<ProductList> SelectAll();
   public ProductList SelectByPno(int PRODUCT_NO);
}