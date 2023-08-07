package poris.fruitlight.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.ListProduct;

@Service
@Slf4j
public class ListServiceImpl implements ListService{
	
	/*@Resource
	private ListDao listDao;*/

	@Override
	public List<ListProduct> getList(int pid) {
		log.info("listService 실행");
		List<ListProduct> list = new ArrayList<>();
		for(int i=1; i<=5; i++) {
			ListProduct listProduct = new ListProduct();
			listProduct.setPid(i);
			listProduct.setName("미국산 뭐시기 체리"+i);
			listProduct.setDisrate(15);
			listProduct.setDiscountprice(30000);
			listProduct.setPrice(27000);
			
			list.add(listProduct);
		}
		
		/*List<MainProduct> list = listDao.selectByPage(pager);*/
		return list;
	}
}
