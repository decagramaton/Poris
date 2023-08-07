package poris.fruitlight.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.MyPageOrdered;

@Service
@Slf4j
public class MyPageOrderedServiceImpl implements MyPageOrderedService{
	
	
	@Override
	public List<MyPageOrdered> getList(int pid) {
		log.info("MyPageOrderedImpl 실행");
		List<MyPageOrdered> list = new ArrayList<>();
		for(int i=1; i<=5; i++) {
			MyPageOrdered mpo = new MyPageOrdered();
			mpo.setPid(i);
			mpo.setName("고재승 꿀수박"+i);
			
			try {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date = sdf.parse("2023-08-01");
				mpo.setDeliverydate(date);
				mpo.setOrdereddate(date);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			mpo.setDeliverystate("배송중");
			mpo.setPrice(15000*i);
			mpo.setStock(i);
			
			list.add(mpo);
			log.info(mpo.toString());
		}
		
		/*List<MainProduct> list = listDao.selectByPage(pager);*/
		return list;
	}

}
