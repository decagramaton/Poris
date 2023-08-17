package poris.fruitlight.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.BoardMedia;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.FoodRequiredInfo;
import poris.fruitlight.dto.OrderParam;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
import poris.fruitlight.dto.ProductInquiry;
import poris.fruitlight.dto.Review;
import poris.fruitlight.dto.ReviewInfo;
import poris.fruitlight.dto.Shopper;
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
		
		//  -------------   [ 상품 정보  ]  --------------------
		
		// Step2. 게시판 번호에 해당하는 데이터 load
		ProductBoard productBoard = detailViewService.getProduct(bno);
		productBoard.setBase64Img(Base64.getEncoder().encodeToString(productBoard.getMediaData()));
		List<ProductBoard> productImageList = detailViewService.getImages(bno);
		
		for(ProductBoard product : productImageList) {
			product.setBase64Img(Base64.getEncoder().encodeToString(product.getMediaData()));
		}
		
		// Step3. 상품 이름을 기준으로 옵션 데이터 load
		List<Product> productOptionList = detailViewService.getOptions(productBoard.getProductName());
		
		
		// Step4. 상품 정보와 옵션 정보를 JSP에 Model으로 전달
		model.addAttribute("productBoard", productBoard);
		model.addAttribute("productImageList", productImageList);
		model.addAttribute("productOptionList", productOptionList);
		
		//  -------------   [ 필수 표기 정보  ]  --------------------
		
		FoodRequiredInfo foodRequiredInfo = detailViewService.getFoodRequiredInfoByBoardNo(bno);
		model.addAttribute("foodRequiredInfo", foodRequiredInfo);
		
		//  -------------   [ 상품 상세 정보  ]  --------------------
		
		List<BoardMedia> productContentList = detailViewService.getProductContentList(bno);
		for(BoardMedia productContent : productContentList) {
			productContent.setBase64Img(Base64.getEncoder().encodeToString(productContent.getMediaData()));
	    }
		model.addAttribute("productContentList", productContentList);
		
		
		//  -------------   [ 리뷰 페이저  ]  --------------------
		
		// Step1. 게시판 번호에 해당하는 리뷰의 총 개수 load
		int totalReviewStock = detailViewService.getTotalReviewStock(bno);
		
		// Step2. Pager객체 생성 및 리뷰 게시판 생성
		Pager ReviewPager = new Pager(4, 3, totalReviewStock, 1);
		List<Review> ReviewList = detailViewService.getReviewList(ReviewPager, bno);
		
		log.info("ReviewList : " + ReviewList);
		
		// 리뷰 평균 점수 및 리뷰 개수 구하기
		ReviewInfo reviewInfo = new ReviewInfo();
		
		if(ReviewList.size() != 0) {
			int totalSumStarRate = 0;
			
			for(Review review : ReviewList) {
				totalSumStarRate += review.getStarRate();
			}
			
			reviewInfo.setStarRateAvg(totalSumStarRate/ReviewList.size());
			reviewInfo.setTotalReviewStock(ReviewList.size());
		}
		
		// Step3. Model객체로 JSP 전달
		model.addAttribute("ReviewPager", ReviewPager);
		model.addAttribute("ReviewList", ReviewList);
		model.addAttribute("ReviewInfo", reviewInfo);
		
		
		
		//  -------------   [ 상품 문의 페이저  ]  --------------------
		
		// Step5. 상품 게시판에 존재하는 상품문의 게시판 개수 load
		int totalProductInquiryNum = detailViewService.getTotalProductInquiryNum(bno);
		
		
		// Step6-1. Pager 객체 생성 (게시글 행 수, 페이지 개수, 총 페이지 개수, 페이지 시작 번호)
		// Step6-2. Pager 기반 상품 문의 게시판 생성
		Pager productInquiryPager = new Pager(5, 5, totalProductInquiryNum, 1);
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
	public void addCartProduct(HttpServletRequest request, HttpSession session) {
		Shopper loginShopper = (Shopper) session.getAttribute("ShopperInfo");
		if(loginShopper != null) {
			List<Cart> list = new ArrayList<>();
			
			String[] strPnoList = request.getParameterValues("pnos");
			String[] strStockList = request.getParameterValues("stocks");
			
			for(int i=0; i<strPnoList.length; i++) {
				Cart cartProduct = new Cart();
				cartProduct.setSHOPPER_NO(loginShopper.getShopperNo());
				cartProduct.setPRODUCT_NO(Integer.parseInt(strPnoList[i]));
				cartProduct.setCART_PRODUCT_STOCK(Integer.parseInt(strStockList[i]));
				
				list.add(cartProduct);
			}

			detailViewService.addToCart(list);
		}
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
			@RequestParam List<String> options,
			@RequestParam List<Integer> stocks,
			@RequestParam List<Integer> prices,
			@RequestParam int totalPrice,
			@RequestParam int shippingPrice,
			@RequestParam int orderPrice) {
		
		List<OrderParam> orderParamList = new ArrayList<>();
		
		for(int i=0; i<pnos.size(); i++) {
			OrderParam oderParam = new OrderParam();
			oderParam.setProductNo(pnos.get(i));
			oderParam.setProductName(pnames.get(i));
			oderParam.setProductOption(options.get(i));
			oderParam.setProductStock(stocks.get(i));
			oderParam.setProductPrice(prices.get(i));
			
			orderParamList.add(oderParam);
		}
		
		session.setAttribute("orderParamList", orderParamList);
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
	@ResponseBody
	public HashMap<String, Object> moveInquiryPage(String pageNo, HttpSession session) {
		int bno = Integer.parseInt(session.getAttribute("BoardNo").toString());
		int totalProductInquiryNum = detailViewService.getTotalProductInquiryNum(bno);
		
		Pager productInquiryPager = new Pager(5, 5, totalProductInquiryNum, Integer.parseInt(pageNo));
		List<ProductInquiry> productInquiryList = detailViewService.getProductInquiryList(productInquiryPager, bno);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("productInquiryPager", productInquiryPager);
		map.put("productInquiryList", productInquiryList);
		
		return map;
	}
}
