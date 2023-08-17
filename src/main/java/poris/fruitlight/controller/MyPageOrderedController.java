package poris.fruitlight.controller;

import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.MyPageOrdered;
import poris.fruitlight.dto.OrderHistoryOrderList;
import poris.fruitlight.dto.OrderSearchParam;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.service.MyPageOrderedService;

@Slf4j
@Controller
public class MyPageOrderedController {
	
	@Resource
	public MyPageOrderedService myPageOrderedService;
	
	@RequestMapping("/mypageOrdered")
	public String myPageOrdered(
			@RequestParam(name = "searcho", required = false) String searchKeyword,
			HttpSession session,
			Model model) {
		
		List<OrderHistoryOrderList> mypageOrdered;
		OrderSearchParam orderSearch = new OrderSearchParam();
		Shopper shopper = (Shopper) session.getAttribute("ShopperInfo");
		
	    if (searchKeyword != null) {
	    	
	    	
	    	orderSearch.setShopperNo(shopper.getShopperNo());
	    	orderSearch.setSearchKeyword(searchKeyword);
	    	
	    	mypageOrdered = myPageOrderedService.searchOrderList(orderSearch);
	    	for(OrderHistoryOrderList mpo : mypageOrdered) {
	    		mpo.setBase64Img(Base64.getEncoder().encodeToString(mpo.getMEDIA_DATA()));
	    	} 
	    }
	    
	    else {
	    	
	    	mypageOrdered = myPageOrderedService.getList(shopper.getShopperNo());
	    	for(OrderHistoryOrderList mpo : mypageOrdered) {
	    		mpo.setBase64Img(Base64.getEncoder().encodeToString(mpo.getMEDIA_DATA()));
	    	} 
	    }
	    
		model.addAttribute("mypageOrdered", mypageOrdered);
		model.addAttribute("searchKeyword", searchKeyword);
		
		return "mypageOrdered";
	}
}
