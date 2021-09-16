package kr.ac.kopo.consultation.assets.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.consultation.assets.vo.AssetsVO;
import kr.ac.kopo.member.vo.ClientVO;

@Repository
public class AssetsDAOImpl implements AssetsDAO {
	
	@Autowired
	SqlSessionTemplate SqlSessionTemplate;
	

	@Override
	public AssetsVO searchAssets(ClientVO client) {
		
		String clientId = client.getUserId();
		
		AssetsVO clientAssets = SqlSessionTemplate.selectOne("assets.AssetsDAO.searchAssets" , clientId);
		
		
		return clientAssets;
	}

	
	
}
