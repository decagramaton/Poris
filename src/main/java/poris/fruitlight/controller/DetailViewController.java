package poris.fruitlight.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/detailView")
public class DetailViewController {
	
	@GetMapping("/")
	public String detailView(String pid, HttpServletRequest request) {
		request.setAttribute("pid", pid);
		return "detailView";
	}
	
	//장바구니 담기
	@RequestMapping("/addCartProduct")
	public String addCartProduct(String stock) {
		log.info(stock);
		return "redirect:/detailView";
	}

	//바로구매
	@RequestMapping("/buyDirect")
	public String buyDirect(HttpServletRequest request) {
		request.getAttribute("stock");
		return "redirect:/order";
	}
}
