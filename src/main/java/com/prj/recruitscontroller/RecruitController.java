package com.prj.recruitscontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.domain.MCVo;

@Controller
@RequestMapping("/Recruit")
public class RecruitController {

	// 공고 목록 조회 /Recruit/List
	@RequestMapping("/List")
	public ModelAndView list(MCVo mcVo) {
		
		
		
		ModelAndView mv = new ModelAndView();
		//mv.addAllObjects("", );
		return mv;
		
		
	}
		
}
	
	


