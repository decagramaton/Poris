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
	private int inquiryId;			//상품문의 id(PK) (질문 - 답변 => 한 질문에 하나의 답변만 있는 걸로 가정한다면, 답변은 자체조인 참조키)
	private int pid;				//상품 id(FK)
	private String inquiryContent;	//문의내용
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date inquiryDate;		//문의날짜
	private boolean emptAnswer;		//답변여부(default true)
	private String answerContent;	//답변내용
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date answerDate;		//답변날짜
}
