package kr.ac.kopo.consultation.assets.dao;

import kr.ac.kopo.consultation.assets.vo.AssetsVO;
import kr.ac.kopo.member.vo.ClientVO;

public interface AssetsDAO {
	
	AssetsVO searchAssets(ClientVO client);

}
