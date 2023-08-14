package poris.fruitlight.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
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
	 * @author 고재승, 이은지
	 * @param model
	 * @return 상세상품(detailView) 페이지
	 */
	@RequestMapping("/detailView")
	public String detailView(Model model, HttpSession session) {
		// Step1. Session에 있는 게시판 번호 get - ok
		int bno = Integer.parseInt(session.getAttribute("BoardNo").toString());
		
		// Step2. 게시판 번호에 해당하는 데이터 load
		ProductBoard productBoard = detailViewService.getProduct(bno);
		productBoard.setBase64Img(Base64.getEncoder().encodeToString(productBoard.getMediaData()));
		//List<ProductBoard> productImageList = detailViewService.getImages(bno);
		
		// Step3. 상품 이름을 기준으로 옵션 데이터 load
		List<Product> productOptionList = detailViewService.getOptions(productBoard.getProductName());
		
		
		// Step4. 상품 정보와 옵션 정보를 JSP에 Model으로 전달
		model.addAttribute("productBoard", productBoard);
		//model.addAttribute("productImageList", productImageList);
		model.addAttribute("productOptionList", productOptionList);
		
		
		// Step5. 상품 게시판에 존재하는 상품문의 게시판 개수 load
		int totalBoardNum = detailViewService.getTotalProductInquiryNum(bno);
		
		
		// Step6-1. Pager 객체 생성 (게시글 행 수, 페이지 개수, 총 페이지 개수, 페이지 시작 번호)
		// Step6-2. Pager 기반 상품 문의 게시판 생성
		Pager productInquiryPager = new Pager(5, 10, totalBoardNum, 1);
		List<ProductInquiry> productInquiryList = detailViewService.getProductInquiryList(productInquiryPager, bno);
		
		model.addAttribute("productInquiryPager", productInquiryPager);
		model.addAttribute("productInquiryList", productInquiryList);
		
		return "detailView";
	}
	
	/**
	 * 
	 * @param request(ajax로 장바구니에 담을 상품의 no리스트와 각 수량리스트)
	 * @return 상세상품(detailView) 페이지
	 */
	//장바구니 담기
	@RequestMapping("/detailView/addCartProduct")
	public void addCartProduct(HttpServletRequest request) {
		//로그인 세션이 없으면 로그인 페이지로 이동
		List<Cart> list = new ArrayList<>();
		
		String[] strPnoList = request.getParameterValues("pnos");
		String[] strStockList = request.getParameterValues("stocks");
		
		for(int i=0; i<strPnoList.length; i++) {
			Cart cartProduct = new Cart();
			cartProduct.setSHOPPER_NO(1);
			cartProduct.setPRODUCT_NO(Integer.parseInt(strPnoList[i]));
			cartProduct.setCART_PRODUCT_STOCK(Integer.parseInt(strStockList[i]));
			
			list.add(cartProduct);
		}
		
		/*int i = 0;
		for(i=0; i<pids.size(); i++) {
			Cart cartProduct = new Cart();
			cartProduct.setSHOPPER_NO(1);
			cartProduct.setPRODUCT_NO(pids.get(i));
			cartProduct.setCART_PRODUCT_STOCK(stocks.get(i));
			
			list.add(cartProduct);
		}*/
		
		detailViewService.addToCart(list);
	}
	
	/**
	 * 
	 * @param request(ajax로 장바구니에 담을 상품의 id리스트와 각 수량리스트)
	 * @return 리다이렉트로 결제(order) 페이지
	 */
	//바로구매
	@RequestMapping("/detailView/buyDirect")
	public String buyDirect(
			HttpSession session,
			@RequestParam List<Integer> pnos, 
			@RequestParam List<String> pnames,
			@RequestParam List<Integer> stocks,
			@RequestParam List<Integer> prices,
			@RequestParam int totalPrice,
			@RequestParam int shippingPrice,
			@RequestParam int orderPrice) {
		
		session.setAttribute("pnoList", pnos);
		session.setAttribute("pnameList", pnames);
		session.setAttribute("stockList", stocks);
		session.setAttribute("priceList", prices);
		session.setAttribute("totalPrice", totalPrice);
		session.setAttribute("discountPrice", 0);
		session.setAttribute("shippingPrice", shippingPrice);
		session.setAttribute("orderPrice", orderPrice);
		
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
		
		/*int totalBoardNum = detailViewService.getTotalProductInquiryNum(bno);
		Pager productInquiryPager = new Pager(5, 10, totalBoardNum, ProductInquiryPageNo);
		
		List<ProductInquiry> productInquiryList = detailViewService.getProductInquiryList(productInquiryPager, bno);
		
		model.addAttribute("productInquiryPager", productInquiryPager);
		model.addAttribute("productInquiryList", productInquiryList);
		
		Product product = detailViewService.getProduct(1);
		model.addAttribute("product", product);*/
		//List<Product> optionList = detailViewService.getOptions(product.getName());
		//model.addAttribute("optionList", optionList);
		return "detailView";
	}
}
