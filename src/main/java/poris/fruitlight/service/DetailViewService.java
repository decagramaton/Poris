package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.detailViewProduct;

public interface DetailViewService {
	public detailViewProduct getProduct(int pid);
	public List<detailViewProduct> getOptions(String name);
	public int addToCart(List<CartProduct> productList);
}