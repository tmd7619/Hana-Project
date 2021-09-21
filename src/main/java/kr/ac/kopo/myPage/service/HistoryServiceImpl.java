package kr.ac.kopo.myPage.service;

import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.dao.HistoryDAO;
import kr.ac.kopo.myPage.vo.HistoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    HistoryDAO historyDAO;


    @Override
    public List<HistoryVO> selectAllHistory(ClientVO clientVO) {

        List<HistoryVO> historyList = historyDAO.selectAllHistory(clientVO);

        return historyList;
    }
}
