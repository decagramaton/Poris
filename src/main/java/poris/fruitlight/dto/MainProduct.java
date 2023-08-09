package poris.fruitlight.dto;

import lombok.Data;

@Data
public class MainProduct {
	private int pid;
	private String name;
	private String catetitle;
	private String catecomment;
	private byte[] mainimage;
	private byte[] image;
	private int price;
	private int disrate;
	private int discountprice;
	private int starrate;
	private int reviewstock;
}
