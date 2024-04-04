package com.prj.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.users.domain.PUserVo;
import com.prj.users.mapper.UsersMapper;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/Users")
// 회원정보
public class UsersController {

	@Autowired
	private UsersMapper usersMapper;
	
	// 회원가입으로 이동
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm() {
		
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("users/write");
		return mv;
	}
	
	// 회원가입
	@RequestMapping("/Write")
	public ModelAndView write(PUserVo puserVo) {
	 usersMapper.insertpuser(puserVo);
		
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("redirect:/");
		return mv;
	}
	//------------------------------------------------
	// 회원정보 수정
		@RequestMapping("/UpdateForm")
		public ModelAndView updateForm() {
			
			ModelAndView mv  = new ModelAndView();
			mv.setViewName("users/update");
			return mv;
		}
	// 회원정보 수정 후 프로필로???????	
		@RequestMapping("/Update")
		public ModelAndView update(PUserVo puserVo) {
			
			usersMapper.updatepuser(puserVo);
			ModelAndView mv  = new ModelAndView();
			mv.setViewName("redirect:/");
			return mv;
		}
		

		/*
		@RequestMapping("/Delete")
		public ModelAndView delete() {
			
			ModelAndView mv  = new ModelAndView();
			mv.setViewName("users/update");
			return mv;
		}
		*/
}
