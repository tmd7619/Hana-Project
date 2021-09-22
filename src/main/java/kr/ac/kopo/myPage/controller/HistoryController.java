package kr.ac.kopo.myPage.controller;

import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.service.HistoryService;
import kr.ac.kopo.myPage.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class HistoryController {

    @Autowired
    HistoryService historyService;


//    @RequestMapping("/client/myPage/history")
//    public ModelAndView viewHistory(HttpSession session) {
//
//        ModelAndView mav = new ModelAndView();
//
//        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");
//
//        List<HistoryVO> historyList = historyService.selectAllHistory(clientVO);
//
//        mav.addObject("historyList", historyList);
//
//        //mav.setViewName("client/myPage/history");
//
//        return mav;
//    }


    @GetMapping("/client/myPage/history")
    public String boardList(PagingVO vo, Model model
            , @RequestParam(value = "nowPage", required = false) String nowPage
            , @RequestParam(value = "cntPerPage", required = false) String cntPerPage, HttpSession session) {

        System.out.println("nowPage : " + nowPage);
        System.out.println("cntPerPage : " + cntPerPage);


        int total = historyService.countBoard();
        if (nowPage == null && cntPerPage == null) {
            nowPage = "1";
            cntPerPage = "5";
        } else if (nowPage == null) {
            nowPage = "1";
        } else if (cntPerPage == null) {
            cntPerPage = "5";
        }
        vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

        ClientVO clientVO = (ClientVO) session.getAttribute("userVO");
        vo.setUserId(clientVO.getUserId());
        System.out.println(" vo ? :" + vo);

        model.addAttribute("paging", vo);
        model.addAttribute("historyList", historyService.selectAllHistory(vo));
        
        return "client/myPage/history";
    }


}
