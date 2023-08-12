package poris.fruitlight.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.ProductDao;
import poris.fruitlight.dto.ProductList;

@Service
@Slf4j
public class ListServiceImpl implements ListService{
	
	@Resource
	private ProductDao productDao;


	@Override
	public List<ProductList> SearchProductsByPname(String pname) {
		 return productDao.SearchProductsByPname(pname);
	}


	@Override
	public List<ProductList> SearchProducts() {
		return productDao.SearchProducts();
	}
}
