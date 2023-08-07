package poris.fruitlight.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dto.JoinParam;
import poris.fruitlight.service.JoinService;
import poris.fruitlight.util.AlertScript;

@Slf4j
@Controller
@RequestMapping("/order")
public class orderController {
	
	@RequestMapping("/")
	public String DetailViewPage() {
		return "order";
	}
	
	
	
}
