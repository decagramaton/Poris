package poris.fruitlight.dto;

import lombok.Data;

@Data
public class CartProduct {
	int pid;
	byte[] img;
	String name;
	String option;
	int price;
	int stock;
	int shippingPrice;
	int shippingFreeRule;
}
