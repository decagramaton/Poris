package poris.fruitlight.service;

import poris.fruitlight.dto.JoinParam;

public interface JoinService {
	public boolean isMember(String userId);
	public void insertMember(JoinParam joinParam);
}
