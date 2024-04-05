package com.prj.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.users.domain.PUserVo;
import com.prj.users.mapper.UsersMapper;



@RequestMapping("/Users")
// 회원정보
@Controller
public class UsersController {
	
	@Autowired
	private UsersMapper usersMapper;
	
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm(PUserVo pUserVo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/write");
		
		return mv;
		
	}
	
	@RequestMapping("/Write")
	public ModelAndView write(PUserVo pUserVo) {
		
		usersMapper.insertPUser(pUserVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		
		return mv;
	}
	
	@RequestMapping("/UpdateForm")
	public ModelAndView updateForm(PUserVo pUserVo) {
		
		PUserVo puv = usersMapper.getPUser(pUserVo);

		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("vo",puv);
		
		mv.setViewName("users/updateForm");
		
		return mv;
		
	}
	
	@RequestMapping("/Update")
	public ModelAndView update(PUserVo pUserVo) {
		
		usersMapper.updatePUser(pUserVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Users/List");
		
		return mv;
	}
	
	
	@RequestMapping("/View")
	public ModelAndView view(PUserVo pUserVo) {
		
		//PUserVo puv = usersMapper.viewPUser(pUserVo);
		ModelAndView mv = new ModelAndView();
		
		//mv.addObject("vo",puv);
		mv.setViewName("users/view");
		
		return mv;

		
	}
	

	
	
	
}