package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Coupon;

@Mapper
public interface CartDao {
	public List<CartProduct> selectCartBySno(int sno);
	public List<Coupon> selectCouponBySno(int sno);
	public int deleteCart(int pno);
	public int updateStock(Cart cart);
}
