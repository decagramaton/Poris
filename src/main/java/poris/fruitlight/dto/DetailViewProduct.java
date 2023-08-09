package poris.fruitlight.dto;

import lombok.Data;

/**
 * 
 * @author 이은지
 *
 */
@Data
public class DetailViewProduct {
	//상세상품 DTO
	private int pid;			//상품 id(sequence)
	private byte[] img;			//상품 관련 이미지
	private String name;		//상품 이름
	private int price;			//상품 가격
	private int shippingPrice;	//배송비
	private String option;		//상품 옵션
	
	private String sellerName;  //판매자이름
}
