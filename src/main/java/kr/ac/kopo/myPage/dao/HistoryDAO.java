package kr.ac.kopo.myPage.dao;

import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.vo.HistoryVO;

import java.util.List;

public interface HistoryDAO {


    List<HistoryVO> selectAllHistory(ClientVO clientVO);


}
