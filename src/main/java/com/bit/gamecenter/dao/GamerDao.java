package com.bit.gamecenter.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.gamecenter.vo.GamerVO;



@Repository
public class GamerDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insert(GamerVO vo) {
		mybatis.insert("GamerDao.insert",vo);
	}
	
	public GamerVO getGamervo(GamerVO vo) {
		return mybatis.selectOne("GamerDao.getGamervo",vo);
	}
	
	
	
}
