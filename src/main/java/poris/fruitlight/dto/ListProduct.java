package poris.fruitlight.dto;

import lombok.Data;

@Data
public class ListProduct {
	private int pid;
	private String name;
	private byte[] image;
	private int price;
	private int disrate;
	private int discountprice;
}
