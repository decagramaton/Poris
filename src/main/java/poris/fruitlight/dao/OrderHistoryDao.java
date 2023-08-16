package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.OrderHistoryOrderList;
import poris.fruitlight.dto.OrderSearchParam;

/**
 * 상품 정보와 관련된 DAO.
 * @author 김진성
 *
 */
@Mapper
public interface OrderHistoryDao {
   
   public List<OrderHistoryOrderList> SelectOrderHistory(int sid);
   public List<OrderHistoryOrderList> SearchOrdersByPname(OrderSearchParam orderSearch);
   
}