package poris.fruitlight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.MainProduct;
import poris.fruitlight.service.MainService;

@Slf4j
@Controller
public class MainPageController {

	@Resource
	private MainService mainService;
	
	@RequestMapping("/")
	public String main(Model model) {
		List<MainProduct> mainlists = mainService.getMainList(1);
		List<MainProduct> todaylists = mainService.getTodayList(1);
		List<MainProduct> sellerlists = mainService.getSellerList(1);
		model.addAttribute("mainlists", mainlists);
		model.addAttribute("todaylists", todaylists);
		model.addAttribute("sellerlists", sellerlists);
		
		return "main";
	}
	
	@RequestMapping("main")
	public String mainPage(Model model) {
		List<MainProduct> mainlists = mainService.getMainList(1);
		List<MainProduct> todaylists = mainService.getTodayList(1);
		List<MainProduct> sellerlists = mainService.getSellerList(1);
		model.addAttribute("mainlists", mainlists);
		model.addAttribute("todaylists", todaylists);
		model.addAttribute("sellerlists", sellerlists);
		
		return "main";
	}
}
