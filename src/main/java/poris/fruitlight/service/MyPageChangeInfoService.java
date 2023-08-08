package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.MyPageOrdered;

public interface MyPageChangeInfoService {
	public List<MyPageOrdered> getList(int pid);
}
