package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.MyPageChangeInfo;
import poris.fruitlight.dto.Shopper;

public interface MyPageChangeInfoService {
	public List<MyPageChangeInfo> getList(String userId);
	public void modify(MyPageChangeInfo mpci);
	
	
	/**
	 * 유저가 입력한 데이터가 DB의 PW와 동일한지 확인 요청하는 메소드
	 * @author 고재승
	 * @since 2023.08.17
	 * @param shopper - 회원 정보
	 * @return boolean
	 */
	public boolean isShopperPw(Shopper shopper);
}
