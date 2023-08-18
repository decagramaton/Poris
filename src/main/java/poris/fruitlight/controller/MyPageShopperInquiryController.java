package poris.fruitlight.controller;

import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.ProductList;
import poris.fruitlight.service.MainService;

@Slf4j
@Controller
public class MyPageShopperInquiryController {

   @Resource
   private MainService mainService;
   
   @RequestMapping("/mypageShopperInquiry")
   public String myPageShopperInquiry(int shopperNo, HttpSession session) {
	   return "mypageShopperInqury";
	}
}