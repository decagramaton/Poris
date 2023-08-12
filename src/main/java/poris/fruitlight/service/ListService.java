package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.ProductList;

public interface ListService {
	 List<ProductList> SearchProductsByPname(String pname);
	 List<ProductList> SearchProducts();
}
