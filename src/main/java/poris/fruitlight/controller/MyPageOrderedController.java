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
import poris.fruitlight.service.MyPageOrderedService;

@Slf4j
@Controller
public class MyPageOrderedController {
	
	@Resource
	public MyPageOrderedService myPageOrderedService;
	
	@RequestMapping("/mypageOrdered")
	public String myPageOrdered(@RequestParam int sid, HttpSession session, Model model) {
		
		List<OrderHistoryOrderList> mypageOrdered = myPageOrderedService.getList(sid);
	     for(OrderHistoryOrderList mpo : mypageOrdered) {
	    	  mpo.setBase64Img(Base64.getEncoder().encodeToString(mpo.getMEDIA_DATA()));
	      }
		model.addAttribute("mypageOrdered", mypageOrdered);
		
		log.info("mypageOrdered" + mypageOrdered.toString());
		
		return "mypageOrdered";
	}
}
