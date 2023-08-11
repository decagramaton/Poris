package poris.fruitlight.service;

import poris.fruitlight.dto.JoinParam;

public interface ShopperService {
	/**
	 * 
	 * @author 고재승
	 */
	public void getAllShopper();
	public boolean isMember(String userId);
	public void insertMember(JoinParam joinParam);
}
