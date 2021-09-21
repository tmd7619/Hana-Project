package kr.ac.kopo.myPage.controller;

import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.service.HistoryService;
import kr.ac.kopo.myPage.vo.HistoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HistoryController {

    @Autowired
    HistoryService historyService;


    @RequestMapping("/client/myPage/history")
    public ModelAndView viewHistory(HttpSession session) {

        ModelAndView mav = new ModelAndView();

        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");

        List<HistoryVO> historyList = historyService.selectAllHistory(clientVO);

        mav.addObject("historyList", historyList);

        for (HistoryVO h : historyList) {
            System.out.println("his : " + h);
        }


        //mav.setViewName("client/myPage/history");

        return mav;
    }
}
