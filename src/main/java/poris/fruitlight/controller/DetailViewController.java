package poris.fruitlight.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.DetailViewProduct;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.ProductInquiry;
import poris.fruitlight.service.DetailViewService;

/**
 * 
 * @author 이은지, 고재승
 *
 */
@Slf4j
@Controller
@RequestMapping("/detailView")
public class DetailViewController {
	@Resource
	private DetailViewService detailViewService;
	
	/**
	 * 
	 * @param model
	 * @return 상세상품(detailView) 페이지
	 */
	@GetMapping("/")
	public String detailView(Model model) {
		
		// Step1. 
		DetailViewProduct product = detailViewService.getProduct(1);
		List<DetailViewProduct> optionList = detailViewService.getOptions(product.getName());
		int totalBoardNum = detailViewService.getTotalProductInquiryNum("1");
		
		model.addAttribute("product", product);
		model.addAttribute("optionList", optionList);
		//상품문의
		Pager productInquiryPager = new Pager(5, 10, totalBoardNum, 1);
		
		List<ProductInquiry> productInquiryList = detailViewService.getProductInquiryList(productInquiryPager, "1");
		
		model.addAttribute("productInquiryPager", productInquiryPager);
		model.addAttribute("productInquiryList", productInquiryList);
		return "detailView";
	}
	
	/**
	 * 
	 * @param request(ajax로 장바구니에 담을 상품의 id리스트와 각 수량리스트)
	 * @return 상세상품(detailView) 페이지
	 */
	//장바구니 담기
	@RequestMapping("/addCartProduct")
	public String addCartProduct(HttpServletRequest request) {
		//로그인 세션이 없으면 로그인 페이지로 이동
		List<CartProduct> list = new ArrayList<CartProduct>();
		
		String[] strPidList = request.getParameterValues("pids");
		String[] strStockList = request.getParameterValues("stocks");
		int i = 0;
		for(i=0; i<strPidList.length; i++) {
			CartProduct product = new CartProduct();
			product.setPid(Integer.parseInt(strPidList[i]));
			product.setStock(Integer.parseInt(strStockList[i]));
			list.add(product);
		}
		
		detailViewService.addToCart(list);
		return "redirect:/detailView";
	}
	
	/**
	 * 
	 * @param request(ajax로 장바구니에 담을 상품의 id리스트와 각 수량리스트)
	 * @return 리다이렉트로 결제(order) 페이지
	 */
	//바로구매
	@RequestMapping("/buyDirect")
	public String buyDirect(HttpServletRequest request) {
		//로그인 세션이 없으면 로그인 페이지로 이동
		//List<CartProduct> list = new ArrayList<CartProduct>();
		
		String[] strPidList = request.getParameterValues("pids");
		String[] strStockList = request.getParameterValues("stocks");
		int i = 0;
		for(i=0; i<strPidList.length; i++) {
			CartProduct product = new CartProduct();
			product.setPid(Integer.parseInt(strPidList[i]));
			product.setStock(Integer.parseInt(strStockList[i]));
			//list.add(product);
		}
		
		//detailViewService.addToCart(list);
		return "redirect:/order";
	}
	
	/**
	 * 
	 * @param pageNo(현재 상품문의 pageNo)
	 * @param model
	 * @param session
	 * @return 결제(order) 페이지
	 */
	//상품문의 페이저
	@GetMapping("/moveInquiryPage")
	public String moveInquiryPage(String pageNo, Model model, HttpSession session) {
		//브라우저에서 pageNo가 넘어오지 않았을 경우
		if(pageNo == null) {
			//세션에 저장되어 있는지 확인
			pageNo = (String) session.getAttribute("pageNo");
			//세선에 저장되어 있지 않다면 "1"로 초기화
			if(pageNo == null) {
				pageNo = "1";
			}
		}
		//문자열을 정수로 변환 후 세션에 pageNo 저장
		int ProductInquiryPageNo = Integer.parseInt(pageNo);
		session.setAttribute("ProductInquiryPageNo", ProductInquiryPageNo);
		
		int totalBoardNum = detailViewService.getTotalProductInquiryNum("1");
		Pager productInquiryPager = new Pager(5, 10, totalBoardNum, ProductInquiryPageNo);
		
		List<ProductInquiry> productInquiryList = detailViewService.getProductInquiryList(productInquiryPager, "1");
		
		model.addAttribute("productInquiryPager", productInquiryPager);
		model.addAttribute("productInquiryList", productInquiryList);
		
		DetailViewProduct product = detailViewService.getProduct(1);
		model.addAttribute("product", product);
		List<DetailViewProduct> optionList = detailViewService.getOptions(product.getName());
		model.addAttribute("optionList", optionList);
		return "detailView";
	}
}
