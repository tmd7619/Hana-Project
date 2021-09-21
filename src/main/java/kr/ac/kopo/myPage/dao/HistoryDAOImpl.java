package kr.ac.kopo.myPage.dao;

import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.vo.HistoryVO;
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
    public List<HistoryVO> selectAllHistory(ClientVO clientVO) {

        List<HistoryVO> historyList = sqlSessionTemplate.selectList(namespace + "selectAllHistory", clientVO.getUserId());

        return historyList;
    }
}
