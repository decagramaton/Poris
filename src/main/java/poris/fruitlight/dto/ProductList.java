package poris.fruitlight.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

/**
 * 
 * @author 김진성, 고재승
 *
 */
@Data
public class ProductList {
   //상품 DTO
   private int PRODUCT_NO;         //상품 no(sequence)
   private String PRODUCT_NAME;   //상품 이름
   private int PRODUCT_PRICE;      //상품 가격
   private int PRODUCT_STOCK;      //상품 재고
   private String PRODUCT_OPTION;   //상품 옵션
   private int DISCOUNT_RATE;      //할인율
   private int DISCOUNT_PRICE;      //할인 가격
   private String MEDIA_NAME;		//상품 사진 파일 이름
   private byte[] MEDIA_DATA;		//상품 사진
}