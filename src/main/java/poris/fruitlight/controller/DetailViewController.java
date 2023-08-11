package poris.fruitlight.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Product;
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
public class DetailViewController {
	@Resource
	private DetailViewService detailViewService;
	
	/**
	 * 
	 * @param model
	 * @return 상세상품(detailView) 페이지
	 */
	@GetMapping("/detailView")
	public String detailView(Model model, HttpSession session) {
		
		// Step1. Session에 있는 게시판 번호 get
		int pno = (int) session.getAttribute("BoardNo");
		
		
		Product product = detailViewService.getProduct(pno);
		List<Product> optionList = detailViewService.getOptions(product.getPRODUCT_NAME());
		int totalBoardNum = detailViewService.getTotalProductInquiryNum("1");
		
		model.addAttribute("product", product);
		model.addAttribute("optionList", optionList);
		//상품문의
		Pager productInquiryPager = new Pager(5, 10, totalBoardNum, 1);
		
		List<ProductInquiry> productInquiryList = detailViewService.getProductInquiryList(productInquiryPager, "1");
		
		model.addAttribute("productInquiryPager", productInquiryPager);
		model.addAttribute("productInquiryList", productInquiryList);
		
		// Final. 게시판 번호 Session 제거
		session.removeAttribute("BoardNo");
		
		return "detailView";
	}
	
	/**
	 * 
	 * @param request(ajax로 장바구니에 담을 상품의 no리스트와 각 수량리스트)
	 * @return 상세상품(detailView) 페이지
	 */
	//장바구니 담기
	@RequestMapping("/detailView/addCartProduct")
	@ResponseBody
	public String addCartProduct(HttpServletRequest request) {
		//로그인 세션이 없으면 로그인 페이지로 이동
		List<Cart> list = new ArrayList<>();
		
		String[] strPidList = request.getParameterValues("pids");
		String[] strStockList = request.getParameterValues("stocks");
		
		/*String[] strPidList = {"1", "2"};
		String[] strStockList = {"1", "1"};*/
		
		int i = 0;
		for(i=0; i<strPidList.length; i++) {
			Cart cartProduct = new Cart();
			cartProduct.setSHOPPER_NO(1);
			cartProduct.setPRODUCT_NO(Integer.parseInt(strPidList[i]));
			cartProduct.setCART_PRODUCT_STOCK(Integer.parseInt(strStockList[i]));
			
			list.add(cartProduct);
		}
		
		for(Cart cartProduct : list) {
			log.info("SHOPPER_NO: " + cartProduct.getSHOPPER_NO());
			log.info("PRODUCT_NO: " + cartProduct.getPRODUCT_NO());
			log.info("CART_PRODUCT_STOCK: " + cartProduct.getCART_PRODUCT_STOCK());
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
	@RequestMapping("/detailView/buyDirect")
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
	@GetMapping("/detailView/moveInquiryPage")
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
		
		Product product = detailViewService.getProduct(1);
		model.addAttribute("product", product);
		//List<Product> optionList = detailViewService.getOptions(product.getName());
		//model.addAttribute("optionList", optionList);
		return "detailView";
	}
}
