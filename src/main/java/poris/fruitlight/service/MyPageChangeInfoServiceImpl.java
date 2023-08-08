package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.MyPageOrdered;

public interface MyPageChangeInfoServiceImpl {
	public List<MyPageOrdered> getList(int pid);
}
