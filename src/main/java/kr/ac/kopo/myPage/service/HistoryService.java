package kr.ac.kopo.myPage.service;

import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.vo.HistoryVO;

import java.util.List;

public interface HistoryService {

    List<HistoryVO> selectAllHistory(ClientVO clientVO);


}
