package kr.ac.kopo.client.dao;

import kr.ac.kopo.banker.vo.BankerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClientDAOImpl  implements  ClientDAO{

    private String namespace = "client.ClientDAO.";

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<BankerVO> searchBankerList() { // PB 목록 조회

        List<BankerVO> bankerList = sqlSessionTemplate.selectList(namespace + "searchBankerList");
        return bankerList;
    }
}
