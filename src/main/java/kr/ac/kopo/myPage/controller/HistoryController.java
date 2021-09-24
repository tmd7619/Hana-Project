package kr.ac.kopo.myPage.controller;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.service.HistoryService;
import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
public class HistoryController {

    @Autowired
    HistoryService historyService;


    @PostMapping("/saveHistory")
    @ResponseBody
    public String saveHistory(@RequestBody HistoryVO historyVO) {

        System.out.println("is historyVO : " + historyVO);
        historyService.saveHistory(historyVO);

        return "상담내역 저장 완료";
    }

    @GetMapping("/client/myPage/history")
    public String viewClientHistory(PagingVO vo, Model model
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


    public String viewPBHistory(PagingVO vo, Model model
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

        BankerVO bankerVO = (BankerVO) session.getAttribute("bankerVO");
        vo.setUserId(bankerVO.getPbId());
        System.out.println(" vo ? :" + vo);

        model.addAttribute("paging", vo);
        model.addAttribute("historyList", historyService.selectAllHistory(vo));

        return "pb/history/historyList";
    }


}
