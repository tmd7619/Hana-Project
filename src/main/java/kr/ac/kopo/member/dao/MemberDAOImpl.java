package kr.ac.kopo.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public MemberVO login(MemberVO member) {
		
		MemberVO userVO = sqlSession.selectOne("member.MemberDAO.login" , member);
		return userVO;
	}

	@Override
	public int registerBranch(MemberVO userVO) {

		int check = sqlSession.update("member.MemberDAO.newBranch" , userVO);
		if(check != 0){
			System.out.println("지점 등록 완료..");
		}

		return check;
	}


}
