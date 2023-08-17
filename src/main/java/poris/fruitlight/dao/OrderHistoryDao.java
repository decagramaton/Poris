package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.Coupon;
import poris.fruitlight.dto.OrderHistory;
import poris.fruitlight.dto.OrderHistoryOrderList;
import poris.fruitlight.dto.OrderParam;
import poris.fruitlight.dto.OrderSearchParam;
import poris.fruitlight.dto.ReceiptHistory;

/**
 * 상품 정보와 관련된 DAO.
 * @author 김진성
 *
 */
@Mapper
public interface OrderHistoryDao {
   
   public List<OrderHistoryOrderList> SelectOrderHistory(int sid);
   public List<OrderHistoryOrderList> SearchOrdersByPname(OrderSearchParam orderSearch);
   
   /**
    * 작성자: 이은지
    * 결제 시 ORDER_HISTORY에 추가
    * @param orderHistory
    */
   public void insertOrderHistory(OrderHistory orderHistory);
   /**
    * 작성자: 이은지
    * 결제 시 RECEIPT_HISTORY에 추가
    * @param receiptHistory
    */
   public void insertReceiptHistory(ReceiptHistory receiptHistory);
   /**
    * 작성자: 이은지
    * 결제 후 사용한 쿠폰 COUPON에서 제거
    * @param coupon
    */
   public void deleteCoupon(Coupon coupon);
   /**
    * 작성자: 이은지
    * 결제 후 구매한 상품 수량만큼 PRODUCT의 재고 업데이트
    * @param orderParam
    */
   public void updateProductStock(OrderParam orderParam);
}