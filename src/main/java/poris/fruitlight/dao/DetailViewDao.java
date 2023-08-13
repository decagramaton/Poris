package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
import poris.fruitlight.dto.ProductInquiry;

@Mapper
public interface DetailViewDao {
	public ProductBoard selectByBno(int bno);
	public Product selectByBnoTest(int bno);
	public List<Product> selectByName(String name);
	public int updateCartStock(Cart cart);
	public List<ProductInquiry> selectProductInquiryPager(Pager pager);
	public int count(int bno);
}
