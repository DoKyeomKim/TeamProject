package com.prj.recruitscontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.recruits.domain.MCVo;

@Controller
@RequestMapping("/Recruit")
public class RecruitsController {

	// 공고 목록 조회 /Recruit/List
	@RequestMapping("/List")
	public ModelAndView list(MCVo mcVo) {
	
	// 기업 목록 불러오기
	//List<MCVo> mcList = mcMapper.getMCList(mcVo);
	
		
		
		
		ModelAndView mv = new ModelAndView();
	//	mv.addObject("", );
		return mv;
		
		
	}
		
}
	
	


