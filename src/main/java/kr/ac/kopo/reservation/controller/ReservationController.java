package kr.ac.kopo.reservation.controller;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.service.ReservationService;
import kr.ac.kopo.scheduler.vo.SchedulerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ReservationController {


    @Autowired
    private ReservationService service;


    @RequestMapping("/client/searchList")
    public ModelAndView searchList(){

        ModelAndView mav = new ModelAndView();

        List<BankerVO> bankerVOList = service.searchBanker();

        System.out.println("reser 컨트롤러 : "  + bankerVOList);
        mav.addObject("bankerList" , bankerVOList);

        List<SchedulerVO> schedulerVO = service.availableSearchBanker();
        System.out.println("resr  : " + schedulerVO);
        mav.addObject("impossibleTime" , schedulerVO);

        mav.setViewName("client/searchBanker/bankerList");

        return mav;
    }

}
