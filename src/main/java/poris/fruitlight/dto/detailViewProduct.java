package poris.fruitlight.dto;

import lombok.Data;

@Data
public class detailViewProduct {
	int pid;
	byte[] img;
	String name;
	int price;
	int shippingPrice;
	String option;
}
