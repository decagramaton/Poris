package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductInquiry;

@Mapper
public interface DetailViewDao {
	public Product selectByPno(int pno);
	public List<Product> selectByName(String name);
	public int selectFromCart(Cart cart);
	public int insertToCart(Cart cart);
	public int updateToCart(Cart cart);
	public int updateCartStock(Cart cart);
	/*public int updateCartStock(List<Cart> cartList);*/
	public List<ProductInquiry> selectProductInquiryPager(Pager pager);
	public int count(int pno);
}
