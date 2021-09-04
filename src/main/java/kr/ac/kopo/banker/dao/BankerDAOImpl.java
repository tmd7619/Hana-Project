package kr.ac.kopo.banker.dao;

import kr.ac.kopo.banker.vo.BankerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BankerDAOImpl implements BankerDAO{

    @Autowired
    SqlSessionTemplate sqlSessionTemplate ;

    @Override
    public BankerVO login(BankerVO banker) {

        BankerVO bankerVO = sqlSessionTemplate.selectOne("banker.BankerDAO.login" , banker);
        System.out.println("DB에서 조회된 PB 로그인 정보 : " + bankerVO );

        return bankerVO;
    }
}
