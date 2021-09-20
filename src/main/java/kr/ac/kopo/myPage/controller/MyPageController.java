package kr.ac.kopo.myPage.controller;


import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.service.MyPageService;
import kr.ac.kopo.myPage.vo.FavoriteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

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

    @RequestMapping("/client/myPage/favoriteList") // 마이페이지 내 즐겨찾기 목록 조회
    public ModelAndView viewFavoriteList(HttpSession session){
        ModelAndView mav = new ModelAndView();

        ClientVO clientVO = (ClientVO)session.getAttribute("userVO");
        List<BankerVO> favoriteList = service.searchFavoriteList(clientVO);

        mav.addObject("favoriteList" , favoriteList);
        mav.setViewName("client/myPage/favorite");

        return mav;
    }

    @ResponseBody
    @PostMapping("/client/favorite")
    public void addFavorite (@RequestBody FavoriteVO favoriteVO){ // favorite 추가

        System.out.println("넘어온 favorite 값 : "+ favoriteVO);
        service.addFavorite(favoriteVO);
    }


    @PostMapping("/myPage/favoriteList/sector")
    public ModelAndView searchFavoriteBySector(@RequestBody String sector , HttpSession session){

        ModelAndView mav = new ModelAndView();

        System.out.println("넘어온 섹터 : " + sector);
        ClientVO clientVO = (ClientVO)session.getAttribute("userVO");

        List<BankerVO> favoriteListBySector  = service.searchFavoriteListBySector(sector, clientVO);

        mav.addObject("favoriteListBySector" , favoriteListBySector);
        mav.setViewName("client/myPage/favoritePage");



        return mav;

    }




}
