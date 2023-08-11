package poris.fruitlight.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/**
 * 
 * @author 이은지
 *
 */
@Data
public class ProductInquiry {
	//상품문의 관련 DTO
	private int INQUIRY_NO;			//상품문의 no(PK)
	private int BOARD_NO;			//상품게시글 no(FK)
	private String INQUIRY_CONTENT;	//문의내용
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date INQUIRY_DATE;		//문의날짜
	private boolean EMPTANSWER;		//답변여부(default true)
	private String ANSWER_CONTENT;	//답변내용
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date ANSWER_DATE;		//답변날짜
}
