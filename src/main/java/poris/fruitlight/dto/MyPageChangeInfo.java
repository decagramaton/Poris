package poris.fruitlight.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MyPageChangeInfo {
	private String userId;
	private String userPassword;
	private String userPasswordCheck;
	private String userName;
	private String userTel;
	private String userAddress;
}
