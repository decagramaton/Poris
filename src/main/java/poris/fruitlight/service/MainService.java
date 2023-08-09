package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.MainProduct;

public interface MainService {
	public List<MainProduct> getMainList(int pid);
	public List<MainProduct> getTodayList(int pid);
	public List<MainProduct> getSellerList(int pid);
	public List<MainProduct> getCateMainList(int pid);
	public List<MainProduct> getCateSubList(int pid);
}
