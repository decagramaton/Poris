package poris.fruitlight.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.OrderHistoryOrderList;
import poris.fruitlight.dto.OrderSearchParam;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Shopper;
import poris.fruitlight.service.AddressBookService;
import poris.fruitlight.service.MyPageChangeInfoService;
import poris.fruitlight.service.MyPageOrderedService;
import poris.fruitlight.util.AlertScript;

@Slf4j
@Controller
public class MyPageSideController {
	
	@Resource
	public MyPageChangeInfoService myPageChangeInfoService;
	
	@Resource
	public MyPageOrderedService myPageOrderedService;
	
	@Autowired
	private AddressBookService addrBookService;
	
	@RequestMapping("/mypageChangeInfo")
	public String mypageChangeInfo(Model model, int shopperNo, HttpSession session, HttpServletResponse response) {
		Shopper shopper = (Shopper) session.getAttribute("ShopperInfo");
		if(shopper == null) {
			try {
				AlertScript.alertAndMovePage(response, "로그인을 해주세요", "/fruitlight/login");
			} catch (IOException e) {
				return "redirect:/main";
			}
		} else {
			Shopper shopperinfo = myPageChangeInfoService.getShopper(shopperNo);
			model.addAttribute("mypageChangeInfo", shopperinfo);
			
		}
		return "mypageChangeInfo";
	}
	
	
	@RequestMapping("/mypageOrdered")
	public String myPageOrdered(
			@RequestParam(name = "searcho", required = false) String searchKeyword,
			@RequestParam(name = "pageNo", defaultValue = "1") int pageNo,
			HttpServletResponse response,
			HttpSession session,
			Model model) {
		
		List<OrderHistoryOrderList> mypageOrdered;
	    OrderSearchParam orderSearch = new OrderSearchParam();
	    Shopper shopper = (Shopper) session.getAttribute("ShopperInfo");
	    if(shopper == null) {
	    	try {
				AlertScript.alertAndMovePage(response, "로그인을 해주세요", "/fruitlight/login");
			} catch (IOException e) {
				return "redirect:/main";
			}
	    } else {
	    	if (searchKeyword != null) {
	    		orderSearch.setShopperNo(shopper.getShopperNo());
	    		orderSearch.setSearchKeyword(searchKeyword);
	    		
	    		
	    		mypageOrdered = myPageOrderedService.searchOrderList(orderSearch);
	    		for (OrderHistoryOrderList mpo : mypageOrdered) {
	    			mpo.setBase64Img(Base64.getEncoder().encodeToString(mpo.getMEDIA_DATA()));
	    		}
	    	} else {
	    		int totalOrderHistory = myPageOrderedService.SelectTotalOrderHistory(shopper.getShopperNo());
	    		Pager OrderHistoryPager = new Pager(5, 5, totalOrderHistory, pageNo);
	    		
	    		
	    		mypageOrdered = myPageOrderedService.getList(OrderHistoryPager, shopper.getShopperNo());
	    		for (OrderHistoryOrderList mpo : mypageOrdered) {
	    			mpo.setBase64Img(Base64.getEncoder().encodeToString(mpo.getMEDIA_DATA()));
	    		}
	    		model.addAttribute("OrderHistoryPager", OrderHistoryPager);
	    	}
	    	
	    	model.addAttribute("mypageOrdered", mypageOrdered);
	    	model.addAttribute("searchKeyword", searchKeyword);
	    }


	    return "mypageOrdered";
	}
}
