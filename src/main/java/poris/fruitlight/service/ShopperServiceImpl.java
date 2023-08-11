package poris.fruitlight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.ShopperDao;
import poris.fruitlight.dto.JoinParam;
import poris.fruitlight.dto.Shopper;

@Slf4j
@Service
public class ShopperServiceImpl implements ShopperService{
	
	@Autowired
	ShopperDao shopperDao;
	
	
	
	@Override
	public boolean isMember(String userId) {

		return false;
	}
	
	@Override
	public void insertMember(JoinParam joinParam) {
		
	}
	
	
	/**
	 * Shopper의 모든 데이터를 조회하는 메소드
	 * @author 고재승
	 */
	@Override
	public void getAllShopper() {
		List<Shopper> shopperList = shopperDao.selectAllShopper();
		
		log.info(shopperList.toString());
	}
}
