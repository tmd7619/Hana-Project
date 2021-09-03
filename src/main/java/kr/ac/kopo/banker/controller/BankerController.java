package kr.ac.kopo.banker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BankerController {



    @RequestMapping("/pb")
    public String pb(){

        return "pb/services/common";
    }

}
