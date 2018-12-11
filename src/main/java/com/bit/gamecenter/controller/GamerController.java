package com.bit.gamecenter.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.gamecenter.service.GamerService;
import com.bit.gamecenter.vo.GamerVO;


@Controller
public class GamerController {
	@Autowired
	@Qualifier("gamerservice")
	private GamerService gamerservice;

	@RequestMapping("joininsert.do")
	public String add(@ModelAttribute GamerVO vo) {
		gamerservice.insertGamer(vo);
		return "joinpage.jsp";
	}

	@RequestMapping("join.do")
	public String join(GamerVO vo, HttpSession session) {
		if (gamerservice.getGamervo(vo) != null) {
			GamerVO vo2 = gamerservice.getGamervo(vo);
			if (vo2.getPassword().equals(vo.getPassword())) {
				session.setAttribute("id", vo2.getId());
				session.setAttribute("password", vo2.getPassword());
				return "Snake.jsp";

			} else {
				session.setAttribute("error", "아이디가 올바르지 않습니다.");
				return "joinpage.jsp";
			}
		} else {
			session.setAttribute("error", "비밀번호가 올바르지 않습니다");
			return "joinpage.jsp";
		}

	}

	@RequestMapping("findpassword.do")
	public String findpw(GamerVO vo, Model model) {
		vo = gamerservice.getGamervo(vo);
		model.addAttribute("password", vo.getPassword());
		return "findpassword.jsp";
	}

}
