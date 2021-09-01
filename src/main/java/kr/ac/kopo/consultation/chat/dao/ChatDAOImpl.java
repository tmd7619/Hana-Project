package kr.ac.kopo.consultation.chat.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.consultation.chat.vo.RoomVO;

@Repository
public class ChatDAOImpl implements ChatDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertRoom(RoomVO roomVO) {
		
		int check  = sqlSession.insert("chat.chatDAO.insertRoom" , roomVO);
		
		return check;
	}

}
