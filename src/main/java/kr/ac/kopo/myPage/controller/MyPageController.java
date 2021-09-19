package kr.ac.kopo.myPage.controller;


import kr.ac.kopo.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {


    @Autowired
    MyPageService service;


    @RequestMapping("/client/myPage")
    public String viewMyPage(){

        return "client/myPage/myPageMain";
    }


    @RequestMapping("/client/myPage/history")
    public String viewHistory(){


        return "client/myPage/history";
    }

    @RequestMapping("/client/myPage/favoriteList")
    public String viewFavoriteList(){


        return "client/myPage/favorite";
    }




}
