package poris.fruitlight.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Member {
	private int userId;
	private String userMembershipGrade;
	private String email;
	private String password;
	private String tel;
	private String name;
	private byte[] photo;
	private Date createAccountDate;
	private Date changePasswordDate;
	private Date lastLoginDate;
	private boolean isDormant;
}
