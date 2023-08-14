package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.OrderHistoryOrderList;

public interface MyPageOrderedService {
    public List<OrderHistoryOrderList> getList(int sid);
}