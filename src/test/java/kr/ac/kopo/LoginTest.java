package kr.ac.kopo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class LoginTest {
	
	@Autowired
	MemberService service;
	
	
	@Test
	public void loginTest() {
		
		MemberVO member = new MemberVO();
		
		member.setId("test");
		member.setPassword("1234");
		
		MemberVO userVO = service.login(member);
		
		System.out.println(userVO);
		
		
		
	}
	
	
	
	

}
