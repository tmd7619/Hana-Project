package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	@RequestMapping("/")
	public String helloJava() {
		
		return "clientIndex";
//		return "iframeTest";
	}

	@RequestMapping("/echo-ws")
	public String testView() {

		return "client/reservation/socket";
//		return "iframeTest";
	}
	
	
}
