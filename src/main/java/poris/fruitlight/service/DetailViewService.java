package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.DetailViewProduct;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.ProductInquiry;

public interface DetailViewService {
	public DetailViewProduct getProduct(int pid);
	public List<DetailViewProduct> getOptions(String name);
	public int addToCart(List<CartProduct> productList);
	public List<ProductInquiry> getProductInquiryList(Pager pager, String pid);
	public int getTotalProductInquiryNum(String pid);
}