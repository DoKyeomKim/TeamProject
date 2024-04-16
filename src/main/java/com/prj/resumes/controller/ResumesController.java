package com.prj.resumes.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.recruits.domain.PResumeVo;
import com.prj.recruits.mapper.PResumeMapper;
import com.prj.resumes.mapper.ResumesMapper;

@Controller
@RequestMapping("/Resumes")
public class ResumesController {

	@Autowired
	private ResumesMapper resumesMapper;

	// 인재 정보 조회 /Resumes/List
	@RequestMapping("/List")
	public ModelAndView list(PResumeVo presumeVo) {
		// 사용자 목록조회
		List<PResumeVo> presumeList = resumesMapper.getPResumeList(presumeVo);
		System.out.println("================presumeList: " + presumeList);

				ModelAndView mv  = new ModelAndView();
				mv.addObject("presumeList",presumeList);
				mv.setViewName("resumes/list");

				//.jsp 이동
				return mv;


	}
	
	
	@RequestMapping("/View")
	public ModelAndView view(PResumeVo pResumeVo) {
	
	int pno = pResumeVo.getPno();
	PResumeVo psv = resumesMapper.viewResume(pno);
	
	ModelAndView mv = new ModelAndView();
	mv.addObject("psv",psv);
	mv.setViewName("resumes/presumeview");
	
	return mv;
	}
	
	
}
