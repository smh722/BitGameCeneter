package com.bit.gamecenter.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.gamecenter.vo.RankVO;

@Repository
public class RankDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertRank(RankVO vo) {
		mybatis.insert("RankDao.insertRank",vo);
	}

	public List<RankVO> getRanking() {
		return mybatis.selectList("RankDao.getRanking");
	}

	public int selectBestScore(RankVO vo) {
		int num = vo.getScore();
		vo = mybatis.selectOne("RankDao.selectBestScore",vo);
		System.out.println(vo.getScore());
		
		if(vo.getScore()>num) {
			return num;
			
		}else {
			return -1;
		}
	}

}
