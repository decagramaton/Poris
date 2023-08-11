package poris.fruitlight.dto;

import lombok.Data;

/**
 * DB 회원 테이블 DTO
 * @author 고재승
 */
@Data
public class Shopper {
	private int ShopperNo;				// 회원 번호
	private String ShopperId;			// 회원 ID(이메일 형식)
	private String ShopperPw;			// 회원 비밀번호
	private String ShopperName;			// 회원 실명
	private String shopperTel;			// 회원 연락처
}
