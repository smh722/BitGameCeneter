package com.bit.gamecenter.controller;

import javax.inject.Qualifier;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.gamecenter.service.RankService;
import com.bit.gamecenter.vo.RankVO;

@Controller
public class RankController {
	@Autowired
	private RankService rankservice;
	
	@RequestMapping("Gameover.do")
	public String insertRank(RankVO vo, HttpSession session) {
		vo.setGamename("snake");
		vo.setId((String)session.getAttribute("id"));
		int score = vo.getScore();
		Integer best = rankservice.selectBestScore(vo);
		
		if(best==null ) {
			rankservice.insertRank(vo);
			return "GameOver.jsp";
			
		}else if(score>best.intValue()){
			rankservice.insertRank(vo);
			return "GameOver.jsp";
		}else {
			return "GameOver.jsp";
		}
	}
	@RequestMapping("game.do")
	public String ranking(Model model) {
		model.addAttribute("list",rankservice.getRanking());
		return "Snake.jsp";
	}
}
