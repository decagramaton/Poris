package poris.fruitlight.dto;

import lombok.Data;

@Data
public class LoginParam {
	private String userId;
	private String userPw;
	private String autoLogin;
}
