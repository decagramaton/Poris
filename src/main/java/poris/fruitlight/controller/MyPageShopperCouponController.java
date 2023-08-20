package poris.fruitlight.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.service.MyPageShopperInquiryService;
import poris.fruitlight.util.AlertScript;

/**
 * 
 * @author 이은지
 *
 */
@Slf4j
@Controller
public class MyPageShopperCouponController {
	@Resource
	private MyPageShopperInquiryService pageShopperInquiryService;
	
	@RequestMapping("/mypageShopperCoupon")
	public String mypageShopperCoupon(HttpServletResponse response, HttpSession session, Model model) {
		Shopper loginShopper = (Shopper) session.getAttribute("ShopperInfo");
		if(loginShopper == null) {
			try {
				AlertScript.alertAndMovePage(response, "로그인을 해주세요", "/fruitlight/login");
			} catch (IOException e) {
				return "redirect:/main";
			}
		} else {
			List<Coupon> listCoupon = pageShopperInquiryService.getCoupon(loginShopper.getShopperNo());
			model.addAttribute("listCoupon", listCoupon);
		}
		return "mypageShopperCoupon";
	}
	
}
