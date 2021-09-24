package kr.ac.kopo.myPage.dao;

import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.PagingVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HistoryDAOImpl implements HistoryDAO {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;


    private String namespace = "myPage.HistoryDAO.";

    @Override
    public void insertHistory(HistoryVO historyVO) {

        int check = sqlSessionTemplate.insert(namespace + "insertHistory", historyVO);
        if (check != 0) {
            System.out.println("history 삽입 완료");
        }

    }

    @Override
    public List<HistoryVO> selectAllHistory(PagingVO vo) {


        List<HistoryVO> historyList = sqlSessionTemplate.selectList(namespace + "selectAllHistory", vo);

        return historyList;
    }

    @Override
    public List<HistoryVO> selectAllHistoryByBanker(PagingVO vo) {
        List<HistoryVO> historyList = sqlSessionTemplate.selectList(namespace + "selectAllHistoryByBanker", vo);

        return historyList;
    }

    @Override
    public int countBoard() {

        int rowNum = sqlSessionTemplate.selectOne(namespace + "countBoard");
        return rowNum;
    }
}
