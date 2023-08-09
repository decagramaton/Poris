package poris.fruitlight.dto;

import lombok.Data;

@Data
public class DetailViewProduct {
	private int pid;
	private byte[] img;
	private String name;
	private int price;
	private int shippingPrice;
	private String option;
	
	private String sellerName;  //판매자이름
}
