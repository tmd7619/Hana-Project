package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
	
	@RequestMapping(value = "/chat", method =RequestMethod.GET, headers = "Connection!=Upgrade")
	public String helloJava() {
		
		return "/ws2";
	}
	
	
}
