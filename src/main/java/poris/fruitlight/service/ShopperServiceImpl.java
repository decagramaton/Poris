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
	public boolean isMember(Shopper shopper) {
		
		Shopper dbShopper = shopperDao.selectShopper(shopper);
		
		if(dbShopper == null) {
			return false;
		} else {
			return true;
		}
	}
	
	/**
	 * 신규 회원을 DB에 INSERT하는 메소드
	 * @author 고재승
	 * @since 2023.08.14
	 */
	@Override
	public void insertMember(Shopper shopper) {
		log.info(shopper.toString());
		shopperDao.insertShopper(shopper);
	}
	
	
	/**
	 * Shopper의 모든 데이터를 조회하는 메소드
	 * @author 고재승
	 */
	@Override
	public void getAllShopper() {
		List<Shopper> shopperList = shopperDao.selectAllShopper();
	}
	
	/**
	 * 
	 * @author 고재승
	 */
	@Override
	public Shopper getShopperById(Shopper shopper) {
		
		Shopper dbShopper = shopperDao.selectShopper(shopper);
		
		if(dbShopper != null) {
			return dbShopper;
		} else {
			return null;
		}
	}
	
	
	/**
	 * 자동 로그인 상태 정보를 DB에 UPDATE하는 메소드
	 * @author 고재승
	 * @since 2023.08.14 
	 */
	@Override
	public void setShopperAutoLogin(Shopper shopper) {
		shopperDao.updateShopperAutoLoginState(shopper);
	}
}
