package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.MyPageChangeInfo;

public interface MyPageChangeInfoService {
	public List<MyPageChangeInfo> getList(String userId);
	public void modify(MyPageChangeInfo mpci);
}
