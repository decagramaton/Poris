package poris.fruitlight.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.ShopperDao;
import poris.fruitlight.dto.MyPageChangeInfo;
import poris.fruitlight.dto.Shopper;

@Service
@Slf4j
public class MyPageChangeInfoServiceImpl implements MyPageChangeInfoService{
	
	@Autowired
	ShopperDao shopperDao;
	
	@Override
	public List<MyPageChangeInfo> getList(String userId) {
		log.info("MyPageChangeInfoImpl 실행");
		List<MyPageChangeInfo> list = new ArrayList<>();
		MyPageChangeInfo mpci = new MyPageChangeInfo();
		mpci.setUserId("asddjas@poris.com");
		mpci.setUserName("김진성");
		mpci.setUserPassword("qqeett22!");
		
		list.add(mpci);
		
		/*List<MainProduct> list = listDao.selectByPage(pager);*/
		return list;
	}

	@Override
	public void modify(MyPageChangeInfo mpci) {
		//개인정보 수정 Query문 작성 후 사용 (DB 연동)
		/*MyPageChangeInfoDao.update(mpci);*/
	}
	
	
	/**
	 * 유저가 입력한 데이터가 DB의 PW와 동일한지 확인 요청하는 메소드
	 * @author 고재승
	 * @since 2023.08.17
	 * @param shopper - 회원 정보
	 * @return boolean
	 */
	@Override
	public boolean isShopperPw(Shopper shopper) {
		// Step1. DB에서 ID를 기준으로 일치하는 유저 정보 조회
		Shopper dbShopper = shopperDao.selectShopper(shopper);
		
		// Step2. 일치하는 유저 정보가 있는지 확인
		if(dbShopper != null) {
			
			// Step3. 입력한 PW와  DB의 패스워드가 같은지 확인
			if(dbShopper.getShopperPw() == shopper.getShopperPw()) {
				return true;
			} else {
				return false;
			}
		}
		
		return false;
	}
}
