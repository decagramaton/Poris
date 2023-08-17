package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.OrderHistoryOrderList;
import poris.fruitlight.dto.OrderSearchParam;
import poris.fruitlight.dto.Pager;

public interface MyPageOrderedService {
    public List<OrderHistoryOrderList> getList(Pager pager,int sid);
    public List<OrderHistoryOrderList> searchOrderList(OrderSearchParam orderSearch);
    public int SelectTotalOrderHistory(int shopperNo);
}