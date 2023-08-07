package poris.fruitlight.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MyPageOrdered {
	
	int pid;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date ordereddate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date deliverydate;
	byte[] image;
	String name;
	int price;
	int stock;
	String deliverystate;
}
