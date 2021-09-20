package kr.ac.kopo.myPage.controller;

import kr.ac.kopo.myPage.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HistoryController {

    @Autowired
    HistoryService historyService;


    @RequestMapping("/client/myPage/history")
    public String viewHistory() {
        

        return "client/myPage/history";
    }
}
