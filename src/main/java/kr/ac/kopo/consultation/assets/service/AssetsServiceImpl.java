package kr.ac.kopo.consultation.assets.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.consultation.assets.dao.AssetsDAO;
import kr.ac.kopo.consultation.assets.vo.AssetsVO;
import kr.ac.kopo.member.vo.ClientVO;

@Service
public class AssetsServiceImpl implements AssetsService {
	
	
	@Autowired 
	AssetsDAO assetsDAO;
	

	

	@Override
	public AssetsVO searchAssets(ClientVO client) {
		
		AssetsVO clientAssets = assetsDAO.searchAssets(client);
		
		
		
		return clientAssets;
	}
	
	
	
	

}
