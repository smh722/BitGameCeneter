package com.bit.gamecenter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.gamecenter.dao.RankDao;
import com.bit.gamecenter.vo.RankVO;

@Service("rankservice")
public class RankService {
	
	@Autowired
	private RankDao dao;
	
	public void insertRank(RankVO vo) {
		
		dao.insertRank(vo);
	}

	public List<RankVO> getRanking() {
		return dao.getRanking();
	}

	public Integer selectBestScore(RankVO vo) {
		return dao.selectBestScore(vo);
	}

}
