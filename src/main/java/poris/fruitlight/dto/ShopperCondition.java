package poris.fruitlight.dto;

import lombok.Data;

/**
 * DB - DAO간 검색 조건에 일치하는 회원 정보를 교환하는 DTO
 * @author 고재승
 *
 */
@Data
public class ShopperCondition {
	private String shopperId;		// 회원 ID(이메일 혈식)
	private String shopperPw;		// 회원 비밀번호
	private String shopperName;		// 회원 실명
	private String shopperTel;		// 회원 연락처
}
