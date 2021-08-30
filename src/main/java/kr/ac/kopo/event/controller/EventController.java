package kr.ac.kopo.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	@RequestMapping("/event")
	public String eventInfo() {
		
		
		
		return "/event/eventInfo" ;
	}
	
	
}
