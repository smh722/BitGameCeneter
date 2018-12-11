package com.bit.gamecenter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.gamecenter.dao.GamerDao;
import com.bit.gamecenter.vo.GamerVO;


@Service("gamerservice")
public class GamerService {
	
	@Autowired
	private GamerDao dao;
	
	
	public void insertGamer(GamerVO vo) {
		dao.insert(vo);
	}
	
	public GamerVO getGamervo(GamerVO vo) {
		return dao.getGamervo(vo);
	}
	
}
