package kr.ac.kopo.myPage.service;

import kr.ac.kopo.myPage.dao.HistoryDAO;
import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.InquiryVO;
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


    @Override
    public List<HistoryVO> selectAllHistoryByBanker(PagingVO vo) {
        List<HistoryVO> historyList = historyDAO.selectAllHistoryByBanker(vo);
        return historyList;
    }


    @Override
    public HistoryVO selectOneHistory(int roomNumber) {

        HistoryVO history = historyDAO.selectOneHistory(roomNumber);

        return history;
    }

    @Override
    public List<InquiryVO> insertInquiry(InquiryVO inquiryVO) {

        int check = historyDAO.insertInquiry(inquiryVO);

        if (check != 0) {
            System.out.println("insert Inquiry 완료");
        }

        List<InquiryVO> inquiryList = historyDAO.selectAllInquiry(inquiryVO);

        return inquiryList;
    }


    @Override
    public List<InquiryVO> selectInquiry(InquiryVO inquiryVO) {
        System.out.println(inquiryVO);

        List<InquiryVO> inquiryList = historyDAO.selectAllInquiry(inquiryVO);

        return inquiryList;
    }

}
