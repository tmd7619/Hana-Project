package kr.ac.kopo.banker.dao;

import kr.ac.kopo.banker.vo.SchedulerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BankerDAOImpl implements BankerDAO{

    @Autowired
    SqlSessionTemplate sqlSessionTemplate ;

    String namespace = "banker.BankerDAO.";

//    @Override
//    public BankerVO login(BankerVO banker)  {
//
//        BankerVO bankerVO = sqlSessionTemplate.selectOne("banker.BankerDAO.login" , banker);
//        System.out.println("DB에서 조회된 PB 로그인 정보 : " + bankerVO );
//
//        return bankerVO;
//    }

    @Override
    public List<SchedulerVO> showSchedule() {
        List<SchedulerVO> list = sqlSessionTemplate.selectList(namespace+"showSchedule");
        for(SchedulerVO sce :list){
            System.out.println(sce);
        }
        return list;

    }

    @Override
    public void addSchedule(SchedulerVO schedulerVO) {

        System.out.println("dao에서 넘어온 스케줄 : " + schedulerVO);
        sqlSessionTemplate.insert(namespace +"addSchedule" , schedulerVO);
    }

}
