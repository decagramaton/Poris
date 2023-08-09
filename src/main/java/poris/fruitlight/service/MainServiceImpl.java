package poris.fruitlight.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.ListProduct;
import poris.fruitlight.dto.MainProduct;

@Service
@Slf4j
public class MainServiceImpl implements MainService{
	
	/*@Resource
	private MainDao mainDao;*/

	@Override
	public List<MainProduct> getMainList(int pid) {
		List<MainProduct> list = new ArrayList<>();
		for(int i=1; i<=3; i++) {
			MainProduct mainList = new MainProduct();
			mainList.setPid(i);
			mainList.setName("미국산 뭐시기 체리"+i);
			
			list.add(mainList);
		}
		return list;
	}

	@Override
	public List<MainProduct> getTodayList(int pid) {
		List<MainProduct> list = new ArrayList<>();
		for(int i=1; i<=4; i++) {
			MainProduct todayList = new MainProduct();
			todayList.setPid(i);
			todayList.setName("미국산 뭐시기 체리"+i);
			todayList.setDisrate(i*5);
			todayList.setDiscountprice(10000*i);
			todayList.setPrice((10000*i)*(1-(i*5/100)));
			
			list.add(todayList);
		}
		return list;
	}

	@Override
	public List<MainProduct> getSellerList(int pid) {
		List<MainProduct> list = new ArrayList<>();
		for(int i=1; i<=8; i++) {
			MainProduct sellerList = new MainProduct();
			sellerList.setPid(i);
			sellerList.setName("체리블로섬"+i);
			sellerList.setDisrate(i*5);
			sellerList.setDiscountprice(10000*i);
			sellerList.setPrice((10000*i)*(1-(i*5/100)));
			
			list.add(sellerList);
		}
		return list;
	}
}
