package poris.fruitlight.service;

import java.util.Date;

import poris.fruitlight.dto.Member;

public interface LoginService {
	public Member getMemberInfo();
	public void setLastLoginDate(Date date);
}
