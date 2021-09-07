package kr.ac.kopo.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {


    @RequestMapping("/client/searchList")
    public String searchList(){


        return "client/searchBanker/bankerList";

    }



}
