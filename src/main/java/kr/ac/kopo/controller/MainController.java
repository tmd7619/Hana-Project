package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String helloJava() {
		
		return "client/index";
//		return "iframeTest";
	}

	@RequestMapping("/echo-ws")
	public String testView() {

		return "client/reservation/socket";
//		return "iframeTest";
	}

	@RequestMapping("/waitRoom")
	public String testWait(){

		return "pb/services/waitRoom";
	}


	
}
