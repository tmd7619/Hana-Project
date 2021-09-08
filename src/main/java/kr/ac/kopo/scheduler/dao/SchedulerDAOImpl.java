package kr.ac.kopo.scheduler.dao;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.scheduler.vo.SchedulerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SchedulerDAOImpl implements SchedulerDAO {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate ;

    private String namespace = "scheduler.SchedulerDAO.";

    @Override
    public List<SchedulerVO> showSchedule(BankerVO banker) {
        List<SchedulerVO> list = sqlSessionTemplate.selectList(namespace+"showSchedule" ,banker);
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
