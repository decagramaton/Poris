package poris.fruitlight.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.MyPageChangeInfo;

@Service
@Slf4j
public class MyPageChangeInfoServiceImpl implements MyPageChangeInfoService{
	
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
	
}
