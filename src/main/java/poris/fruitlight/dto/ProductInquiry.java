package poris.fruitlight.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ProductInquiry {
	private int pid;
	private int inquiryId;  //primary key (질문 - 답변 => 한 질문에 하나의 답변만 있는 걸로 가정한다면, 답변은 자체조인 참조키)
	private String inquiryContent;
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date inquiryDate;
	private boolean emptAnswer;
	private String answerContent;
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date answerDate;
}
