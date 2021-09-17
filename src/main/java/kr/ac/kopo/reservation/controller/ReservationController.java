package kr.ac.kopo.reservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.service.ReservationService;
import kr.ac.kopo.reservation.vo.ReservationVO;

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
    
    
    @ResponseBody
    @PostMapping("client/sendReservation")
    public String insertReservation(@RequestBody String sendMessage) {
        System.out.println(sendMessage);
        Gson gson = new Gson();

        ReservationVO reservationVO = gson.fromJson(sendMessage, ReservationVO.class);

        int check = service.insertReservation(reservationVO);

        if (check != 0) {
            System.out.println("예약 완료");
        }
        return "예약완료";
    }
    
    
    @PostMapping("/client/searchBySector")
    public ModelAndView searchList(@RequestBody String sector){

        ModelAndView mav = new ModelAndView();
        
        System.out.println("컨트롤러로 넘어온 sector : " + sector);
        
        

        List<BankerVO> bankerVOList = service.searchBysector(sector);
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
        mav.setViewName("client/searchBanker/sectorList");

        return mav;
    }
    
    @GetMapping("/client/searchBySector")
    public ModelAndView searchBySector(@RequestParam String sector){

        ModelAndView mav = new ModelAndView();
        
        System.out.println("컨트롤러로 넘어온 sector : " + sector);
        
        

        List<BankerVO> bankerVOList = service.searchBysector(sector);
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
