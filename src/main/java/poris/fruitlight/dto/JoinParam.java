package poris.fruitlight.dto;

import lombok.Data;

@Data
public class JoinParam {
	private String userId;
	private String userPassword;
	private String userPasswordCheck;
	private String userName;
	private String userTel;
	private String acceptAgreement;
}
