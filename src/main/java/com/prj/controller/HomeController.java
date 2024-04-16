package com.prj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.recruits.domain.CRecruitVo;
import com.prj.recruits.mapper.CRecruitMapper;

@Controller
public class HomeController {
	
	@Autowired
	private CRecruitMapper cRecruitMapper;
	
	// http://localhost:9090
	@RequestMapping("/")
	public ModelAndView Home(CRecruitVo cRecruitVo) {
		
		List<CRecruitVo> recruitList = cRecruitMapper.getRListAtHome(cRecruitVo);

		ModelAndView mv = new ModelAndView();
		mv.addObject("recruitList",recruitList);
		mv.setViewName("/home");
		
		return mv;
	}
	
	
}
