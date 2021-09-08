package kr.ac.kopo.reservation.controller;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.service.ReservationService;
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
        List<BankerVO> checkBankerList = service.availableSearchBanker();

            // 상담 가능한 PB 조회
            for(int i = 0; i < bankerVOList.size(); i ++){
                for(int j = 0 ; j < checkBankerList.size() ; j ++ ){
                    if(checkBankerList.get(j).getPbName().equals(bankerVOList.get(i).getPbName())){
                        bankerVOList.get(i).setImpossible(checkBankerList.get(j).getImpossible());
                    }
                }
            }
        mav.addObject("bankerList" , bankerVOList);
        mav.setViewName("client/searchBanker/bankerList");

        return mav;
    }

}
