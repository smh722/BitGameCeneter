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

	public Integer selectBestScore(RankVO vo) {
		return mybatis.selectOne("RankDao.selectBestScore",vo);
	}

}
