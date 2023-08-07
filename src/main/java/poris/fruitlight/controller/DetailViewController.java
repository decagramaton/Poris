package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.CartProduct;
import poris.fruitlight.dto.Coupon;
import poris.fruitlight.service.CartProductService;
import poris.fruitlight.service.CouponService;

@Slf4j
@Controller
public class DetailViewController {
	
	@RequestMapping("/detailView")
	public String detailView() {
		
		return "detailView";
	}
}
