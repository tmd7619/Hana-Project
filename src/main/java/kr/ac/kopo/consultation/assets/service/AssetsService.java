package kr.ac.kopo.consultation.assets.service;

import kr.ac.kopo.consultation.assets.vo.AssetsVO;
import kr.ac.kopo.member.vo.ClientVO;

public interface AssetsService {
	
	
	AssetsVO searchAssets(ClientVO client);

}
