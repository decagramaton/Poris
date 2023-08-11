package poris.fruitlight.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.ProductList;
import poris.fruitlight.service.MainService;

@Slf4j
@Controller
public class MainPageController {

   @Resource
   private MainService mainService;
   
   @RequestMapping("/")
   public String main(HttpSession session) {
	   
	  // Step1. 초기 화면 init 데이터 LOAD FROM DB
      List<ProductList> mainlists = mainService.getMainList();
      List<ProductList> todaylists = mainService.getTodayList();
      for(ProductList today : todaylists) {
    	  today.setBase64Img(Base64.getEncoder().encodeToString(today.getMEDIA_DATA()));
      }
      List<ProductList> sellerlists = mainService.getSellerList();
      List<ProductList> catemainlists = mainService.getCateMainList();
      List<ProductList> catesublists = mainService.getCateSubList();
      
      // Step2. JSP 초기 화면 init 데이터
      session.setAttribute("mainlists", mainlists);
      session.setAttribute("todaylists", todaylists);
      session.setAttribute("sellerlists", sellerlists);
      session.setAttribute("catemainlists", catemainlists);
      session.setAttribute("catesublists", catesublists);
      
      // Step3. 메인 배너 출력 기능
      List<ProductList> mainBannerlist = mainService.getTodayList();
      for(ProductList mainBanner : mainBannerlist) {
    	  mainBanner.setBase64Img(Base64.getEncoder().encodeToString(mainBanner.getMEDIA_DATA()));
      }
      session.setAttribute("productlist", mainBannerlist);
      
      return "main";
   }
      
	@RequestMapping("/main")
	public String moveMainPage() {
		return "redirect:/";
	}
	
	
	@RequestMapping("/main/SelectDetailView")
	public String moveDetailViewPage(int pid, HttpSession session) {
		
		// Step1. PRODUCT_ID를 기준으로 선택한 게시판 번호를 조회한다.
		int boardNo = mainService.getSelectBoardNo(pid);
		// Step2. Session에 게시판 번호를 저장한다.
		session.setAttribute("BoardNo", boardNo);
		// Step3. 페이지는 DetailView로 이동하되, Detail View에서 게시판 번호를 Session 객체로 조회해야한다.
		
		
		return "redirect:/detailView";
	}
	
}