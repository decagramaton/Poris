package poris.fruitlight.controller;

import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping("/list")
	public String list(@RequestParam(name = "search", required = false) String searchKeyword ,Model model) {
		List<ProductList> productLists;
		
		if (searchKeyword != null) {
            productLists = listService.SearchProductsByPname(searchKeyword);
            for(ProductList listProduct : productLists) {
            	listProduct.setBase64Img(Base64.getEncoder().encodeToString(listProduct.getMEDIA_DATA()));
  	      }
        } else {
            productLists = listService.SearchProducts(); // 모든 제품 목록을 가져오는 메소드
            for(ProductList listProduct : productLists) {
            	listProduct.setBase64Img(Base64.getEncoder().encodeToString(listProduct.getMEDIA_DATA()));
            }
        }
		
		model.addAttribute("productLists", productLists);
		return "list";
	}
	
	@RequestMapping("/list/SelectDetailView")
	public String moveDetailViewPage(int pid, HttpSession session) {
		
		// Step1. PRODUCT_ID를 기준으로 선택한 게시판 번호를 조회한다.
		int boardNo = listService.getSelectBoardNo(pid);
		// Step2. Session에 게시판 번호를 저장한다.
		session.setAttribute("BoardNo", boardNo);
		// Step3. 페이지는 DetailView로 이동하되, Detail View에서 게시판 번호를 Session 객체로 조회해야한다.
		
		
		return "redirect:/detailView";
	}
}
