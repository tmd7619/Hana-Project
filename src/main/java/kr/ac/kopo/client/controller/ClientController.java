package kr.ac.kopo.client.controller;

import kr.ac.kopo.client.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClientController {

    @Autowired
    private ClientService service;


    @RequestMapping("/client/searchList")
    public ModelAndView searchList(){

        ModelAndView mav = new ModelAndView();


        mav.setViewName("");

        return mav;

    }



}
