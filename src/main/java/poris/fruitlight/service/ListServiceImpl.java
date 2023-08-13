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

	/**
	 * 이름으로 검색된 내용만 나오게 함
	 */
	@Override
	public List<ProductList> SearchProductsByPname(String pname) {
		 return productDao.SearchProductsByPname(pname);
	}

	/**
	 * 전체 상품을 보여주는 메소드
	 */
	@Override
	public List<ProductList> SearchProducts() {
		return productDao.SearchProducts();
	}

	@Override
	public int getSelectBoardNo(int pid) {
		int dbResult = productDao.SelectDetailView(pid);
		
		return dbResult;
	}
}
