package poris.fruitlight.service;

import org.springframework.stereotype.Service;

import poris.fruitlight.dto.JoinParam;

@Service
public class JoinServiceImpl implements JoinService{
	
	@Override
	public boolean isMember(String userId) {

		return false;
	}
	
	@Override
	public void insertMember(JoinParam joinParam) {
		
	}
}
