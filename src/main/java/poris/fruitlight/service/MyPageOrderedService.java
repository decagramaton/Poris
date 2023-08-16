package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.OrderHistoryOrderList;
import poris.fruitlight.dto.OrderSearchParam;

public interface MyPageOrderedService {
    public List<OrderHistoryOrderList> getList(int sid);
    public List<OrderHistoryOrderList> searchOrderList(OrderSearchParam orderSearch);
    
    
}