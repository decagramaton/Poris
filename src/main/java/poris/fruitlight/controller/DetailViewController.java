package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.detailViewProduct;
import poris.fruitlight.service.DetailViewService;

@Slf4j
@Controller
@RequestMapping("/detailView")
public class DetailViewController {
	@Resource
	private DetailViewService detailViewService;
	
	@GetMapping("/")
	public String detailView(Model model) {
		detailViewProduct product = detailViewService.getProduct(1);
		model.addAttribute("product", product);
		List<detailViewProduct> optionList = detailViewService.getOptions(product.getName());
		log.info("" + optionList);
		model.addAttribute("optionList", optionList);
		return "detailView";
	}
	
	//장바구니 담기
	@RequestMapping("/addCartProduct")
	public String addCartProduct(HttpServletRequest request) {
		String[] strPidList = request.getParameterValues("pids");
		for(String strPid : strPidList) {
			String[] strStockList = request.getParameterValues("stocks");
			for(String strStock : strStockList) {
			}
		}
		
		return "redirect:/detailView";
	}
	
	//바로구매
	@RequestMapping("/buyDirect")
	public String buyDirect(HttpServletRequest request) {
		String[] strPidList = request.getParameterValues("pids");
		for(String strPid : strPidList) {
			String[] strStockList = request.getParameterValues("stocks");
			for(String strStock : strStockList) {
			}
		}
		return "redirect:/order";
	}
}
