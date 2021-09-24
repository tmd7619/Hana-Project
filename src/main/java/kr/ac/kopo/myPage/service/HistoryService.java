package kr.ac.kopo.myPage.service;

import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.PagingVO;

import java.util.List;

public interface HistoryService {

    void saveHistory(HistoryVO historyVO);

    // 페이징 처리 History 조회
    List<HistoryVO> selectAllHistory(PagingVO vo);

    // 게시물 총 갯수
    public int countBoard();


}
