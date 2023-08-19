package poris.fruitlight.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.ProductInquiry;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.service.MyPageShopperInquiryService;

@Slf4j
@Controller
public class MyPageShopperInquiryController {

   @Resource
   private MyPageShopperInquiryService pageShopperInquiryService;
   
   @RequestMapping("/mypageShopperInquiry")
   public String myPageShopperInquiry(int shopperNo, Model model, HttpSession session) {
	   Shopper loginShopper = (Shopper) session.getAttribute("ShopperInfo");
	   //  -------------   [ 상품 문의 페이저  ]  --------------------
	   // Step1-1. 상품 게시판에 존재하는 회원별 상품문의 게시판 개수 load
	   int totalProductInquiryNum = pageShopperInquiryService.getTotalShopperInquiryNum(loginShopper.getShopperNo());
		
	   // Step2-2. Pager 객체 생성 (게시글 행 수, 페이지 개수, 총 페이지 개수, 페이지 시작 번호)
	   Pager productInquiryPager = new Pager(3, 5, totalProductInquiryNum, 1);
		
	   // Step1-3. Pager 기반 상품 문의 게시판 생성
	   List<ProductInquiry> productInquiryList = pageShopperInquiryService.getShopperInquiryList(productInquiryPager, loginShopper.getShopperNo());
		
	   // Step1-4. Model객체로 JSP 전달
	   //model.addAttribute("productInquiryPager", productInquiryPager);
	   //model.addAttribute("productInquiryList", productInquiryList);
	   
	   //상품이 없을 때 테스트
	   Pager testPager = new Pager(3, 5, 0, 1);
	   List<ProductInquiry> testList = new ArrayList<ProductInquiry>();
	   model.addAttribute("productInquiryPager", testPager);
	   model.addAttribute("productInquiryList", testList);
	   return "mypageShopperInquiry";
	}
   
   @RequestMapping("/mypageShopperInquiry/goToDetailView")
   public String goToDetailView(int bno, HttpSession session) {
		session.setAttribute("BoardNo", bno);
		return "redirect:/detailView";
	}
   
   @RequestMapping("/mypageShopperInquiry/deleteInquiry")
   public String deleteInquiry(int ino) {
	   log.info("" + ino);
	   pageShopperInquiryService.deleteShopperInquiry(ino);
	   return "redirect:/mypageShopperInquiry?shopperNo=" + 1;
   }
   
   @RequestMapping("/mypageShopperInquiry/getShopperInquiry")
   public String getShopperInquiry(int pageNo, Model model, HttpSession session) {
	   Shopper loginShopper = (Shopper) session.getAttribute("ShopperInfo");
	   //  -------------   [ 상품 문의 페이저  ]  --------------------
	   // Step1-1. 상품 게시판에 존재하는 회원별 상품문의 게시판 개수 load
	   int totalProductInquiryNum = pageShopperInquiryService.getTotalShopperInquiryNum(loginShopper.getShopperNo());
		
	   // Step2-2. Pager 객체 생성 (게시글 행 수, 페이지 개수, 총 페이지 개수, 페이지 시작 번호)
	   Pager productInquiryPager = new Pager(3, 5, totalProductInquiryNum, pageNo);
		
	   // Step1-3. Pager 기반 상품 문의 게시판 생성
	   List<ProductInquiry> productInquiryList = pageShopperInquiryService.getShopperInquiryList(productInquiryPager, loginShopper.getShopperNo());
		
	   // Step1-4. Model객체로 JSP 전달
	   model.addAttribute("productInquiryPager", productInquiryPager);
	   model.addAttribute("productInquiryList", productInquiryList);
	   return "mypageShopperInquiry";
   }
}