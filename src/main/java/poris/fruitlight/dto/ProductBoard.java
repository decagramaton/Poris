package poris.fruitlight.dto;

import lombok.Data;

/**
 * 상품 게시글 정보 DTO
 * @author 고재승
 * @since 2023.08.13
 */
@Data
public class ProductBoard {
	private int boardNo;				// 게시글 번호
	private int productNo;				// 상품 번호
	private String productName;			// 상품 이름
	private int productPrice;			// 상품 가격
	private String productOption;		// 상품 옵션
	private int DiscountRate;			// 할인 ( % , 원 )
	private int DiscountPrice;			// 할인 금액
}
