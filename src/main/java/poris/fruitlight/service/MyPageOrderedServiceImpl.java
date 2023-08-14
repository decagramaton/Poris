package poris.fruitlight.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.OrderHistoryDao;
import poris.fruitlight.dto.OrderHistoryOrderList;

@Service
@Slf4j
public class MyPageOrderedServiceImpl implements MyPageOrderedService{
   
   @Resource
   private OrderHistoryDao orderHistoryDao;
   
   @Override
   public List<OrderHistoryOrderList> getList(int sid) {
      List<OrderHistoryOrderList> list = orderHistoryDao.SelectOrderHistory(sid);
      
      log.info(list.toString());
      
      return list;
   }


}
