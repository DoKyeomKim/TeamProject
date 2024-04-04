package com.prj.users.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersController {
	// 개인 회업가입 폼
	@RequestMapping("/Joins/Join2")
	public ModelAndView joinForm() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/");
		return null;
	}
}
