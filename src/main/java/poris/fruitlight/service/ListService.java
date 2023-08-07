package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.ListProduct;

public interface ListService {
	public List<ListProduct> getList(int pid);
}
