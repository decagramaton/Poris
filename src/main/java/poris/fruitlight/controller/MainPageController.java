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
}