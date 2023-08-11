package poris.fruitlight.controller;

import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;

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
   public String main(Model model) {
      List<ProductList> mainlists = mainService.getMainList();
      List<ProductList> todaylists = mainService.getTodayList();
      List<ProductList> sellerlists = mainService.getSellerList();
      List<ProductList> catemainlists = mainService.getCateMainList();
      List<ProductList> catesublists = mainService.getCateSubList();
      model.addAttribute("mainlists", mainlists);
      model.addAttribute("todaylists", todaylists);
      model.addAttribute("sellerlists", sellerlists);
      model.addAttribute("catemainlists", catemainlists);
      model.addAttribute("catesublists", catesublists);
      
      ProductList productlist = mainService.SelectByPno(4);
      model.addAttribute("productlist", productlist);
      if(productlist.getMEDIA_DATA() != null) {
			String base64Img = Base64.getEncoder().encodeToString(productlist.getMEDIA_DATA());
			model.addAttribute("base64Img", base64Img);
		}
      return "main";
   }
   
   @RequestMapping("main")
   public String mainPage(Model model, int PRODUCT_NO) {
      List<ProductList> mainlists = mainService.getMainList();
      List<ProductList> todaylists = mainService.getTodayList();
      List<ProductList> sellerlists = mainService.getSellerList();
      List<ProductList> catemainlists = mainService.getCateMainList();
      List<ProductList> catesublists = mainService.getCateSubList();
      model.addAttribute("mainlists", mainlists);
      model.addAttribute("todaylists", todaylists);
      model.addAttribute("sellerlists", sellerlists);
      model.addAttribute("catemainlists", catemainlists);
      model.addAttribute("catesublists", catesublists);
      
      
      ProductList productlist = mainService.SelectByPno(PRODUCT_NO);
      model.addAttribute("productlist", productlist);
      if(productlist.getMEDIA_DATA() != null) {
			String base64Img = Base64.getEncoder().encodeToString(productlist.getMEDIA_DATA());
			model.addAttribute("base64Img", base64Img);
		}
      return "main";
   }
}