package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.ListProduct;
import poris.fruitlight.dto.ProductList;
import poris.fruitlight.service.ListService;
import poris.fruitlight.service.MainService;

@Slf4j
@Controller
public class ListController {
	
	@Resource
	private ListService listService;
	
	@Resource
	private MainService MainService;
	
	@RequestMapping("/list")
	public String list(@RequestParam(name = "search", required = false) String searchKeyword ,Model model) {
		List<ProductList> productLists;
		
		if (searchKeyword != null) {
            productLists = listService.SearchProductsByPname(searchKeyword);
        } else {
            productLists = listService.SearchProducts(); // 이전에 구현한 모든 제품 목록을 가져오는 메소드
        }
		
		model.addAttribute("productLists", productLists);
		return "list";
	}
}
