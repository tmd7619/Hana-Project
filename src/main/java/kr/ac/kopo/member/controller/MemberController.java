package kr.ac.kopo.member.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;


// 원래는 {} 배열 형태로, 여러개 등록 가능
@SessionAttributes("userVO") // request 공유 영역에 올린 객체 중, userVO 이름을 가진 객체는 Sesession 영역에 올려주는 어노테이션
@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "/login" , method=RequestMethod.POST)
	public String login(MemberVO member , Model model, HttpSession session) {
		
		
		System.out.println("loginForm에서 넘어온 정보" + member);
		MemberVO userVO = service.login(member);
		System.out.println("DB에서 넘어온 정보(userVO) : " + userVO);
		
		if(userVO == null) {
			String msg = "아이디 또는 패스워드가 잘못되었습니다.";
			model.addAttribute("msg", msg);
			return "/login";
		}
		
		// 로그인 성공
		model.addAttribute("userVO", userVO);
		
		
		session.setAttribute("userVO", userVO); // redirect로 인해, session에 미리 등록해준다.
		String dest = (String)session.getAttribute("dest");
		if(dest != null) { // 로그인 페이지 전에 다른 url
			session.removeAttribute("dest"); // dest session은 이제 필요 없기 때문에, 세션 제거
			return "redirect:" + dest;  // 로그인 전 페이지로 redirect
		}
		
		return "redirect:/"; // 스프링에서는 redirect 시 , 포워드 처럼 루트패스 다음으로 경로를 잡아줌
	}
	
	@RequestMapping(value="/logout" , method=RequestMethod.GET)
	public String logout(SessionStatus sessionStatus) {
//		session.invalidate(); // @SessionAttributes 시 ,사용 불가		
		sessionStatus.setComplete(); // isComplete()를 false -> true로 변경
		
		System.out.println("로그아웃 완료");
		return "redirect:/";
	}
	
	
	

}
