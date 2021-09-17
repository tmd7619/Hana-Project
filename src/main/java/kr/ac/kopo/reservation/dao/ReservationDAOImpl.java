package kr.ac.kopo.reservation.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.vo.ReservationVO;

@Repository
public class ReservationDAOImpl implements ReservationDAO {


    private String namespace = "reservation.ReservationDAO.";

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<BankerVO> searchBanker() { // PB 목록 조회

        List<BankerVO> bankerList = sqlSessionTemplate.selectList(namespace + "searchBanker");

        return bankerList;
    }

    @Override
    public List<BankerVO> availableSearchBanker() {

        List<BankerVO> impossibleBankerList = sqlSessionTemplate.selectList(namespace +"availableSearchBanker");

        return impossibleBankerList;
    }

    @Override
    public int insertReservation(ReservationVO reservationVO) {

        int check = sqlSessionTemplate.insert(namespace +"insertReservation" , reservationVO);
        if(check != 0){
            System.out.println("에약 정보 insert 완료");
        }

        return check;

    }

	@Override
	public List<BankerVO> searchBysector(String sector) {
			
		 List<BankerVO> bankerList = sqlSessionTemplate.selectList(namespace + "searchBySector" , sector);
		
		 
		 for(BankerVO b : bankerList) {
			 System.out.println("넘어옴?? " + b);
		 }
		
		return bankerList;
	}
}
