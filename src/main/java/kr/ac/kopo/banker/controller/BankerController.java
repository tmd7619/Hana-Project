package kr.ac.kopo.banker.controller;

import kr.ac.kopo.banker.service.BankerService;
import kr.ac.kopo.banker.vo.BankerVO;
import kr.ac.kopo.banker.vo.SchedulerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


// 원래는 {} 배열 형태로, 여러개 등록 가능
@Controller("bankerController")
public class BankerController {

    @Autowired
    private BankerService service;

    @RequestMapping("/pb")
    public String viewIndex(){

        return "index";
    }


    @RequestMapping(value = "/pb/login", method = RequestMethod.POST)
    public String login(BankerVO banker, Model model, HttpSession session) {


        System.out.println("loginForm에서 넘어온 정보" + banker);
        BankerVO bankerVO = service.login(banker);
        System.out.println("DB에서 넘어온 정보(userVO) : " + bankerVO);

        if (bankerVO == null) {
            String msg = "아이디 또는 패스워드가 잘못되었습니다.";
            model.addAttribute("msg", msg);
            return "/login";
        }

        // 로그인 성공
        session.setAttribute("bankerVO", bankerVO); // redirect로 인해, session에 미리 등록해준다.

        String dest = (String) session.getAttribute("dest");
        if (dest != null) { // 로그인 페이지 전에 다른 url
            session.removeAttribute("dest"); // dest session은 이제 필요 없기 때문에, 세션 제거
            return "redirect:" + dest;  // 로그인 전 페이지로 redirect
        }

        return "redirect:/pb"; // 스프링에서는 redirect 시 , 포워드 처럼 루트패스 다음으로 경로를 잡아줌
    }

    @RequestMapping("/pb/services")
    public String viewServices(){

        return "pb/services/common";
    }

//    @RequestMapping("/pb/scheduler")
//    public String viewScheduler(){
//        return "scheduler2";
//    }
//
//    @RequestMapping("/pb/scheduler/popup")
//        public String viewPopup(){
//
//        return "pb/services/schedulePopup";
//    }



    //일정 관리 페이지
    @RequestMapping(value = "/pb/scheduler")
    public String schedule(Model model)throws Exception {

        model.addAttribute("showSchedule" , service.showSchedule());

        return "pb/services/schedule";
    }


    //일정 추가 팝업
    @RequestMapping(value = "/schedulePopup")
    public String test2() throws Exception {
        return "pb/services/schedulePopup";
    }

    //일정 추가 버튼 클릭 Ajax
    @ResponseBody
    @RequestMapping(value = "/addSchedule", method = RequestMethod.POST)
    public Map<Object,Object> addSchedule(@RequestBody SchedulerVO schedulerVO, HttpSession session) throws Exception{
        Map<Object,Object>map = new HashMap<Object,Object>();

        BankerVO bankVO = (BankerVO)session.getAttribute("bankerVO");
        service.addSchedule(schedulerVO, bankVO);

        return map;
    }

    //일정 보이기 (임시)
    @ResponseBody
    @RequestMapping(value = "/showSchedule")
    public List<SchedulerVO> showSchedule() throws Exception {

        List<SchedulerVO> list = service.showSchedule();

        return list;
    }




}