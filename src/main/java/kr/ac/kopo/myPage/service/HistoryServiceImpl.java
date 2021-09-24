package kr.ac.kopo.myPage.service;

import kr.ac.kopo.myPage.dao.HistoryDAO;
import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    HistoryDAO historyDAO;

    @Override
    public void saveHistory(HistoryVO historyVO) {
        historyDAO.insertHistory(historyVO);
    }

    @Override
    public List<HistoryVO> selectAllHistory(PagingVO vo) {

        List<HistoryVO> historyList = historyDAO.selectAllHistory(vo);

        return historyList;
    }

    @Override
    public int countBoard() {
        return historyDAO.countBoard();
    }

}
